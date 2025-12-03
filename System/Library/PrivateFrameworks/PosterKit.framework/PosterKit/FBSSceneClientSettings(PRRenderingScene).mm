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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20713];

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

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (void)pr_preferredProminentColor
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20719];

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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20714];

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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20717];

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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20715];
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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20716];

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

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (uint64_t)pr_hideDimmingLayer
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20718];

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

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (void)pr_requestedRenderingEventTypes
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20720];

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
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20721];

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