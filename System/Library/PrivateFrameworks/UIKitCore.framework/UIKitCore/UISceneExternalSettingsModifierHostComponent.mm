@interface UISceneExternalSettingsModifierHostComponent
@end

@implementation UISceneExternalSettingsModifierHostComponent

void __71___UISceneExternalSettingsModifierHostComponent_fetchSettingsModifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1 + 32) + 32), a2);
  if (v7)
  {
    v8 = *(__UILogGetCategoryCachedImpl("SceneHostingExternalSettingsModifiers", &_MergedGlobals_1_27) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = v9;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v10 stringWithFormat:@"<%@: %p>", v13, v11];
      }

      else
      {
        v14 = @"(nil)";
      }

      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v7;
      v20 = "%{public}@: Error while fetching settings modifiers from endpoint: %{public}@, continuing with activation anyway";
LABEL_12:
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("SceneHostingExternalSettingsModifiers", &qword_1ED499498) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = v15;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v14 = [v16 stringWithFormat:@"<%@: %p>", v19, v17];
      }

      else
      {
        v14 = @"(nil)";
      }

      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v6;
      v20 = "%{public}@: Using settings modifiers: %{public}@";
      goto LABEL_12;
    }
  }

  [*(a1 + 40) invalidate];
}

@end