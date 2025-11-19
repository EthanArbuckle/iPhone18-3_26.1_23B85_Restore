@interface UIViewController(TeaBridge)
- (uint64_t)ts_isVideoPlayerPresentedFullScreen;
- (uint64_t)ts_setAppearanceTransitionsAreDisabled:()TeaBridge;
@end

@implementation UIViewController(TeaBridge)

- (uint64_t)ts_setAppearanceTransitionsAreDisabled:()TeaBridge
{
  v5 = [a1 appearanceTransitionsAreDisabled];
  [a1 setAppearanceTransitionsAreDisabled:a3];
  return v5;
}

- (uint64_t)ts_isVideoPlayerPresentedFullScreen
{
  v2 = [a1 presentedViewController];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 presentedViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  v6 = [v5 isEqualToString:@"AVFullScreenViewController"];
  return v6;
}

@end