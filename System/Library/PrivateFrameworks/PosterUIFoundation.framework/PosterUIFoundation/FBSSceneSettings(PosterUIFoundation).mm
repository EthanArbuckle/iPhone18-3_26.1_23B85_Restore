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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20493];
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
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)pui_userInterfaceStyle
{
  v1 = a1;
  if (sel_userInterfaceStyle)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = v1;
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
    v4 = [v3 userInterfaceStyle];
  }

  else
  {
    v5 = [v1 otherSettings];

    v6 = [v5 objectForSetting:20476];
    v4 = [v6 unsignedIntegerValue];

    v3 = v5;
  }

  return v4;
}

- (uint64_t)pui_deviceOrientation
{
  v2 = [a1 otherSettings];
  v3 = [v2 objectForSetting:20466];
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
    v9 = a1;
    if (sel_deviceOrientation)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = v9;
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
      v12 = [v11 deviceOrientation];
      if (v12 > 6)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_1A8D24DA8[v12];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)pui_provider
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20463];
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
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20487];

  return v2;
}

- (uint64_t)pui_isIdle
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20499];

  return v2;
}

- (void)pui_posterContents
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20467];
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
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20472];

  return v2;
}

- (uint64_t)pui_significantEventsCounter
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20489];
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

- (uint64_t)pui_mode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20492];
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
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)pui_previewContent
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20494];
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
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (uint64_t)pui_isEditorPreview
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20500];

  return v2;
}

- (double)pui_salientContentRectangle
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20496];
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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20491];
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

- (uint64_t)pui_isWallpaperObscured
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20468];

  return v2;
}

- (id)pui_contentOcclusionRectangles
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20497];

  return v2;
}

- (uint64_t)pui_showsHeaderElements
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20475];

  return v2;
}

- (uint64_t)pui_showsComplications
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20474];

  return v2;
}

- (double)pui_userTapLocation
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20490];
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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20495];

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
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20470];

  return v2;
}

- (uint64_t)pui_isInvalidated
{
  v1 = [a1 otherSettings];
  [v1 flagForSetting:20464];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (uint64_t)pui_posterBoundingShape
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20477];
  v3 = [v2 integerValue];

  return PUIPosterBoundingShapeFromInt(v3);
}

- (void)pui_role
{
  v2 = [a1 otherSettings];
  v3 = [v2 objectForSetting:20462];
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
    v8 = [a1 otherSettings];
    v9 = [v8 objectForSetting:20211529];
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
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20465];
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
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20471];

  return v2;
}

- (uint64_t)pui_isComplicationSidebarConfigured
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20473];

  return v2;
}

- (uint64_t)pui_isComplicationRowAtBottom
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20478];

  return v2;
}

- (uint64_t)pui_isAdaptiveTimeDisabled
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20479];

  return v2;
}

- (uint64_t)pui_isFloatingLayerSnapshot
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20488];

  return v2;
}

- (uint64_t)pui_isShowingIdealizedTime
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20498];

  return v2;
}

@end