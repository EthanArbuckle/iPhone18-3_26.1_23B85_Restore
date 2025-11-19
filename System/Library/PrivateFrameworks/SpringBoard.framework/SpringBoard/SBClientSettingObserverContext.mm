@interface SBClientSettingObserverContext
- (void)setOldClientSettings:(uint64_t)a1;
- (void)setScene:(uint64_t)a1;
- (void)setSceneHandle:(uint64_t)a1;
@end

@implementation SBClientSettingObserverContext

- (void)setScene:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_3_32(a1, a2);
  }
}

- (void)setSceneHandle:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_36(a1, a2);
  }
}

- (void)setOldClientSettings:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_34(a1, a2);
  }
}

@end