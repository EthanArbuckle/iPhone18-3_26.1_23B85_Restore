@interface FBSMutableSceneSettings(PRScene)
- (void)pr_setAlternateDateEnabled:()PRScene;
- (void)pr_setCaseColor:()PRScene;
- (void)pr_setDepthEffectDisallowed:()PRScene;
- (void)pr_setDeviceMotionUpdateInterval:()PRScene;
- (void)pr_setEffectiveMotionEffectsMode:()PRScene;
- (void)pr_setHorizontalTitleBoundingRect:()PRScene;
- (void)pr_setPosterAmbientConfiguration:()PRScene;
- (void)pr_setPosterConfigurableOptions:()PRScene;
- (void)pr_setPosterConfiguredProperties:()PRScene;
- (void)pr_setPosterHostedContentSettings:()PRScene;
- (void)pr_setPosterTitleStyleConfiguration:()PRScene;
- (void)pr_setVerticalTitleBoundingRect:()PRScene;
@end

@implementation FBSMutableSceneSettings(PRScene)

- (void)pr_setCaseColor:()PRScene
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Bscolor.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneSettings(PRScene) pr_setCaseColor:a2];
    }
  }

  v5 = [a1 otherSettings];
  [v5 setObject:v6 forSetting:20562];
}

- (void)pr_setPosterConfigurableOptions:()PRScene
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Prposterconfig_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneSettings(PRScene) pr_setPosterConfigurableOptions:a2];
    }
  }

  v5 = [a1 otherSettings];
  [v5 setObject:v6 forSetting:20563];
}

- (void)pr_setPosterConfiguredProperties:()PRScene
{
  v20 = a3;
  if (v20)
  {
    NSClassFromString(&cfstr_Prposterconfig_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneSettings(PRScene) pr_setPosterConfiguredProperties:a2];
    }

    v5 = [PRPosterConfiguredProperties configuredPropertiesSanitizedForPassingToExtension:v20];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 otherSettings];
  [v6 setObject:v5 forSetting:20564];

  v7 = [a1 transientLocalSettings];
  [v7 setObject:v20 forSetting:20564];

  v8 = [v20 complicationLayout];
  v9 = [v20 renderingConfiguration];
  v10 = [v8 complications];
  v11 = [v10 count];

  v12 = [v8 sidebarComplications];
  v13 = [v12 count];

  v14 = [v8 inlineComplication];

  v15 = [v8 complicationsUseBottomLayout];
  if (v9)
  {
    v16 = [v20 titleStyleConfiguration];
    v17 = [v16 prefersVerticalTitleLayout];

    [a1 pr_setDepthEffectDisallowed:{(objc_msgSend(v9, "isDepthEffectDisabled") | v17) & 1}];
    if ([v9 areMotionEffectsDisabled])
    {
      [a1 pr_setEffectiveMotionEffectsMode:0];
    }
  }

  v18 = [v20 titleStyleConfiguration];
  v19 = [v18 isAlternateDateEnabled];

  [a1 pr_setAlternateDateEnabled:v19];
  [a1 pui_setInlineComplicationConfigured:v14 != 0];
  [a1 pui_setComplicationRowConfigured:v11 != 0];
  [a1 pui_setComplicationSidebarConfigured:v13 != 0];
  [a1 pui_setComplicationRowAtBottom:v15];
}

- (void)pr_setPosterTitleStyleConfiguration:()PRScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20565];
}

- (void)pr_setPosterAmbientConfiguration:()PRScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20566];
}

- (void)pr_setDepthEffectDisallowed:()PRScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20567];
}

- (void)pr_setAlternateDateEnabled:()PRScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20763];
}

- (void)pr_setHorizontalTitleBoundingRect:()PRScene
{
  v9 = [a1 otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v9 setObject:v10 forSetting:20572];
}

- (void)pr_setVerticalTitleBoundingRect:()PRScene
{
  v9 = [a1 otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v9 setObject:v10 forSetting:20573];
}

- (void)pr_setEffectiveMotionEffectsMode:()PRScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20574];
}

- (void)pr_setDeviceMotionUpdateInterval:()PRScene
{
  v4 = [a1 otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v4 setObject:v3 forSetting:20576];
}

- (void)pr_setPosterHostedContentSettings:()PRScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20577];
}

- (void)pr_setCaseColor:()PRScene .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSColorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_setPosterConfigurableOptions:()PRScene .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurableOptionsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_setPosterConfiguredProperties:()PRScene .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfiguredPropertiesClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end