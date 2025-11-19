@interface BLSBacklightFBSSceneEnvironment
@end

@implementation BLSBacklightFBSSceneEnvironment

id __56__BLSBacklightFBSSceneEnvironment_UIKit__initWithScene___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = bls_scenes_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) debugDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "create BLSBacklightFBSSceneEnvironment (BacklightUIServices) for scene:%@", &v6, 0xCu);
  }

  v3 = [*(a1 + 40) initWithFBSScene:*(a1 + 48)];

  return v3;
}

@end