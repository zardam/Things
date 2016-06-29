//Mark Benson
// CC NC 2013
//
//Raspberry Pi mount for Aluminium frame (6mm) Prusa i3
//
//



translate([0,0,0]) 
rotate(a=0, v=[0,0,0]) 
difference()
{
	union()
	{
	

	//Mounting pads
	color("green") translate([80,18,0]) rotate(a=0, v=[0,0,0]) cylinder(r=4, h=6, $fn=25);
	color("green") translate([25.5,43.5,0]) rotate(a=0, v=[0,0,0]) cylinder(r=4, h=6, $fn=25);


	//Frame

	//Vertical parts
	translate([25.5-3,3,0]) rotate([0,0,0]) cube([6,59,6]);
	translate([80-3,3,0]) rotate([0,0,0]) cube([6,59,6]);

	//Horizontal parts
	translate([25.5,18-2,0]) rotate([0,0,0]) cube([54.5,4,6]);
	translate([25.5,56-12.5-2,0]) rotate([0,0,0]) cube([54.5,4,6]);

	//Pi Clips
	
	//Uprights
	translate([25.5-3,3,0]) rotate([0,0,0]) cube([6,2,15]);
	translate([80-3,3,0]) rotate([0,0,0]) cube([6,2,15]);
	translate([25.5-3,60,0]) rotate([0,0,0]) cube([6,2,15]);
	translate([80-3,60,0]) rotate([0,0,0]) cube([6,2,15]);	

	//Clips
	color("red") translate([25.5-3,5,13.5]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);
	color("red") translate([80-3,5,13.5]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);
	color("red") translate([25.5-3,60,13.5]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);
	color("red") translate([80-3,60,13.5]) rotate(a=90, v=[0,1,0]) cylinder(r=1.5, h=6, $fn=25);

	//Spacer pads
	//color("green") translate([40,30,0]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=3, $fn=25);
	//color("green") translate([60,30,0]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=3, $fn=25);

	}

	union()
	{
	
	//Mounting holes
	color("red") translate([80,18,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.6, h=10, $fn=25);
	color("red") translate([25.5,43.5,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.6, h=10, $fn=25);

	//Countersink holes
	//color("red") translate([80,18,3]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=4, $fn=25);
	//color("red") translate([25.5,43.5,3]) rotate(a=0, v=[0,0,0]) cylinder(r=3, h=4, $fn=25);

	//Spacer pad holes
	//color("red") translate([40,30,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.5, h=10, $fn=25);
	//color("red") translate([60,30,-1]) rotate(a=0, v=[0,0,0]) cylinder(r=1.5, h=10, $fn=25);


	}
}


