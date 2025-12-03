@interface _PRUISPosterStagedSceneSettings
- (CGPoint)pui_userTapLocation;
- (CGRect)pr_horizontalTitleBoundingRect;
- (CGRect)pr_verticalTitleBoundingRect;
- (CGRect)pui_salientContentRectangle;
- (_PRUISPosterStagedSceneSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToMutableSceneSettings:(id)settings role:(id)role;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PRUISPosterStagedSceneSettings

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pui_role = [(_PRUISPosterStagedSceneSettings *)self pui_role];
  [coderCopy encodeObject:pui_role forKey:@"pui_role"];

  pui_provider = [(_PRUISPosterStagedSceneSettings *)self pui_provider];
  [coderCopy encodeObject:pui_provider forKey:@"pui_provider"];

  pui_previewIdentifier = [(_PRUISPosterStagedSceneSettings *)self pui_previewIdentifier];
  [coderCopy encodeObject:pui_previewIdentifier forKey:@"pui_previewIdentifier"];

  pr_caseColor = [(_PRUISPosterStagedSceneSettings *)self pr_caseColor];
  [coderCopy encodeObject:pr_caseColor forKey:@"pr_caseColor"];

  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pui_userInterfaceStyle](self forKey:{"pui_userInterfaceStyle"), @"pui_userInterfaceStyle"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pui_deviceOrientation](self forKey:{"pui_deviceOrientation"), @"pui_deviceOrientation"}];
  pui_posterContents = [(_PRUISPosterStagedSceneSettings *)self pui_posterContents];
  [coderCopy encodeObject:pui_posterContents forKey:@"pui_posterContents"];

  pr_posterConfigurableOptions = [(_PRUISPosterStagedSceneSettings *)self pr_posterConfigurableOptions];
  [coderCopy encodeObject:pr_posterConfigurableOptions forKey:@"pr_posterConfigurableOptions"];

  pr_posterConfiguredProperties = [(_PRUISPosterStagedSceneSettings *)self pr_posterConfiguredProperties];
  [coderCopy encodeObject:pr_posterConfiguredProperties forKey:@"pr_posterConfiguredProperties"];

  pr_posterTitleStyleConfiguration = [(_PRUISPosterStagedSceneSettings *)self pr_posterTitleStyleConfiguration];
  [coderCopy encodeObject:pr_posterTitleStyleConfiguration forKey:@"pr_posterTitleStyleConfiguration"];

  pr_posterAmbientConfiguration = [(_PRUISPosterStagedSceneSettings *)self pr_posterAmbientConfiguration];
  [coderCopy encodeObject:pr_posterAmbientConfiguration forKey:@"pr_posterAmbientConfiguration"];

  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pr_isDepthEffectDisallowed](self forKey:{"pr_isDepthEffectDisallowed"), @"pr_depthEffectDisallowed"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pr_effectiveMotionEffectsMode](self forKey:{"pr_effectiveMotionEffectsMode"), @"pr_effectiveMotionEffectsMode"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isInlineComplicationConfigured](self forKey:{"pui_isInlineComplicationConfigured"), @"pui_inlineComplicationConfigured"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isComplicationRowConfigured](self forKey:{"pui_isComplicationRowConfigured"), @"pui_complicationRowConfigured"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isComplicationSidebarConfigured](self forKey:{"pui_isComplicationSidebarConfigured"), @"pui_complicationSidebarConfigured"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pr_isAlternateDateEnabled](self forKey:{"pr_isAlternateDateEnabled"), @"pr_alternateDateEnabled"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isExtensionUserInteractionEnabled](self forKey:{"pui_isExtensionUserInteractionEnabled"), @"pui_extensionUserInteractionEnabled"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_showsHeaderElements](self forKey:{"pui_showsHeaderElements"), @"pui_showsHeaderElements"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_showsComplications](self forKey:{"pui_showsComplications"), @"pui_showsComplications"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isWallpaperObscured](self forKey:{"pui_isWallpaperObscured"), @"pui_wallpaperObscured"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pui_posterBoundingShape](self forKey:{"pui_posterBoundingShape"), @"pui_posterBoundingShape"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isComplicationRowAtBottom](self forKey:{"pui_isComplicationRowAtBottom"), @"pui_complicationRowAtBottom"}];
  [(_PRUISPosterStagedSceneSettings *)self pr_horizontalTitleBoundingRect];
  [coderCopy encodeCGRect:@"pr_horizontalTitleBoundingRect" forKey:?];
  [(_PRUISPosterStagedSceneSettings *)self pr_verticalTitleBoundingRect];
  [coderCopy encodeCGRect:@"pr_verticalTitleBoundingRect" forKey:?];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pui_mode](self forKey:{"pui_mode"), @"pui_mode"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pui_content](self forKey:{"pui_content"), @"pui_content"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isSnapshot](self forKey:{"pui_isSnapshot"), @"pui_snapshot"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isFloatingLayerSnapshot](self forKey:{"pui_isFloatingLayerSnapshot"), @"pui_floatingLayerSnapshot"}];
  [(_PRUISPosterStagedSceneSettings *)self pr_unlockProgress];
  *&v13 = v13;
  [coderCopy encodeFloat:@"pr_unlockProgress" forKey:v13];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pr_wakeSourceIsSwipeToUnlock](self forKey:{"pr_wakeSourceIsSwipeToUnlock"), @"pr_wakeSourceIsSwipeToUnlock"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pui_significantEventsCounter](self forKey:{"pui_significantEventsCounter"), @"pui_significantEventsCounter"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pr_titleAlignment](self forKey:{"pr_titleAlignment"), @"pr_titleAlignment"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings pr_adjustedLuminance](self forKey:{"pr_adjustedLuminance"), @"pr_adjustedLuminance"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings isAmbientPresented](self forKey:{"isAmbientPresented"), @"ambientPresented"}];
  [coderCopy encodeInteger:-[_PRUISPosterStagedSceneSettings ambientDisplayStyle](self forKey:{"ambientDisplayStyle"), @"ambientDisplayStyle"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pr_appliesCountertransformForRotation](self forKey:{"pr_appliesCountertransformForRotation"), @"pr_appliesCountertransformForRotation"}];
  pui_sceneAttachments = [(_PRUISPosterStagedSceneSettings *)self pui_sceneAttachments];
  [coderCopy encodeObject:pui_sceneAttachments forKey:@"pui_sceneAttachments"];

  [(_PRUISPosterStagedSceneSettings *)self pui_salientContentRectangle];
  [coderCopy encodeCGRect:@"pui_salientContentRectangle" forKey:?];
  pui_contentOcclusionRectangles = [(_PRUISPosterStagedSceneSettings *)self pui_contentOcclusionRectangles];
  [coderCopy encodeObject:pui_contentOcclusionRectangles forKey:@"pui_contentOcclusionRectangles"];

  [(_PRUISPosterStagedSceneSettings *)self pr_deviceMotionUpdateInterval];
  [coderCopy encodeDouble:@"pr_deviceMotionUpdateInterval" forKey:?];
  [coderCopy encodeDouble:@"pui_adaptiveTimeDisabled" forKey:{-[_PRUISPosterStagedSceneSettings pui_isAdaptiveTimeDisabled](self, "pui_isAdaptiveTimeDisabled")}];
  pr_posterHostedContentSettings = [(_PRUISPosterStagedSceneSettings *)self pr_posterHostedContentSettings];
  [coderCopy encodeObject:pr_posterHostedContentSettings forKey:@"pr_posterHostedContentSettings"];

  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isShowingIdealizedTime](self forKey:{"pui_isShowingIdealizedTime"), @"pui_isShowingIdealizedTime"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isIdle](self forKey:{"pui_isIdle"), @"pui_isIdle"}];
  [coderCopy encodeBool:-[_PRUISPosterStagedSceneSettings pui_isEditorPreview](self forKey:{"pui_isEditorPreview"), @"pui_isEditorPreview"}];
}

- (_PRUISPosterStagedSceneSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = _PRUISPosterStagedSceneSettings;
  v5 = [(_PRUISPosterStagedSceneSettings *)&v34 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"pui_role"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setRole:v7];

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"pui_provider"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setProvider:v9];

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"pui_previewIdentifier"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setPreviewIdentifier:v11];

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"pr_caseColor"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setCaseColor:v13];

    -[_PRUISPosterStagedSceneSettings pui_setUserInterfaceStyle:](v5, "pui_setUserInterfaceStyle:", [coderCopy decodeIntegerForKey:@"pui_userInterfaceStyle"]);
    -[_PRUISPosterStagedSceneSettings pui_setDeviceOrientation:](v5, "pui_setDeviceOrientation:", [coderCopy decodeIntegerForKey:@"pui_deviceOrientation"]);
    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"pui_posterContents"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setPosterContents:v15];

    v16 = objc_opt_self();
    v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"pr_posterConfigurableOptions"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setPosterConfigurableOptions:v17];

    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"pr_posterConfiguredProperties"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setPosterConfiguredProperties:v19];

    v20 = objc_opt_self();
    v21 = [coderCopy decodeObjectOfClass:v20 forKey:@"pr_posterTitleStyleConfiguration"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setPosterTitleStyleConfiguration:v21];

    v22 = objc_opt_self();
    v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"pr_posterAmbientConfiguration"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setPosterAmbientConfiguration:v23];

    -[_PRUISPosterStagedSceneSettings pr_setDepthEffectDisallowed:](v5, "pr_setDepthEffectDisallowed:", [coderCopy decodeBoolForKey:@"pr_depthEffectDisallowed"]);
    -[_PRUISPosterStagedSceneSettings pr_setEffectiveMotionEffectsMode:](v5, "pr_setEffectiveMotionEffectsMode:", [coderCopy decodeBoolForKey:@"pr_effectiveMotionEffectsMode"]);
    -[_PRUISPosterStagedSceneSettings pui_setInlineComplicationConfigured:](v5, "pui_setInlineComplicationConfigured:", [coderCopy decodeBoolForKey:@"pui_inlineComplicationConfigured"]);
    -[_PRUISPosterStagedSceneSettings pui_setComplicationRowConfigured:](v5, "pui_setComplicationRowConfigured:", [coderCopy decodeBoolForKey:@"pui_complicationRowConfigured"]);
    -[_PRUISPosterStagedSceneSettings pui_setComplicationSidebarConfigured:](v5, "pui_setComplicationSidebarConfigured:", [coderCopy decodeBoolForKey:@"pui_complicationSidebarConfigured"]);
    -[_PRUISPosterStagedSceneSettings pr_setAlternateDateEnabled:](v5, "pr_setAlternateDateEnabled:", [coderCopy decodeBoolForKey:@"pr_alternateDateEnabled"]);
    -[_PRUISPosterStagedSceneSettings pui_setExtensionUserInteractionEnabled:](v5, "pui_setExtensionUserInteractionEnabled:", [coderCopy decodeBoolForKey:@"pui_extensionUserInteractionEnabled"]);
    -[_PRUISPosterStagedSceneSettings pui_setShowsHeaderElements:](v5, "pui_setShowsHeaderElements:", [coderCopy decodeBoolForKey:@"pui_showsHeaderElements"]);
    -[_PRUISPosterStagedSceneSettings pui_setShowsComplications:](v5, "pui_setShowsComplications:", [coderCopy decodeBoolForKey:@"pui_showsComplications"]);
    -[_PRUISPosterStagedSceneSettings pui_setWallpaperObscured:](v5, "pui_setWallpaperObscured:", [coderCopy decodeBoolForKey:@"pui_wallpaperObscured"]);
    -[_PRUISPosterStagedSceneSettings pui_setPosterBoundingShape:](v5, "pui_setPosterBoundingShape:", [coderCopy decodeIntegerForKey:@"pui_posterBoundingShape"]);
    -[_PRUISPosterStagedSceneSettings pui_setComplicationRowAtBottom:](v5, "pui_setComplicationRowAtBottom:", [coderCopy decodeBoolForKey:@"pui_complicationRowAtBottom"]);
    -[_PRUISPosterStagedSceneSettings pui_setAdaptiveTimeDisabled:](v5, "pui_setAdaptiveTimeDisabled:", [coderCopy decodeBoolForKey:@"pui_adaptiveTimeDisabled"]);
    [coderCopy decodeCGRectForKey:@"pr_horizontalTitleBoundingRect"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setHorizontalTitleBoundingRect:?];
    [coderCopy decodeCGRectForKey:@"pr_verticalTitleBoundingRect"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setVerticalTitleBoundingRect:?];
    -[_PRUISPosterStagedSceneSettings pui_setMode:](v5, "pui_setMode:", [coderCopy decodeIntegerForKey:@"pui_mode"]);
    -[_PRUISPosterStagedSceneSettings pui_setContent:](v5, "pui_setContent:", [coderCopy decodeIntegerForKey:@"pui_content"]);
    -[_PRUISPosterStagedSceneSettings pui_setSnapshot:](v5, "pui_setSnapshot:", [coderCopy decodeBoolForKey:@"pui_snapshot"]);
    -[_PRUISPosterStagedSceneSettings pui_setFloatingLayerSnapshot:](v5, "pui_setFloatingLayerSnapshot:", [coderCopy decodeBoolForKey:@"pui_floatingLayerSnapshot"]);
    [coderCopy decodeFloatForKey:@"pr_unlockProgress"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setUnlockProgress:v24];
    -[_PRUISPosterStagedSceneSettings pui_setSignificantEventsCounter:](v5, "pui_setSignificantEventsCounter:", [coderCopy decodeIntegerForKey:@"pui_significantEventsCounter"]);
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_self();
    v27 = objc_opt_self();
    v28 = [v25 setWithObjects:{v26, v27, 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"pui_sceneAttachments"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setSceneAttachments:v29];

    -[_PRUISPosterStagedSceneSettings pr_setWakeSourceIsSwipeToUnlock:](v5, "pr_setWakeSourceIsSwipeToUnlock:", [coderCopy decodeBoolForKey:@"pr_wakeSourceIsSwipeToUnlock"]);
    -[_PRUISPosterStagedSceneSettings pr_setTitleAlignment:](v5, "pr_setTitleAlignment:", [coderCopy decodeIntegerForKey:@"pr_titleAlignment"]);
    -[_PRUISPosterStagedSceneSettings pr_setAdjustedLuminance:](v5, "pr_setAdjustedLuminance:", [coderCopy decodeIntegerForKey:@"pr_adjustedLuminance"]);
    -[_PRUISPosterStagedSceneSettings setAmbientPresented:](v5, "setAmbientPresented:", [coderCopy decodeBoolForKey:@"ambientPresented"]);
    -[_PRUISPosterStagedSceneSettings setAmbientDisplayStyle:](v5, "setAmbientDisplayStyle:", [coderCopy decodeIntegerForKey:@"ambientDisplayStyle"]);
    -[_PRUISPosterStagedSceneSettings pr_setAppliesCountertransformForRotation:](v5, "pr_setAppliesCountertransformForRotation:", [coderCopy decodeBoolForKey:@"pr_appliesCountertransformForRotation"]);
    [coderCopy decodeCGRectForKey:@"pui_salientContentRectangle"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setSalientContentRectangle:?];
    v30 = objc_opt_self();
    v31 = [coderCopy decodeObjectOfClass:v30 forKey:@"pui_contentOcclusionRectangles"];
    [(_PRUISPosterStagedSceneSettings *)v5 pui_setContentOcclusionRectangles:v31];

    [coderCopy decodeDoubleForKey:@"pr_deviceMotionUpdateInterval"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setDeviceMotionUpdateInterval:?];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pr_posterHostedContentSettings"];
    [(_PRUISPosterStagedSceneSettings *)v5 pr_setPosterHostedContentSettings:v32];

    -[_PRUISPosterStagedSceneSettings pui_setShowingIdealizedTime:](v5, "pui_setShowingIdealizedTime:", [coderCopy decodeBoolForKey:@"pui_isShowingIdealizedTime"]);
    -[_PRUISPosterStagedSceneSettings pui_setIdle:](v5, "pui_setIdle:", [coderCopy decodeBoolForKey:@"pui_isIdle"]);
    -[_PRUISPosterStagedSceneSettings pui_setEditorPreview:](v5, "pui_setEditorPreview:", [coderCopy decodeBoolForKey:@"pui_isEditorPreview"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_PRUISPosterStagedSceneSettings allocWithZone:?]];
  v5 = [(NSString *)self->_role copy];
  role = v4->_role;
  v4->_role = v5;

  v7 = [(NSString *)self->_provider copy];
  provider = v4->_provider;
  v4->_provider = v7;

  v9 = [(NSString *)self->_previewIdentifier copy];
  previewIdentifier = v4->_previewIdentifier;
  v4->_previewIdentifier = v9;

  v11 = [(BSColor *)self->_caseColor copy];
  caseColor = v4->_caseColor;
  v4->_caseColor = v11;

  v4->_userInterfaceStyle = self->_userInterfaceStyle;
  v4->_deviceOrientation = self->_deviceOrientation;
  objc_storeStrong(&v4->_posterContents, self->_posterContents);
  objc_storeStrong(&v4->_posterConfigurableOptions, self->_posterConfigurableOptions);
  objc_storeStrong(&v4->_posterConfiguredProperties, self->_posterConfiguredProperties);
  objc_storeStrong(&v4->_posterTitleStyleConfiguration, self->_posterTitleStyleConfiguration);
  objc_storeStrong(&v4->_posterAmbientConfiguration, self->_posterAmbientConfiguration);
  v4->_depthEffectDisallowed = self->_depthEffectDisallowed;
  v4->_effectiveMotionEffectsMode = self->_effectiveMotionEffectsMode;
  v4->_inlineComplicationConfigured = self->_inlineComplicationConfigured;
  v4->_complicationRowConfigured = self->_complicationRowConfigured;
  v4->_complicationSidebarConfigured = self->_complicationSidebarConfigured;
  v4->_alternateDateEnabled = self->_alternateDateEnabled;
  v4->_extensionUserInteractionEnabled = self->_extensionUserInteractionEnabled;
  v4->_showsHeaderElements = self->_showsHeaderElements;
  v4->_showsComplications = self->_showsComplications;
  v4->_wallpaperObscured = self->_wallpaperObscured;
  v4->_posterBoundingShape = self->_posterBoundingShape;
  v4->_complicationRowAtBottom = self->_complicationRowAtBottom;
  size = self->_horizontalTitleBoundingRect.size;
  v4->_horizontalTitleBoundingRect.origin = self->_horizontalTitleBoundingRect.origin;
  v4->_horizontalTitleBoundingRect.size = size;
  v14 = self->_verticalTitleBoundingRect.size;
  v4->_verticalTitleBoundingRect.origin = self->_verticalTitleBoundingRect.origin;
  v4->_verticalTitleBoundingRect.size = v14;
  v4->_mode = self->_mode;
  v4->_content = self->_content;
  v4->_snapshot = self->_snapshot;
  v4->_floatingLayerSnapshot = self->_floatingLayerSnapshot;
  v4->_unlockProgress = self->_unlockProgress;
  v4->_wakeSourceIsSwipeToUnlock = self->_wakeSourceIsSwipeToUnlock;
  v4->_significantEventsCounter = self->_significantEventsCounter;
  v4->_titleAlignment = self->_titleAlignment;
  v4->_adjustedLuminance = self->_adjustedLuminance;
  v4->_ambientPresented = self->_ambientPresented;
  v4->_ambientDisplayStyle = self->_ambientDisplayStyle;
  v15 = [(NSArray *)self->_sceneAttachments copy];
  sceneAttachments = v4->_sceneAttachments;
  v4->_sceneAttachments = v15;

  v4->_appliesCountertransformForRotation = self->_appliesCountertransformForRotation;
  v17 = self->_salientContentRectangle.size;
  v4->_salientContentRectangle.origin = self->_salientContentRectangle.origin;
  v4->_salientContentRectangle.size = v17;
  v18 = [(PUIPosterContentOcclusionRectSet *)self->_contentOcclusionRectangles copy];
  contentOcclusionRectangles = v4->_contentOcclusionRectangles;
  v4->_contentOcclusionRectangles = v18;

  v4->_deviceMotionUpdateInterval = self->_deviceMotionUpdateInterval;
  v20 = [(PRPosterHostedContentSettings *)self->_posterHostedContentSettings copy];
  posterHostedContentSettings = v4->_posterHostedContentSettings;
  v4->_posterHostedContentSettings = v20;

  v4->_showingIdealizedTime = self->_showingIdealizedTime;
  v4->_idle = self->_idle;
  v4->_isEditorPreview = self->_isEditorPreview;
  return v4;
}

- (void)applyToMutableSceneSettings:(id)settings role:(id)role
{
  settingsCopy = settings;
  roleCopy = role;
  PRUISPosterSceneSettingsApplyPRSceneSettings(self, settingsCopy);
  PRUISPosterSceneSettingsApplyPRRenderingSceneSettings(self, settingsCopy);
  v7 = [roleCopy isEqualToString:*MEMORY[0x1E69C53A8]];

  if (v7)
  {
    PRUISPosterSceneSettingsApplyAMUIAmbientPresentationSettings(self, settingsCopy);
  }
}

- (CGRect)pr_horizontalTitleBoundingRect
{
  x = self->_horizontalTitleBoundingRect.origin.x;
  y = self->_horizontalTitleBoundingRect.origin.y;
  width = self->_horizontalTitleBoundingRect.size.width;
  height = self->_horizontalTitleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pr_verticalTitleBoundingRect
{
  x = self->_verticalTitleBoundingRect.origin.x;
  y = self->_verticalTitleBoundingRect.origin.y;
  width = self->_verticalTitleBoundingRect.size.width;
  height = self->_verticalTitleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pui_salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)pui_userTapLocation
{
  x = self->pui_userTapLocation.x;
  y = self->pui_userTapLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end