@interface UIWindowSceneDeviceOrientationSettingsDiffAction
@end

@implementation UIWindowSceneDeviceOrientationSettingsDiffAction

void __134___UIWindowSceneDeviceOrientationSettingsDiffAction__updateDeviceOrientationWithSettingObserverContext_windowScene_transitionContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[(UIScene *)UIWindowScene];
  v4 = [v2 isEqual:v3];

  v5 = +[UIDevice currentDevice];
  [v5 setOrientation:*(a1 + 40) animated:v4];
}

@end