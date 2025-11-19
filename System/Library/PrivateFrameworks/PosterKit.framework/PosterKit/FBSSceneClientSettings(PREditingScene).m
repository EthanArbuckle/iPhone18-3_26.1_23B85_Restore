@interface FBSSceneClientSettings(PREditingScene)
- (uint64_t)pr_areContentsCoveredByModalPresentation;
- (uint64_t)pr_complicationRowMode;
- (uint64_t)pr_isEditingFocusActive;
- (uint64_t)pr_shouldShowEditingReticles;
- (void)pr_injectedEditingClientSettings;
@end

@implementation FBSSceneClientSettings(PREditingScene)

- (uint64_t)pr_isEditingFocusActive
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20812];

  return v2;
}

- (uint64_t)pr_areContentsCoveredByModalPresentation
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20813];

  return v2;
}

- (void)pr_injectedEditingClientSettings
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20814];
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

- (uint64_t)pr_shouldShowEditingReticles
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20780];

  return v2;
}

- (uint64_t)pr_complicationRowMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20781];

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
    v7 = objc_opt_class();
    v8 = v4;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    v10 = [v11 unsignedIntegerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end