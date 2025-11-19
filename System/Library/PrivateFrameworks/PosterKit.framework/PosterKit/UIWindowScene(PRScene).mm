@interface UIWindowScene(PRScene)
- (void)pr_updatePreferences:()PRScene withTransition:configuredSalientRect:;
@end

@implementation UIWindowScene(PRScene)

- (void)pr_updatePreferences:()PRScene withTransition:configuredSalientRect:
{
  v15 = a3;
  v16 = a4;
  v17 = [a1 _FBSScene];
  if (!v17)
  {
    [UIWindowScene(PRScene) pr_updatePreferences:a2 withTransition:? configuredSalientRect:?];
  }

  v18 = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__UIWindowScene_PRScene__pr_updatePreferences_withTransition_configuredSalientRect___block_invoke;
  v22[3] = &unk_1E7845870;
  v23 = v17;
  v24 = v15;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v25 = v16;
  v26 = a1;
  v19 = v16;
  v20 = v15;
  v21 = v18;
  [v21 pr_performUpdate:v22];
}

- (void)pr_updatePreferences:()PRScene withTransition:configuredSalientRect:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no FBSScene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    v7 = @"PRSceneTypes.m";
    v8 = 1024;
    v9 = 360;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end