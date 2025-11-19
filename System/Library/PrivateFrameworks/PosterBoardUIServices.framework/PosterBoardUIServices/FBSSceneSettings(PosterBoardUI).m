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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25562];

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

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (uint64_t)pruis_lockPosterOverlayLayerRenderID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25563];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (uint64_t)pruis_lockPosterOverlayLayerContextID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25564];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (uint64_t)pruis_lockPosterLiveContentLayerRenderID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25565];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (uint64_t)pruis_lockPosterLiveContentLayerContextID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25566];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (uint64_t)pruis_isLockPosterFloatingLayerInlined
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:25569];

  return v2;
}

- (uint64_t)pruis_lockPosterLiveFloatingLayerRenderID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25567];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (uint64_t)pruis_lockPosterLiveFloatingLayerContextID
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25568];

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

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

- (uint64_t)pruis_isLockPosterComplicationRowHidden
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:25570];

  return v2;
}

- (double)pruis_leadingTopButtonFrame
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25571];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25572];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25573];

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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:25574];

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