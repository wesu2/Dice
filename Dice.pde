Die one, two, three, four, five, six, seven, eight, nine;
void setup()
{
  noLoop();
  size(700, 700);
  one = new Die(100,100); 
  two = new Die(200,100); 
  three = new Die(300,100); 
  four = new Die(100,300); 
  five = new Die(200,300); 
  six = new Die(300,300); 
  seven = new Die(100,500); 
  eight = new Die(200,500); 
  nine = new Die(300,500); 
  
}
void draw()
{
  background(255);
  fill(255);
  one.roll();
  one.show();
  two.roll();
  two.show();
  three.roll();
  three.show();
  four.roll();
  four.show();
  five.roll();
  five.show();
  six.roll();
  six.show();
  seven.roll();
  seven.show();
  eight.roll();
  eight.show();
  nine.roll();
  nine.show();
  fill(0);
  text((one.diceroll+two.diceroll+three.diceroll+four.diceroll+five.diceroll+six.diceroll+seven.diceroll+eight.diceroll+nine.diceroll), 600, 250);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int diex, diey, diceroll;  
  Die(int x, int y) //constructor
  {
    diex = x;
    diey = y;
  }
  void roll()
  {
    diceroll = (int)(Math.random()*6+1);    
  }
  void show()
  {
    fill(255);
    if (diceroll == 1) {
      rect(diex, diey, 50, 50);
      ellipse(diex + 25, diey + 25, 10, 10);    
      } else if (diceroll == 2) {
      rect(diex, diey, 50, 50);
      ellipse(diex + 15, diey + 15, 10, 10);
      ellipse(diex + 35, diey + 35, 10, 10);      
      } else if (diceroll == 3) {
      rect(diex, diey, 50, 50);
      ellipse(diex + 15, diey + 15, 10, 10); 
      ellipse(diex + 25, diey + 25, 10, 10);
      ellipse(diex + 35, diey + 35, 10, 10);      
      } else if (diceroll == 4) {
      rect(diex, diey, 50, 50);
      ellipse(diex + 15, diey + 15, 10, 10);
      ellipse(diex + 35, diey + 35, 10, 10);
      ellipse(diex + 15, diey + 35, 10, 10);
      ellipse(diex + 35, diey + 15, 10, 10);      
      } else if (diceroll == 5) {
      rect(diex, diey, 50, 50);
      ellipse(diex + 15, diey + 15, 10, 10);
      ellipse(diex + 35, diey + 35, 10, 10);
      ellipse(diex + 15, diey + 35, 10, 10);
      ellipse(diex + 35, diey + 15, 10, 10);  
      ellipse(diex + 25, diey + 25, 10, 10);      
      } else if (diceroll == 6) {
      rect(diex, diey, 50, 50);
      ellipse(diex + 15, diey + 10, 10, 10);
      ellipse(diex + 35, diey + 40, 10, 10);
      ellipse(diex + 15, diey + 40, 10, 10);
      ellipse(diex + 35, diey + 10, 10, 10); 
      ellipse(diex + 15, diey + 25, 10, 10);
      ellipse(diex + 35, diey + 25, 10, 10);
      }
  }
}
