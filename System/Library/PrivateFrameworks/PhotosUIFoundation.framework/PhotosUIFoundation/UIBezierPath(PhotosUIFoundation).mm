@interface UIBezierPath(PhotosUIFoundation)
+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation cornerRadius:continuousCorners:;
+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation topLeftCornerRadius:topRightCornerRadius:bottomLeftCornerRadius:bottomRightCornerRadius:;
@end

@implementation UIBezierPath(PhotosUIFoundation)

+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation cornerRadius:continuousCorners:
{
  if (a3)
  {
    [self _bezierPathWithPillRect:? cornerRadius:?];
  }

  else
  {
    [self _bezierPathWithArcRoundedRect:? cornerRadius:?];
  }
  v3 = ;

  return v3;
}

+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation topLeftCornerRadius:topRightCornerRadius:bottomLeftCornerRadius:bottomRightCornerRadius:
{
  MaxX = CGRectGetMaxX(*&a2);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MaxY = CGRectGetMaxY(v28);
  v19 = MaxY - a9;
  v20 = MaxX - a9;
  v26 = a8;
  v21 = MaxY - a8;
  v22 = a6;
  bezierPath = [self bezierPath];
  [bezierPath moveToPoint:{a6, 0.0}];
  [bezierPath addLineToPoint:{MaxX - a7, 0.0}];
  [bezierPath addQuadCurveToPoint:MaxX controlPoint:{a7, MaxX, 0.0}];
  if (v19 != a7)
  {
    [bezierPath addLineToPoint:{MaxX, v19}];
  }

  [bezierPath addQuadCurveToPoint:v20 controlPoint:{MaxY, MaxX, MaxY, *&a6}];
  [bezierPath addLineToPoint:{v26, MaxY}];
  [bezierPath addQuadCurveToPoint:0.0 controlPoint:{v21, 0.0, MaxY}];
  if (v21 != v22)
  {
    [bezierPath addLineToPoint:{0.0, v22}];
  }

  [bezierPath addQuadCurveToPoint:v22 controlPoint:{0.0, 0.0, 0.0}];
  [bezierPath setLineJoinStyle:1];

  return bezierPath;
}

@end