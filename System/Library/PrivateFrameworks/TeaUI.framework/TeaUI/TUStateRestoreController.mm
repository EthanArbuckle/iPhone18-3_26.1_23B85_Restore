@interface TUStateRestoreController
- (BOOL)isStateRestorationAllowed;
- (void)sceneDidEnterBackground;
@end

@implementation TUStateRestoreController

- (BOOL)isStateRestorationAllowed
{
  v2 = self;
  v3 = StateRestoreController.isStateRestorationAllowed.getter();

  return v3 & 1;
}

- (void)sceneDidEnterBackground
{
  v2 = self;
  StateRestoreController.sceneDidEnterBackground()();
}

@end