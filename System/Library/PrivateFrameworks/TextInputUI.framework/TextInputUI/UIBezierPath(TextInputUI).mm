@interface UIBezierPath(TextInputUI)
+ (id)_bezierPathRect:()TextInputUI topLeftRadius:topRightRadius:bottomRightRadius:bottomLeftRadius:;
@end

@implementation UIBezierPath(TextInputUI)

+ (id)_bezierPathRect:()TextInputUI topLeftRadius:topRightRadius:bottomRightRadius:bottomLeftRadius:
{
  MinX = CGRectGetMinX(*&self);
  v24.origin.x = self;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = self;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = self;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  MaxY = CGRectGetMaxY(v26);
  v17 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v17 moveToPoint:{MinX + a5, MinY}];
  [v17 addLineToPoint:{MaxX - a6, MinY}];
  [v17 addArcWithCenter:1 radius:MaxX - a6 startAngle:MinY + a6 endAngle:a6 clockwise:{4.71238898, 0.0}];
  [v17 addLineToPoint:{MaxX, MaxY - a7}];
  [v17 addArcWithCenter:1 radius:MaxX - a7 startAngle:MaxY - a7 endAngle:a7 clockwise:{0.0, 1.57079633}];
  [v17 addLineToPoint:{MinX + a8, MaxY}];
  [v17 addArcWithCenter:1 radius:MinX + a8 startAngle:MaxY - a8 endAngle:a8 clockwise:{1.57079633, 3.14159265}];
  [v17 addLineToPoint:{MinX, MinY + a5}];
  [v17 addArcWithCenter:1 radius:MinX + a5 startAngle:MinY + a5 endAngle:a5 clockwise:{3.14159265, 4.71238898}];
  [v17 closePath];

  return v17;
}

@end