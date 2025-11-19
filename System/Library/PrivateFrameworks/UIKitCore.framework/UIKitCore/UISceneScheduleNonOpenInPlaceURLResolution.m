@interface UISceneScheduleNonOpenInPlaceURLResolution
@end

@implementation UISceneScheduleNonOpenInPlaceURLResolution

void ___UISceneScheduleNonOpenInPlaceURLResolution_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scene];

  if (!v2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138412290;
        v13 = v8;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Scene session does not have a scene: session: %@", buf, 0xCu);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &audit_stringFileProvider_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Scene session does not have a scene: session: %@", buf, 0xCu);
      }
    }
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) scene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UISceneScheduleNonOpenInPlaceURLResolution_block_invoke_76;
  v9[3] = &unk_1E7126CD8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  _UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString(v3, v4, v9);
}

void ___UISceneScheduleNonOpenInPlaceURLResolution_block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[UIOpenURLContext alloc] initWithURL:v3 options:*(a1 + 32)];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  v5 = [*(a1 + 40) scene];
  _UISceneSendOpenURLActionCallbackForScene(v4, v5);
}

@end