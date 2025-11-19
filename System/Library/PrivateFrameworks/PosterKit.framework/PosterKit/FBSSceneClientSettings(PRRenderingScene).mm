@interface FBSSceneClientSettings(PRRenderingScene)
- (double)pr_contentSize;
- (uint64_t)pr_handlesWakeAnimation;
- (uint64_t)pr_hideChrome;
- (uint64_t)pr_hideDimmingLayer;
- (void)pr_averageColor;
- (void)pr_desiredLegibilitySettings;
- (void)pr_preferredProminentColor;
- (void)pr_requestedRenderingEventTypes;
- (void)pr_requestedRenderingTransitionTypes;
@end

@implementation FBSSceneClientSettings(PRRenderingScene)

- (uint64_t)pr_handlesWakeAnimation
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20713];

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

  v7 = [v6 BOOLValue];
  return v7;
}

- (void)pr_preferredProminentColor
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20719];

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

- (void)pr_averageColor
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20714];

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

- (void)pr_desiredLegibilitySettings
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20717];

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

- (double)pr_contentSize
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20715];
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
    [v6 bs_CGSizeValue];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
  }

  return v8;
}

- (uint64_t)pr_hideChrome
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20716];

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

  v7 = [v6 BOOLValue];
  return v7;
}

- (uint64_t)pr_hideDimmingLayer
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20718];

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

  v7 = [v6 BOOLValue];
  return v7;
}

- (void)pr_requestedRenderingEventTypes
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20720];

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

- (void)pr_requestedRenderingTransitionTypes
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20721];

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