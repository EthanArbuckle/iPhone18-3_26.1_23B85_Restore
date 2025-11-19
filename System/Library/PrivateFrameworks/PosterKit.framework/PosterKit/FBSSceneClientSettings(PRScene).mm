@interface FBSSceneClientSettings(PRScene)
- (double)pr_preferredDeviceMotionUpdateInterval;
- (double)pr_titleReticleFrame;
- (id)pr_vibrancyConfiguration;
- (uint64_t)pr_areMotionEffectsDisabled;
- (uint64_t)pr_deviceMotionEventsRequested;
- (uint64_t)pr_deviceMotionMode;
- (uint64_t)pr_isDepthEffectDisabled;
- (uint64_t)pr_supportedMotionEffectsMode;
- (void)pr_statusBarTintColor;
- (void)pr_timeDescriptor;
@end

@implementation FBSSceneClientSettings(PRScene)

- (uint64_t)pr_areMotionEffectsDisabled
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20618];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)pr_timeDescriptor
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20612];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)pr_statusBarTintColor
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20613];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (uint64_t)pr_isDepthEffectDisabled
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20614];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (id)pr_vibrancyConfiguration
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20615];

  return v2;
}

- (uint64_t)pr_supportedMotionEffectsMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20616];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 integerValue];
  return v7;
}

- (uint64_t)pr_deviceMotionEventsRequested
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20617];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (double)pr_preferredDeviceMotionUpdateInterval
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20619];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (double)pr_titleReticleFrame
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20620];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 CGRectValue];
  v8 = v7;

  return v8;
}

- (uint64_t)pr_deviceMotionMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20621];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 integerValue];
  return v7;
}

@end