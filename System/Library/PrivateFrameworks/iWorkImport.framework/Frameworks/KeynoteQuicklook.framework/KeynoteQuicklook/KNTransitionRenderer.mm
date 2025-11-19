@interface KNTransitionRenderer
- (BOOL)addAnimationsAtTime:(double)a3 relativeToCurrentMediaTime:(BOOL)a4;
- (BOOL)p_addAnimations:(id)a3 atTime:(double)a4 relativeToCurrentMediaTime:(BOOL)a5;
- (KNTransitionRenderer)initWithEffectClass:(Class)a3 direction:(unint64_t)a4 duration:(double)a5 session:(id)a6 attributes:(id)a7 animatedSlideView:(id)a8;
- (NSString)description;
- (id)plugin;
- (void)animate;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)generateTextures;
- (void)p_checkForNullTransitions:(Class)a3;
- (void)p_removeAnimationsShouldForceRemove:(BOOL)a3;
- (void)pauseAnimationsAtTime:(double)a3;
- (void)registerForTransitionEndCallback:(SEL)a3 target:(id)a4;
- (void)removeAnimationsAndFinish:(BOOL)a3;
- (void)renderSlideIndex:(unint64_t)a3;
- (void)renderTextures;
- (void)renderTexturesSynchronously;
- (void)resumeAnimationsIfPausedAtTime:(double)a3;
- (void)setupLayerTreeForTransition;
- (void)setupPluginContext;
- (void)teardown;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)a3;
@end

@implementation KNTransitionRenderer

- (KNTransitionRenderer)initWithEffectClass:(Class)a3 direction:(unint64_t)a4 duration:(double)a5 session:(id)a6 attributes:(id)a7 animatedSlideView:(id)a8
{
  v20.receiver = self;
  v20.super_class = KNTransitionRenderer;
  v14 = [(KNTransitionRenderer *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->super._ASV = a8;
    v14->super._session = a6;
    v14->super._pluginClass = a3;
    v14->super._direction = a4;
    v14->_numberOfAnimationsStarted = 0;
    v14->_attributes = a7;
    objc_msgSend_setDuration_(v15, v16, v17, a5);
    objc_msgSend_p_checkForNullTransitions_(v15, v18, a3);
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNTransitionRenderer;
  [(KNAnimationRenderer *)&v3 dealloc];
}

- (void)teardown
{
  objc_sync_enter(self);
  if (!self->_hasBeenTornDown)
  {
    if (self->_shouldTearDownIncomingTexture)
    {
      Object = objc_msgSend_lastObject(self->_textures, v3, v4);
      objc_msgSend_teardown(Object, v6, v7);
    }

    self->_textures = 0;
    self->_animatedLayers = 0;

    self->super._plugin = 0;
    v8.receiver = self;
    v8.super_class = KNTransitionRenderer;
    [(KNAnimationRenderer *)&v8 teardown];
    self->_hasBeenTornDown = 1;
  }

  objc_sync_exit(self);
}

- (id)plugin
{
  result = self->super._plugin;
  if (!result)
  {
    if (self->_shouldAnimateTransition)
    {
      v4 = objc_alloc(self->super._pluginClass);
      v7 = objc_msgSend_animationContext(self->super._session, v5, v6);
      result = objc_msgSend_initWithAnimationContext_(v4, v8, v7);
      self->super._plugin = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setupPluginContext
{
  v35.receiver = self;
  v35.super_class = KNTransitionRenderer;
  [(KNAnimationRenderer *)&v35 setupPluginContext];
  objc_opt_class();
  objc_msgSend_pluginContext(self, v3, v4);
  v5 = TSUCheckedDynamicCast();
  objc_msgSend_setRendererType_(v5, v6, 3);
  objc_msgSend_setTextures_(v5, v7, self->_textures);
  objc_msgSend_setDuration_(v5, v8, v9, self->super._duration);
  objc_msgSend_setDirection_(v5, v10, self->super._direction);
  objc_msgSend_setTransitionAttributes_(v5, v11, self->_attributes);
  v14 = objc_msgSend_animationContext(self->super._session, v12, v13);
  isMotionBlurCapableWithAnimationContext = objc_msgSend_isMotionBlurCapableWithAnimationContext_(KNAnimationUtils, v15, v14);
  objc_msgSend_setIsMotionBlurred_(v5, v17, isMotionBlurCapableWithAnimationContext);
  v20 = objc_msgSend_animationContext(self->super._session, v18, v19);
  objc_msgSend_slideRect(v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  objc_msgSend_setBoundingRectOnCanvas_(v5, v31, v32);
  objc_msgSend_setBoundingRect_(v5, v33, v34, v24, v26, v28, v30);
}

- (void)registerForTransitionEndCallback:(SEL)a3 target:(id)a4
{
  self->_transitionEndCallbackTarget = a4;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  self->_transitionEndCallbackSelector = v4;
}

- (void)p_checkForNullTransitions:(Class)a3
{
  pluginClass = self->super._pluginClass;
  v5 = objc_opt_class();
  shouldAnimateNullTransitions = objc_msgSend_shouldAnimateNullTransitions(self->super._session, v6, v7);
  if (pluginClass == v5)
  {
    v11 = shouldAnimateNullTransitions;
  }

  else
  {
    v11 = 1;
  }

  self->_shouldAnimateTransition = v11;
  if (pluginClass == v5)
  {

    objc_msgSend_setDuration_(self, v9, v10, 0.001);
  }
}

- (NSString)description
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v8 = objc_msgSend_localizedMenuString_(v6, v7, 3);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v12 = objc_msgSend_stringWithFormat_(v5, v11, @"%@(%@)", v8, v10);
  objc_msgSend_addObject_(v4, v13, v12);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%0.2fs", *&self->super._duration);
  objc_msgSend_addObject_(v4, v16, v15);
  v18 = objc_msgSend_componentsJoinedByString_(v4, v17, @", ");
  v19 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = KNTransitionRenderer;
  v20 = [(KNTransitionRenderer *)&v23 description];
  return objc_msgSend_stringWithFormat_(v19, v21, @"%@: %@", v20, v18);
}

- (void)setupLayerTreeForTransition
{
  v4 = objc_msgSend_animationContext(self->super._session, a2, v2);
  v7 = objc_msgSend_showLayer(v4, v5, v6);
  objc_msgSend_setSublayers_(v7, v8, 0);
  objc_msgSend_makeSharedMetalLayerVisible_(self->super._session, v9, 0);
  self->_backgroundLayer = objc_msgSend_layer(MEMORY[0x277CD9ED0], v10, v11);
  objc_msgSend_bounds(v7, v12, v13);
  objc_msgSend_setFrame_(self->_backgroundLayer, v14, v15);
  backgroundLayer = self->_backgroundLayer;
  objc_msgSend_bounds(backgroundLayer, v17, v18);
  objc_msgSend_tsd_addPerspectiveSublayerProjectionUsingScreenSize_(backgroundLayer, v19, v20, v21, v22);
  v24 = self->_backgroundLayer;

  objc_msgSend_addSublayer_(v7, v23, v24);
}

- (void)generateTextures
{
  objc_sync_enter(self);
  if (!self->_textures)
  {
    ASV = self->super._ASV;
    v6 = objc_msgSend_model(ASV, v3, v4);
    v9 = objc_msgSend_buildEventCount(v6, v7, v8);
    v11 = objc_msgSend_newSlideTextureForEvent_(ASV, v10, v9);
    v14 = objc_msgSend_incomingAnimatedSlideView(self, v12, v13);
    if (v14)
    {
      v16 = objc_msgSend_newSlideTextureForEvent_(v14, v15, 0);
      v17 = 0;
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_275DA32A0;
      v38[3] = &unk_27A6989A8;
      v38[4] = self;
      v18 = objc_alloc(MEMORY[0x277D803E8]);
      v21 = objc_msgSend_animationContext(self->super._session, v19, v20);
      objc_msgSend_slideRect(v21, v22, v23);
      v16 = objc_msgSend_initWithSize_offset_renderBlock_(v18, v24, v38, v25, v26, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      v29 = objc_msgSend_animationContext(self->super._session, v27, v28);
      v32 = objc_msgSend_colorSpace(v29, v30, v31);
      objc_msgSend_setColorSpace_(v16, v33, v32);
      v17 = 1;
    }

    self->_shouldTearDownIncomingTexture = v17;
    if (v11 == v16)
    {

      v16 = objc_msgSend_copy(v11, v34, v35);
    }

    v36 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_textures = objc_msgSend_initWithObjects_(v36, v37, v11, v16, 0);

    self->_hasBeenTornDown = 0;
  }

  objc_sync_exit(self);
}

- (void)renderTextures
{
  v20 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_copy(self->_textures, v3, v4, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_msgSend_textureManager(self->super._session, v7, v8);
        objc_msgSend_addTextureToRasterizationQueue_asv_(v13, v14, v12, self->super._ASV);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v15, v19, 16);
    }

    while (v9);
  }

  objc_sync_exit(self);
}

- (void)renderTexturesSynchronously
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_copy(self->_textures, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_renderLayerContentsIfNeeded(*(*(&v11 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v8);
  }
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  textures = self->_textures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, v6, &v11, v15, 16);
  if (v8)
  {
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(textures);
        }

        objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(*(*(&v11 + 1) + 8 * i), v7, v3);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, v7, &v11, v15, 16);
    }

    while (v8);
  }

  objc_sync_exit(self);
}

- (void)renderSlideIndex:(unint64_t)a3
{
  objc_sync_enter(self);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v5, v6);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v7, 1);
  textures = self->_textures;
  if (textures)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(textures, v8, 0);
    v14 = objc_msgSend_layer(v11, v12, v13);
    v16 = objc_msgSend_objectAtIndexedSubscript_(self->_textures, v15, 1);
    v19 = objc_msgSend_layer(v16, v17, v18);
    objc_msgSend_setSublayers_(v14, v20, 0);
    objc_msgSend_setSublayers_(v19, v21, 0);
    objc_msgSend_setEdgeAntialiasingMask_(v14, v22, 0);
    objc_msgSend_setEdgeAntialiasingMask_(v19, v23, 0);
    objc_msgSend_setShouldRasterize_(v14, v24, 0);
    objc_msgSend_setShouldRasterize_(v19, v25, 0);
    v48 = *(MEMORY[0x277CD9DE8] + 80);
    v54 = *(MEMORY[0x277CD9DE8] + 64);
    v49 = v54;
    v55 = v48;
    v46 = *(MEMORY[0x277CD9DE8] + 112);
    v56 = *(MEMORY[0x277CD9DE8] + 96);
    v47 = v56;
    v57 = v46;
    v44 = *(MEMORY[0x277CD9DE8] + 16);
    v50 = *MEMORY[0x277CD9DE8];
    v45 = v50;
    v51 = v44;
    v42 = *(MEMORY[0x277CD9DE8] + 48);
    v52 = *(MEMORY[0x277CD9DE8] + 32);
    v43 = v52;
    v53 = v42;
    objc_msgSend_setTransform_(v14, v26, &v50);
    v54 = v49;
    v55 = v48;
    v56 = v47;
    v57 = v46;
    v50 = v45;
    v51 = v44;
    v52 = v43;
    v53 = v42;
    objc_msgSend_setTransform_(v19, v27, &v50);
  }

  else
  {
    objc_msgSend_generateTextures(self, v8, v9);
  }

  objc_msgSend_renderTextures(self, v28, v29);
  v31 = objc_msgSend_objectAtIndex_(self->_textures, v30, a3);
  objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(v31, v32, 0);
  objc_msgSend_setupLayerTreeForTransition(self, v33, v34);
  v37 = objc_msgSend_layer(v31, v35, v36);
  objc_msgSend_setHidden_(v37, v38, 0);
  objc_msgSend_addSublayer_(self->_backgroundLayer, v39, v37);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v40, v41);
  objc_sync_exit(self);
}

- (void)animate
{
  if (!self->_shouldAnimateTransition || (objc_msgSend_addAnimationsAtTime_relativeToCurrentMediaTime_(self, a2, 1, 0.0) & 1) == 0) && self->_transitionEndCallbackTarget && (objc_opt_respondsToSelector())
  {
    transitionEndCallbackTarget = self->_transitionEndCallbackTarget;
    if (self->_transitionEndCallbackSelector)
    {
      transitionEndCallbackSelector = self->_transitionEndCallbackSelector;
    }

    else
    {
      transitionEndCallbackSelector = 0;
    }

    objc_msgSend_performSelector_withObject_(transitionEndCallbackTarget, v3, transitionEndCallbackSelector, self);
  }
}

- (BOOL)addAnimationsAtTime:(double)a3 relativeToCurrentMediaTime:(BOOL)a4
{
  v4 = a4;
  if (self->_animatedLayers)
  {
    objc_msgSend_stopAnimations(self, a2, a4);
  }

  v7 = objc_msgSend_plugin(self, a2, a4);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v8, v9);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v10, 1);
  if (!self->_textures)
  {
    objc_msgSend_generateTextures(self, v11, v12);
    objc_msgSend_renderTextures(self, v13, v14);
  }

  objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(self, v11, 0);
  objc_msgSend_setupLayerTreeForTransition(self, v15, v16);
  self->_animationsRanToCompletion = 0;
  if (v7)
  {
    v18 = objc_msgSend_objectAtIndex_(self->_textures, v17, 1);
    v21 = objc_msgSend_layer(v18, v19, v20);
    objc_msgSend_setHidden_(v21, v22, 0);
    objc_msgSend_addSublayer_(self->_backgroundLayer, v23, v21);
    backgroundLayer = self->_backgroundLayer;
    v26 = objc_msgSend_objectAtIndex_(self->_textures, v25, 0);
    v29 = objc_msgSend_layer(v26, v27, v28);
    objc_msgSend_addSublayer_(backgroundLayer, v30, v29);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v33 = self->_backgroundLayer;
    v34 = objc_msgSend_objectAtIndex_(self->_textures, v17, 0);
    v37 = objc_msgSend_layer(v34, v35, v36);
    objc_msgSend_addSublayer_(v33, v38, v37);
  }

  objc_msgSend_setDuration_(self, v31, v32, 0.001);
LABEL_10:
  objc_msgSend_setupPluginContext(self, v31, v32);
  v41 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v39, v40);
  v44 = objc_msgSend_pluginContext(self, v42, v43);
  objc_msgSend_addAnimationsTo_context_(v7, v45, v41, v44);
  if (v41 && objc_msgSend_count(v41, v46, v47))
  {
    v48 = objc_msgSend_p_addAnimations_atTime_relativeToCurrentMediaTime_(self, v46, v41, v4, a3);
  }

  else
  {
    v48 = 0;
  }

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v46, v47);
  return v48;
}

- (BOOL)p_addAnimations:(id)a3 atTime:(double)a4 relativeToCurrentMediaTime:(BOOL)a5
{
  v5 = a5;
  v57 = *MEMORY[0x277D85DE8];
  self->_numberOfAnimationsStarted = 0;
  self->_animatedLayers = a3;
  v11 = 1.0e-100;
  if (v5)
  {
    v11 = a4;
  }

  if (a4 == 0.0)
  {
    a4 = v11;
  }

  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = objc_msgSend_keyEnumerator(a3, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v52, v56, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v53;
    v17 = a4 > 0.0 && v5;
    v50 = *MEMORY[0x277D801A0];
    v51 = *MEMORY[0x277CDA230];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        v20 = objc_msgSend_objectForKey_(a3, v14, v19);
        if (v20)
        {
          v22 = v20;
          if (v17)
          {
            v23 = objc_msgSend_animation(MEMORY[0x277CD9E00], v14, v21);
            v25 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v24, v22, 0);
            objc_msgSend_setAnimations_(v23, v26, v25);
            objc_msgSend_duration(self, v27, v28);
            objc_msgSend_setDuration_(v23, v30, v31, a4 + v29);
            objc_msgSend_setRemovedOnCompletion_(v23, v32, 0);
            objc_msgSend_setFillMode_(v23, v33, v51);
            objc_msgSend_beginTime(v22, v34, v35);
            objc_msgSend_setBeginTime_(v22, v37, v38, a4 + v36);
            if ((objc_msgSend_disableAutoAnimationRemoval(self->super._session, v39, v40) & 1) == 0)
            {
              objc_msgSend_setDelegate_(v23, v41, self);
            }

            objc_msgSend_addAnimation_forKey_(v19, v41, v23, v50);
          }

          else
          {
            objc_msgSend_setRemovedOnCompletion_(v20, v14, 0);
            objc_msgSend_setFillMode_(v22, v42, v51);
            objc_msgSend_setBeginTime_(v22, v43, v44, a4);
            if ((objc_msgSend_disableAutoAnimationRemoval(self->super._session, v45, v46) & 1) == 0)
            {
              objc_msgSend_setDelegate_(v22, v47, self);
            }

            objc_msgSend_addAnimation_forKey_(v19, v47, v22, v50);
          }

          ++self->_numberOfAnimationsStarted;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v52, v56, 16);
    }

    while (v15);
  }

  return 1;
}

- (void)p_removeAnimationsShouldForceRemove:(BOOL)a3
{
  v63 = *MEMORY[0x277D85DE8];
  objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(self, a2, 0);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v5, v6);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v7, 1);
  context = objc_autoreleasePoolPush();
  animatedLayers = self->_animatedLayers;
  if (a3 || animatedLayers)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = objc_msgSend_keyEnumerator(animatedLayers, v8, v9);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v56, v62, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v57;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_removeAllAnimations(*(*(&v56 + 1) + 8 * i), v8, v14);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v8, &v56, v62, 16);
      }

      while (v15);
    }

    self->_numberOfAnimationsStarted = 0;
    v18 = self->_animatedLayers;
    if (v18)
    {

      self->_animatedLayers = 0;
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  textures = self->_textures;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, v8, &v52, v61, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v53;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(textures);
        }

        v26 = objc_msgSend_layer(*(*(&v52 + 1) + 8 * j), v21, v22);
        v29 = objc_msgSend_sublayers(v26, v27, v28);
        v32 = objc_msgSend_copy(v29, v30, v31);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v48, v60, 16);
        if (v34)
        {
          v37 = v34;
          v38 = *v49;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v49 != v38)
              {
                objc_enumerationMutation(v32);
              }

              objc_msgSend_removeFromSuperlayer(*(*(&v48 + 1) + 8 * k), v35, v36);
            }

            v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v48, v60, 16);
          }

          while (v37);
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, v21, &v52, v61, 16);
    }

    while (v23);
  }

  Object = objc_msgSend_lastObject(self->_textures, v21, v22);
  v43 = objc_msgSend_layer(Object, v41, v42);
  objc_msgSend_setHidden_(v43, v44, 0);
  objc_autoreleasePoolPop(context);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v45, v46);
}

- (void)removeAnimationsAndFinish:(BOOL)a3
{
  if (a3)
  {
    self->_numberOfAnimationsStarted = 0;
    self->_animationsRanToCompletion = 1;
  }

  MEMORY[0x2821F9670](self, sel_p_removeAnimationsShouldForceRemove_, 0);
}

- (void)pauseAnimationsAtTime:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_numberOfAnimationsStarted >= 1)
  {
    animatedLayers = self->_animatedLayers;
    if (animatedLayers)
    {
      if (!self->super._areAnimationsPaused)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = objc_msgSend_keyEnumerator(animatedLayers, a2, v3, 0);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
        if (v9)
        {
          v12 = v9;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v7);
              }

              objc_msgSend_kn_pauseAtTime_(*(*(&v15 + 1) + 8 * v14), v10, v11, a3);
              self->super._areAnimationsPaused = 1;
              ++v14;
            }

            while (v12 != v14);
            v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
          }

          while (v12);
        }
      }
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (self->_numberOfAnimationsStarted >= 1 && (objc_msgSend_disableAutoAnimationRemoval(self->super._session, a2, a3, a4) & 1) == 0)
  {
    v7 = self->_numberOfAnimationsStarted - 1;
    self->_numberOfAnimationsStarted = v7;
    if (!v7)
    {
      objc_msgSend_begin(MEMORY[0x277CD9FF0], v5, v6);
      objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v8, 1);
      v9 = objc_autoreleasePoolPush();
      objc_msgSend_removeAnimationsAndFinish_(self, v10, 1);
      if (self->_transitionEndCallbackTarget && (objc_opt_respondsToSelector() & 1) != 0)
      {
        transitionEndCallbackTarget = self->_transitionEndCallbackTarget;
        transitionEndCallbackSelector = self->_transitionEndCallbackSelector;
        if (transitionEndCallbackSelector)
        {
          objc_msgSend_performSelector_withObject_(transitionEndCallbackTarget, v11, transitionEndCallbackSelector, self);
        }

        else
        {
          objc_msgSend_performSelector_withObject_(transitionEndCallbackTarget, v11, 0, self);
        }
      }

      objc_autoreleasePoolPop(v9);
      v16 = MEMORY[0x277CD9FF0];

      objc_msgSend_commit(v16, v14, v15);
    }
  }
}

@end