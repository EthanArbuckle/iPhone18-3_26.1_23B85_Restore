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
  [self bounds];
  MidX = CGRectGetMidX(v4);
  [self bounds];
  CGRectGetMidY(v5);
  return MidX;
}

- (double)zw_convertRectToScreenCoordinates:()CACZoomExtras
{
  window = [self window];
  v11 = window;
  if (window)
  {
    [window convertRect:self fromView:{a2, a3, a4, a5}];
    [v11 _convertRectToSceneReferenceSpace:?];
    a2 = v12;
  }

  return a2;
}

- (double)zw_convertRectFromScreenCoordinates:()CACZoomExtras
{
  window = [self window];
  v11 = window;
  if (window)
  {
    [window _convertRectFromSceneReferenceSpace:{a2, a3, a4, a5}];
    [v11 convertRect:self toView:?];
    a2 = v12;
  }

  return a2;
}

- (double)zw_convertPointToScreenCoordinates:()CACZoomExtras
{
  window = [self window];
  v7 = window;
  if (window)
  {
    [window convertPoint:self fromView:{a2, a3}];
    [v7 _convertPointToSceneReferenceSpace:?];
    a2 = v8;
  }

  return a2;
}

- (double)zw_convertPointFromScreenCoordinates:()CACZoomExtras
{
  window = [self window];
  v7 = window;
  if (window)
  {
    [window _convertPointFromSceneReferenceSpace:{a2, a3}];
    [v7 convertPoint:self toView:?];
    a2 = v8;
  }

  return a2;
}

- (uint64_t)zw_convertBoundsToScreenCoordinates
{
  [self bounds];

  return [self zw_convertRectToScreenCoordinates:?];
}

@end