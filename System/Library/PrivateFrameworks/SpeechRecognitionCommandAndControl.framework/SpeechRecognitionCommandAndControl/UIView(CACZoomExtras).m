@interface UIView(CACZoomExtras)
- (double)zw_boundsCenter;
- (double)zw_convertPointFromScreenCoordinates:()CACZoomExtras;
- (double)zw_convertPointToScreenCoordinates:()CACZoomExtras;
- (double)zw_convertRectFromScreenCoordinates:()CACZoomExtras;
- (double)zw_convertRectToScreenCoordinates:()CACZoomExtras;
- (uint64_t)zw_convertBoundsToScreenCoordinates;
@end

@implementation UIView(CACZoomExtras)

- (double)zw_boundsCenter
{
  [a1 bounds];
  MidX = CGRectGetMidX(v4);
  [a1 bounds];
  CGRectGetMidY(v5);
  return MidX;
}

- (double)zw_convertRectToScreenCoordinates:()CACZoomExtras
{
  v10 = [a1 window];
  v11 = v10;
  if (v10)
  {
    [v10 convertRect:a1 fromView:{a2, a3, a4, a5}];
    [v11 _convertRectToSceneReferenceSpace:?];
    a2 = v12;
  }

  return a2;
}

- (double)zw_convertRectFromScreenCoordinates:()CACZoomExtras
{
  v10 = [a1 window];
  v11 = v10;
  if (v10)
  {
    [v10 _convertRectFromSceneReferenceSpace:{a2, a3, a4, a5}];
    [v11 convertRect:a1 toView:?];
    a2 = v12;
  }

  return a2;
}

- (double)zw_convertPointToScreenCoordinates:()CACZoomExtras
{
  v6 = [a1 window];
  v7 = v6;
  if (v6)
  {
    [v6 convertPoint:a1 fromView:{a2, a3}];
    [v7 _convertPointToSceneReferenceSpace:?];
    a2 = v8;
  }

  return a2;
}

- (double)zw_convertPointFromScreenCoordinates:()CACZoomExtras
{
  v6 = [a1 window];
  v7 = v6;
  if (v6)
  {
    [v6 _convertPointFromSceneReferenceSpace:{a2, a3}];
    [v7 convertPoint:a1 toView:?];
    a2 = v8;
  }

  return a2;
}

- (uint64_t)zw_convertBoundsToScreenCoordinates
{
  [a1 bounds];

  return [a1 zw_convertRectToScreenCoordinates:?];
}

@end