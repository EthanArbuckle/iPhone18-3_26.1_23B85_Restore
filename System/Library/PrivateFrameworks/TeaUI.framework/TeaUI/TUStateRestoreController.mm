@interface TUStateRestoreController
- (BOOL)isStateRestorationAllowed;
- (void)sceneDidEnterBackground;
@end

@implementation TUStateRestoreController

- (BOOL)isStateRestorationAllowed
{
  selfCopy = self;
  v3 = StateRestoreController.isStateRestorationAllowed.getter();

  return v3 & 1;
}

- (void)sceneDidEnterBackground
{
  selfCopy = self;
  StateRestoreController.sceneDidEnterBackground()();
}

@end