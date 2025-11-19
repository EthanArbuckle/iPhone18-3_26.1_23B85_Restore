@interface PRUISPosterSceneSettingsBuilder
- (CGRect)canvasBounds;
- (PRUISPosterSceneSettingsBuilder)init;
- (id)buildWithPath:(id)a3 configuredProperties:(id)a4 snapshotDefinition:(id)a5 sceneDescriptor:(id)a6;
- (void)applySceneSettings:(id)a3;
- (void)applySnapshotDefinition:(id)a3;
- (void)reset;
- (void)setCanvasBounds:(CGRect)a3;
- (void)setDisplayConfiguration:(id)a3;
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

- (void)setDisplayConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E699FAC0] pui_mainDisplayConfiguration];
  }

  displayConfiguration = self->_displayConfiguration;
  self->_displayConfiguration = v4;
  v6 = v4;

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

- (void)setCanvasBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_canvasBounds))
  {
    self->_canvasBounds.origin.x = x;
    self->_canvasBounds.origin.y = y;
    self->_canvasBounds.size.width = width;
    self->_canvasBounds.size.height = height;
  }
}

- (void)applySceneSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = objc_autoreleasePoolPush();
    v6[2](v6, self->_sceneSettings);
    objc_autoreleasePoolPop(v5);
    v4 = v6;
  }
}

- (void)applySnapshotDefinition:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PRUISPosterSceneSettingsBuilder_applySnapshotDefinition___block_invoke;
    v6[3] = &unk_1E83A77B0;
    v7 = v4;
    [(PRUISPosterSceneSettingsBuilder *)self applySceneSettings:v6];
  }
}

- (id)buildWithPath:(id)a3 configuredProperties:(id)a4 snapshotDefinition:(id)a5 sceneDescriptor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v68 = a6;
  if (([v11 isServerPosterPath] & 1) == 0)
  {
    [PRUISPosterSceneSettingsBuilder buildWithPath:a2 configuredProperties:? snapshotDefinition:? sceneDescriptor:?];
  }

  v14 = [v11 identity];
  v15 = [v14 provider];

  v75[0] = 0;
  v16 = [v11 extendContentsReadAccessToAuditToken:0 error:v75];
  v17 = v75[0];
  v70 = v16;
  if (!v16)
  {
    [PRUISPosterSceneSettingsBuilder buildWithPath:v17 configuredProperties:a2 snapshotDefinition:? sceneDescriptor:?];
  }

  v67 = v17;
  v18 = [v12 complicationLayout];
  if ([v18 hasComplications])
  {
    v19 = [v13 includesComplications];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(PRUISPosterSceneSettingsBuilder *)self snapshotOptions];
  v21 = self->_sceneSettings;
  [(_PRUISPosterStagedSceneSettings *)v21 pui_setProvider:v15];
  [(_PRUISPosterStagedSceneSettings *)v21 pui_setRole:*MEMORY[0x1E69C5670]];
  if (v13)
  {
    [(PRUISPosterSceneSettingsBuilder *)self applySnapshotDefinition:v13];
  }

  v69 = v15;
  if (v20)
  {
    v64 = v11;
    IsFloatingLayerOnly = PRSPosterSnapshotOptionsIsFloatingLayerOnly();
    if ((v20 & 0x40) != 0)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    v23 = [v12 complicationLayout];
    v24 = [v23 inlineComplication];
    v25 = (v20 >> 2) & 1;
    if (v24)
    {
      v62 = [v13 includesComplications] & v25;
    }

    else
    {
      v62 = 0;
    }

    v26 = [v23 complications];
    v65 = (v20 >> 2) & 1;
    if ([v26 count])
    {
      v27 = [v13 includesComplications] & v25;
    }

    else
    {
      v27 = 0;
    }

    v66 = v13;

    v28 = [v12 titleStyleConfiguration];
    [v28 prefersVerticalTitleLayout];

    v29 = [v23 sidebarComplications];
    v30 = v12;
    if ([v29 count])
    {
      v31 = [v66 includesComplications] & v65;
    }

    else
    {
      v31 = 0;
    }

    [(PRUISPosterSceneSettingsBuilder *)self interfaceOrientation];
    v32 = [v12 renderingConfiguration];
    if ([v32 isDepthEffectDisabled])
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
    if ((v20 & 2) != 0)
    {
      v34 = [v66 includesHeaderElements];
    }

    else
    {
      v34 = 0;
    }

    v12 = v30;
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setShowsHeaderElements:v34];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setFloatingLayerSnapshot:IsFloatingLayerOnly];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setContent:(v20 >> 7) & 1];
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setShowsComplications:v65 & v19];

    v11 = v64;
    v13 = v66;
  }

  [(_PRUISPosterStagedSceneSettings *)v21 pui_setSnapshot:1];
  v35 = [(PRUISPosterSceneSettingsBuilder *)self interfaceOrientation];
  v36 = MEMORY[0x1E69C53A8];
  if (!v35)
  {
    v37 = [v70 role];
    v38 = [v37 isEqualToString:*v36];

    if (v38)
    {
      [(PRUISPosterSceneSettingsBuilder *)self setInterfaceOrientation:4];
      [(PRUISPosterSceneSettingsBuilder *)self setDeviceOrientation:1];
    }
  }

  if (!(v19 & 1 | ![(_PRUISPosterStagedSceneSettings *)v21 pui_showsComplications]))
  {
    [(_PRUISPosterStagedSceneSettings *)v21 pui_setShowsComplications:0];
  }

  v39 = objc_opt_new();
  v40 = [(PRUISPosterSceneSettingsBuilder *)self displayConfiguration];
  [v39 setDisplayConfiguration:v40];

  [(PRUISPosterSceneSettingsBuilder *)self canvasBounds];
  [v39 setCanvasBounds:?];
  [v39 setDeviceOrientation:{-[PRUISPosterSceneSettingsBuilder deviceOrientation](self, "deviceOrientation")}];
  [v39 setInterfaceOrientation:{-[PRUISPosterSceneSettingsBuilder interfaceOrientation](self, "interfaceOrientation")}];
  v41 = [(PRUISPosterSceneSettingsBuilder *)self traitCollection];
  v42 = [v41 copy];
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
  v46 = [v12 titleStyleConfiguration];
  [v39 setTitleStyleConfiguration:v46];

  v47 = [v12 ambientConfiguration];
  [v39 setAmbientConfiguration:v47];

  v48 = v70;
  [v39 setPath:v70];
  if (v68)
  {
    v49 = [v70 role];
    v50 = [v49 isEqualToString:*v36];

    v51 = v69;
    if ((v50 & 1) == 0)
    {
      if ([v68 interfaceOrientation])
      {
        [v39 setInterfaceOrientation:{objc_msgSend(v68, "interfaceOrientation")}];
      }

      if ([v68 deviceOrientation])
      {
        [v39 setDeviceOrientation:{objc_msgSend(v68, "deviceOrientation")}];
      }
    }

    v52 = [v68 displayConfiguration];

    if (v52)
    {
      v53 = [v68 displayConfiguration];
      [v39 setDisplayConfiguration:v53];

      v54 = [v68 displayConfiguration];
      [v54 bounds];
      [v39 setCanvasBounds:?];
    }

    [v68 canvasBounds];
    if (!CGRectIsEmpty(v77))
    {
      [v68 canvasBounds];
      [v39 setCanvasBounds:?];
    }

    [v68 salientContentRectangle];
    if (!CGRectIsInfinite(v78))
    {
      [v68 salientContentRectangle];
      if (!CGRectIsEmpty(v79))
      {
        [v68 salientContentRectangle];
        [(_PRUISPosterStagedSceneSettings *)v21 pui_setSalientContentRectangle:?];
      }
    }

    v55 = [v68 contentOcclusionRectangles];

    if (v55)
    {
      v56 = [v68 contentOcclusionRectangles];
      [(_PRUISPosterStagedSceneSettings *)v21 pui_setContentOcclusionRectangles:v56];
    }

    if ([v68 accessibilityContrast] != -1)
    {
      v57 = [v68 accessibilityContrast];
      if (v57 != [v45 accessibilityContrast])
      {
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __105__PRUISPosterSceneSettingsBuilder_buildWithPath_configuredProperties_snapshotDefinition_sceneDescriptor___block_invoke;
        v73[3] = &unk_1E83A77D8;
        v74 = v68;
        v58 = [v45 traitCollectionByModifyingTraits:v73];

        v45 = v58;
      }
    }

    if ([v68 userInterfaceStyle])
    {
      v59 = [v68 userInterfaceStyle];
      if (v59 != [v45 userInterfaceStyle])
      {
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __105__PRUISPosterSceneSettingsBuilder_buildWithPath_configuredProperties_snapshotDefinition_sceneDescriptor___block_invoke_2;
        v71[3] = &unk_1E83A77D8;
        v72 = v68;
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