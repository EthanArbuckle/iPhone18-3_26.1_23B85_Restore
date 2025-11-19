@interface _UIBacklightUISceneEnvironmentActionHandler
- (_UIBacklightUISceneEnvironmentActionHandler)init;
@end

@implementation _UIBacklightUISceneEnvironmentActionHandler

- (_UIBacklightUISceneEnvironmentActionHandler)init
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIBacklightUISceneEnvironmentActionHandler;
  v2 = [(_UIBacklightUISceneEnvironmentActionHandler *)&v7 init];
  if (v2)
  {
    v3 = bls_scenes_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "create BLSBacklightUISceneEnvironmentActionHandler:%@", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E698E530]);
    fbsSceneEnvironmentDiffAction = v2->_fbsSceneEnvironmentDiffAction;
    v2->_fbsSceneEnvironmentDiffAction = v4;
  }

  return v2;
}

@end