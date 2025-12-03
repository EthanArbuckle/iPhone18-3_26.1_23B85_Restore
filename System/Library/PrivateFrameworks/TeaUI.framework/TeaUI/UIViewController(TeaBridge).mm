@interface UIViewController(TeaBridge)
- (uint64_t)ts_isVideoPlayerPresentedFullScreen;
- (uint64_t)ts_setAppearanceTransitionsAreDisabled:()TeaBridge;
@end

@implementation UIViewController(TeaBridge)

- (uint64_t)ts_setAppearanceTransitionsAreDisabled:()TeaBridge
{
  appearanceTransitionsAreDisabled = [self appearanceTransitionsAreDisabled];
  [self setAppearanceTransitionsAreDisabled:a3];
  return appearanceTransitionsAreDisabled;
}

- (uint64_t)ts_isVideoPlayerPresentedFullScreen
{
  presentedViewController = [self presentedViewController];

  if (!presentedViewController)
  {
    return 0;
  }

  presentedViewController2 = [self presentedViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  v6 = [v5 isEqualToString:@"AVFullScreenViewController"];
  return v6;
}

@end