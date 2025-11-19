@interface UIBezierPath(PhotosUIFoundation)
+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation cornerRadius:continuousCorners:;
+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation topLeftCornerRadius:topRightCornerRadius:bottomLeftCornerRadius:bottomRightCornerRadius:;
@end

@implementation UIBezierPath(PhotosUIFoundation)

+ (id)px_bezierPathWithRoundedRect:()PhotosUIFoundation cornerRadius:continuousCorners:
{
  if (a3)
  {
    [a1 _bezierPathWithPillRect:? cornerRadius:?];
  }

  else
  {
    [a1 _bezierPathWithArcRoundedRect:? cornerRadius:?];
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
  v23 = [a1 bezierPath];
  [v23 moveToPoint:{a6, 0.0}];
  [v23 addLineToPoint:{MaxX - a7, 0.0}];
  [v23 addQuadCurveToPoint:MaxX controlPoint:{a7, MaxX, 0.0}];
  if (v19 != a7)
  {
    [v23 addLineToPoint:{MaxX, v19}];
  }

  [v23 addQuadCurveToPoint:v20 controlPoint:{MaxY, MaxX, MaxY, *&a6}];
  [v23 addLineToPoint:{v26, MaxY}];
  [v23 addQuadCurveToPoint:0.0 controlPoint:{v21, 0.0, MaxY}];
  if (v21 != v22)
  {
    [v23 addLineToPoint:{0.0, v22}];
  }

  [v23 addQuadCurveToPoint:v22 controlPoint:{0.0, 0.0, 0.0}];
  [v23 setLineJoinStyle:1];

  return v23;
}

@end