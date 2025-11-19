@interface TVCornerUtilities
+ (CGPath)createPathForRadii:(TVCornerRadii)a3 inRect:(CGRect)a4;
+ (CGPath)createPathForRadii:(TVCornerRadii)a3 inRect:(CGRect)a4 isContinuous:(BOOL)a5;
+ (TVCornerRadii)flipCGOriginRadii:(TVCornerRadii)a3;
+ (TVCornerRadii)radiiFromRadius:(double)a3;
@end

@implementation TVCornerUtilities

+ (TVCornerRadii)radiiFromRadius:(double)a3
{
  result.bottomRight = a3;
  result.bottomLeft = a3;
  result.topRight = a3;
  result.topLeft = a3;
  return result;
}

+ (TVCornerRadii)flipCGOriginRadii:(TVCornerRadii)a3
{
  topRight = a3.topRight;
  topLeft = a3.topLeft;
  bottomLeft = a3.bottomLeft;
  bottomRight = a3.bottomRight;
  v7 = topLeft;
  v8 = topRight;
  result.bottomRight = v8;
  result.bottomLeft = v7;
  result.topRight = bottomRight;
  result.topLeft = bottomLeft;
  return result;
}

+ (CGPath)createPathForRadii:(TVCornerRadii)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  bottomRight = a3.bottomRight;
  bottomLeft = a3.bottomLeft;
  topRight = a3.topRight;
  topLeft = a3.topLeft;
  v12 = objc_opt_class();

  return [v12 createPathForRadii:0 inRect:topLeft isContinuous:{topRight, bottomLeft, bottomRight, x, y, width, height}];
}

+ (CGPath)createPathForRadii:(TVCornerRadii)a3 inRect:(CGRect)a4 isContinuous:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  bottomRight = a3.bottomRight;
  bottomLeft = a3.bottomLeft;
  radius = a3.topRight;
  topLeft = a3.topLeft;
  MinX = CGRectGetMinX(a4);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxY = CGRectGetMaxY(v26);
  if (v5)
  {
    [a1 radiusFromCornerRadii:{topLeft, radius, bottomLeft, bottomRight}];
    v17 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:MinX cornerRadius:{MinY, MaxX - MinX, MaxY - MinY, v16}];
    v18 = MEMORY[0x26D6AF2C0]([v17 CGPath]);

    return v18;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, topLeft + MinX, MinY);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, radius + MinY, radius);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, MaxX - bottomRight, MaxY, bottomRight);
    CGPathAddArcToPoint(Mutable, 0, MinX, MaxY, MinX, MaxY - bottomLeft, bottomLeft);
    CGPathAddArcToPoint(Mutable, 0, MinX, MinY, topLeft + MinX, MinY, topLeft);
    return Mutable;
  }
}

@end