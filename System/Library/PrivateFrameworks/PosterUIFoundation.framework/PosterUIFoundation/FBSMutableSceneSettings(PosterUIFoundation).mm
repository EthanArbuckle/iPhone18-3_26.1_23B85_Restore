@interface FBSMutableSceneSettings(PosterUIFoundation)
- (void)pui_applyOtherSettings:()PosterUIFoundation;
- (void)pui_applyToMutableSceneSettings:()PosterUIFoundation;
- (void)pui_setAdaptiveTimeDisabled:()PosterUIFoundation;
- (void)pui_setComplicationRowAtBottom:()PosterUIFoundation;
- (void)pui_setComplicationRowConfigured:()PosterUIFoundation;
- (void)pui_setComplicationSidebarConfigured:()PosterUIFoundation;
- (void)pui_setContent:()PosterUIFoundation;
- (void)pui_setContentOcclusionRectangles:()PosterUIFoundation;
- (void)pui_setDeviceOrientation:()PosterUIFoundation;
- (void)pui_setEditorPreview:()PosterUIFoundation;
- (void)pui_setExtensionUserInteractionEnabled:()PosterUIFoundation;
- (void)pui_setFloatingLayerSnapshot:()PosterUIFoundation;
- (void)pui_setIdle:()PosterUIFoundation;
- (void)pui_setInlineComplicationConfigured:()PosterUIFoundation;
- (void)pui_setInvalidated;
- (void)pui_setInvalidated:()PosterUIFoundation;
- (void)pui_setMode:()PosterUIFoundation;
- (void)pui_setPosterBoundingShape:()PosterUIFoundation;
- (void)pui_setPosterContents:()PosterUIFoundation;
- (void)pui_setPreviewContent:()PosterUIFoundation;
- (void)pui_setPreviewIdentifier:()PosterUIFoundation;
- (void)pui_setProvider:()PosterUIFoundation;
- (void)pui_setRole:()PosterUIFoundation;
- (void)pui_setSalientContentRectangle:()PosterUIFoundation;
- (void)pui_setSceneAttachments:()PosterUIFoundation;
- (void)pui_setShowingIdealizedTime:()PosterUIFoundation;
- (void)pui_setShowsComplications:()PosterUIFoundation;
- (void)pui_setShowsHeaderElements:()PosterUIFoundation;
- (void)pui_setSignificantEventsCounter:()PosterUIFoundation;
- (void)pui_setSnapshot:()PosterUIFoundation;
- (void)pui_setUserInterfaceStyle:()PosterUIFoundation;
- (void)pui_setUserTapEventWithLocation:()PosterUIFoundation;
- (void)pui_setUserTapEventsCounter:()PosterUIFoundation;
- (void)pui_setWallpaperObscured:()PosterUIFoundation;
@end

@implementation FBSMutableSceneSettings(PosterUIFoundation)

- (void)pui_applyToMutableSceneSettings:()PosterUIFoundation
{
  v4 = MEMORY[0x1E699FC80];
  v5 = a3;
  v13 = [v4 diffFromSettings:self toSettings:v5];
  [v13 applyToMutableSettings:self];
  pui_role = [v5 pui_role];
  [self pui_setRole:pui_role];

  [self pui_setPreviewContent:{objc_msgSend(v5, "pui_previewContent")}];
  [self pui_setContent:{objc_msgSend(v5, "pui_content")}];
  pui_provider = [v5 pui_provider];
  [self pui_setProvider:pui_provider];

  pui_posterContents = [v5 pui_posterContents];
  [self pui_setPosterContents:pui_posterContents];

  pui_previewIdentifier = [v5 pui_previewIdentifier];
  [self pui_setPreviewIdentifier:pui_previewIdentifier];

  [self pui_setUserInterfaceStyle:{objc_msgSend(v5, "pui_userInterfaceStyle")}];
  [self pui_setDeviceOrientation:{objc_msgSend(v5, "pui_deviceOrientation")}];
  [self pui_setWallpaperObscured:{objc_msgSend(v5, "pui_isWallpaperObscured")}];
  [self pui_setExtensionUserInteractionEnabled:{objc_msgSend(v5, "pui_isExtensionUserInteractionEnabled")}];
  [self pui_setSnapshot:{objc_msgSend(v5, "pui_isSnapshot")}];
  [self pui_setFloatingLayerSnapshot:{objc_msgSend(v5, "pui_isFloatingLayerSnapshot")}];
  [self pui_setSignificantEventsCounter:{objc_msgSend(v5, "pui_significantEventsCounter")}];
  [self pui_setUserTapEventsCounter:{objc_msgSend(v5, "pui_userTapEventsCounter")}];
  [v5 pui_userTapLocation];
  [self pui_setUserTapEventWithLocation:?];
  [self pui_setShowsHeaderElements:{objc_msgSend(v5, "pui_showsHeaderElements")}];
  [self pui_setShowsComplications:{objc_msgSend(v5, "pui_showsComplications")}];
  pui_sceneAttachments = [v5 pui_sceneAttachments];
  [self pui_setSceneAttachments:pui_sceneAttachments];

  [v5 pui_salientContentRectangle];
  [self pui_setSalientContentRectangle:?];
  pui_contentOcclusionRectangles = [v5 pui_contentOcclusionRectangles];
  [self pui_setContentOcclusionRectangles:pui_contentOcclusionRectangles];

  [self pui_setShowingIdealizedTime:{objc_msgSend(v5, "pui_isShowingIdealizedTime")}];
  pui_isIdle = [v5 pui_isIdle];

  [self pui_setIdle:pui_isIdle];
}

- (void)pui_applyOtherSettings:()PosterUIFoundation
{
  v4 = MEMORY[0x1E698E770];
  v5 = a3;
  otherSettings = [self otherSettings];
  v8 = [v4 diffFromSettings:otherSettings toSettings:v5];

  otherSettings2 = [self otherSettings];
  [v8 applyToSettings:otherSettings2];
}

- (void)pui_setRole:()PosterUIFoundation
{
  v9 = a3;
  if (v9)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneSettings(PosterUIFoundation) pui_setRole:a2];
    }
  }

  otherSettings = [self otherSettings];
  v6 = [v9 copy];
  [otherSettings setObject:v6 forSetting:20462];

  otherSettings2 = [self otherSettings];
  v8 = [v9 copy];
  [otherSettings2 setObject:v8 forSetting:20211529];
}

- (void)pui_setProvider:()PosterUIFoundation
{
  v6 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v6)
  {
    [FBSMutableSceneSettings(PosterUIFoundation) pui_setProvider:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSMutableSceneSettings(PosterUIFoundation) pui_setProvider:a2];
  }

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20463];
}

- (void)pui_setInvalidated
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:1 forSetting:20464];
}

- (void)pui_setPreviewIdentifier:()PosterUIFoundation
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneSettings(PosterUIFoundation) pui_setPreviewIdentifier:a2];
    }
  }

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20465];
}

- (void)pui_setDeviceOrientation:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v6 forSetting:20466];

  v7 = objc_opt_class();
  selfCopy = self;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = selfCopy;
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

  v10 = v11;
  if (v11)
  {
    [v11 setDeviceOrientation:a3];
    v10 = v11;
  }
}

- (void)pui_setPosterContents:()PosterUIFoundation
{
  v6 = a3;
  if (v6)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneSettings(PosterUIFoundation) pui_setPosterContents:a2];
    }
  }

  otherSettings = [self otherSettings];
  [otherSettings setObject:v6 forSetting:20467];
}

- (void)pui_setWallpaperObscured:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20468];
}

- (void)pui_setInvalidated:()PosterUIFoundation
{
  v5 = a3;
  [self pui_setInvalidated];
  if (v5)
  {
    otherSettings = [self otherSettings];
    [otherSettings setObject:v5 forSetting:20469];
  }
}

- (void)pui_setExtensionUserInteractionEnabled:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20470];
}

- (void)pui_setInlineComplicationConfigured:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20471];
}

- (void)pui_setComplicationRowConfigured:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20472];
}

- (void)pui_setComplicationSidebarConfigured:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20473];
}

- (void)pui_setShowsComplications:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20474];
}

- (void)pui_setShowsHeaderElements:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20475];
}

- (void)pui_setUserInterfaceStyle:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v6 forSetting:20476];

  v7 = objc_opt_class();
  selfCopy = self;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = selfCopy;
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

  v10 = v11;
  if (v11)
  {
    [v11 setUserInterfaceStyle:a3];
    v10 = v11;
  }
}

- (void)pui_setPosterBoundingShape:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20477];
}

- (void)pui_setComplicationRowAtBottom:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20478];
}

- (void)pui_setAdaptiveTimeDisabled:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20479];
}

- (void)pui_setSnapshot:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20487];
}

- (void)pui_setFloatingLayerSnapshot:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20488];
}

- (void)pui_setSignificantEventsCounter:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20489];
}

- (void)pui_setUserTapEventWithLocation:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  *v7 = a2;
  *&v7[1] = a3;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  [otherSettings setObject:v6 forSetting:20490];
}

- (void)pui_setUserTapEventsCounter:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20491];
}

- (void)pui_setMode:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20492];
}

- (void)pui_setContent:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:20493];
}

- (void)pui_setPreviewContent:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20494];
}

- (void)pui_setSalientContentRectangle:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:20496];
}

- (void)pui_setContentOcclusionRectangles:()PosterUIFoundation
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20497];
}

- (void)pui_setSceneAttachments:()PosterUIFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  empty = xpc_array_create_empty();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = xpc_dictionary_create_empty();
        xpc_dictionary_set_uint64(v11, "contextId", [v10 contextId]);
        xpc_dictionary_set_uint64(v11, "renderId", [v10 renderId]);
        xpc_dictionary_set_int64(v11, "level", [v10 level]);
        xpc_array_append_value(empty, v11);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  otherSettings = [self otherSettings];
  [otherSettings setObject:empty forSetting:20495];
}

- (void)pui_setShowingIdealizedTime:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20498];
}

- (void)pui_setIdle:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20499];
}

- (void)pui_setEditorPreview:()PosterUIFoundation
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20500];
}

- (void)pui_setRole:()PosterUIFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pui_setProvider:()PosterUIFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pui_setProvider:()PosterUIFoundation .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pui_setPreviewIdentifier:()PosterUIFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pui_setPosterContents:()PosterUIFoundation .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end