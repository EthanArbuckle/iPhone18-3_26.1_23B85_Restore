@interface FBSSceneClientSettings(PosterUIFoundation)
- (double)pui_acceptableSalientContentRectangle;
- (double)pui_preferredSalientContentRectangle;
- (uint64_t)pui_adaptiveTimeMode;
- (uint64_t)pui_contentOcclusionRectangleUpdatesRequested;
- (uint64_t)pui_didFinishInitialization;
- (uint64_t)pui_inExtendedRenderSession;
- (uint64_t)pui_isAdaptiveTimeHeightUserConfigured;
- (uint64_t)pui_powerlogIdentifier;
- (uint64_t)pui_salientContentRectangleUpdatesRequested;
- (uint64_t)pui_significantEventOptions;
- (uint64_t)pui_significantEventTime;
- (uint64_t)pui_userTapEventsRequested;
- (uint64_t)pui_wantsSuitableSnapshotChecks;
@end

@implementation FBSSceneClientSettings(PosterUIFoundation)

- (uint64_t)pui_salientContentRectangleUpdatesRequested
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20518];

  return v2;
}

- (uint64_t)pui_significantEventOptions
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20516];

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

- (uint64_t)pui_inExtendedRenderSession
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20514];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (double)pui_preferredSalientContentRectangle
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20517];
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
    [v6 bs_CGRectValue];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F040];
  }

  return v8;
}

- (uint64_t)pui_didFinishInitialization
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20512];

  return v2;
}

- (uint64_t)pui_significantEventTime
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20515];

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

- (uint64_t)pui_userTapEventsRequested
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20513];

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

- (double)pui_acceptableSalientContentRectangle
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20520];
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
    [v6 bs_CGRectValue];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
  }

  return v8;
}

- (uint64_t)pui_contentOcclusionRectangleUpdatesRequested
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20519];

  return v2;
}

- (uint64_t)pui_powerlogIdentifier
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20521];
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

- (uint64_t)pui_adaptiveTimeMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20522];

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

- (uint64_t)pui_isAdaptiveTimeHeightUserConfigured
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20523];

  return v2;
}

- (uint64_t)pui_wantsSuitableSnapshotChecks
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20524];

  return v2;
}

@end