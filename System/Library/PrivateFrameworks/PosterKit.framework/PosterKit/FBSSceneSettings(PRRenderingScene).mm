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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20664];
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
  v2 = [a1 otherSettings];
  v3 = [v2 objectForSetting:20668];
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
    v8 = [v7 integerValue];
  }

  else
  {
    v9 = [a1 bls_visualState];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 adjustedLuminance];
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

- (uint64_t)pr_titleAlignment
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20662];
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
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)pr_appliesCountertransformForRotation
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20669];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (uint64_t)pr_wakeSourceIsSwipeToUnlock
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20663];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

@end