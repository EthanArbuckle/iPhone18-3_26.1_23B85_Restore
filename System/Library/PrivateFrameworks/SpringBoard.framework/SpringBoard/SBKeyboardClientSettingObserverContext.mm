@interface SBKeyboardClientSettingObserverContext
- (void)setOldClientSettings:(uint64_t)settings;
- (void)setScene:(uint64_t)scene;
@end

@implementation SBKeyboardClientSettingObserverContext

- (void)setScene:(uint64_t)scene
{
  if (scene)
  {
    objc_storeStrong((scene + 8), a2);
  }
}

- (void)setOldClientSettings:(uint64_t)settings
{
  if (settings)
  {
    objc_storeStrong((settings + 16), a2);
  }
}

@end