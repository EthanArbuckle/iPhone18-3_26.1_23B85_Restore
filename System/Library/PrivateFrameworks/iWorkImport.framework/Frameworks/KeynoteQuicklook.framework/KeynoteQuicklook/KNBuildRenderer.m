@interface KNBuildRenderer
- (BOOL)addAnimationsAtLayerTime:(double)a3;
- (BOOL)p_isDriftAnimation;
- (BOOL)p_isTextDrawable;
- (KNBuildRenderer)initWithAnimatedBuild:(id)a3 info:(id)a4 buildStage:(id)a5 animatedSlideView:(id)a6;
- (NSString)description;
- (TSDRep)rep;
- (TSDTextureDescription)textureDescription;
- (TSDTextureSet)textureSet;
- (id)animationWillBegin;
- (id)initializeTextureSetForEndOfBuild:(BOOL)a3 endOfSlide:(BOOL)a4 description:(id)a5 isRenderingToContext:(BOOL)a6;
- (id)loadPluginIfNeeded;
- (id)p_filterForTextDelivery:(int64_t)a3 childRepTextDeliveryFilter:(id *)a4;
- (id)p_initializeTextureSetForEndOfBuild:(BOOL)a3 endOfSlide:(BOOL)a4 description:(id)a5 isRenderingToContext:(BOOL)a6;
- (id)p_keyForAnimation;
- (id)p_textureSetForStage:(int64_t)a3 description:(id)a4 isAtEndOfBuild:(BOOL)a5 shouldForceRebuild:(BOOL)a6 shouldRender:(BOOL)a7;
- (id)setupFinalTextureGivenCurrentTextureSet:(id)a3 isRenderingToContext:(BOOL)a4;
- (id)textureDescriptionForStage:(int64_t)a3 isAtEndOfBuild:(BOOL)a4;
- (id)textureSetForStage:(int64_t)a3 description:(id)a4 isAtEndOfBuild:(BOOL)a5 shouldForceRebuild:(BOOL)a6 shouldRender:(BOOL)a7;
- (id)textureSetWithoutRenderedContents;
- (int64_t)textureStageIndex;
- (unint64_t)textureDeliveryStyle;
- (void)addBuildToStartAtEnd:(id)a3;
- (void)animate;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)fadeOutPreviousStageOn:(id)a3 atLayerTime:(double)a4;
- (void)forceRemoveAnimations;
- (void)generateTextures;
- (void)p_removeAnimations;
- (void)p_resetAnimations;
- (void)p_updateTextureDescription:(id)a3 forStage:(int64_t)a4 isAtEndOfBuild:(BOOL)a5;
- (void)pauseAnimationsAtTime:(double)a3;
- (void)registerForBuildEndCallback:(SEL)a3 target:(id)a4;
- (void)removeAnimationsAndFinish:(BOOL)a3;
- (void)removeBuildToStartAtEnd:(id)a3;
- (void)renderTextures;
- (void)resetHighlightsBeforeAnimationOnTextureSet:(id)a3;
- (void)resetPreviousStageToUnhighlightOnTextureSet:(id)a3;
- (void)resumeAnimationsIfPausedAtTime:(double)a3;
- (void)setEndOfBuildTextureSet:(id)a3;
- (void)setGeometryAndActionAttributesOnTextureSet:(id)a3 isAtEndOfBuild:(BOOL)a4 isAtEndOfSlide:(BOOL)a5 isRenderingToContext:(BOOL)a6;
- (void)setLayerVisibility:(id)a3 isAtEndOfBuild:(BOOL)a4;
- (void)setupPluginContext;
- (void)stopAnimations;
- (void)teardown;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)a3;
@end

@implementation KNBuildRenderer

- (KNBuildRenderer)initWithAnimatedBuild:(id)a3 info:(id)a4 buildStage:(id)a5 animatedSlideView:(id)a6
{
  v32.receiver = self;
  v32.super_class = KNBuildRenderer;
  v10 = [(KNBuildRenderer *)&v32 init];
  v11 = v10;
  if (v10)
  {
    v10->_animatedBuild = a3;
    v10->_buildStage = a5;
    v11->_info = a4;
    v11->super._session = objc_msgSend_session(a6, v12, v13);
    v11->_numberOfAnimationsStarted = 0;
    v11->_animatedLayers = 0;
    v11->_animatedBuildsToStartAtEnd = 0;
    v11->_interrupted = 0;
    v11->super._ASV = a6;
    v11->super._direction = objc_msgSend_direction(a3, v14, v15);
    v11->_isNonCachedTextureValid = 0;
    v11->_texturesToTeardown = objc_alloc_init(MEMORY[0x277CBEB58]);
    session = v11->super._session;
    if (session)
    {
      v19 = objc_msgSend_registry(session, v16, v17);
    }

    else
    {
      v19 = objc_msgSend_instance(KNAnimationRegistry, v16, v17);
    }

    v22 = v19;
    v23 = objc_msgSend_effectIdentifier(v11->_animatedBuild, v20, v21);
    v26 = objc_msgSend_buildType(v11->_animatedBuild, v24, v25);
    v28 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v22, v27, v23, v26);
    v11->_animationInfo = v28;
    v11->super._pluginClass = objc_msgSend_animationClass(v28, v29, v30);
  }

  return v11;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];

  objc_msgSend_teardown(self->_finalAttributesTextureSet, v3, v4);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  texturesToTeardown = self->_texturesToTeardown;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(texturesToTeardown, v6, &v18, v22, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(texturesToTeardown);
        }

        objc_msgSend_teardown(*(*(&v18 + 1) + 8 * i), v8, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(texturesToTeardown, v8, &v18, v22, 16);
    }

    while (v10);
  }

  objc_msgSend_teardown(self->_textureSet, v13, v14);
  objc_msgSend_teardown(self->_endOfBuildTextureSet, v15, v16);

  self->super._session = 0;
  v17.receiver = self;
  v17.super_class = KNBuildRenderer;
  [(KNAnimationRenderer *)&v17 dealloc];
}

- (void)teardown
{
  objc_msgSend_teardown(self->_textureSet, a2, v2);

  self->_textureSet = 0;
  objc_msgSend_teardown(self->_finalAttributesTextureSet, v4, v5);

  self->_finalAttributesTextureSet = 0;
  self->_isNonCachedTextureValid = 0;
  self->_areAnimationsReadyToStart = 0;
  v6.receiver = self;
  v6.super_class = KNBuildRenderer;
  [(KNAnimationRenderer *)&v6 teardown];
}

- (NSString)description
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  if (objc_msgSend_plugin(self, v5, v6))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v13 = objc_msgSend_buildType(self->_animatedBuild, v11, v12);
    v15 = objc_msgSend_localizedMenuString_(v10, v14, v13);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v19 = objc_msgSend_stringWithFormat_(v9, v18, @"%@(%@)", v15, v17);
    objc_msgSend_addObject_(v4, v20, v19);
  }

  if (objc_msgSend_build(self->_buildStage, v7, v8))
  {
    objc_msgSend_buildType(self->_animatedBuild, v21, v22);
    v23 = KNAnimationTypeAsString();
    objc_msgSend_addObject_(v4, v24, v23);
  }

  v25 = MEMORY[0x277CCACA8];
  objc_msgSend_duration(self->_animatedBuild, v21, v22);
  v28 = objc_msgSend_stringWithFormat_(v25, v26, @"%0.2fs", v27);
  objc_msgSend_addObject_(v4, v29, v28);
  if (self->_isPreview)
  {
    objc_msgSend_addObject_(v4, v30, @"preview");
  }

  if (objc_msgSend_textureStageIndex(self, v30, v31))
  {
    v34 = MEMORY[0x277CCACA8];
    v35 = objc_msgSend_textureStageIndex(self, v32, v33);
    v37 = objc_msgSend_stringWithFormat_(v34, v36, @"texture stage:%lu", v35);
    objc_msgSend_addObject_(v4, v38, v37);
  }

  v39 = objc_msgSend_componentsJoinedByString_(v4, v32, @", ");
  v40 = MEMORY[0x277CCACA8];
  v44.receiver = self;
  v44.super_class = KNBuildRenderer;
  v41 = [(KNBuildRenderer *)&v44 description];
  return objc_msgSend_stringWithFormat_(v40, v42, @"%@: %@", v41, v39);
}

- (id)loadPluginIfNeeded
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer loadPluginIfNeeded]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 157, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  v11 = objc_msgSend_rep(self, a2, v2);
  objc_sync_enter(v11);
  plugin = self->super._plugin;
  if (!plugin)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plugin = self->super._plugin;
    }

    else
    {
      v15 = objc_alloc(objc_msgSend_pluginClass(self->_animatedBuild, v13, v14));
      v18 = objc_msgSend_animationContext(self->super._session, v16, v17);
      plugin = objc_msgSend_initWithAnimationContext_(v15, v19, v18);
      self->super._plugin = plugin;
    }
  }

  objc_sync_exit(v11);
  return plugin;
}

- (void)setupPluginContext
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNBuildRenderer setupPluginContext]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 168, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  v72.receiver = self;
  v72.super_class = KNBuildRenderer;
  [(KNAnimationRenderer *)&v72 setupPluginContext];
  objc_opt_class();
  objc_msgSend_pluginContext(self, v11, v12);
  v13 = TSUCheckedDynamicCast();
  objc_msgSend_setRendererType_(v13, v14, 1);
  objc_msgSend_duration(self->_animatedBuild, v15, v16);
  objc_msgSend_setDuration_(v13, v17, v18);
  objc_msgSend_setDirection_(v13, v19, self->super._direction);
  objc_msgSend_setAnimatedBuild_(v13, v20, self->_animatedBuild);
  v23 = objc_msgSend_attributes(self->_animatedBuild, v21, v22);
  v26 = objc_msgSend_attributes(v23, v24, v25);
  objc_msgSend_setBuildAttributes_(v13, v27, v26);
  ASV = self->super._ASV;
  v31 = objc_msgSend_eventIndex(self->_animatedBuild, v29, v30);
  isMotionBlurEnabledWithEvent = objc_msgSend_isMotionBlurEnabledWithEvent_(ASV, v32, v31);
  objc_msgSend_setIsMotionBlurred_(v13, v34, isMotionBlurEnabledWithEvent);
  textureSet = self->_textureSet;
  v38 = objc_msgSend_textureStageIndex(self, v36, v37);
  isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v39, v40);
  isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v42, v43);
  objc_msgSend_boundingRectForStage_isBuildIn_isContentBuild_(textureSet, v45, v38, isBuildIn, isContentBuild);
  objc_msgSend_setBoundingRect_(v13, v46, v47);
  objc_msgSend_boundingRect(v13, v48, v49);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  objc_msgSend_frame(self->_textureSet, v58, v59);
  v61 = v60;
  objc_msgSend_frame(self->_textureSet, v62, v63);
  v65 = v64;
  v73.origin.x = v51;
  v73.origin.y = v53;
  v73.size.width = v55;
  v73.size.height = v57;
  v74 = CGRectOffset(v73, v61, v65);
  objc_msgSend_setBoundingRectOnCanvas_(v13, v66, v67, v74.origin.x, v74.origin.y, v74.size.width, v74.size.height);
  v70 = objc_msgSend_rep(self, v68, v69);
  objc_msgSend_setRep_(v13, v71, v70);
}

- (TSDRep)rep
{
  session = self->super._session;
  info = self->_info;
  v6 = objc_msgSend_canvas(self->super._ASV, a2, v2);

  return objc_msgSend_repForInfo_onCanvas_(session, v5, info, v6);
}

- (id)p_filterForTextDelivery:(int64_t)a3 childRepTextDeliveryFilter:(id *)a4
{
  objc_msgSend_loadPluginIfNeeded(self, a2, a3);
  v7 = *MEMORY[0x277D805A0];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = *MEMORY[0x277D805A0];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v10 = objc_opt_class();
      v9 = objc_msgSend_animationFilter(v10, v11, v12);
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v8 = MEMORY[0x277D80588];
        break;
      case 3:
        v8 = MEMORY[0x277D80578];
        break;
      case 4:
        v8 = MEMORY[0x277D80580];
        break;
      default:
        v9 = 0;
        goto LABEL_15;
    }

    v9 = *v8;
  }

LABEL_15:
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v14 = objc_msgSend_customAttributesForAttributeKey_(self->_animationInfo, v13, @"KNBuildCustomAttributesTextDelivery");
    if (v14)
    {
      v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, &unk_2884F3870);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_275DA5A88;
      v22[3] = &unk_27A698A20;
      v22[4] = &v23;
      v22[5] = a3;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v16, v17, v22);
    }
  }

  if ((v24[3] & 1) == 0)
  {
    v18 = objc_opt_class();
    v7 = objc_msgSend_animationFilter(v18, v19, v20);
    v9 = v7;
  }

  *a4 = v7;
  _Block_object_dispose(&v23, 8);
  return v9;
}

- (TSDTextureDescription)textureDescription
{
  v4 = objc_msgSend_rep(self, a2, v2);
  objc_sync_enter(v4);
  textureDescription = self->_textureDescription;
  if (textureDescription)
  {
    if ((objc_msgSend_isMetalEnabled(self->super._session, v5, v6) & 1) != 0 || self->_shouldUseMagicMoveTextures == objc_msgSend_isMagicMove(self->_textureDescription, v8, v9))
    {
      goto LABEL_8;
    }

    textureDescription = self->_textureDescription;
  }

  self->_textureDescription = objc_msgSend_descriptionWithSession_(MEMORY[0x277D803D8], v10, self->super._session);
  if ((objc_msgSend_isMetalEnabled(self->super._session, v11, v12) & 1) == 0 && self->_shouldUseMagicMoveTextures)
  {
    objc_msgSend_setIsMagicMove_(self->_textureDescription, v13, 1);
    objc_msgSend_setShouldSeparateReflection_(self->_textureDescription, v14, 1);
    objc_msgSend_setShouldSeparateStroke_(self->_textureDescription, v15, 1);
    objc_msgSend_setShouldSeparateShadow_(self->_textureDescription, v16, 1);
    objc_msgSend_setShouldAddMasks_(self->_textureDescription, v17, 1);
    objc_msgSend_setShouldAddVideoBackgroundFill_(self->_textureDescription, v18, 1);
  }

LABEL_8:
  v19 = self->_textureDescription;
  objc_sync_exit(v4);
  return v19;
}

- (void)generateTextures
{
  if (objc_msgSend_shouldPreGenerateTextures(self, a2, v2))
  {
    v6 = objc_msgSend_animatedBuild(self, v4, v5);
    if (!objc_msgSend_previousAttributes(v6, v7, v8))
    {
      v12 = objc_msgSend_textureDescription(self, v9, v10);

      objc_msgSend_initializeTextureSetForEndOfBuild_endOfSlide_description_isRenderingToContext_(self, v11, 0, 0, v12, 0);
    }
  }
}

- (void)renderTextures
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_allTextures(self->_textureSet, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_msgSend_textureManager(self->super._session, v7, v8);
        objc_msgSend_addTextureToRasterizationQueue_asv_(v13, v14, v12, self->super._ASV);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v9);
  }
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_allTextures(self->_textureSet, a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(*(*(&v11 + 1) + 8 * v10++), v7, v3);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (TSDTextureSet)textureSet
{
  v4 = objc_msgSend_textureStageIndex(self, a2, v2);
  v8 = objc_msgSend_textureDescription(self, v5, v6);

  return objc_msgSend_textureSetForStage_description_isAtEndOfBuild_shouldForceRebuild_shouldRender_(self, v7, v4, v8, 0, 0, 1);
}

- (id)textureSetWithoutRenderedContents
{
  v4 = objc_msgSend_textureStageIndex(self, a2, v2);
  v8 = objc_msgSend_textureDescription(self, v5, v6);

  return objc_msgSend_textureSetForStage_description_isAtEndOfBuild_shouldForceRebuild_shouldRender_(self, v7, v4, v8, 0, 0, 0);
}

- (id)textureSetForStage:(int64_t)a3 description:(id)a4 isAtEndOfBuild:(BOOL)a5 shouldForceRebuild:(BOOL)a6 shouldRender:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v13 = objc_msgSend_rep(self, a2, a3);
  objc_sync_enter(v13);
  shouldRender = objc_msgSend_p_textureSetForStage_description_isAtEndOfBuild_shouldForceRebuild_shouldRender_(self, v14, a3, a4, v9, v8, v7);
  objc_sync_exit(v13);
  return shouldRender;
}

- (id)textureDescriptionForStage:(int64_t)a3 isAtEndOfBuild:(BOOL)a4
{
  v4 = a4;
  v7 = objc_msgSend_descriptionWithSession_(MEMORY[0x277D803D8], a2, self->super._session);
  objc_msgSend_p_updateTextureDescription_forStage_isAtEndOfBuild_(self, v8, v7, a3, v4);
  return v7;
}

- (void)setEndOfBuildTextureSet:(id)a3
{
  endOfBuildTextureSet = self->_endOfBuildTextureSet;
  if (endOfBuildTextureSet != a3)
  {
    if (endOfBuildTextureSet)
    {
      objc_msgSend_addObject_(self->_texturesToTeardown, a2, endOfBuildTextureSet);
      v6 = self->_endOfBuildTextureSet;
    }

    else
    {
      v6 = 0;
    }

    self->_endOfBuildTextureSet = a3;
  }
}

- (id)p_textureSetForStage:(int64_t)a3 description:(id)a4 isAtEndOfBuild:(BOOL)a5 shouldForceRebuild:(BOOL)a6 shouldRender:(BOOL)a7
{
  v67 = a7;
  v8 = a5;
  v10 = a3;
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_textureSetForStage:description:isAtEndOfBuild:shouldForceRebuild:shouldRender:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 345, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }
  }

  v19 = objc_msgSend_rep(self, a2, a3);
  isMovieInfo = objc_msgSend_p_isMovieInfo(self, v20, v21);
  if (!a4)
  {
    a4 = objc_msgSend_textureDescription(self, v22, v23);
  }

  if ((objc_msgSend_isActionBuild(self->_animatedBuild, v22, v23) & isMovieInfo) == 1)
  {

    self->_textureSet = 0;
  }

  if (v8)
  {
    if (objc_msgSend_textureDeliveryStyle(self, v25, v26) && objc_msgSend_suppliesFinalTextures(self->_info, v25, v26))
    {
      v10 += objc_msgSend_isBuildIn(self->_animatedBuild, v25, v26);
    }

    p_textureSet = &self->_textureSet;
    p_endOfBuildTextureSet = &self->_endOfBuildTextureSet;
  }

  else
  {
    p_endOfBuildTextureSet = &self->_textureSet;
    p_textureSet = &self->_textureSet;
  }

  v28 = *p_endOfBuildTextureSet;
  isRenderable = objc_msgSend_isRenderable(*p_endOfBuildTextureSet, v25, v26, p_textureSet);
  if (!v28 || (v32 = isRenderable, v10 != objc_msgSend_textureStageIndex(self, v30, v31)) || a6 || objc_msgSend_isBaked(v28, v33, v34) && !(isMovieInfo & 1 | ((objc_msgSend_isActionBuild(self->_animatedBuild, v35, v36) & 1) == 0)) || (objc_msgSend_isEqual_(self->_textureDescription, v35, a4) & v32) != 1 || (objc_msgSend_isMetalEnabled(self->super._session, v37, v38) & 1) == 0 && self->_shouldUseMagicMoveTextures && !objc_msgSend_isMagicMove(v28, v39, v40) || (objc_msgSend_shouldPreGenerateTextures(self, v39, v40) & 1) == 0 && (objc_msgSend_shouldForceTextureGeneration(self->super._session, v41, v42) & 1) == 0)
  {
    objc_opt_class();
    objc_msgSend_info(self, v43, v44);
    v45 = TSUDynamicCast();
    v28 = 0;
    if (v19 && v45)
    {
      objc_msgSend_p_updateTextureDescription_forStage_isAtEndOfBuild_(self, v46, a4, v10, v8);
      PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, v47, v48);
      if (objc_opt_respondsToSelector())
      {
        v51 = objc_msgSend_animationInfoForAnimatedBuild_(PluginIfNeeded, v50, self->_animatedBuild);
        objc_msgSend_setTextureAnimationInfo_(v19, v52, v51);
      }

      else
      {
        objc_msgSend_setTextureAnimationInfo_(v19, v50, 0);
      }

      Textures = objc_msgSend_shouldPreGenerateTextures(self, v53, v54);
      ASV = self->super._ASV;
      if (Textures)
      {
        shouldRender = objc_msgSend_textureSetForRep_description_shouldRender_(ASV, v55, v19, a4, v67);
      }

      else
      {
        shouldRender = objc_msgSend_nonCachedTextureSetForRep_description_shouldRender_(ASV, v55, v19, a4, v67);
      }

      v28 = shouldRender;
      if (v8)
      {
        objc_msgSend_setEndOfBuildTextureSet_(self, v59, shouldRender);
      }

      else if (v10 == objc_msgSend_textureStageIndex(self, v59, v60) && *v66 != v28)
      {
        objc_msgSend_teardown(*v66, v61, v62);

        *v66 = v28;
        objc_msgSend_setTextureDescription_(self, v63, a4);
      }
    }
  }

  return v28;
}

- (void)p_updateTextureDescription:(id)a3 forStage:(int64_t)a4 isAtEndOfBuild:(BOOL)a5
{
  v9 = objc_msgSend_rep(self, a2, a3);
  objc_opt_class();
  objc_msgSend_info(self, v10, v11);
  v12 = TSUDynamicCast();
  if (v9 && v12)
  {
    v15 = objc_msgSend_model(self->super._ASV, v13, v14);
    v18 = objc_msgSend_textureDeliveryStyle(self, v16, v17);
    if (objc_msgSend_conformsToProtocol_(self->super._pluginClass, v19, &unk_2885463D0))
    {
      if (a5)
      {
        objc_msgSend_setShouldSeparateStroke_(a3, v20, 0);
        objc_msgSend_setShouldAddParameterizedStroke_(a3, v22, 0);
        v23 = objc_opt_class();
        v25 = objc_msgSend_wantsParameterizedStrokeDrawingReversedWithAnimatedBuild_(v23, v24, self->_animatedBuild);
        objc_msgSend_setShouldReverseStrokeDrawing_(a3, v26, v25);
        objc_msgSend_setShouldSeparateGroupedTextures_(a3, v27, 0);
      }

      else
      {
        v28 = v15;
        v29 = objc_msgSend_playMode(self->super._session, v20, v21);
        v30 = v29 != 5;
        objc_msgSend_setShouldSeparateStroke_(a3, v31, v30);
        objc_msgSend_setShouldAddParameterizedStroke_(a3, v32, v30);
        v33 = objc_opt_class();
        v35 = objc_msgSend_wantsParameterizedStrokeDrawingReversedWithAnimatedBuild_(v33, v34, self->_animatedBuild);
        objc_msgSend_setShouldReverseStrokeDrawing_(a3, v36, v35);
        if (v29 == 5)
        {
          v41 = 0;
        }

        else
        {
          v38 = objc_opt_class();
          v41 = objc_msgSend_wantsSeparateGroupedTextures(v38, v39, v40);
        }

        v15 = v28;
        objc_msgSend_setShouldSeparateGroupedTextures_(a3, v37, v41);
      }
    }

    if (objc_msgSend_suppliesFinalTextures(self->_info, v20, v21))
    {
      v44 = v18 == 0;
    }

    else
    {
      v44 = 1;
    }

    if (!v44 && (objc_msgSend_p_isDriftAnimation(self, v42, v43) & 1) == 0)
    {
      objc_msgSend_setShouldAddFinal_(a3, v42, 1);
    }

    objc_msgSend_setDeliveryStyle_(a3, v42, v18);
    objc_msgSend_setStage_(a3, v45, a4);
    PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, v46, v47);
    if (objc_msgSend_conformsToProtocol_(PluginIfNeeded, v49, &unk_288512818))
    {
      LOBYTE(v52) = 0;
    }

    else
    {
      v52 = objc_msgSend_conformsToProtocol_(PluginIfNeeded, v50, &unk_288546490) ^ 1;
    }

    v53 = 0;
    if (a5)
    {
      v54 = 0;
    }

    else
    {
      v54 = 0;
      if ((v52 & 1) == 0)
      {
        if ((objc_msgSend_p_isMovieInfo(self, v50, v51) & 1) != 0 || (v57 = objc_msgSend_animationFilters(self->_info, v55, v56), v58 = MEMORY[0x277D80578], !objc_msgSend_containsObject_(v57, v59, *MEMORY[0x277D80578])))
        {
          v53 = 0;
          objc_msgSend_setByGlyphStyle_(a3, v55, 0);
          goto LABEL_28;
        }

        v61 = objc_msgSend_attributes(self->_animatedBuild, v55, v60);
        v64 = objc_msgSend_attributes(v61, v62, v63);
        v66 = objc_msgSend_objectForKey_(v64, v65, @"KNBuildCustomAttributesTextDelivery");
        v87 = *MEMORY[0x277D805A0];
        v69 = objc_msgSend_integerValue(v66, v67, v68);
        v71 = objc_msgSend_p_filterForTextDelivery_childRepTextDeliveryFilter_(self, v70, v69, &v87);
        isEqualToString = objc_msgSend_isEqualToString_(v71, v72, *v58);
        v75 = MEMORY[0x277D80588];
        if (isEqualToString)
        {
          v54 = 1;
        }

        else if (objc_msgSend_isEqualToString_(v71, v74, *MEMORY[0x277D80588]))
        {
          v54 = 2;
        }

        else if (objc_msgSend_isEqualToString_(v71, v74, *MEMORY[0x277D80580]))
        {
          v54 = 3;
        }

        else
        {
          v54 = 0;
        }

        if (objc_msgSend_isEqualToString_(v87, v74, *v58))
        {
          v53 = 1;
        }

        else if (objc_msgSend_isEqualToString_(v87, v50, *v75))
        {
          v53 = 2;
        }

        else
        {
          v53 = 0;
        }
      }
    }

    objc_msgSend_setByGlyphStyle_(a3, v50, v54);
LABEL_28:
    objc_msgSend_setChildRepByGlyphStyle_(a3, v76, v53);
    isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v77, v78);
    objc_msgSend_setShouldSeparateText_(a3, v80, isContentBuild);
    objc_opt_class();
    objc_msgSend_info(v9, v81, v82);
    v83 = TSUDynamicCast();
    objc_msgSend_maxScaleFactorForDrawable_(v15, v84, v83);
    if (v86 > 1.0)
    {
      objc_msgSend_setShouldIgnoreScaleInSourceImage_(a3, v85, 1);
    }
  }
}

- (BOOL)p_isTextDrawable
{
  if (!self->_info)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_isTextDrawable]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 507, 0, "invalid nil value for '%{public}s'", "_info");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  }

  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (void)setLayerVisibility:(id)a3 isAtEndOfBuild:(BOOL)a4
{
  v4 = a4;
  v136 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer setLayerVisibility:isAtEndOfBuild:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 512, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, a2, a3);
  isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v15, v16);
  v19 = objc_msgSend_textureStageIndex(self, v17, v18);
  v22 = objc_msgSend_eventIndex(self->_animatedBuild, v20, v21) + v4;
  v24 = objc_msgSend_viewLayerAtEventIndex_(a3, v23, v22);
  objc_msgSend_setHidden_(v24, v25, 0);
  v28 = objc_msgSend_textureDeliveryStyle(self, v26, v27);
  v122 = v28;
  if (objc_msgSend_suppliesFinalTextures(self->_info, v29, v30))
  {
    v33 = v28 == 0;
  }

  else
  {
    v33 = 1;
  }

  v121 = isBuildIn;
  if (v33)
  {
    if (objc_msgSend_containsFinalTextures(a3, v31, v32) && objc_msgSend_objectType(a3, v39, v40) == 1)
    {
      objc_msgSend_hideLayersOfFinalTexturesAtEventIndex_(a3, v39, v22);
    }

    goto LABEL_21;
  }

  objc_msgSend_setShouldIncludeFinalTexturesInVisibleSet_(a3, v31, 0);
  objc_msgSend_hideLayersOfFinalTexturesAtEventIndex_(a3, v34, v22);
  v36 = objc_msgSend_finalTexturesForStage_(a3, v35, v19 - (v4 & isBuildIn ^ 1u));
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v130, v135, 16);
  if (v38)
  {
    v41 = v38;
    v42 = *v131;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v131 != v42)
        {
          objc_enumerationMutation(v36);
        }

        v44 = objc_msgSend_viewLayerAtEventIndex_(*(*(&v130 + 1) + 8 * i), v39, v22);
        objc_msgSend_setHidden_(v44, v45, 0);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v130, v135, 16);
    }

    while (v41);
  }

  if (!v36)
  {
LABEL_21:
    v120 = 0;
    goto LABEL_22;
  }

  v120 = objc_msgSend_count(v36, v39, v40) != 0;
LABEL_22:
  isTextDrawable = objc_msgSend_p_isTextDrawable(self, v39, v40);
  if (!isTextDrawable)
  {
    goto LABEL_33;
  }

  v49 = 0;
  if (!objc_msgSend_isBuildOut(self->_animatedBuild, v46, v47) || v122 != 3)
  {
    goto LABEL_34;
  }

  v50 = objc_msgSend_model(self->super._ASV, v46, v47);
  v52 = objc_msgSend_previousBuildInForInfo_priorToBuild_(v50, v51, self->_info, self->_animatedBuild);
  if (!v52 || (v53 = v52, !objc_msgSend_isBuildIn(v52, v46, v47)))
  {
LABEL_33:
    v49 = 0;
    goto LABEL_34;
  }

  v49 = objc_msgSend_deliveryStyle(v53, v46, v47) == 3 && v19 == 0;
LABEL_34:
  v124 = v19;
  v123 = v4;
  v55 = objc_msgSend_titleAndCaptionTextures(a3, v46, v47);
  v58 = objc_msgSend_visibleTextures(a3, v56, v57);
  v60 = objc_msgSend_arrayByAddingObjectsFromArray_(v55, v59, v58);
  v63 = v60;
  if (isContentBuild && (v128 = 0u, v129 = 0u, v126 = 0u, v127 = 0u, (v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v126, v134, 16)) != 0))
  {
    v65 = v64;
    v66 = *v127;
    while (2)
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v127 != v66)
        {
          objc_enumerationMutation(v63);
        }

        if (objc_msgSend_isIncomingContent(*(*(&v126 + 1) + 8 * j), v61, v62))
        {
          v68 = 1;
          goto LABEL_46;
        }
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v61, &v126, v134, 16);
      v68 = 0;
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v68 = 0;
  }

LABEL_46:
  v69 = objc_msgSend_count(v63, v61, v62);
  if (v69 - 1 >= 0)
  {
    v71 = v69;
    v72 = 0;
    if (v124)
    {
      v73 = 0;
    }

    else
    {
      v73 = v49;
    }

    if (v122 == 3)
    {
      v74 = isTextDrawable;
    }

    else
    {
      v74 = 0;
    }

    v117 = v74;
    v118 = v73;
    v75 = v68 & v123;
    if (v124 == -1)
    {
      v75 = 0;
    }

    v119 = v75;
    while (1)
    {
      v76 = v72;
      v77 = objc_msgSend_objectAtIndex_(v63, v70, --v71);
      v79 = objc_msgSend_viewLayerAtEventIndex_(v77, v78, v22);
      objc_msgSend_textureOpacity(v77, v80, v81);
      *&v82 = v82;
      objc_msgSend_setOpacity_(v79, v83, v84, v82);
      v86 = objc_msgSend_stageIndexForTexture_(a3, v85, v77);
      if (objc_msgSend_isActionBuild(self->_animatedBuild, v87, v88))
      {
        if (objc_msgSend_alternateLayer(a3, v89, v90))
        {
          goto LABEL_87;
        }

        if (!objc_msgSend_isVisibleAtBeginning(self->_animatedBuild, v91, v92))
        {
LABEL_67:
          objc_msgSend_setHidden_(v79, v93, 1);
          goto LABEL_87;
        }

        if (objc_msgSend_textureStageIndex(self, v93, v94) <= v86)
        {
          v101 = objc_msgSend_textureStageIndex(self, v91, v95) != 0;
          objc_msgSend_setHidden_(v79, v102, v101);
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      if (isContentBuild)
      {
        break;
      }

      objc_msgSend_setHidden_(v79, v89, 1);
      if (objc_msgSend_hasTexture_beenFlattenedForKey_(a3, v99, v77, self) && !objc_msgSend_isPreCachingOperationActive(self->super._session, v91, v92) || objc_msgSend_isFlattenedRepresentation(v77, v91, v92) && (objc_msgSend_isPreCachingOperationActive(self->super._session, v91, v92) & 1) != 0)
      {
        goto LABEL_87;
      }

      if (objc_msgSend_isImplicitlyVisibleAtBeginning(self->_animatedBuild, v91, v92))
      {
        goto LABEL_73;
      }

      if (v86 == -2)
      {
        if (objc_msgSend_p_isDriftAnimation(self, v93, v100))
        {
          goto LABEL_87;
        }

        if ((v120 | v121 ^ 1))
        {
          if ((v121 | v120))
          {
            goto LABEL_87;
          }

          if (!v122)
          {
            goto LABEL_123;
          }

          if (v124)
          {
            if (objc_msgSend_count(v63, v91, v92) != 1)
            {
              goto LABEL_87;
            }

            goto LABEL_129;
          }
        }

        else
        {
          if (!v122)
          {
            goto LABEL_129;
          }

          if (v124 != objc_msgSend_count(v63, v91, v92) - 1)
          {
            if (objc_msgSend_count(v63, v91, v107) != 1)
            {
              goto LABEL_87;
            }

            goto LABEL_123;
          }
        }

LABEL_60:
        objc_msgSend_setHidden_(v79, v91, 0);
        goto LABEL_87;
      }

      if (v86 == -1)
      {
        if (objc_msgSend_p_isDriftAnimation(self, v93, v100))
        {
          goto LABEL_87;
        }

        if ((v120 | v121 ^ 1))
        {
          if ((v121 | v120))
          {
            goto LABEL_87;
          }

          if (v122)
          {
            if ((v72 & 1) == 0)
            {
              v72 = 0;
              if (objc_msgSend_count(v63, v91, v92) != 1 || v123)
              {
                goto LABEL_88;
              }
            }

            goto LABEL_60;
          }

LABEL_123:
          if (v123)
          {
            goto LABEL_87;
          }

          goto LABEL_60;
        }

        if (v122)
        {
          if ((v72 & 1) == 0)
          {
            v72 = 0;
            if (objc_msgSend_count(v63, v91, v92) != 1 || !v123)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_60;
        }

LABEL_129:
        if (!v123)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      if (objc_msgSend_isIncomingContent(v77, v93, v100))
      {
        goto LABEL_87;
      }

      if (!v121)
      {
        objc_msgSend_textureOpacity(v77, v91, v92);
        v109 = v108;
        v112 = objc_msgSend_requiresStagesBuildingInReverse(self->_info, v110, v111);
        if (v118)
        {
          if (v86 != objc_msgSend_maxStageIndex(a3, v113, v114))
          {
            v109 = v109 * 0.3;
          }

          objc_msgSend_setHidden_(v79, v116, 0);
          goto LABEL_137;
        }

        if (v86 == v124 && !v123 || !v120 && v86 > v124 && (v112 & 1) != 0 || !((v120 || v86 >= v124) | v112 & 1))
        {
          objc_msgSend_setHidden_(v79, v113, 0);
          v115 = v109 * 0.3;
          if ((v117 & (v86 > v124)) != 0)
          {
            v109 = v109 * 0.3;
          }

LABEL_137:
          v76 = 1;
        }

        *&v115 = v109;
        objc_msgSend_setOpacity_(v79, v113, v114, v115);
LABEL_87:
        v72 = v76;
        goto LABEL_88;
      }

      v104 = !v123;
      if (v86 != v124)
      {
        v104 = 1;
      }

      if (v86 < v124)
      {
        v104 = 0;
      }

      if ((v120 | v104))
      {
        goto LABEL_87;
      }

      if (objc_msgSend_p_isDriftAnimation(self, v91, v92))
      {
        goto LABEL_88;
      }

      objc_msgSend_setHidden_(v79, v91, 0);
      if (v86 < v124 - !v123)
      {
        v106 = v117;
      }

      else
      {
        v106 = 0;
      }

      if (v106 == 1)
      {
        LODWORD(v105) = 1050253722;
        objc_msgSend_setOpacity_(v79, v91, v92, v105);
      }

LABEL_74:
      v72 = 1;
LABEL_88:
      if (objc_msgSend_p_isMovieInfo(self, v91, v92))
      {
        if (objc_msgSend_textureType(v77, v70, v103) == 12)
        {
          objc_msgSend_setHidden_(v79, v70, 1);
        }
      }

      if (v71 <= 0)
      {
        return;
      }
    }

    isIncomingContent = objc_msgSend_isIncomingContent(v77, v89, v90);
    if (!objc_msgSend_isVisibleAtBeginning(self->_animatedBuild, v97, v98))
    {
      goto LABEL_67;
    }

    if (v86 == v124)
    {
      if (isIncomingContent & v123)
      {
LABEL_73:
        objc_msgSend_setHidden_(v79, v93, 0);
        goto LABEL_74;
      }

      if ((isIncomingContent & 1) == 0)
      {
        if (v119)
        {
          goto LABEL_67;
        }

        goto LABEL_73;
      }
    }

    if (v86 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_73;
  }
}

- (void)animate
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNBuildRenderer animate]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 724, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  self->_isAnimationForPlayback = 1;
  v11 = CACurrentMediaTime();
  if ((objc_msgSend_addAnimationsAtLayerTime_(self, v12, v13, v11) & 1) == 0)
  {
    self->_isAnimationForPlayback = 0;
    buildEndCallbackTarget = self->_buildEndCallbackTarget;
    if (self->_buildEndCallbackSelector)
    {
      buildEndCallbackSelector = self->_buildEndCallbackSelector;
    }

    else
    {
      buildEndCallbackSelector = 0;
    }

    objc_msgSend_performSelector_withObject_afterDelay_(buildEndCallbackTarget, v14, buildEndCallbackSelector, self, 0.0);
  }
}

- (void)setGeometryAndActionAttributesOnTextureSet:(id)a3 isAtEndOfBuild:(BOOL)a4 isAtEndOfSlide:(BOOL)a5 isRenderingToContext:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v119 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_eventIndex(self->_animatedBuild, a2, a3) + a4;
  objc_msgSend_setLayerGeometryAtEventIndex_(a3, v12, v11);
  PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, v13, v14);
  v18 = PluginIfNeeded;
  if (v8 && objc_msgSend_conformsToProtocol_(PluginIfNeeded, v16, &unk_288546370))
  {
    v21 = objc_msgSend_finalAttributes(self->_animatedBuild, v16, v17);
  }

  else
  {
    v21 = objc_msgSend_previousAttributes(self->_animatedBuild, v16, v17);
    v24 = objc_msgSend_model(self->super._ASV, v22, v23);
    if ((objc_msgSend_isMetalSlide(v24, v25, v26) & 1) == 0 && !a6 && objc_msgSend_conformsToProtocol_(v18, v19, &unk_288546370) && (objc_msgSend_p_isMovieInfo(self, v19, v20) & 1) == 0 && (objc_msgSend_isImageSource(a3, v19, v20) & 1) == 0 && !self->_finalAttributesTextureSet)
    {
      v27 = objc_msgSend_copy(a3, v19, v20);
      self->_finalAttributesTextureSet = v27;
      objc_msgSend_setShouldTransformUsingTextureCenter_(v27, v28, 1);
      v29 = objc_opt_class();
      v32 = objc_msgSend_finalAttributes(self->_animatedBuild, v30, v31);
      v107 = objc_msgSend_applyActionEffect_toAttributes_(v29, v33, v32, 0);
      v36 = objc_msgSend_animationContext(self->super._session, v34, v35);
      v39 = objc_msgSend_colorSpace(v36, v37, v38);
      objc_msgSend_setColorSpace_(self->_finalAttributesTextureSet, v40, v39);
      finalAttributesTextureSet = self->_finalAttributesTextureSet;
      v44 = objc_msgSend_animationContext(self->super._session, v42, v43);
      objc_msgSend_viewScale(v44, v45, v46);
      objc_msgSend_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys_eventIndex_(finalAttributesTextureSet, v47, v107, 0, 1, 0, 0, 0, v11);
    }
  }

  if (v21 || objc_msgSend_isActionBuild(self->_animatedBuild, v19, v20))
  {
    objc_msgSend_adjustAnchorPointRelativeToCenterOfRotationAtEventIndex_(a3, v19, v11);
    objc_msgSend_adjustAnchorPointRelativeToCenterOfRotationAtEventIndex_(self->_finalAttributesTextureSet, v49, v11);
  }

  if (objc_msgSend_isBaked(a3, v19, v48))
  {
    objc_msgSend_resetToOriginalSourceAtEventIndex_(a3, v50, v11);
    if (!v21 && (objc_msgSend_isActionBuild(self->_animatedBuild, v50, v51) & 1) == 0)
    {
      objc_msgSend_resetAnchorPointAtEventIndex_(a3, v50, v11);
    }
  }

  isActionBuild = 0;
  v108 = v21;
  v106 = v7;
  if (!objc_msgSend_isActionBuild(self->_animatedBuild, v50, v51) || a6)
  {
    v55 = 0;
    if (!a6)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v55 = 0;
  if (!v7)
  {
    if (objc_msgSend_isImageSource(a3, v52, v53) & 1) != 0 || (objc_msgSend_p_isMovieInfo(self, v52, v53))
    {
      isActionBuild = 0;
      v55 = 0;
      if (!a6)
      {
        goto LABEL_43;
      }

LABEL_41:
      v71 = 0;
      goto LABEL_48;
    }

    active = objc_msgSend_activeAnimatedBuilds(self->super._ASV, v52, v53);
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v57 = active;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(active, v58, &v113, v118, 16);
    if (!v59)
    {
      isActionBuild = 0;
      v55 = 1;
      if (a6)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    v60 = v59;
    v61 = *v114;
    v105 = a6;
    while (2)
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v114 != v61)
        {
          objc_enumerationMutation(v57);
        }

        v63 = *(*(&v113 + 1) + 8 * i);
        v64 = objc_msgSend_model(self->super._ASV, v52, v53);
        v66 = objc_msgSend_rendererForAnimatedBuild_(v64, v65, v63);
        v69 = objc_msgSend_info(v66, v67, v68);
        if (v66 != self && v69 == self->_info)
        {
          isActionBuild = objc_msgSend_isActionBuild(v63, v52, v53);
          v55 = 0;
          a6 = v105;
          goto LABEL_40;
        }
      }

      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v52, &v113, v118, 16);
      isActionBuild = 0;
      v55 = 1;
      a6 = v105;
      if (v60)
      {
        continue;
      }

      break;
    }
  }

LABEL_40:
  if (a6)
  {
    goto LABEL_41;
  }

LABEL_43:
  if (objc_msgSend_isBuildOut(self->_animatedBuild, v52, v53) & 1) != 0 || (isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v52, v53), v108) && (isBuildIn)
  {
    v71 = 1;
  }

  else
  {
    v71 = objc_msgSend_isEmphasisBuild(self->_animatedBuild, v52, v53) & !v8 | v106;
  }

LABEL_48:
  v73 = objc_msgSend_animationContext(self->super._session, v52, v53);
  objc_msgSend_viewScale(v73, v74, v75);
  objc_msgSend_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys_eventIndex_(a3, v76, v108, 0, v71, v55, isActionBuild, 0, v11);
  if (v108)
  {
    self->_isNonCachedTextureValid = 0;
  }

  if (!a6)
  {
    v79 = objc_msgSend_isActionBuild(self->_animatedBuild, v77, v78);
    if (v108)
    {
      if (!v79)
      {
        objc_msgSend_resetAnchorPointAtEventIndex_(a3, v77, v11);
      }
    }
  }

  if ((objc_msgSend_isMetalEnabled(self->super._session, v77, v78) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_isMagicMove(a3, v80, v81))
      {
        objc_msgSend_textureAngle(a3, v82, v83);
        if (v86 != 0.0)
        {
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v87 = objc_msgSend_allTextures(a3, v84, v85);
          v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, &v109, v117, 16);
          if (v89)
          {
            v92 = v89;
            v93 = *v110;
            do
            {
              for (j = 0; j != v92; ++j)
              {
                if (*v110 != v93)
                {
                  objc_enumerationMutation(v87);
                }

                v95 = *(*(&v109 + 1) + 8 * j);
                if (objc_msgSend_textureType(v95, v90, v91) != 11 && objc_msgSend_textureType(v95, v90, v91) != 3)
                {
                  v96 = objc_msgSend_viewLayerAtEventIndex_(v95, v90, v11);
                  v97 = MEMORY[0x277CCABB0];
                  objc_msgSend_textureAngle(a3, v98, v99);
                  v103 = objc_msgSend_numberWithDouble_(v97, v101, v102, -v100);
                  objc_msgSend_setValue_forKeyPath_(v96, v104, v103, @"transform.rotation.z");
                }
              }

              v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v90, &v109, v117, 16);
            }

            while (v92);
          }
        }
      }
    }
  }
}

- (id)initializeTextureSetForEndOfBuild:(BOOL)a3 endOfSlide:(BOOL)a4 description:(id)a5 isRenderingToContext:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v11 = objc_msgSend_rep(self, a2, a3);
  objc_sync_enter(v11);
  isRenderingToContext = objc_msgSend_p_initializeTextureSetForEndOfBuild_endOfSlide_description_isRenderingToContext_(self, v12, v9, v8, a5, v6);
  objc_sync_exit(v11);
  return isRenderingToContext;
}

- (id)p_initializeTextureSetForEndOfBuild:(BOOL)a3 endOfSlide:(BOOL)a4 description:(id)a5 isRenderingToContext:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_initializeTextureSetForEndOfBuild:endOfSlide:description:isRenderingToContext:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 860, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }
  }

  result = objc_msgSend_rep(self, a2, a3);
  if (result)
  {
    objc_msgSend_begin(MEMORY[0x277CD9FF0], v19, v20);
    v21 = MEMORY[0x277CD9FF0];
    isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v22, v23);
    objc_msgSend_activateBackground_(v21, v25, isMainThread ^ 1u);
    objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v26, 1);
    v27 = objc_autoreleasePoolPush();
    v30 = objc_msgSend_textureStageIndex(self, v28, v29);
    v34 = objc_msgSend_textureSetForStage_description_isAtEndOfBuild_shouldForceRebuild_shouldRender_(self, v31, v30, a5, v9, 0, 0);
    if (v34)
    {
      if (!objc_msgSend_isPreCachingOperationActive(self->super._session, v32, v33) || v6)
      {
        objc_msgSend_setGeometryAndActionAttributesOnTextureSet_isAtEndOfBuild_isAtEndOfSlide_isRenderingToContext_(self, v35, v34, v9, v8, v6);
        v39 = objc_msgSend_textureDeliveryStyle(self, v37, v38);
        if (v9)
        {
          if (v39)
          {
            if ((objc_msgSend_p_isDriftAnimation(self, v40, v41) & 1) == 0)
            {
              if (objc_msgSend_suppliesFinalTextures(self->_info, v42, v43))
              {
                if ((objc_msgSend_isActionBuild(self->_animatedBuild, v44, v45) & 1) == 0)
                {
                  isRenderingToContext = objc_msgSend_setupFinalTextureGivenCurrentTextureSet_isRenderingToContext_(self, v46, v34, v6);
                  if (isRenderingToContext != v34)
                  {
                    v48 = isRenderingToContext;
                    if (isRenderingToContext)
                    {

                      objc_msgSend_setEndOfBuildTextureSet_(self, v49, v48);
                      v34 = v48;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    objc_autoreleasePoolPop(v27);
    objc_msgSend_commit(MEMORY[0x277CD9FF0], v50, v51);

    return v34;
  }

  return result;
}

- (id)animationWillBegin
{
  v57 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer animationWillBegin]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 903, 0, "invalid nil value for '%{public}s'", "_animatedBuild");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  if ((objc_msgSend_isMetalEnabled(self->super._session, a2, v2) & 1) == 0 && objc_msgSend_isActionBuild(self->_animatedBuild, v11, v12) && objc_msgSend_p_isMovieInfo(self, v11, v12))
  {
    self->_shouldUseMagicMoveTextures = 1;
  }

  v13 = objc_msgSend_textureDescription(self, v11, v12);
  shouldNotBakeActionTextures = objc_msgSend_shouldNotBakeActionTextures(self->super._session, v14, v15);
  isRenderingToContext = objc_msgSend_initializeTextureSetForEndOfBuild_endOfSlide_description_isRenderingToContext_(self, v17, 0, 0, v13, shouldNotBakeActionTextures);
  if (isRenderingToContext)
  {
    v21 = objc_msgSend_rep(self, v18, v19);
    objc_sync_enter(v21);
    objc_msgSend_renderLayerContentsIfNeeded(isRenderingToContext, v22, v23);
    objc_sync_exit(v21);
    v26 = objc_msgSend_layer(isRenderingToContext, v24, v25);
    v29 = objc_msgSend_superlayer(v26, v27, v28);
    if (objc_msgSend_isActionBuild(self->_animatedBuild, v30, v31))
    {
      v34 = v29 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v35 = objc_msgSend_sublayers(self->_parentLayer, v32, v33);
      v38 = objc_msgSend_copy(v35, v36, v37);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v52, v56, 16);
      if (v42)
      {
        v43 = *v53;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v53 != v43)
            {
              objc_enumerationMutation(v38);
            }

            v45 = *(*(&v52 + 1) + 8 * i);
            v46 = objc_msgSend_name(v45, v40, v41);
            if ((objc_msgSend_isEqualToString_(v46, v47, @"dummyLayer") & 1) == 0)
            {
              objc_msgSend_removeFromSuperlayer(v45, v40, v41);
            }
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v52, v56, 16);
        }

        while (v42);
      }

      parentLayer = self->_parentLayer;
      v49 = objc_msgSend_layer(isRenderingToContext, v40, v41);
      objc_msgSend_addSublayer_(parentLayer, v50, v49);
    }

    objc_msgSend_setLayerVisibility_isAtEndOfBuild_(self, v32, isRenderingToContext, 0);
  }

  self->_areAnimationsReadyToStart = 1;
  return isRenderingToContext;
}

- (void)resetHighlightsBeforeAnimationOnTextureSet:(id)a3
{
  if (objc_msgSend_isBuildOut(self->_animatedBuild, a2, a3))
  {
    if (objc_msgSend_textureDeliveryStyle(self, v5, v6) == 3)
    {
      v9 = objc_msgSend_visibleTextures(a3, v7, v8);
      if (objc_msgSend_count(v9, v10, v11))
      {
        v13 = 0;
        v14 = *MEMORY[0x277D805D0];
        do
        {
          v15 = objc_msgSend_objectAtIndex_(v9, v12, v13);
          v18 = objc_msgSend_layer(v15, v16, v17);
          v20 = objc_msgSend_stageIndexForTexture_(a3, v19, v15);
          objc_msgSend_textureOpacity(v15, v21, v22);
          v24 = v23;
          if (objc_msgSend_valueForKey_(v18, v25, @"oldOpacity"))
          {
            v28 = objc_msgSend_parent(v15, v26, v27);
            objc_msgSend_textureOpacity(v28, v29, v30);
            v24 = v31 * v24;
          }

          if (v20 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v32 = objc_msgSend_textureStageIndex(self, v26, v27);
            v35 = v24 * 0.3;
            *&v35 = v35;
            if (v20 == v32)
            {
              *&v35 = v24;
            }

            objc_msgSend_setOpacity_(v18, v33, v34, v35);
          }

          if (objc_msgSend_valueForKey_(v18, v26, @"oldOpacity"))
          {
            v38 = MEMORY[0x277CCABB0];
            objc_msgSend_opacity(v18, v36, v37);
            v40 = v39;
            objc_msgSend_textureOpacity(a3, v41, v42);
            v46 = objc_msgSend_numberWithDouble_(v38, v44, v45, v40 / v43);
            objc_msgSend_setValue_forKey_(v18, v47, v46, @"oldOpacity");
          }

          v48 = objc_msgSend_layer(v15, v36, v37);
          objc_msgSend_setValue_forKey_(v48, v49, 0, v14);
          ++v13;
        }

        while (v13 < objc_msgSend_count(v9, v50, v51));
      }
    }
  }
}

- (BOOL)addAnimationsAtLayerTime:(double)a3
{
  v284 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer addAnimationsAtLayerTime:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 982, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    }
  }

  self->_interrupted = 0;
  v13 = 0x277CD9000uLL;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v3);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v14, 1);
  v15 = objc_autoreleasePoolPush();
  v18 = CACurrentMediaTime();
  if (self->_areAnimationsReadyToStart)
  {
    textureSet = self->_textureSet;
  }

  else
  {
    textureSet = objc_msgSend_animationWillBegin(self, v16, v17);
  }

  PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, v16, v17);
  objc_opt_class();
  if (objc_opt_respondsToSelector() & 1) != 0 && (v22 = objc_opt_class(), (objc_msgSend_requiresSingleTexturePerStage(v22, v23, v24)))
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v26 = 0;
    v25 = objc_msgSend_isActionBuild(self->_animatedBuild, v20, v21) ^ 1;
  }

  v27 = objc_msgSend_textureStageIndex(self, v20, v21);
  isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v28, v29);
  isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v31, v32);
  shouldIncludeCaptions = objc_msgSend_visibleTexturesForStage_isBuildIn_isContentBuild_shouldFlatten_flattenKey_shouldIncludeCaptions_(textureSet, v34, v27, isBuildIn, isContentBuild, v26, self, v25);
  if (objc_msgSend_count(shouldIncludeCaptions, v36, v37))
  {
    goto LABEL_12;
  }

  if (objc_msgSend_isActionBuild(self->_animatedBuild, v38, v39))
  {
    if (objc_msgSend_alternateLayer(textureSet, v38, v39))
    {
LABEL_12:
      v40 = 1;
      goto LABEL_17;
    }

    v41 = objc_msgSend_allTextures(textureSet, v38, v39);
    v40 = objc_msgSend_count(v41, v42, v43) != 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_17:
  if (objc_msgSend_isContentBuild(self->_animatedBuild, v38, v39))
  {
    v40 &= objc_msgSend_isVisibleAtBeginning(self->_animatedBuild, v44, v45);
  }

  if (textureSet && v40)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = objc_msgSend_deliveryOption(self->_animatedBuild, v46, v47) == 2 || objc_msgSend_deliveryOption(self->_animatedBuild, v48, v49) == 3;
    }

    else
    {
      v50 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && !v50 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_msgSend_duration(self->_animatedBuild, v87, v88), v89 < 0.001))
    {
      if (objc_msgSend_isPreview(self->super._session, v87, v88))
      {
        objc_msgSend_setDuration_(self->_animatedBuild, v90, v91, 0.5);
      }

      else
      {
        objc_msgSend_setDuration_(self->_animatedBuild, v90, v91, 0.001);
      }
    }

    objc_msgSend_setupPluginContext(self, v87, v88);
    objc_msgSend_resetHighlightsBeforeAnimationOnTextureSet_(self, v92, textureSet);
    objc_opt_class();
    objc_msgSend_pluginContext(self, v93, v94);
    v95 = TSUDynamicCast();
    objc_msgSend_setTextures_(v95, v96, shouldIncludeCaptions);
    if (objc_opt_respondsToSelector())
    {
      v99 = objc_autoreleasePoolPush();
      v102 = objc_msgSend_pluginContext(self, v100, v101);
      objc_msgSend_animationWillBeginWithContext_(PluginIfNeeded, v103, v102);
      self->_animationWillBeginPerformed = 1;
      objc_autoreleasePoolPop(v99);
    }

    v268 = PluginIfNeeded;
    if (objc_msgSend_isActionBuild(self->_animatedBuild, v97, v98, v15))
    {
      if (objc_msgSend_textureDeliveryStyle(self, v104, v105))
      {
        objc_msgSend_setShouldIncludeFinalTexturesInVisibleSet_(textureSet, v106, 1);
        objc_msgSend_setShouldIncludeFinalTexturesInVisibleSet_(self->_finalAttributesTextureSet, v107, 1);
      }
    }

    else
    {
      v279 = 0u;
      v280 = 0u;
      v277 = 0u;
      v278 = 0u;
      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(shouldIncludeCaptions, v104, &v277, v283, 16);
      if (v108)
      {
        v110 = v108;
        v111 = *v278;
        do
        {
          for (i = 0; i != v110; ++i)
          {
            if (*v278 != v111)
            {
              objc_enumerationMutation(shouldIncludeCaptions);
            }

            v113 = *(*(&v277 + 1) + 8 * i);
            v114 = objc_msgSend_layer(v113, v106, v109);
            if (v114)
            {
              v115 = v114;
              v116 = objc_msgSend_superlayer(v114, v106, v109);
              if (v116 == objc_msgSend_layer(textureSet, v117, v118))
              {
                v133 = objc_msgSend_animationContext(self->super._session, v119, v120);
                v136 = objc_msgSend_showLayer(v133, v134, v135);
                objc_msgSend_bounds(v136, v137, v138);
                objc_msgSend_addPerspectiveLayerToTexture_withShowSize_(textureSet, v139, v113, v140, v141);
              }

              else
              {
                v121 = objc_msgSend_superlayer(v115, v119, v120);
                v124 = objc_msgSend_name(v121, v122, v123);
                if ((objc_msgSend_isEqualToString_(v124, v125, @"Perspective layer") & 1) == 0)
                {
                  v126 = MEMORY[0x277D81150];
                  v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[KNBuildRenderer addAnimationsAtLayerTime:]");
                  v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v130, v127, v129, 1038, 0, "Why isn't the texture's layer's superlayer not the texture set's layer?");
                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132);
                }
              }
            }
          }

          v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(shouldIncludeCaptions, v106, &v277, v283, 16);
        }

        while (v110);
      }
    }

    if (objc_msgSend_conformsToProtocol_(v268, v106, &unk_288546370))
    {
      v143 = objc_opt_class();
      v146 = objc_msgSend_animationName(v143, v144, v145);
      if (objc_msgSend_isEqual_(v146, v147, *MEMORY[0x277D800C0]))
      {
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v150 = objc_msgSend_allTextures(textureSet, v148, v149);
        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v151, &v273, v282, 16);
        if (v152)
        {
          v155 = v152;
          v156 = *v274;
          do
          {
            for (j = 0; j != v155; ++j)
            {
              if (*v274 != v156)
              {
                objc_enumerationMutation(v150);
              }

              v158 = objc_msgSend_layer(*(*(&v273 + 1) + 8 * j), v153, v154);
              v161 = objc_msgSend_superlayer(v158, v159, v160);
              if (v161 == objc_msgSend_layer(textureSet, v162, v163))
              {
                v164 = v158;
                v167 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v165, v166);
                objc_msgSend_setName_(v167, v168, @"Perspective layer");
                v171 = objc_msgSend_layer(textureSet, v169, v170);
                objc_msgSend_bounds(v171, v172, v173);
                v175 = v174;
                v178 = objc_msgSend_layer(textureSet, v176, v177);
                objc_msgSend_bounds(v178, v179, v180);
                objc_msgSend_setFrame_(v167, v181, v182, 0.0, 0.0, v175);
                v185 = objc_msgSend_layer(textureSet, v183, v184);
                objc_msgSend_replaceSublayer_with_(v185, v186, v164, v167);
                objc_msgSend_addSublayer_(v167, v187, v164);
                v190 = objc_msgSend_animationContext(self->super._session, v188, v189);
                v193 = objc_msgSend_showLayer(v190, v191, v192);
                objc_msgSend_bounds(v193, v194, v195);
                objc_msgSend_tsd_addPerspectiveSublayerProjectionUsingScreenSize_(v167, v196, v197, v198, v199);
              }
            }

            v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v153, &v273, v282, 16);
          }

          while (v155);
        }

        v13 = 0x277CD9000;
        v15 = v266;
        if (objc_opt_respondsToSelector())
        {
          v202 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v200, v201);
          self->_animatedLayers = v202;
          objc_opt_class();
          objc_msgSend_pluginContext(self, v203, v204);
          v205 = TSUCheckedDynamicCast();
          objc_msgSend_addAnimationsTo_forTextureSet_context_(v268, v206, v202, textureSet, v205);
        }
      }

      else
      {
        v212 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v148, v149);
        self->_animatedLayers = v212;
        v13 = 0x277CD9000uLL;
        v15 = v266;
        if (objc_msgSend_p_isMovieInfo(self, v213, v214))
        {
          finalAttributesTextureSet = 0;
        }

        else
        {
          finalAttributesTextureSet = self->_finalAttributesTextureSet;
        }

        objc_msgSend_duration(self->_animatedBuild, v215, v216);
        v219 = v218;
        v222 = objc_msgSend_attributes(self->_animatedBuild, v220, v221);
        v225 = objc_msgSend_attributes(v222, v223, v224);
        v228 = objc_msgSend_previousAttributes(self->_animatedBuild, v226, v227);
        objc_msgSend_addAnimationsTo_forTextureSet_finalTextureSet_duration_attributes_previousAttributes_(v268, v229, v212, textureSet, finalAttributesTextureSet, v225, v228, v219);
      }
    }

    else
    {
      v13 = 0x277CD9000;
      v15 = v266;
      if (objc_msgSend_conformsToProtocol_(v268, v142, &unk_288512818) || objc_msgSend_conformsToProtocol_(v268, v200, &unk_28852E720))
      {
        v207 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v200, v201);
        self->_animatedLayers = v207;
        v210 = objc_msgSend_pluginContext(self, v208, v209);
        objc_msgSend_addAnimationsTo_context_(v268, v211, v207, v210);
      }
    }

    if (a3 == 0.0)
    {
      a3 = 1.0e-100;
    }

    if (self->_isAnimationForPlayback)
    {
      a3 = a3 + CACurrentMediaTime() - v18;
    }

    animatedLayers = self->_animatedLayers;
    if (animatedLayers && objc_msgSend_count(animatedLayers, v200, v201))
    {
      v271 = 0u;
      v272 = 0u;
      v269 = 0u;
      v270 = 0u;
      v232 = objc_msgSend_keyEnumerator(self->_animatedLayers, v200, v231);
      v234 = objc_msgSend_countByEnumeratingWithState_objects_count_(v232, v233, &v269, v281, 16);
      if (v234)
      {
        v236 = v234;
        v237 = *v270;
        v238 = *MEMORY[0x277CDA230];
        do
        {
          for (k = 0; k != v236; ++k)
          {
            if (*v270 != v237)
            {
              objc_enumerationMutation(v232);
            }

            v240 = *(*(&v269 + 1) + 8 * k);
            v241 = objc_msgSend_objectForKey_(self->_animatedLayers, v235, v240);
            objc_msgSend_convertTime_fromLayer_(v240, v242, 0, a3);
            objc_msgSend_setBeginTime_(v241, v243, v244);
            objc_msgSend_setDelegate_(v241, v245, self);
            objc_msgSend_setFillMode_(v241, v246, v238);
            objc_msgSend_setRemovedOnCompletion_(v241, v247, 0);
            objc_msgSend_setBeginTime_(v240, v248, v249, 0.0);
            v252 = objc_msgSend_p_keyForAnimation(self, v250, v251);
            objc_msgSend_addAnimation_forKey_(v240, v253, v241, v252);
            if (objc_msgSend_isActionBuild(self->_animatedBuild, v254, v255))
            {
              v256 = objc_opt_class();
              v259 = objc_msgSend_animationName(v256, v257, v258);
              objc_msgSend_setValue_forKey_(v240, v260, @"YES", v259);
            }

            ++self->_numberOfAnimationsStarted;
          }

          v236 = objc_msgSend_countByEnumeratingWithState_objects_count_(v232, v235, &v269, v281, 16);
        }

        while (v236);
      }

      objc_msgSend_fadeOutPreviousStageOn_atLayerTime_(self, v235, textureSet, a3);
      v13 = 0x277CD9000;
      v15 = v266;
    }

    else
    {
      objc_msgSend_fadeOutPreviousStageOn_atLayerTime_(self, v200, textureSet, a3);
      objc_msgSend_p_removeAnimations(self, v261, v262);
    }
  }

  else
  {
    v51 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v44, v45);
    objc_msgSend_setFrame_(v51, v52, v53, 0.0, 0.0, 100.0, 100.0);
    v56 = objc_msgSend_clearColor(MEMORY[0x277D81180], v54, v55);
    v59 = objc_msgSend_CGColor(v56, v57, v58);
    objc_msgSend_setBackgroundColor_(v51, v60, v59);
    objc_msgSend_setName_(v51, v61, @"dummyLayer");
    objc_msgSend_addSublayer_(self->_parentLayer, v62, v51);
    v64 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v63, @"hidden");
    objc_msgSend_duration(self->_animatedBuild, v65, v66);
    objc_msgSend_setDuration_(v64, v67, v68);
    objc_msgSend_setDelegate_(v64, v69, self);
    v70 = MEMORY[0x277CBEC28];
    objc_msgSend_setToValue_(v64, v71, MEMORY[0x277CBEC28]);
    objc_msgSend_setFromValue_(v64, v72, v70);
    objc_msgSend_setRemovedOnCompletion_(v64, v73, 0);
    objc_msgSend_setFillMode_(v64, v74, *MEMORY[0x277CDA230]);
    objc_msgSend_convertTime_fromLayer_(v51, v75, 0, a3);
    objc_msgSend_setBeginTime_(v64, v76, v77);
    v80 = objc_msgSend_p_keyForAnimation(self, v78, v79);
    objc_msgSend_addAnimation_forKey_(v51, v81, v64, v80);
    ++self->_numberOfAnimationsStarted;
    v84 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v82, v83);
    objc_msgSend_setObject_forKey_(v84, v85, v64, v51);
    self->_animatedLayers = v84;
    objc_msgSend_fadeOutPreviousStageOn_atLayerTime_(self, v86, textureSet, a3);
  }

  objc_autoreleasePoolPop(v15);
  objc_msgSend_commit(*(v13 + 4080), v263, v264);
  return 1;
}

- (void)removeAnimationsAndFinish:(BOOL)a3
{
  v3 = a3;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, a3);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v5, 1);
  v8 = objc_autoreleasePoolPush();
  if (self->_numberOfAnimationsStarted < 1 || self->_interrupted)
  {
    objc_msgSend_teardown(self->_finalAttributesTextureSet, v6, v7);

    self->_finalAttributesTextureSet = 0;
    objc_msgSend_resetAnchorPointAtEventIndex_(self->_textureSet, v9, 0x7FFFFFFFLL);
  }

  else if (v3)
  {
    self->_numberOfAnimationsStarted = 0;
    objc_msgSend_p_removeAnimations(self, v6, v7);
  }

  else
  {
    self->_interrupted = 1;
    objc_msgSend_p_resetAnimations(self, v6, v7);
  }

  objc_autoreleasePoolPop(v8);
  v12 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v12, v10, v11);
}

- (void)forceRemoveAnimations
{
  if (self->super._plugin)
  {
    objc_msgSend_p_removeAnimations(self, a2, v2);
  }
}

- (void)registerForBuildEndCallback:(SEL)a3 target:(id)a4
{
  self->_buildEndCallbackTarget = a4;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  self->_buildEndCallbackSelector = v4;
}

- (unint64_t)textureDeliveryStyle
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer textureDeliveryStyle]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1201, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  v11 = objc_msgSend_deliveryStyle(self->_animatedBuild, a2, v2);
  if (!objc_msgSend_isActionBuild(self->_animatedBuild, v12, v13))
  {
    return v11;
  }

  v16 = objc_msgSend_model(self->super._ASV, v14, v15);
  v18 = objc_msgSend_previousAnimatedBuildForInfo_priorToBuild_(v16, v17, self->_info, self->_animatedBuild);
  if (!v18)
  {
    return v11;
  }

  v21 = v18;
  v22 = objc_msgSend_model(self->super._ASV, v19, v20);
  v24 = objc_msgSend_rendererForAnimatedBuild_(v22, v23, v21);
  if (objc_msgSend_isEmphasisBuild(self->_animatedBuild, v25, v26))
  {
    if (objc_msgSend_deliveryStyle(self->_animatedBuild, v27, v28) == 3 && objc_msgSend_isBuildIn(self->_animatedBuild, v27, v28) && (objc_msgSend_p_isTextDrawable(self, v27, v28) & 1) != 0)
    {
      return v11;
    }
  }

  return objc_msgSend_textureDeliveryStyle(v24, v27, v28);
}

- (int64_t)textureStageIndex
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer textureStageIndex]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1219, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  if (objc_msgSend_isActionBuild(self->_animatedBuild, a2, v2))
  {
    v13 = objc_msgSend_model(self->super._ASV, v11, v12);
    v15 = objc_msgSend_previousAnimatedBuildForInfo_priorToBuild_(v13, v14, self->_info, self->_animatedBuild);
    if (v15)
    {
      v18 = v15;
      v19 = objc_msgSend_model(self->super._ASV, v16, v17);
      v21 = objc_msgSend_rendererForAnimatedBuild_(v19, v20, v18);
      v24 = objc_msgSend_textureStageIndex(v21, v22, v23);
      if (objc_msgSend_isBuildIn(v18, v25, v26))
      {
        if (objc_msgSend_deliveryStyle(v18, v27, v28))
        {
          v24 += objc_msgSend_isActionBuild(v18, v29, v30) ^ 1;
        }
      }

      return v24;
    }
  }

  else if (!objc_msgSend_isContentBuild(self->_animatedBuild, v11, v12))
  {
    v31 = objc_msgSend_model(self->super._ASV, v16, v17);
    v33 = objc_msgSend_previousContentBuildForInfo_priorToBuild_(v31, v32, self->_info, self->_animatedBuild);
    if (v33)
    {
      return objc_msgSend_stageIndex(v33, v16, v17) + 1;
    }
  }

  animatedBuild = self->_animatedBuild;

  return objc_msgSend_stageIndex(animatedBuild, v16, v17);
}

- (void)stopAnimations
{
  v22 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeAnimationsAndFinish_(self, a2, 0);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  animatedBuildsToStartAtEnd = self->_animatedBuildsToStartAtEnd;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(animatedBuildsToStartAtEnd, v4, &v17, v21, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(animatedBuildsToStartAtEnd);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_msgSend_model(self->super._ASV, v6, v7);
        v14 = objc_msgSend_rendererForAnimatedBuild_(v12, v13, v11);
        objc_msgSend_stopAnimations(v14, v15, v16);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(animatedBuildsToStartAtEnd, v6, &v17, v21, 16);
    }

    while (v8);
  }
}

- (void)pauseAnimationsAtTime:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_numberOfAnimationsStarted >= 1 && !self->super._areAnimationsPaused)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = objc_msgSend_keyEnumerator(self->_animatedLayers, a2, v3, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend_kn_pauseAtTime_(*(*(&v14 + 1) + 8 * v13), v9, v10, a3);
          self->super._areAnimationsPaused = 1;
          ++v13;
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
      }

      while (v11);
    }
  }
}

- (void)resumeAnimationsIfPausedAtTime:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_numberOfAnimationsStarted >= 1 && self->super._areAnimationsPaused)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = objc_msgSend_keyEnumerator(self->_animatedLayers, a2, v3, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend_kn_resumeAtTime_(*(*(&v14 + 1) + 8 * v13++), v9, v10, a3);
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
      }

      while (v11);
    }

    self->super._areAnimationsPaused = 0;
  }
}

- (void)addBuildToStartAtEnd:(id)a3
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer addBuildToStartAtEnd:]");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1284, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    }
  }

  animatedBuildsToStartAtEnd = self->_animatedBuildsToStartAtEnd;
  if (!animatedBuildsToStartAtEnd)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    animatedBuildsToStartAtEnd = objc_msgSend_initWithCapacity_(v13, v14, 1);
    self->_animatedBuildsToStartAtEnd = animatedBuildsToStartAtEnd;
  }

  objc_msgSend_addObject_(animatedBuildsToStartAtEnd, a2, a3);
}

- (void)removeBuildToStartAtEnd:(id)a3
{
  if (!self->_animatedBuild)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer removeBuildToStartAtEnd:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1292, 0, "encountered an unexpected nil animated build");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  animatedBuildsToStartAtEnd = self->_animatedBuildsToStartAtEnd;

  objc_msgSend_removeObject_(animatedBuildsToStartAtEnd, a2, a3);
}

- (void)fadeOutPreviousStageOn:(id)a3 atLayerTime:(double)a4
{
  v98 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer fadeOutPreviousStageOn:atLayerTime:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1297, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  if (objc_msgSend_p_isTextDrawable(self, a2, a3) && (objc_msgSend_isActionBuild(self->_animatedBuild, v14, v15) & 1) == 0 && objc_msgSend_textureDeliveryStyle(self, v16, v17) == 3)
  {
    if (objc_msgSend_isBuildIn(self->_animatedBuild, v18, v19))
    {
      v22 = -1;
    }

    else
    {
      if (!objc_msgSend_isBuildOut(self->_animatedBuild, v20, v21))
      {
        v23 = 0;
        goto LABEL_13;
      }

      v22 = 1;
    }

    v23 = objc_msgSend_textureStageIndex(self, v20, v21) + v22;
LABEL_13:
    isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v20, v21);
    isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v25, v26);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = objc_msgSend_visibleTexturesForStage_isBuildIn_isContentBuild_shouldFlatten_flattenKey_(a3, v28, v23, isBuildIn, isContentBuild, 0, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v93, v97, 16);
    if (!v30)
    {
      return;
    }

    v32 = v30;
    v33 = *v94;
    v91 = *MEMORY[0x277CDA7B8];
    v90 = *MEMORY[0x277CDA230];
    v89 = *MEMORY[0x277D80198];
    v88 = *MEMORY[0x277D805D0];
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v94 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v93 + 1) + 8 * i);
        if (objc_msgSend_stageIndexForTexture_(a3, v31, v35) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v36 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v31, @"opacity");
          v39 = objc_msgSend_layer(v35, v37, v38);
          objc_msgSend_convertTime_fromLayer_(v39, v40, 0, a4);
          objc_msgSend_setBeginTime_(v36, v41, v42);
          objc_msgSend_textureOpacity(v35, v43, v44);
          v46 = v45;
          v49 = objc_msgSend_layer(v35, v47, v48);
          if (objc_msgSend_valueForKey_(v49, v50, @"oldOpacity"))
          {
            v53 = objc_msgSend_parent(v35, v51, v52);
            objc_msgSend_textureOpacity(v53, v54, v55);
            v46 = v46 * v56;
          }

          if (objc_msgSend_isBuildIn(self->_animatedBuild, v51, v52))
          {
            *&v59 = v46;
            v60 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v57, v58, v59);
            objc_msgSend_setFromValue_(v36, v61, v60);
            v46 = v46 * 0.3;
            goto LABEL_25;
          }

          if (objc_msgSend_isBuildOut(self->_animatedBuild, v57, v58))
          {
            v67 = v46 * 0.3;
            *&v67 = v46 * 0.3;
            v68 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v65, v66, v67);
            objc_msgSend_setFromValue_(v36, v69, v68);
LABEL_25:
            *&v64 = v46;
            v70 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v62, v63, v64);
            objc_msgSend_setToValue_(v36, v71, v70);
          }

          v72 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v65, v91);
          objc_msgSend_setTimingFunction_(v36, v73, v72);
          objc_msgSend_duration(self->_animatedBuild, v74, v75);
          objc_msgSend_setDuration_(v36, v76, v77);
          objc_msgSend_setRemovedOnCompletion_(v36, v78, 0);
          objc_msgSend_setFillMode_(v36, v79, v90);
          v82 = objc_msgSend_layer(v35, v80, v81);
          objc_msgSend_addAnimation_forKey_(v82, v83, v36, v89);
          v86 = objc_msgSend_layer(v35, v84, v85);
          objc_msgSend_setValue_forKey_(v86, v87, MEMORY[0x277CBEC38], v88);
          continue;
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v93, v97, 16);
    }

    while (v32);
  }
}

- (BOOL)p_isDriftAnimation
{
  PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, a2, v2);
  v5 = objc_msgSend_conformsToProtocol_(PluginIfNeeded, v4, &unk_2885461F0);
  if (v5)
  {
    v6 = objc_opt_class();

    LOBYTE(v5) = MEMORY[0x2821F9670](v6, sel_isDriftAnimation, v7);
  }

  return v5;
}

- (id)setupFinalTextureGivenCurrentTextureSet:(id)a3 isRenderingToContext:(BOOL)a4
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer setupFinalTextureGivenCurrentTextureSet:isRenderingToContext:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1359, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  if (!objc_msgSend_rep(self, a2, a3))
  {
    return 0;
  }

  v16 = objc_msgSend_eventIndex(self->_animatedBuild, v14, v15);
  if (objc_msgSend_p_isMovieInfo(self, v17, v18) & 1) != 0 || (objc_msgSend_p_isDriftAnimation(self, v19, v20))
  {
    return 0;
  }

  if (objc_msgSend_isBuildIn(self->_animatedBuild, v21, v22) & 1) != 0 || (isActionBuild = objc_msgSend_isActionBuild(self->_animatedBuild, v25, v26), !a3) || (isActionBuild)
  {
    v27 = objc_msgSend_textureDescription(self, v25, v26);
    v30 = objc_msgSend_copy(v27, v28, v29);
    v33 = objc_msgSend_textureStageIndex(self, v31, v32);
    v36 = v33 + objc_msgSend_isBuildIn(self->_animatedBuild, v34, v35);
    shouldRender = objc_msgSend_textureSetForStage_description_isAtEndOfBuild_shouldForceRebuild_shouldRender_(self, v37, v36, v30, 0, 0, 0);
    v39 = objc_msgSend_finalTexturesForStage_(shouldRender, v38, v36 - 1);
    v42 = v39;
    if (v39 && objc_msgSend_count(v39, v40, v41))
    {
      v43 = v16 + 1;
      objc_msgSend_begin(MEMORY[0x277CD9FF0], v40, v41);
      v44 = MEMORY[0x277CD9FF0];
      isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v45, v46);
      objc_msgSend_activateBackground_(v44, v48, isMainThread ^ 1u);
      objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v49, 1);
      v50 = objc_autoreleasePoolPush();
      objc_msgSend_renderLayerContentsIfNeeded(shouldRender, v51, v52);
      objc_msgSend_setLayerGeometryAtEventIndex_(shouldRender, v53, v43);
      v56 = objc_msgSend_previousAttributes(self->_animatedBuild, v54, v55);
      v59 = objc_msgSend_animationContext(self->super._session, v57, v58);
      objc_msgSend_viewScale(v59, v60, v61);
      objc_msgSend_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys_eventIndex_(shouldRender, v62, v56, 0, 0, 0, 0, 0, v43);
      if (!a4)
      {
        objc_msgSend_setSublayers_(self->_parentLayer, v63, 0);
        parentLayer = self->_parentLayer;
        v67 = objc_msgSend_layer(shouldRender, v65, v66);
        objc_msgSend_addSublayer_(parentLayer, v68, v67);
      }

      objc_autoreleasePoolPop(v50);
      objc_msgSend_commit(MEMORY[0x277CD9FF0], v69, v70);
    }

    else
    {
      if (shouldRender != a3)
      {
        objc_msgSend_teardown(shouldRender, v40, v41);
      }

      shouldRender = 0;
    }
  }

  else
  {
    v72 = objc_msgSend_textureStageIndex(self, v25, v26);
    v74 = objc_msgSend_finalTexturesForStage_(a3, v73, v72 - 1);
    if (!v74)
    {
      return 0;
    }

    if (objc_msgSend_count(v74, v75, v76))
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return shouldRender;
}

- (id)p_keyForAnimation
{
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_keyForAnimation]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1415, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  if (objc_msgSend_isContentBuild(self->_animatedBuild, a2, v2))
  {
    v13 = MEMORY[0x277D80180];
  }

  else
  {
    isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v11, v12);
    v13 = MEMORY[0x277D80188];
    if (!isBuildIn)
    {
      v13 = MEMORY[0x277D80190];
    }
  }

  v15 = *v13;
  PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, v11, v12);
  if (!objc_msgSend_conformsToProtocol_(PluginIfNeeded, v17, &unk_288546370))
  {
    return v15;
  }

  v18 = objc_opt_class();

  return objc_msgSend_animationName(v18, v19, v20);
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (self->_isAnimationForPlayback)
  {
    v5 = self->_numberOfAnimationsStarted - 1;
    self->_numberOfAnimationsStarted = v5;
    if (!v5 && !self->_interrupted)
    {
      objc_msgSend_p_removeAnimations(self, a2, a3, a4);
      self->_isAnimationForPlayback = 0;
    }
  }
}

- (void)resetPreviousStageToUnhighlightOnTextureSet:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer resetPreviousStageToUnhighlightOnTextureSet:]");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1452, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    }
  }

  if (objc_msgSend_textureDeliveryStyle(self, a2, a3) == 3)
  {
    if (objc_msgSend_isBuildIn(self->_animatedBuild, v12, v13))
    {
      v16 = -1;
    }

    else
    {
      if (!objc_msgSend_isBuildOut(self->_animatedBuild, v14, v15))
      {
        v17 = 0;
        goto LABEL_11;
      }

      v16 = 1;
    }

    v17 = objc_msgSend_textureStageIndex(self, v14, v15) + v16;
LABEL_11:
    isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v14, v15);
    isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v19, v20);
    shouldFlatten_flattenKey = objc_msgSend_visibleTexturesForStage_isBuildIn_isContentBuild_shouldFlatten_flattenKey_(a3, v22, v17, isBuildIn, isContentBuild, 0, 0);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(shouldFlatten_flattenKey, v24, &v42, v46, 16);
    if (!v25)
    {
      return;
    }

    v27 = v25;
    v28 = *v43;
    v29 = *MEMORY[0x277D80198];
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(shouldFlatten_flattenKey);
        }

        v31 = *(*(&v42 + 1) + 8 * i);
        if (objc_msgSend_stageIndexForTexture_(a3, v26, v31) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v33 = objc_msgSend_layer(v31, v26, v32);
          v36 = objc_msgSend_isBuildIn(self->_animatedBuild, v34, v35);
          LODWORD(v39) = 1050253722;
          if (v36)
          {
            goto LABEL_20;
          }

          if (objc_msgSend_isBuildOut(self->_animatedBuild, v37, v38, v39))
          {
            objc_msgSend_textureOpacity(v31, v40, v41);
            *&v39 = v39;
LABEL_20:
            objc_msgSend_setOpacity_(v33, v37, v38, v39);
          }

          objc_msgSend_removeAnimationForKey_(v33, v40, v29);
          continue;
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(shouldFlatten_flattenKey, v26, &v42, v46, 16);
    }

    while (v27);
  }
}

- (void)p_removeAnimations
{
  v192 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_removeAnimations]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1484, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  if (!self->super._plugin)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_removeAnimations]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1485, 0, "invalid nil value for '%{public}s'", "_plugin");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v18, 1);
  context = objc_autoreleasePoolPush();
  if (self->_animationWillBeginPerformed && (objc_opt_respondsToSelector() & 1) != 0)
  {
    plugin = self->super._plugin;
    v22 = objc_msgSend_pluginContext(self, v19, v20);
    objc_msgSend_animationDidEndWithContext_(plugin, v23, v22);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_restoreLayerHierarchy(self->super._plugin, v24, v25);
  }

  self->_animationWillBeginPerformed = 0;
  active = objc_msgSend_activeAnimatedBuilds(self->super._ASV, v24, v25);
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(active, v27, &v184, v191, 16);
  if (v28)
  {
    v31 = v28;
    v32 = 0;
    v33 = *v185;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v185 != v33)
        {
          objc_enumerationMutation(active);
        }

        v35 = *(*(&v184 + 1) + 8 * i);
        v36 = objc_msgSend_model(self->super._ASV, v29, v30);
        v38 = objc_msgSend_rendererForAnimatedBuild_(v36, v37, v35);
        v41 = objc_msgSend_info(v38, v39, v40);
        if (v38 != self && v41 == self->_info)
        {
          ++v32;
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(active, v29, &v184, v191, 16);
    }

    while (v31);
    v43 = v32 == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = objc_msgSend_rep(self, v29, v30);
  if (v44)
  {
    v47 = v44;
    v170 = v43;
    textureSet = self->_textureSet;
    if (objc_msgSend_isActionBuild(self->_animatedBuild, v45, v46))
    {
      v51 = objc_msgSend_p_keyForAnimation(self, v49, v50);
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v52 = 0x280A39000uLL;
      v55 = objc_msgSend_keyEnumerator(self->_animatedLayers, v53, v54);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v180, v190, 16);
      if (v57)
      {
        v60 = v57;
        v61 = *v181;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v181 != v61)
            {
              objc_enumerationMutation(v55);
            }

            v63 = *(*(&v180 + 1) + 8 * j);
            objc_msgSend_removeAnimationForKey_(v63, v58, v51);
            v64 = objc_opt_class();
            v67 = objc_msgSend_animationName(v64, v65, v66);
            objc_msgSend_setValue_forKey_(v63, v68, 0, v67);
          }

          v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v180, v190, 16);
        }

        while (v60);
      }

      v69 = objc_msgSend_layer(textureSet, v58, v59);
      v70 = objc_opt_class();
      v73 = objc_msgSend_animationName(v70, v71, v72);
      objc_msgSend_setValue_forKey_(v69, v74, 0, v73);
      self->_isNonCachedTextureValid = 0;
      v43 = v170;
      if (v170 || (v77 = objc_msgSend_animationName(self->super._pluginClass, v75, v76), !objc_msgSend_isEqualToString_(v77, v78, *MEMORY[0x277D800E0])))
      {
        v79 = 0;
      }

      else
      {
        v79 = objc_msgSend_shouldNotBakeActionTextures(self->super._session, v75, v76) ^ 1;
      }

      v136 = objc_msgSend_finalAttributes(self->_animatedBuild, v75, v76);
      v139 = objc_msgSend_animationContext(self->super._session, v137, v138);
      objc_msgSend_viewScale(v139, v140, v141);
      v143 = v142;
      v146 = objc_msgSend_eventIndex(self->_animatedBuild, v144, v145);
      objc_msgSend_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys_eventIndex_(textureSet, v147, v136, 0, v170, v79, 0, 1, v143, v146 + 1);
    }

    else
    {
      v169 = v47;
      v80 = objc_msgSend_textureStageIndex(self, v49, v50);
      isBuildIn = objc_msgSend_isBuildIn(self->_animatedBuild, v81, v82);
      isContentBuild = objc_msgSend_isContentBuild(self->_animatedBuild, v84, v85);
      shouldIncludeCaptions = objc_msgSend_visibleTexturesForStage_isBuildIn_isContentBuild_shouldFlatten_flattenKey_shouldIncludeCaptions_(textureSet, v87, v80, isBuildIn, isContentBuild, 0, 0, 1);
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(shouldIncludeCaptions, v89, &v176, v189, 16);
      if (v90)
      {
        v93 = v90;
        v94 = *v177;
        do
        {
          for (k = 0; k != v93; ++k)
          {
            if (*v177 != v94)
            {
              objc_enumerationMutation(shouldIncludeCaptions);
            }

            v96 = *(*(&v176 + 1) + 8 * k);
            v97 = objc_msgSend_layer(v96, v91, v92);
            v100 = objc_msgSend_superlayer(v97, v98, v99);
            if (v100 != objc_msgSend_layer(textureSet, v101, v102))
            {
              v105 = v97;
              v108 = objc_msgSend_superlayer(v105, v106, v107);
              objc_msgSend_removeFromSuperlayer(v105, v109, v110);
              v113 = objc_msgSend_layer(textureSet, v111, v112);
              objc_msgSend_replaceSublayer_with_(v113, v114, v108, v105);
            }

            v115 = objc_msgSend_p_keyForAnimation(self, v103, v104);
            objc_msgSend_removeAnimationForKey_(v97, v116, v115);
            if (objc_msgSend_isBuildOut(self->_animatedBuild, v117, v118) && !objc_msgSend_isImplicitlyVisibleAtBeginning(self->_animatedBuild, v119, v120))
            {
              isDriftBuild = 1;
            }

            else if (objc_msgSend_isBuildIn(self->_animatedBuild, v119, v120))
            {
              isDriftBuild = objc_msgSend_isDriftBuild(self->_animatedBuild, v119, v120);
            }

            else
            {
              isDriftBuild = 0;
            }

            v122 = objc_msgSend_layer(v96, v119, v120);
            objc_msgSend_setHidden_(v122, v123, isDriftBuild);
          }

          v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(shouldIncludeCaptions, v91, &v176, v189, 16);
        }

        while (v93);
      }

      objc_msgSend_resetPreviousStageToUnhighlightOnTextureSet_(self, v91, textureSet);
      v43 = v170;
      if (objc_msgSend_isContentBuild(self->_animatedBuild, v124, v125))
      {
        objc_msgSend_setLayerVisibility_isAtEndOfBuild_(self, v126, textureSet, 1);
      }

      v128 = objc_msgSend_info(v169, v126, v127);
      v52 = 0x280A39000;
      if (objc_msgSend_suppliesFinalTextures(v128, v129, v130) && objc_msgSend_textureDeliveryStyle(self, v131, v132))
      {
        isRenderingToContext = objc_msgSend_setupFinalTextureGivenCurrentTextureSet_isRenderingToContext_(self, v131, textureSet, 0);
        objc_msgSend_setLayerVisibility_isAtEndOfBuild_(self, v134, isRenderingToContext, 1);
        objc_msgSend_setEndOfBuildTextureSet_(self, v135, isRenderingToContext);
      }
    }

    objc_msgSend_teardown(self->_finalAttributesTextureSet, v131, v132);

    self->_finalAttributesTextureSet = 0;
    v148 = *(v52 + 1628);

    *(&self->super.super.isa + v148) = 0;
    self->_areAnimationsReadyToStart = 0;
  }

  if (v43)
  {
    v149 = objc_msgSend_sublayers(self->_parentLayer, v45, v46);
    v152 = objc_msgSend_copy(v149, v150, v151);
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v153, &v172, v188, 16);
    if (v154)
    {
      v157 = v154;
      v158 = *v173;
      do
      {
        for (m = 0; m != v157; ++m)
        {
          if (*v173 != v158)
          {
            objc_enumerationMutation(v152);
          }

          v160 = *(*(&v172 + 1) + 8 * m);
          v161 = objc_msgSend_name(v160, v155, v156);
          if (objc_msgSend_isEqualToString_(v161, v162, @"dummyLayer"))
          {
            objc_msgSend_removeAllAnimations(v160, v155, v156);
            objc_msgSend_removeFromSuperlayer(v160, v163, v164);
          }
        }

        v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v155, &v172, v188, 16);
      }

      while (v157);
    }
  }

  buildEndCallbackTarget = self->_buildEndCallbackTarget;
  if (buildEndCallbackTarget)
  {
    buildEndCallbackSelector = self->_buildEndCallbackSelector;
    if (buildEndCallbackSelector)
    {
      objc_msgSend_performSelector_withObject_(buildEndCallbackTarget, v45, buildEndCallbackSelector, self);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(buildEndCallbackTarget, v45, 0, self);
    }
  }

  objc_autoreleasePoolPop(context);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v167, v168);
}

- (void)p_resetAnimations
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_animatedBuild)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildRenderer p_resetAnimations]");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1596, 0, "encountered an unexpected nil animated build");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }
  }

  self->_isAnimationForPlayback = 0;
  self->_areAnimationsReadyToStart = 0;
  self->_numberOfAnimationsStarted = 0;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v11, 1);
  v12 = objc_autoreleasePoolPush();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = objc_msgSend_keyEnumerator(self->_animatedLayers, v13, v14, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v35, v39, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v35 + 1) + 8 * v22);
        v24 = objc_msgSend_p_keyForAnimation(self, v18, v19);
        objc_msgSend_removeAnimationForKey_(v23, v25, v24);
        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v35, v39, 16);
    }

    while (v20);
  }

  PluginIfNeeded = objc_msgSend_loadPluginIfNeeded(self, v18, v19);
  if (self->_animationWillBeginPerformed && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v29 = objc_msgSend_pluginContext(self, v27, v28);
    objc_msgSend_animationDidEndWithContext_(PluginIfNeeded, v30, v29);
    self->_animationWillBeginPerformed = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_restoreLayerHierarchy(PluginIfNeeded, v31, v32);
  }

  objc_msgSend_removeAllPerspectiveLayers(self->_textureSet, v31, v32);

  self->_animatedLayers = 0;
  self->_areAnimationsReadyToStart = 0;
  objc_autoreleasePoolPop(v12);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v33, v34);
}

@end