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

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20562];
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

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20563];
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

  otherSettings = [self otherSettings];
  [otherSettings setObject:v5 forSetting:20564];

  transientLocalSettings = [self transientLocalSettings];
  [transientLocalSettings setObject:v20 forSetting:20564];

  complicationLayout = [v20 complicationLayout];
  renderingConfiguration = [v20 renderingConfiguration];
  complications = [complicationLayout complications];
  v11 = [complications count];

  sidebarComplications = [complicationLayout sidebarComplications];
  v13 = [sidebarComplications count];

  inlineComplication = [complicationLayout inlineComplication];

  complicationsUseBottomLayout = [complicationLayout complicationsUseBottomLayout];
  if (renderingConfiguration)
  {
    titleStyleConfiguration = [v20 titleStyleConfiguration];
    prefersVerticalTitleLayout = [titleStyleConfiguration prefersVerticalTitleLayout];

    [self pr_setDepthEffectDisallowed:{(objc_msgSend(renderingConfiguration, "isDepthEffectDisabled") | prefersVerticalTitleLayout) & 1}];
    if ([renderingConfiguration areMotionEffectsDisabled])
    {
      [self pr_setEffectiveMotionEffectsMode:0];
    }
  }

  titleStyleConfiguration2 = [v20 titleStyleConfiguration];
  isAlternateDateEnabled = [titleStyleConfiguration2 isAlternateDateEnabled];

  [self pr_setAlternateDateEnabled:isAlternateDateEnabled];
  [self pui_setInlineComplicationConfigured:inlineComplication != 0];
  [self pui_setComplicationRowConfigured:v11 != 0];
  [self pui_setComplicationSidebarConfigured:v13 != 0];
  [self pui_setComplicationRowAtBottom:complicationsUseBottomLayout];
}

- (void)pr_setPosterTitleStyleConfiguration:()PRScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20565];
}

- (void)pr_setPosterAmbientConfiguration:()PRScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20566];
}

- (void)pr_setDepthEffectDisallowed:()PRScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20567];
}

- (void)pr_setAlternateDateEnabled:()PRScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20763];
}

- (void)pr_setHorizontalTitleBoundingRect:()PRScene
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:20572];
}

- (void)pr_setVerticalTitleBoundingRect:()PRScene
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:20573];
}

- (void)pr_setEffectiveMotionEffectsMode:()PRScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20574];
}

- (void)pr_setDeviceMotionUpdateInterval:()PRScene
{
  otherSettings = [self otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [otherSettings setObject:v3 forSetting:20576];
}

- (void)pr_setPosterHostedContentSettings:()PRScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20577];
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