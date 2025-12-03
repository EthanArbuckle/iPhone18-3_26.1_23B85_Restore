@interface PRUISPosterSceneSettingsBuilder
- (CGRect)canvasBounds;
- (PRUISPosterSceneSettingsBuilder)init;
- (id)buildWithPath:(id)path configuredProperties:(id)properties snapshotDefinition:(id)definition sceneDescriptor:(id)descriptor;
- (void)applySceneSettings:(id)settings;
- (void)applySnapshotDefinition:(id)definition;
- (void)reset;
- (void)setCanvasBounds:(CGRect)bounds;
- (void)setDisplayConfiguration:(id)configuration;
@end

@implementation PRUISPosterSceneSettingsBuilder

- (PRUISPosterSceneSettingsBuilder)init
{
  v5.receiver = self;
  v5.super_class = PRUISPosterSceneSettingsBuilder;
  v2 = [(PRUISPosterSceneSettingsBuilder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PRUISPosterSceneSettingsBuilder *)v2 reset];
  }

  return v3;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = [MEMORY[0x1E699FAC0] pui_mainDisplayConfiguration];
  }

  displayConfiguration = self->_displayConfiguration;
  self->_displayConfiguration = configurationCopy;
  v6 = configurationCopy;

  [(FBSDisplayConfiguration *)v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  self->_canvasBounds.origin.x = v8;
  self->_canvasBounds.origin.y = v10;
  self->_canvasBounds.size.width = v12;
  self->_canvasBounds.size.height = v14;
}

- (void)setCanvasBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(bounds, self->_canvasBounds))
  {
    self->_canvasBounds.origin.x = x;
    self->_canvasBounds.origin.y = y;
    self->_canvasBounds.size.width = width;
    self->_canvasBounds.size.height = height;
  }
}

- (void)applySceneSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    v6 = settingsCopy;
    v5 = objc_autoreleasePoolPush();
    v6[2](v6, self->_sceneSettings);
    objc_autoreleasePoolPop(v5);
    settingsCopy = v6;
  }
}

- (void)applySnapshotDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = definitionCopy;
  if (definitionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PRUISPosterSceneSettingsBuilder_applySnapshotDefinition___block_invoke;
    v6[3] = &unk_1E83A77B0;
    v7 = definitionCopy;
    [(PRUISPosterSceneSettingsBuilder *)self applySceneSettings:v6];
  }
}

- (id)buildWithPath:(id)path configuredProperties:(id)properties snapshotDefinition:(id)definition sceneDescriptor:(id)descriptor
{
  pathCopy = path;
  propertiesCopy = properties;
  definitionCopy = definition;
  descriptorCopy = descriptor;
  if (([pathCopy isServerPosterPath] & 1) == 0)
  {
    [PRUISPosterSceneSettingsBuilder buildWithPath:a2 configuredProperties:? snapshotDefinition:? sceneDescriptor:?];
  }

  identity = [pathCopy identity];
  provider = [identity provider];

  v75[0] = 0;
  v16 = [pathCopy extendContentsReadAccessToAuditToken:0 error:v75];
  v17 = v75[0];
  v70 = v16;
  if (!v16)
  {
    [PRUISPosterSceneSettingsBuilder buildWithPath:v17 configuredProperties:a2 snapshotDefinition:? sceneDescriptor:?];
  }

  v67 = v17;
  complicationLayout = [propertiesCopy complicationLayout];
  if ([complicationLayout hasComplications])
  {
    includesComplications = [definitionCopy includesComplications];
  }

  else
  {
    includesComplications = 0;
  }

  snapshotOptions = [(PRUISPosterSceneSettingsBuilder *)self snapshotOptions];
  v21 = self->_sceneSettings;
  [(_PRUISPosterStagedSceneSettings *)v21 pui_setProvider:provider];
  [(_PRUISPosterStagedSceneSettings *)v21 pui_setRole:*MEMORY[0x1E69C5670]];
  if (definitionCopy)
  {
    [(PRUISPosterSceneSettingsBuilder *)self applySnapshotDefinition:definitionCopy];
  }

  v69 = provider;
  if (snapshotOptions)
  {
    v64 = pathCopy;
    IsFloatingLayerOnly = PRSPosterSnapshotOptionsIsFloatingLayerOnly();
    if ((snapshotOptions & 0x40) != 0)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    complicationLayout2 = [propertiesCopy complicationLayout];
    inlineComplication = [complicationLayout2 inlineComplication];
    v25 = (snapshotOptions >> 2) & 1;
    if (inlineComplication)
    {
      v62 = [definitionCopy includesComplications] & v25;
    }

    else
    {
      v62 = 0;
    }

    complications = [complicationLayout2 complications];
    v65 = (snapshotOptions >> 2) & 1;
    if ([complications count])
    {
      v27 = [definitionCopy includesComplications] & v25;
    }

    else
    {
      v27 = 0;
    }

    v66 = definitionCopy;

    titleStyleConfiguration = [propertiesCopy titleStyleConfiguration];
    [titleStyleConfiguration prefersVerticalTitleLayout];

    sidebarComplications = [complicationLayout2 sidebarComplications];
    v30 = propertiesCopy;
    if ([sidebarComplications count])
    {
      v31 = [v66 includesComplications] & v65;
    }

    else
    {
      v31 = 0;
    }

    [(PRUISPosterSceneSettingsBuilder *)self interfaceOrientation];
    renderingConfiguration = [propertiesCopy renderingConfiguration];
    if ([renderingConfiguration isDepthEffectDisabled])
    {
      v33 = 1;
    }

    else
    {
      v33 = PRIsDepthEffectDisallowed();
    }

    [(_PRUISPosterStagedSceneSettings *)v21 pui_setInlineComplicationConfigured:v62];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setComplicationRowConfigured:v27];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setComplicationSidebarConfigured:v31];
    [(_PRUISPosterStagedSceneSettings *)v21 pr_setDepthEffectDisallowed:v33];
    [(_PRUISPosterStagedSceneSettings *)v21 pr_setUnlockProgress:v22];
    if ((snapshotOptions & 2) != 0)
    {
      includesHeaderElements = [v66 includesHeaderElements];
    }

    else
    {
      includesHeaderElements = 0;
    }

    propertiesCopy = v30;
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setShowsHeaderElements:includesHeaderElements];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setFloatingLayerSnapshot:IsFloatingLayerOnly];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setContent:(snapshotOptions >> 7) & 1];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setShowsComplications:v65 & includesComplications];

    pathCopy = v64;
    definitionCopy = v66;
  }

  [(_PRUISPosterStagedSceneSettings *)v21 pui_setSnapshot:1];
  interfaceOrientation = [(PRUISPosterSceneSettingsBuilder *)self interfaceOrientation];
  v36 = MEMORY[0x1E69C53A8];
  if (!interfaceOrientation)
  {
    role = [v70 role];
    v38 = [role isEqualToString:*v36];

    if (v38)
    {
      [(PRUISPosterSceneSettingsBuilder *)self setInterfaceOrientation:4];
      [(PRUISPosterSceneSettingsBuilder *)self setDeviceOrientation:1];
    }
  }

  if (!(includesComplications & 1 | ![(_PRUISPosterStagedSceneSettings *)v21 pui_showsComplications]))
  {
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setShowsComplications:0];
  }

  v39 = objc_opt_new();
  displayConfiguration = [(PRUISPosterSceneSettingsBuilder *)self displayConfiguration];
  [v39 setDisplayConfiguration:displayConfiguration];

  [(PRUISPosterSceneSettingsBuilder *)self canvasBounds];
  [v39 setCanvasBounds:?];
  [v39 setDeviceOrientation:{-[PRUISPosterSceneSettingsBuilder deviceOrientation](self, "deviceOrientation")}];
  [v39 setInterfaceOrientation:{-[PRUISPosterSceneSettingsBuilder interfaceOrientation](self, "interfaceOrientation")}];
  traitCollection = [(PRUISPosterSceneSettingsBuilder *)self traitCollection];
  v42 = [traitCollection copy];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = objc_opt_new();
  }

  v45 = v44;

  [v39 setProvider:v69];
  [v39 setSnapshotOptions:self->_snapshotOptions];
  titleStyleConfiguration2 = [propertiesCopy titleStyleConfiguration];
  [v39 setTitleStyleConfiguration:titleStyleConfiguration2];

  ambientConfiguration = [propertiesCopy ambientConfiguration];
  [v39 setAmbientConfiguration:ambientConfiguration];

  v48 = v70;
  [v39 setPath:v70];
  if (descriptorCopy)
  {
    role2 = [v70 role];
    v50 = [role2 isEqualToString:*v36];

    v51 = v69;
    if ((v50 & 1) == 0)
    {
      if ([descriptorCopy interfaceOrientation])
      {
        [v39 setInterfaceOrientation:{objc_msgSend(descriptorCopy, "interfaceOrientation")}];
      }

      if ([descriptorCopy deviceOrientation])
      {
        [v39 setDeviceOrientation:{objc_msgSend(descriptorCopy, "deviceOrientation")}];
      }
    }

    displayConfiguration2 = [descriptorCopy displayConfiguration];

    if (displayConfiguration2)
    {
      displayConfiguration3 = [descriptorCopy displayConfiguration];
      [v39 setDisplayConfiguration:displayConfiguration3];

      displayConfiguration4 = [descriptorCopy displayConfiguration];
      [displayConfiguration4 bounds];
      [v39 setCanvasBounds:?];
    }

    [descriptorCopy canvasBounds];
    if (!CGRectIsEmpty(v77))
    {
      [descriptorCopy canvasBounds];
      [v39 setCanvasBounds:?];
    }

    [descriptorCopy salientContentRectangle];
    if (!CGRectIsInfinite(v78))
    {
      [descriptorCopy salientContentRectangle];
      if (!CGRectIsEmpty(v79))
      {
        [descriptorCopy salientContentRectangle];
        [(_PRUISPosterStagedSceneSettings *)v21 pui_setSalientContentRectangle:?];
      }
    }

    contentOcclusionRectangles = [descriptorCopy contentOcclusionRectangles];

    if (contentOcclusionRectangles)
    {
      contentOcclusionRectangles2 = [descriptorCopy contentOcclusionRectangles];
      [(_PRUISPosterStagedSceneSettings *)v21 pui_setContentOcclusionRectangles:contentOcclusionRectangles2];
    }

    if ([descriptorCopy accessibilityContrast] != -1)
    {
      accessibilityContrast = [descriptorCopy accessibilityContrast];
      if (accessibilityContrast != [v45 accessibilityContrast])
      {
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __105__PRUISPosterSceneSettingsBuilder_buildWithPath_configuredProperties_snapshotDefinition_sceneDescriptor___block_invoke;
        v73[3] = &unk_1E83A77D8;
        v74 = descriptorCopy;
        v58 = [v45 traitCollectionByModifyingTraits:v73];

        v45 = v58;
      }
    }

    if ([descriptorCopy userInterfaceStyle])
    {
      userInterfaceStyle = [descriptorCopy userInterfaceStyle];
      if (userInterfaceStyle != [v45 userInterfaceStyle])
      {
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __105__PRUISPosterSceneSettingsBuilder_buildWithPath_configuredProperties_snapshotDefinition_sceneDescriptor___block_invoke_2;
        v71[3] = &unk_1E83A77D8;
        v72 = descriptorCopy;
        v60 = [v45 traitCollectionByModifyingTraits:v71];

        v45 = v60;
      }
    }

    v48 = v70;
  }

  else
  {
    v51 = v69;
  }

  [v39 setSceneSettings:v21];
  [v39 setTraitCollection:v45];

  return v39;
}

void __105__PRUISPosterSceneSettingsBuilder_buildWithPath_configuredProperties_snapshotDefinition_sceneDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAccessibilityContrast:{objc_msgSend(v2, "accessibilityContrast")}];
}

void __105__PRUISPosterSceneSettingsBuilder_buildWithPath_configuredProperties_snapshotDefinition_sceneDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setUserInterfaceStyle:{objc_msgSend(v2, "userInterfaceStyle")}];
}

- (void)reset
{
  v3 = objc_opt_new();
  sceneSettings = self->_sceneSettings;
  self->_sceneSettings = v3;

  self->_interfaceOrientation = 0;
  self->_deviceOrientation = 0;
  [(PRUISPosterSceneSettingsBuilder *)self setDisplayConfiguration:0];

  [(PRUISPosterSceneSettingsBuilder *)self setInterfaceOrientation:1];
}

- (CGRect)canvasBounds
{
  x = self->_canvasBounds.origin.x;
  y = self->_canvasBounds.origin.y;
  width = self->_canvasBounds.size.width;
  height = self->_canvasBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)buildWithPath:(const char *)a1 configuredProperties:snapshotDefinition:sceneDescriptor:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[path isServerPosterPath]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PRUISPosterSceneSettings.m";
    v9 = 1024;
    v10 = 212;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)buildWithPath:(const char *)a3 configuredProperties:snapshotDefinition:sceneDescriptor:.cold.2(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create path for scene settings of %@ : %@", a1, a2];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a3);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    v10 = @"PRUISPosterSceneSettings.m";
    v11 = 1024;
    v12 = 217;
    v13 = v8;
    v14 = v4;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end