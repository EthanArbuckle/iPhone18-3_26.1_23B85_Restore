@interface FBSMutableSceneClientSettings(PRScene)
- (void)pr_setDepthEffectDisabled:()PRScene;
- (void)pr_setDeviceMotionEventsRequested:()PRScene;
- (void)pr_setDeviceMotionMode:()PRScene;
- (void)pr_setMotionEffectsDisabled:()PRScene;
- (void)pr_setPreferredDeviceMotionUpdateInterval:()PRScene;
- (void)pr_setStatusBarTintColor:()PRScene;
- (void)pr_setSupportedMotionEffectsMode:()PRScene;
- (void)pr_setTimeDescriptor:()PRScene;
- (void)pr_setTitleReticleFrame:()PRScene;
- (void)pr_setVibrancyConfiguration:()PRScene;
@end

@implementation FBSMutableSceneClientSettings(PRScene)

- (void)pr_setTimeDescriptor:()PRScene
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Prtimedescript.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneClientSettings(PRScene) pr_setTimeDescriptor:a2];
    }
  }

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20612];
}

- (void)pr_setStatusBarTintColor:()PRScene
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Bscolor.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneClientSettings(PRScene) pr_setStatusBarTintColor:a2];
    }
  }

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20613];
}

- (void)pr_setDepthEffectDisabled:()PRScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20614];
}

- (void)pr_setSupportedMotionEffectsMode:()PRScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20616];
}

- (void)pr_setDeviceMotionEventsRequested:()PRScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20617];
}

- (void)pr_setMotionEffectsDisabled:()PRScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20618];
}

- (void)pr_setVibrancyConfiguration:()PRScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20615];
}

- (void)pr_setPreferredDeviceMotionUpdateInterval:()PRScene
{
  otherSettings = [self otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [otherSettings setObject:v3 forSetting:20619];
}

- (void)pr_setTitleReticleFrame:()PRScene
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:20620];
}

- (void)pr_setDeviceMotionMode:()PRScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20621];
}

- (void)pr_setTimeDescriptor:()PRScene .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRTimeDescriptorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_setStatusBarTintColor:()PRScene .cold.1(char *a1)
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

@end