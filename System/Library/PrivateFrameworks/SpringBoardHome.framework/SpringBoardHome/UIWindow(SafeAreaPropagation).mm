@interface UIWindow(SafeAreaPropagation)
- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary;
@end

@implementation UIWindow(SafeAreaPropagation)

- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary
{
  rootViewController = [self rootViewController];
  [rootViewController _sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
}

@end