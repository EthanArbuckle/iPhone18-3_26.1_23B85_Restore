@interface FBSSceneSettings(PRScene)
- (double)pr_deviceMotionUpdateInterval;
- (double)pr_horizontalTitleBoundingRect;
- (double)pr_verticalTitleBoundingRect;
- (id)pr_posterConfiguredProperties;
- (uint64_t)pr_effectiveMotionEffectsMode;
- (uint64_t)pr_isAlternateDateEnabled;
- (uint64_t)pr_isDepthEffectDisallowed;
- (void)pr_caseColor;
- (void)pr_posterAmbientConfiguration;
- (void)pr_posterConfigurableOptions;
- (void)pr_posterHostedContentSettings;
- (void)pr_posterTitleStyleConfiguration;
@end

@implementation FBSSceneSettings(PRScene)

- (id)pr_posterConfiguredProperties
{
  v2 = [a1 transientLocalSettings];
  v3 = [v2 objectForSetting:20564];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = v6;
  }

  else
  {
    v5 = [a1 otherSettings];
    v7 = [v5 objectForSetting:20564];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  return v11;
}

- (void)pr_posterConfigurableOptions
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20563];
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

- (void)pr_posterTitleStyleConfiguration
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20565];
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

- (void)pr_caseColor
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20562];
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

- (double)pr_deviceMotionUpdateInterval
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20576];
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

- (uint64_t)pr_effectiveMotionEffectsMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20574];

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

- (uint64_t)pr_isDepthEffectDisallowed
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20567];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)pr_posterAmbientConfiguration
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20566];
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

- (uint64_t)pr_isAlternateDateEnabled
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20763];

  return v2;
}

- (double)pr_horizontalTitleBoundingRect
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20572];

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

- (double)pr_verticalTitleBoundingRect
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20573];

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

- (void)pr_posterHostedContentSettings
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20577];

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

@end