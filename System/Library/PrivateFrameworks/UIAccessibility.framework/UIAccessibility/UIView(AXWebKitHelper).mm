@interface UIView(AXWebKitHelper)
- (double)accessibilityConvertPointFromSceneReferenceCoordinates:()AXWebKitHelper;
- (uint64_t)accessibilityConvertRectToSceneReferenceCoordinates:()AXWebKitHelper;
@end

@implementation UIView(AXWebKitHelper)

- (double)accessibilityConvertPointFromSceneReferenceCoordinates:()AXWebKitHelper
{
  v6 = [a1 window];
  v7 = AXConvertFromDisplayPointToWindowPoint(v6, a2, a3);
  v9 = v8;

  v10 = [a1 window];
  [a1 convertPoint:v10 fromView:{v7, v9}];
  v12 = v11;

  return v12;
}

- (uint64_t)accessibilityConvertRectToSceneReferenceCoordinates:()AXWebKitHelper
{
  v8 = UIAccessibilityConvertFrameToScreenCoordinates(*&a2, a1);

  return [(UIView *)a1 _accessibilityConvertSystemBoundedScreenRectToContextSpace:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
}

@end