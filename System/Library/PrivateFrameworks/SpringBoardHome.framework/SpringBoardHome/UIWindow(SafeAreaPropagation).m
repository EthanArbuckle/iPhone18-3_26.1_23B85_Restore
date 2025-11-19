@interface UIWindow(SafeAreaPropagation)
- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary;
@end

@implementation UIWindow(SafeAreaPropagation)

- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary
{
  v1 = [a1 rootViewController];
  [v1 _sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
}

@end