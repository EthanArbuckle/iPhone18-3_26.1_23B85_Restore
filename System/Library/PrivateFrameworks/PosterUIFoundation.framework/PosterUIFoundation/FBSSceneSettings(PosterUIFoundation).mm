@interface FBSSceneSettings(PosterUIFoundation)
- (double)pui_salientContentRectangle;
- (double)pui_userTapLocation;
- (id)pui_contentOcclusionRectangles;
- (id)pui_sceneAttachments;
- (uint64_t)pui_content;
- (uint64_t)pui_deviceOrientation;
- (uint64_t)pui_isAdaptiveTimeDisabled;
- (uint64_t)pui_isComplicationRowAtBottom;
- (uint64_t)pui_isComplicationRowConfigured;
- (uint64_t)pui_isComplicationSidebarConfigured;
- (uint64_t)pui_isEditorPreview;
- (uint64_t)pui_isExtensionUserInteractionEnabled;
- (uint64_t)pui_isFloatingLayerSnapshot;
- (uint64_t)pui_isIdle;
- (uint64_t)pui_isInlineComplicationConfigured;
- (uint64_t)pui_isInvalidated;
- (uint64_t)pui_isShowingIdealizedTime;
- (uint64_t)pui_isSnapshot;
- (uint64_t)pui_isWallpaperObscured;
- (uint64_t)pui_mode;
- (uint64_t)pui_posterBoundingShape;
- (uint64_t)pui_previewContent;
- (uint64_t)pui_showsComplications;
- (uint64_t)pui_showsHeaderElements;
- (uint64_t)pui_significantEventsCounter;
- (uint64_t)pui_userInterfaceStyle;
- (uint64_t)pui_userTapEventsCounter;
- (void)pui_posterContents;
- (void)pui_previewIdentifier;
- (void)pui_provider;
- (void)pui_role;
@end

@implementation FBSSceneSettings(PosterUIFoundation)

- (uint64_t)pui_content
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20493];
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
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (uint64_t)pui_userInterfaceStyle
{
  selfCopy = self;
  if (sel_userInterfaceStyle)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = selfCopy;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3)
  {
    userInterfaceStyle = [v3 userInterfaceStyle];
  }

  else
  {
    otherSettings = [selfCopy otherSettings];

    v6 = [otherSettings objectForSetting:20476];
    userInterfaceStyle = [v6 unsignedIntegerValue];

    v3 = otherSettings;
  }

  return userInterfaceStyle;
}

- (uint64_t)pui_deviceOrientation
{
  otherSettings = [self otherSettings];
  v3 = [otherSettings objectForSetting:20466];
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
    selfCopy = self;
    if (sel_deviceOrientation)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = selfCopy;
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

    if (v11)
    {
      deviceOrientation = [v11 deviceOrientation];
      if (deviceOrientation > 6)
      {
        integerValue = 1;
      }

      else
      {
        integerValue = qword_1A8D24DA8[deviceOrientation];
      }
    }

    else
    {
      integerValue = 0;
    }
  }

  return integerValue;
}

- (void)pui_provider
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20463];
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

- (uint64_t)pui_isSnapshot
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20487];

  return v2;
}

- (uint64_t)pui_isIdle
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20499];

  return v2;
}

- (void)pui_posterContents
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20467];
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

- (uint64_t)pui_isComplicationRowConfigured
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20472];

  return v2;
}

- (uint64_t)pui_significantEventsCounter
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20489];
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

- (uint64_t)pui_mode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20492];
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
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (uint64_t)pui_previewContent
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20494];
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
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (uint64_t)pui_isEditorPreview
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20500];

  return v2;
}

- (double)pui_salientContentRectangle
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20496];
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
    [v6 CGRectValue];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
  }

  return v8;
}

- (uint64_t)pui_userTapEventsCounter
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20491];
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

- (uint64_t)pui_isWallpaperObscured
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20468];

  return v2;
}

- (id)pui_contentOcclusionRectangles
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20497];

  return v2;
}

- (uint64_t)pui_showsHeaderElements
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20475];

  return v2;
}

- (uint64_t)pui_showsComplications
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20474];

  return v2;
}

- (double)pui_userTapLocation
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20490];
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
    [v6 bs_CGPointValue];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695EFF8];
  }

  return v8;
}

- (id)pui_sceneAttachments
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20495];

  if (v2)
  {
    v3 = objc_opt_new();
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __60__FBSSceneSettings_PosterUIFoundation__pui_sceneAttachments__block_invoke;
    applier[3] = &unk_1E7855900;
    v4 = v3;
    v7 = v4;
    xpc_array_apply(v2, applier);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (uint64_t)pui_isExtensionUserInteractionEnabled
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20470];

  return v2;
}

- (uint64_t)pui_isInvalidated
{
  otherSettings = [self otherSettings];
  [otherSettings flagForSetting:20464];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (uint64_t)pui_posterBoundingShape
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20477];
  integerValue = [v2 integerValue];

  return PUIPosterBoundingShapeFromInt(integerValue);
}

- (void)pui_role
{
  otherSettings = [self otherSettings];
  v3 = [otherSettings objectForSetting:20462];
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

  if (!v7)
  {
    otherSettings2 = [self otherSettings];
    v9 = [otherSettings2 objectForSetting:20211529];
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v7 = v12;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *MEMORY[0x1E6966D28];
  }

  v14 = v13;

  return v13;
}

- (void)pui_previewIdentifier
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20465];
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

- (uint64_t)pui_isInlineComplicationConfigured
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20471];

  return v2;
}

- (uint64_t)pui_isComplicationSidebarConfigured
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20473];

  return v2;
}

- (uint64_t)pui_isComplicationRowAtBottom
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20478];

  return v2;
}

- (uint64_t)pui_isAdaptiveTimeDisabled
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20479];

  return v2;
}

- (uint64_t)pui_isFloatingLayerSnapshot
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20488];

  return v2;
}

- (uint64_t)pui_isShowingIdealizedTime
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20498];

  return v2;
}

@end