@interface FBSSceneSettings(PRRenderingScene)
- (double)pr_unlockProgress;
- (uint64_t)pr_adjustedLuminance;
- (uint64_t)pr_appliesCountertransformForRotation;
- (uint64_t)pr_titleAlignment;
- (uint64_t)pr_wakeSourceIsSwipeToUnlock;
@end

@implementation FBSSceneSettings(PRRenderingScene)

- (double)pr_unlockProgress
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20664];
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

  if (v6)
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (uint64_t)pr_adjustedLuminance
{
  otherSettings = [self otherSettings];
  v3 = [otherSettings objectForSetting:20668];
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

  v7 = v6;

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    bls_visualState = [self bls_visualState];
    v10 = bls_visualState;
    if (bls_visualState)
    {
      integerValue = [bls_visualState adjustedLuminance];
    }

    else
    {
      integerValue = 2;
    }
  }

  return integerValue;
}

- (uint64_t)pr_titleAlignment
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20662];
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

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (uint64_t)pr_appliesCountertransformForRotation
{
  otherSettings = [self otherSettings];
  [otherSettings flagForSetting:20669];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (uint64_t)pr_wakeSourceIsSwipeToUnlock
{
  otherSettings = [self otherSettings];
  [otherSettings flagForSetting:20663];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

@end