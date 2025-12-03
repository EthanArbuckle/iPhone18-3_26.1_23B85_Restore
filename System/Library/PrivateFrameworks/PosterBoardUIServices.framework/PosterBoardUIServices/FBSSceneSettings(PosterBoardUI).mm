@interface FBSSceneSettings(PosterBoardUI)
- (double)pruis_leadingTopButtonFrame;
- (double)pruis_titleAdaptiveTextHeight;
- (double)pruis_trailingTopButtonFrame;
- (uint64_t)pruis_isLockPosterComplicationRowHidden;
- (uint64_t)pruis_isLockPosterFloatingLayerInlined;
- (uint64_t)pruis_lockPosterLiveContentLayerContextID;
- (uint64_t)pruis_lockPosterLiveContentLayerRenderID;
- (uint64_t)pruis_lockPosterLiveFloatingLayerContextID;
- (uint64_t)pruis_lockPosterLiveFloatingLayerRenderID;
- (uint64_t)pruis_lockPosterOverlayLayerContextID;
- (uint64_t)pruis_lockPosterOverlayLayerRenderID;
- (uint64_t)pruis_preferredSwitcherLayoutMode;
- (void)pruis_lockVibrancyConfiguration;
@end

@implementation FBSSceneSettings(PosterBoardUI)

- (uint64_t)pruis_preferredSwitcherLayoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25562];

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

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (uint64_t)pruis_lockPosterOverlayLayerRenderID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25563];

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

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)pruis_lockPosterOverlayLayerContextID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25564];

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

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)pruis_lockPosterLiveContentLayerRenderID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25565];

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

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)pruis_lockPosterLiveContentLayerContextID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25566];

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

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)pruis_isLockPosterFloatingLayerInlined
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:25569];

  return v2;
}

- (uint64_t)pruis_lockPosterLiveFloatingLayerRenderID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25567];

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

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)pruis_lockPosterLiveFloatingLayerContextID
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25568];

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

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (uint64_t)pruis_isLockPosterComplicationRowHidden
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:25570];

  return v2;
}

- (double)pruis_leadingTopButtonFrame
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25571];

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

- (double)pruis_trailingTopButtonFrame
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25572];

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

- (void)pruis_lockVibrancyConfiguration
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25573];

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

- (double)pruis_titleAdaptiveTextHeight
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:25574];

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

  [v6 floatValue];
  v8 = v7;

  return v8;
}

@end