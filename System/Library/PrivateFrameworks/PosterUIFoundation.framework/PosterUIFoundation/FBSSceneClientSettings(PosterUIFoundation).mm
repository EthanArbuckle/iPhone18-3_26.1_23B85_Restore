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
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20518];

  return v2;
}

- (uint64_t)pui_significantEventOptions
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20516];

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

  integerValue = [v6 integerValue];
  return integerValue;
}

- (uint64_t)pui_inExtendedRenderSession
{
  otherSettings = [self otherSettings];
  [otherSettings flagForSetting:20514];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (double)pui_preferredSalientContentRectangle
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20517];
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
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20512];

  return v2;
}

- (uint64_t)pui_significantEventTime
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20515];

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

- (uint64_t)pui_userTapEventsRequested
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20513];

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

- (double)pui_acceptableSalientContentRectangle
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20520];
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
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20519];

  return v2;
}

- (uint64_t)pui_powerlogIdentifier
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20521];
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

- (uint64_t)pui_adaptiveTimeMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20522];

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

    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (uint64_t)pui_isAdaptiveTimeHeightUserConfigured
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20523];

  return v2;
}

- (uint64_t)pui_wantsSuitableSnapshotChecks
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20524];

  return v2;
}

@end