@interface SBKeyboardClientSettingObserverContext
- (void)setOldClientSettings:(uint64_t)a1;
- (void)setScene:(uint64_t)a1;
@end

@implementation SBKeyboardClientSettingObserverContext

- (void)setScene:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setOldClientSettings:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

@end