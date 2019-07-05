float xpos, ypos;
float xspeed = 1;
float yspeed = 1;
float xdirection = 2;
float ydirection = 1;

int rad = 25;
int py = 275;
int ph = 10 ;
int px = 1080;
int pw = 100 ;

void setup() {
  xpos = width/2;
  ypos = height/2;
  size(1200, 550);
  rectMode(CENTER);
}

void draw() {
  background(#C6493E);
  strokeWeight(5);
  stroke(255);
  fill(#3BBC42);
  rect(600, 275, 960, 440);
  line(600, 55, 600, 495);
  line(450, 95, 450, 455);
  line(750, 95, 750, 455);
  line(450, 275, 750, 275);
  line(120, 95, 1080, 95);
  line(120, 455, 1080, 455);
  line(120, 275, 130, 275);
  line(1080, 275, 1070, 275);
  line(px, py, px, py);
  stroke(#0245F5);
  noStroke();
  fill(#DCED24);
  ellipseMode(CENTER);
  ellipse(xpos, ypos, rad, rad);
  textSize(150);

  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );

  if (xpos > 1200 || xpos < 0) {
    fill(#E50C0C);
    text("GAME OVER", 150, 330);
  }
  playerMove();
  ballMove();
};

void playerMove() {
  rectMode(CENTER);
  py = mouseY;
  fill(#0245F5);
  rect(px, py, ph, pw);
};

void ballMove() {
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );


  if (ypos > 455 || ypos < 95 ) {
    ydirection *= -1;
  }
  if (xpos < 120 ) {
    xdirection *= -1.25;
  }
  if ( (py-rad<ypos) && (py+pw-rad>ypos)
    && (px-rad<xpos) && (px+pw-rad>xpos) ) {
    xdirection *= -1;
  }
};
