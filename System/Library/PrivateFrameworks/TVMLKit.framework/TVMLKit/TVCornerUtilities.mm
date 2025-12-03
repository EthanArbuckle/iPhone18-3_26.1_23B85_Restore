@interface TVCornerUtilities
+ (CGPath)createPathForRadii:(TVCornerRadii)radii inRect:(CGRect)rect;
+ (CGPath)createPathForRadii:(TVCornerRadii)radii inRect:(CGRect)rect isContinuous:(BOOL)continuous;
+ (TVCornerRadii)flipCGOriginRadii:(TVCornerRadii)radii;
+ (TVCornerRadii)radiiFromRadius:(double)radius;
@end

@implementation TVCornerUtilities

+ (TVCornerRadii)radiiFromRadius:(double)radius
{
  result.bottomRight = radius;
  result.bottomLeft = radius;
  result.topRight = radius;
  result.topLeft = radius;
  return result;
}

+ (TVCornerRadii)flipCGOriginRadii:(TVCornerRadii)radii
{
  topRight = radii.topRight;
  topLeft = radii.topLeft;
  bottomLeft = radii.bottomLeft;
  bottomRight = radii.bottomRight;
  v7 = topLeft;
  v8 = topRight;
  result.bottomRight = v8;
  result.bottomLeft = v7;
  result.topRight = bottomRight;
  result.topLeft = bottomLeft;
  return result;
}

+ (CGPath)createPathForRadii:(TVCornerRadii)radii inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topRight = radii.topRight;
  topLeft = radii.topLeft;
  v12 = objc_opt_class();

  return [v12 createPathForRadii:0 inRect:topLeft isContinuous:{topRight, bottomLeft, bottomRight, x, y, width, height}];
}

+ (CGPath)createPathForRadii:(TVCornerRadii)radii inRect:(CGRect)rect isContinuous:(BOOL)continuous
{
  continuousCopy = continuous;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  radius = radii.topRight;
  topLeft = radii.topLeft;
  MinX = CGRectGetMinX(rect);
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
  if (continuousCopy)
  {
    [self radiusFromCornerRadii:{topLeft, radius, bottomLeft, bottomRight}];
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