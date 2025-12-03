@interface SBClientSettingObserverContext
- (void)setOldClientSettings:(uint64_t)settings;
- (void)setScene:(uint64_t)scene;
- (void)setSceneHandle:(uint64_t)handle;
@end

@implementation SBClientSettingObserverContext

- (void)setScene:(uint64_t)scene
{
  if (scene)
  {
    OUTLINED_FUNCTION_3_32(scene, a2);
  }
}

- (void)setSceneHandle:(uint64_t)handle
{
  if (handle)
  {
    OUTLINED_FUNCTION_2_36(handle, a2);
  }
}

- (void)setOldClientSettings:(uint64_t)settings
{
  if (settings)
  {
    OUTLINED_FUNCTION_1_34(settings, a2);
  }
}

@end