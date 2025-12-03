@interface UIView(AXWebKitHelper)
- (double)accessibilityConvertPointFromSceneReferenceCoordinates:()AXWebKitHelper;
- (uint64_t)accessibilityConvertRectToSceneReferenceCoordinates:()AXWebKitHelper;
@end

@implementation UIView(AXWebKitHelper)

- (double)accessibilityConvertPointFromSceneReferenceCoordinates:()AXWebKitHelper
{
  window = [self window];
  v7 = AXConvertFromDisplayPointToWindowPoint(window, a2, a3);
  v9 = v8;

  window2 = [self window];
  [self convertPoint:window2 fromView:{v7, v9}];
  v12 = v11;

  return v12;
}

- (uint64_t)accessibilityConvertRectToSceneReferenceCoordinates:()AXWebKitHelper
{
  v8 = UIAccessibilityConvertFrameToScreenCoordinates(*&a2, self);

  return [(UIView *)self _accessibilityConvertSystemBoundedScreenRectToContextSpace:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
}

@end