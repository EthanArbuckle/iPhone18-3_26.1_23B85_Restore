@interface KNAnimatedSlideView
+ (void)registerUserDefaults;
- (BOOL)hasTransitionAtEventIndex:(int64_t)index;
- (BOOL)isCanvasDrawingIntoPDF:(id)f;
- (BOOL)isInfoAKeynoteTemplateObject:(id)object;
- (BOOL)isMotionBlurEnabledWithEvent:(unint64_t)event;
- (BOOL)isRenderingForKPF;
- (BOOL)p_shouldSkipActionBuild:(id)build onDrawable:(id)drawable;
- (BOOL)playAutomaticEvents;
- (BOOL)shouldPreCache;
- (BOOL)shouldShowInstructionalTextForLayout:(id)layout;
- (BOOL)shouldSuppressBackgrounds;
- (CGRect)boundingRectOnCanvasForInfo:(id)info;
- (KNAnimatedSlideView)nextASV;
- (KNPlaybackSession)session;
- (NSArray)allInfos;
- (NSArray)allInfosIncludingAudio;
- (NSArray)allReps;
- (NSArray)infosCurrentlyVisible;
- (NSArray)repsCurrentlyVisible;
- (NSSet)movieRenderers;
- (TSDCanvas)canvas;
- (id)documentRoot;
- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)info;
- (id)infosVisibleAtEvent:(unint64_t)event ignoreBuildVisibility:(BOOL)visibility;
- (id)initForSlideNode:(id)node session:(id)session;
- (id)newSlideTextureForEvent:(unint64_t)event;
- (id)nonCachedTextureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render;
- (id)p_addParentLayerForInfo:(id)info;
- (id)p_initializeTextureSetForRep:(id)rep info:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility isRenderingToContext:(BOOL)context;
- (id)p_repsForInfos:(id)infos;
- (id)p_textureSetForRep:(id)rep shouldRender:(BOOL)render;
- (id)textureSetForInfo:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility;
- (id)textureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render;
- (void)addActiveAnimatedBuild:(id)build;
- (void)applyASVColorSpaceToTextureSet:(id)set;
- (void)buildHasFinishedAnimating:(id)animating;
- (void)dealloc;
- (void)generateTextures;
- (void)interruptAndReset;
- (void)p_addAmbientBuildRenderer:(id)renderer;
- (void)p_addInfoToLayerTree:(id)tree rep:(id)rep renderer:(id)renderer builtInfos:(id)infos;
- (void)p_ambientBuildEnded:(id)ended;
- (void)p_ambientBuildStarted:(id)started;
- (void)p_animateBuild:(id)build;
- (void)p_animateBuild:(id)build afterDelay:(double)delay;
- (void)p_animateBuild:(id)build isAmbientBuild:(BOOL)ambientBuild;
- (void)p_animateCurrentEventIgnoringDelays:(BOOL)delays;
- (void)p_animateTransition:(id)transition;
- (void)p_clearAmbientBuildRenderers;
- (void)p_evictCacheAmbientBuildTexturesForTransition:(id)transition;
- (void)p_notifyAmbientBuildEndWithObject:(id)object;
- (void)p_notifyAmbientBuildStartWithObject:(id)object;
- (void)p_notifyEventAnimationActiveWithObject:(id)object;
- (void)p_notifyEventEndWithObject:(id)object;
- (void)p_notifyEventImmediateEndWithObject:(id)object;
- (void)p_notifyEventStart;
- (void)p_performAnimationWithTarget:(id)target selector:(SEL)selector object:(id)object delay:(double)delay performAsynchronously:(BOOL)asynchronously;
- (void)p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:(id)builds;
- (void)p_removeAmbientBuildRenderer:(id)renderer;
- (void)p_renderCurrentEvent;
- (void)p_renderSlideContentWithCALayers;
- (void)p_setMotionBlurStatus;
- (void)p_setupTransitionStartTime;
- (void)p_stopAllAmbientBuildRenderers;
- (void)pauseAnimations;
- (void)prepareAnimations;
- (void)registerForAmbientBuildEndCallback:(SEL)callback target:(id)target;
- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target;
- (void)registerForEventAnimationActiveCallback:(SEL)callback target:(id)target;
- (void)registerForEventEndCallback:(SEL)callback target:(id)target;
- (void)registerForEventImmediateEndCallback:(SEL)callback target:(id)target;
- (void)registerForEventStartCallback:(SEL)callback target:(id)target;
- (void)renderCurrentEvent;
- (void)renderIntoContext:(CGContext *)context eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility;
- (void)renderTextures;
- (void)reset;
- (void)resetAmbientBuildTextures;
- (void)resumeAnimationsIfPaused;
- (void)serializeTextures;
- (void)setCurrentEventIndex:(unint64_t)index;
- (void)setEventIndexesToAnimate:(id)animate;
- (void)setTexture:(id)texture forRep:(id)rep forDescription:(id)description;
- (void)stopAnimations;
- (void)tearDown;
- (void)tearDownTransition;
- (void)transitionHasFinishedAnimating:(id)animating;
- (void)triggerNextEventIgnoringDelay:(BOOL)delay;
- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel;
@end

@implementation KNAnimatedSlideView

+ (void)registerUserDefaults
{
  if (qword_280A3C070 != -1)
  {
    sub_275E5B50C();
  }
}

- (id)initForSlideNode:(id)node session:(id)session
{
  nodeCopy = node;
  sessionCopy = session;
  v48.receiver = self;
  v48.super_class = KNAnimatedSlideView;
  v10 = [(KNAnimatedSlideView *)&v48 init];
  if (v10)
  {
    v10->_slideNumber = objc_msgSend_slideNumberForSlideNode_(sessionCopy, v9, nodeCopy);
    if (KNAnimationEngineCat_init_token != -1)
    {
      sub_275E5B520();
    }

    objc_storeStrong(&v10->_slideNode, node);
    v13 = objc_msgSend_slide(nodeCopy, v11, v12);
    slide = v10->_slide;
    v10->_slide = v13;

    objc_storeWeak(&v10->_session, sessionCopy);
    v10->_playsAutomaticTransitions = 1;
    v15 = objc_alloc_init(KNAnimationDelayedCallbacks);
    delayedCallbacks = v10->_delayedCallbacks;
    v10->_delayedCallbacks = v15;

    v19 = objc_msgSend_buildChunks(v10->_slide, v17, v18);
    v22 = objc_msgSend_infosToDisplay(v10->_slide, v20, v21);
    WeakRetained = objc_loadWeakRetained(&v10->_session);
    shouldSkipBuilds = objc_msgSend_shouldSkipBuilds(WeakRetained, v24, v25);

    if (shouldSkipBuilds)
    {

      v19 = MEMORY[0x277CBEBF8];
      v22 = MEMORY[0x277CBEBF8];
    }

    v27 = [KNAnimatedSlideModel alloc];
    v28 = objc_loadWeakRetained(&v10->_session);
    v30 = objc_msgSend_initWithBuildChunks_infos_session_animatedSlideView_(v27, v29, v19, v22, v28, v10);
    model = v10->_model;
    v10->_model = v30;

    v34 = objc_msgSend_animatedBuilds(v10->_model, v32, v33);
    v10->_isSlideBuildable = objc_msgSend_count(v34, v35, v36) != 0;

    v37 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    textureDescriptionAndSetForRepMapLock = v10->_textureDescriptionAndSetForRepMapLock;
    v10->_textureDescriptionAndSetForRepMapLock = v37;

    v39 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    objc_msgSend_setCanvasLock_(v10, v40, v39);

    objc_msgSend_p_setupTransitionStartTime(v10, v41, v42);
    objc_msgSend_p_setMotionBlurStatus(v10, v43, v44);
    v45 = TSULogCreateCategory();
    signpostLog = v10->_signpostLog;
    v10->_signpostLog = v45;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_textureDescriptionAndSetForRepMap)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimatedSlideView dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 181, 0, "tearDown not performed - leaking objects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10.receiver = self;
  v10.super_class = KNAnimatedSlideView;
  [(KNAnimatedSlideView *)&v10 dealloc];
}

- (void)tearDown
{
  v128 = *MEMORY[0x277D85DE8];
  objc_msgSend_tearDownTransition(self, a2, v2);
  v6 = objc_msgSend_animatedBuilds(self->_model, v4, v5);
  objc_msgSend_p_recursivelyRemoveCallbackObserversFromAnimatedBuilds_(self, v7, v6);

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x277D82BB8], v8, self);
  objc_msgSend_cancelAllCallbacks(self->_delayedCallbacks, v9, v10);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v13 = objc_msgSend_animatedBuilds(self->_model, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v118, v127, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v119;
    do
    {
      v19 = 0;
      do
      {
        if (*v119 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v16, *(*(&v118 + 1) + 8 * v19));
        objc_msgSend_teardown(v20, v21, v22);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v118, v127, 16);
    }

    while (v17);
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_lock(self->_textureDescriptionAndSetForRepMapLock, v24, v25);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v28 = objc_msgSend_objectEnumerator(self->_textureDescriptionAndSetForRepMap, v26, v27);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v114, v126, 16);
  if (v30)
  {
    v33 = v30;
    v34 = *v115;
    do
    {
      v35 = 0;
      do
      {
        if (*v115 != v34)
        {
          objc_enumerationMutation(v28);
        }

        v36 = *(*(&v114 + 1) + 8 * v35);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v37 = objc_msgSend_objectEnumerator(v36, v31, v32);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v110, v125, 16);
        if (v39)
        {
          v41 = v39;
          v42 = *v111;
          do
          {
            v43 = 0;
            do
            {
              if (*v111 != v42)
              {
                objc_enumerationMutation(v37);
              }

              objc_msgSend_addObject_(v23, v40, *(*(&v110 + 1) + 8 * v43++));
            }

            while (v41 != v43);
            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v110, v125, 16);
          }

          while (v41);
        }

        ++v35;
      }

      while (v35 != v33);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v114, v126, 16);
    }

    while (v33);
  }

  textureDescriptionAndSetForRepMap = self->_textureDescriptionAndSetForRepMap;
  self->_textureDescriptionAndSetForRepMap = 0;

  objc_msgSend_unlock(self->_textureDescriptionAndSetForRepMapLock, v45, v46);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v47 = v23;
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v106, v124, 16);
  if (v49)
  {
    v52 = v49;
    v53 = *v107;
    do
    {
      v54 = 0;
      do
      {
        if (*v107 != v53)
        {
          objc_enumerationMutation(v47);
        }

        objc_msgSend_teardown(*(*(&v106 + 1) + 8 * v54++), v50, v51);
      }

      while (v52 != v54);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v106, v124, 16);
    }

    while (v52);
  }

  precachedStaticTextureSets = self->_precachedStaticTextureSets;
  self->_precachedStaticTextureSets = 0;

  self->_didRenderPrecachedStaticTextures = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v58 = objc_msgSend_objectEnumerator(self->_eventToSlideTextureMap, v56, v57);
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v102, v123, 16);
  if (v60)
  {
    v63 = v60;
    v64 = *v103;
    do
    {
      v65 = 0;
      do
      {
        if (*v103 != v64)
        {
          objc_enumerationMutation(v58);
        }

        objc_msgSend_teardown(*(*(&v102 + 1) + 8 * v65++), v61, v62);
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v102, v123, 16);
    }

    while (v63);
  }

  eventToSlideTextureMap = self->_eventToSlideTextureMap;
  self->_eventToSlideTextureMap = 0;

  v69 = objc_msgSend_animatedBuilds(self->_model, v67, v68);
  objc_msgSend_p_recursivelyRemoveCallbackObserversFromAnimatedBuilds_(self, v70, v69);

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x277D82BB8], v71, self);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v74 = objc_msgSend_animatedBuilds(self->_model, v72, v73, 0);
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v98, v122, 16);
  if (v76)
  {
    v78 = v76;
    v79 = *v99;
    do
    {
      v80 = 0;
      do
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(v74);
        }

        v81 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v77, *(*(&v98 + 1) + 8 * v80));
        objc_msgSend_teardown(v81, v82, v83);

        ++v80;
      }

      while (v78 != v80);
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v98, v122, 16);
    }

    while (v78);
  }

  if (self->_canvas)
  {
    v86 = objc_msgSend_canvasLock(self, v84, v85);
    objc_msgSend_lock(v86, v87, v88);

    objc_msgSend_setDelegate_(self->_canvas, v89, 0);
    objc_msgSend_teardown(self->_canvas, v90, v91);
    canvas = self->_canvas;
    self->_canvas = 0;

    v95 = objc_msgSend_canvasLock(self, v93, v94);
    objc_msgSend_unlock(v95, v96, v97);
  }
}

- (void)tearDownTransition
{
  v3 = objc_msgSend_transitionRenderer(self->_model, a2, v2);
  if (v3)
  {
    v7 = v3;
    objc_msgSend_registerForTransitionEndCallback_target_(v3, v4, 0, 0);
    objc_msgSend_teardown(v7, v5, v6);
    v3 = v7;
  }
}

- (void)p_recursivelyRemoveCallbackObserversFromAnimatedBuilds:(id)builds
{
  v25 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v5, &v20, v24, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(buildsCopy);
        }

        v11 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v7, *(*(&v20 + 1) + 8 * i));
        objc_msgSend_registerForBuildEndCallback_target_(v11, v12, 0, 0);
        objc_opt_class();
        v19 = &unk_28851BA00;
        v13 = TSUClassAndProtocolCast();
        v16 = v13;
        if (v13)
        {
          objc_msgSend_registerForAmbientBuildStartCallback_target_(v13, v14, 0, 0, &unk_28851BA00);
        }

        v17 = objc_msgSend_animatedBuildsToStartAtEnd(v11, v14, v15, v19);
        objc_msgSend_p_recursivelyRemoveCallbackObserversFromAnimatedBuilds_(self, v18, v17);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v7, &v20, v24, 16);
    }

    while (v8);
  }
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v5 = objc_msgSend_canvasDelegate(WeakRetained, v3, v4);
  v8 = objc_msgSend_documentRoot(v5, v6, v7);

  return v8;
}

- (BOOL)shouldSuppressBackgrounds
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v6 = objc_msgSend_canvasDelegate(WeakRetained, v4, v5);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_session);
  v11 = objc_msgSend_canvasDelegate(v8, v9, v10);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v11, v12, v13);

  return shouldSuppressBackgrounds;
}

- (BOOL)shouldShowInstructionalTextForLayout:(id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  shouldShowInstructionalText = objc_msgSend_shouldShowInstructionalText(WeakRetained, v4, v5);

  return shouldShowInstructionalText;
}

- (BOOL)isCanvasDrawingIntoPDF:(id)f
{
  fCopy = f;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v8 = objc_msgSend_canvasDelegate(WeakRetained, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_session);
    v13 = objc_msgSend_canvasDelegate(v10, v11, v12);
    isCanvasDrawingIntoPDF = objc_msgSend_isCanvasDrawingIntoPDF_(v13, v14, fCopy);
  }

  else
  {
    isCanvasDrawingIntoPDF = 0;
  }

  return isCanvasDrawingIntoPDF;
}

- (BOOL)isRenderingForKPF
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v6 = objc_msgSend_canvasDelegate(WeakRetained, v4, v5);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_loadWeakRetained(&self->_session);
  v11 = objc_msgSend_canvasDelegate(v8, v9, v10);
  isRenderingForKPF = objc_msgSend_isRenderingForKPF(v11, v12, v13);

  return isRenderingForKPF;
}

- (BOOL)isInfoAKeynoteTemplateObject:(id)object
{
  v3 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, a2, object);
  isTemplateSlide = objc_msgSend_isTemplateSlide(v3, v4, v5);

  return isTemplateSlide;
}

- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v7 = infoCopy;
  v8 = v7;
  if (v5)
  {
    v9 = objc_msgSend_parentSlideNodeForInfo_(KNSlideNode, v6, v5);
    v12 = objc_msgSend_slide(v9, v10, v11);

    v15 = objc_msgSend_templateSlide(self->_slide, v13, v14);

    v8 = v7;
    if (v12 == v15)
    {
      v17 = objc_msgSend_infoCorrespondingToTemplateSlideInfo_(self->_slide, v16, v7);
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v5;
      }

      v8 = v19;
    }
  }

  return v8;
}

- (void)registerForEventStartCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventStartCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventStartCallbackSelector = callbackCopy;
}

- (void)registerForEventAnimationActiveCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventAnimationActiveCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventAnimationActiveCallbackSelector = callbackCopy;
}

- (void)registerForEventEndCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventEndCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventEndCallbackSelector = callbackCopy;
}

- (void)registerForEventImmediateEndCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_eventImmediateEndCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_eventImmediateEndCallbackSelector = callbackCopy;
}

- (void)registerForAmbientBuildStartCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_ambientBuildStartCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_ambientBuildStartCallbackSelector = callbackCopy;
}

- (void)registerForAmbientBuildEndCallback:(SEL)callback target:(id)target
{
  objc_storeStrong(&self->_ambientBuildEndCallbackTarget, target);
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->_ambientBuildEndCallbackSelector = callbackCopy;
}

- (void)p_notifyEventStart
{
  if (objc_opt_respondsToSelector())
  {
    eventStartCallbackTarget = self->_eventStartCallbackTarget;
    if (self->_eventStartCallbackSelector)
    {
      eventStartCallbackSelector = self->_eventStartCallbackSelector;
    }

    else
    {
      eventStartCallbackSelector = 0;
    }

    objc_msgSend_performSelector_withObject_(eventStartCallbackTarget, v3, eventStartCallbackSelector, self);
  }
}

- (void)p_notifyEventAnimationActiveWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    eventAnimationActiveCallbackTarget = self->_eventAnimationActiveCallbackTarget;
    eventAnimationActiveCallbackSelector = self->_eventAnimationActiveCallbackSelector;
    if (eventAnimationActiveCallbackSelector)
    {
      objc_msgSend_performSelector_withObject_(eventAnimationActiveCallbackTarget, v4, eventAnimationActiveCallbackSelector, objectCopy);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(eventAnimationActiveCallbackTarget, v4, 0, objectCopy);
    }
  }
}

- (void)p_notifyEventImmediateEndWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    eventImmediateEndCallbackTarget = self->_eventImmediateEndCallbackTarget;
    eventImmediateEndCallbackSelector = self->_eventImmediateEndCallbackSelector;
    if (eventImmediateEndCallbackSelector)
    {
      objc_msgSend_performSelector_withObject_(eventImmediateEndCallbackTarget, v4, eventImmediateEndCallbackSelector, objectCopy);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(eventImmediateEndCallbackTarget, v4, 0, objectCopy);
    }
  }
}

- (void)p_notifyEventEndWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    eventEndCallbackTarget = self->_eventEndCallbackTarget;
    eventEndCallbackSelector = self->_eventEndCallbackSelector;
    if (eventEndCallbackSelector)
    {
      objc_msgSend_performSelector_withObject_(eventEndCallbackTarget, v4, eventEndCallbackSelector, objectCopy);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(eventEndCallbackTarget, v4, 0, objectCopy);
    }
  }
}

- (void)p_notifyAmbientBuildStartWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    ambientBuildStartCallbackTarget = self->_ambientBuildStartCallbackTarget;
    ambientBuildStartCallbackSelector = self->_ambientBuildStartCallbackSelector;
    if (ambientBuildStartCallbackSelector)
    {
      objc_msgSend_performSelector_withObject_(ambientBuildStartCallbackTarget, v4, ambientBuildStartCallbackSelector, objectCopy);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(ambientBuildStartCallbackTarget, v4, 0, objectCopy);
    }
  }
}

- (void)p_notifyAmbientBuildEndWithObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    ambientBuildEndCallbackTarget = self->_ambientBuildEndCallbackTarget;
    ambientBuildEndCallbackSelector = self->_ambientBuildEndCallbackSelector;
    if (ambientBuildEndCallbackSelector)
    {
      objc_msgSend_performSelector_withObject_(ambientBuildEndCallbackTarget, v4, ambientBuildEndCallbackSelector, objectCopy);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(ambientBuildEndCallbackTarget, v4, 0, objectCopy);
    }
  }
}

- (void)transitionHasFinishedAnimating:(id)animating
{
  animatingCopy = animating;
  if (animatingCopy)
  {
    objc_msgSend_p_notifyEventImmediateEndWithObject_(self, v4, animatingCopy);
  }

  if (objc_msgSend_signpostId(animatingCopy, v4, v5) != -1)
  {
    v8 = self->_signpostLog;
    v11 = objc_msgSend_signpostId(animatingCopy, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Animation", "End", v30, 2u);
      }
    }
  }

  animationsActive = self->_animationsActive;
  if (!animationsActive)
  {
    if (self->_animationsStarted)
    {
      animationsActive = 0;
    }

    else
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimatedSlideView transitionHasFinishedAnimating:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 443, 0, "number of animations started or active is invalid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      animationsActive = self->_animationsActive;
    }
  }

  v21 = self->_animationsStarted - 1;
  self->_animationsActive = animationsActive - 1;
  self->_animationsStarted = v21;
  if (v21)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimatedSlideView transitionHasFinishedAnimating:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 446, 0, "There should be no other animations after a transition has finished animating.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  if (!self->_shouldStopAnimations)
  {
    objc_msgSend_setHasEventStarted_(self, v7, 0);
    if (animatingCopy)
    {
      self->_transitionHasFinishedCallbackPending = 1;
      objc_msgSend_p_notifyEventEndWithObject_(self, v29, animatingCopy);
    }
  }
}

- (void)p_ambientBuildStarted:(id)started
{
  v26 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  objc_msgSend_p_notifyAmbientBuildStartWithObject_(self, v5, startedCopy);
  v9 = objc_msgSend_info(startedCopy, v6, v7);
  if (v9)
  {
    v10 = objc_msgSend_objectForKey_(self->_buildsToStartAfterAmbientBuildStartsMap, v8, v9);
    v12 = v10;
    if (v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
      if (v13)
      {
        v16 = v13;
        v17 = *v22;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v21 + 1) + 8 * i);
            objc_msgSend_startTime(v19, v14, v15);
            objc_msgSend_p_animateBuild_afterDelay_(self, v20, v19);
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v21, v25, 16);
        }

        while (v16);
      }

      objc_msgSend_removeObjectForKey_(self->_buildsToStartAfterAmbientBuildStartsMap, v14, v9);
    }
  }

  objc_msgSend_performSelector_withObject_afterDelay_(self, v8, sel_buildHasFinishedAnimating_, startedCopy, 0.0);
}

- (void)p_ambientBuildEnded:(id)ended
{
  endedCopy = ended;
  objc_msgSend_p_notifyAmbientBuildEndWithObject_(self, v4, endedCopy);
  objc_msgSend_p_removeAmbientBuildRenderer_(self, v5, endedCopy);
}

- (void)buildHasFinishedAnimating:(id)animating
{
  v199 = *MEMORY[0x277D85DE8];
  animatingCopy = animating;
  if (objc_msgSend_signpostId(animatingCopy, v5, v6) != -1)
  {
    v9 = self->_signpostLog;
    v12 = objc_msgSend_signpostId(animatingCopy, v10, v11);
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275D41000, v9, OS_SIGNPOST_INTERVAL_END, v13, "Animation", "End", buf, 2u);
      }
    }
  }

  if (self->_shouldStopAnimations)
  {
    goto LABEL_64;
  }

  v14 = objc_msgSend_rep(animatingCopy, v7, v8);
  v17 = objc_msgSend_textureStageIndex(animatingCopy, v15, v16);
  objc_msgSend_updateHitTestingForTextureStage_isAtEndOfBuild_(v14, v18, v17, 1);

  v21 = objc_msgSend_animatedBuildsToStartAtEnd(animatingCopy, v19, v20);

  v182 = animatingCopy;
  selfCopy = self;
  if (!v21)
  {
    goto LABEL_42;
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v24 = objc_msgSend_animatedBuildsToStartAtEnd(animatingCopy, v22, v23);
  v27 = objc_msgSend_copy(v24, v25, v26);

  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v191, v198, 16);
  if (!v29)
  {
    goto LABEL_41;
  }

  v31 = v29;
  v32 = *v192;
  v177 = *v192;
  v178 = v27;
  do
  {
    v33 = 0;
    v180 = v31;
    do
    {
      if (*v192 != v32)
      {
        objc_enumerationMutation(v27);
      }

      v34 = *(*(&v191 + 1) + 8 * v33);
      v35 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v30, v34, v177, v178);
      v38 = objc_msgSend_info(v35, v36, v37);
      shouldSkipActionBuild_onDrawable = objc_msgSend_p_shouldSkipActionBuild_onDrawable_(self, v39, v34, v38);

      objc_msgSend_startTime(v34, v41, v42);
      if (v45 != 0.0)
      {
        goto LABEL_18;
      }

      v46 = objc_msgSend_animatedBuild(animatingCopy, v43, v44);
      if ((objc_msgSend_isActionBuild(v46, v47, v48) & 1) == 0)
      {

LABEL_18:
        if ((shouldSkipActionBuild_onDrawable & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      v181 = shouldSkipActionBuild_onDrawable;
      v51 = objc_msgSend_animatedBuild(animatingCopy, v49, v50);
      if (objc_msgSend_isEmphasisBuild(v51, v52, v53))
      {
      }

      else
      {
        animationsActive = self->_animationsActive;

        if (animationsActive >= 2)
        {
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v55 = self->_activeAnimatedBuilds;
          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v187, v197, 16);
          if (v57)
          {
            v60 = v57;
            v61 = *v188;
            do
            {
              v62 = 0;
              do
              {
                if (*v188 != v61)
                {
                  objc_enumerationMutation(v55);
                }

                v63 = *(*(&v187 + 1) + 8 * v62);
                v66 = objc_msgSend_animatedBuild(animatingCopy, v58, v59);
                if (v66 == v63 || !objc_msgSend_isActionBuild(v63, v64, v65) || objc_msgSend_isEmphasisBuild(v63, v67, v68))
                {
                }

                else
                {
                  objc_msgSend_eventEndTime(v63, v69, v70);
                  v72 = v71;
                  v75 = objc_msgSend_animatedBuild(animatingCopy, v73, v74);
                  objc_msgSend_eventEndTime(v75, v76, v77);
                  v79 = v78;

                  animatingCopy = v182;
                  if (v72 == v79)
                  {
                    self = selfCopy;
                    v82 = objc_msgSend_rendererForAnimatedBuild_(selfCopy->_model, v58, v63);
                    objc_msgSend_addBuildToStartAtEnd_(v82, v83, v34);

                    animatingCopy = v182;
                    objc_msgSend_removeBuildToStartAtEnd_(v182, v84, v34);

                    v32 = v177;
                    v27 = v178;
                    v31 = v180;
                    goto LABEL_39;
                  }
                }

                ++v62;
              }

              while (v60 != v62);
              v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v187, v197, 16);
              v60 = v80;
            }

            while (v80);
          }

          v27 = v178;
          self = selfCopy;
          v32 = v177;
        }

        v31 = v180;
      }

      if ((v181 & 1) == 0)
      {
LABEL_38:
        objc_msgSend_startTime(v34, v43, v44);
        objc_msgSend_p_animateBuild_afterDelay_(self, v81, v34);
      }

LABEL_39:

      ++v33;
    }

    while (v33 != v31);
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v191, v198, 16);
  }

  while (v31);
LABEL_41:

LABEL_42:
  v85 = self->_animationsActive;
  if (!v85)
  {
    if (self->_animationsStarted)
    {
      v85 = 0;
    }

    else
    {
      v86 = MEMORY[0x277D81150];
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[KNAnimatedSlideView buildHasFinishedAnimating:]");
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
      v90 = v86;
      animatingCopy = v182;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v91, v87, v89, 539, 0, "number of animations started or active is invalid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93);
      v85 = self->_animationsActive;
    }
  }

  animationsStarted = self->_animationsStarted - 1;
  self->_animationsActive = v85 - 1;
  self->_animationsStarted = animationsStarted;
  if (animatingCopy)
  {
    objc_msgSend_animatedBuild(animatingCopy, v22, v23);
    v96 = v95 = animatingCopy;

    if (v96)
    {
      v98 = objc_msgSend_animatedBuild(v95, v22, v97);
      objc_msgSend_removeActiveAnimatedBuild_(self, v99, v98);
    }

    animationsStarted = self->_animationsStarted;
    animatingCopy = v95;
  }

  if (!animationsStarted)
  {
    objc_msgSend_setHasEventStarted_(self, v22, 0);
    eventEndCallbackTarget = self->_eventEndCallbackTarget;
    if (eventEndCallbackTarget)
    {
      eventEndCallbackSelector = self->_eventEndCallbackSelector;
      if (eventEndCallbackSelector)
      {
        objc_msgSend_performSelector_withObject_afterDelay_(eventEndCallbackTarget, v100, eventEndCallbackSelector, animatingCopy, 0.0);
      }

      else
      {
        objc_msgSend_performSelector_withObject_afterDelay_(eventEndCallbackTarget, v100, 0, animatingCopy, 0.0);
      }
    }

    objc_msgSend_p_notifyEventImmediateEndWithObject_(self, v100, animatingCopy);
    v105 = objc_msgSend_currentEventIndex(self, v103, v104);
    objc_msgSend_setCurrentEventIndex_(self, v106, v105 + 1);
    WeakRetained = objc_loadWeakRetained(&self->_session);
    if (objc_msgSend_playMode(WeakRetained, v108, v109) == 1)
    {
      goto LABEL_62;
    }

    v110 = objc_loadWeakRetained(&self->_session);
    if (objc_msgSend_playMode(v110, v111, v112) == 2)
    {
      goto LABEL_61;
    }

    v113 = objc_loadWeakRetained(&self->_session);
    if (objc_msgSend_playMode(v113, v114, v115) == 5)
    {
      goto LABEL_60;
    }

    v116 = objc_loadWeakRetained(&self->_session);
    if (objc_msgSend_playMode(v116, v117, v118) == 6)
    {

LABEL_60:
LABEL_61:

LABEL_62:
LABEL_63:
      objc_msgSend_performSelector_withObject_afterDelay_(self, v119, sel_triggerNextEvent, 0, 0.0);
    }

    else
    {
      triggerQueued = self->_triggerQueued;

      if (triggerQueued)
      {
        goto LABEL_63;
      }

      if (objc_msgSend_hasTransitionAtEventIndex_(self, v119, self->_currentEventIndex))
      {
        v123 = objc_msgSend_transition(self->_slide, v121, v122);
        v126 = v123;
        if (v123 && objc_msgSend_hasAutomaticTrigger(v123, v124, v125) && self->_playsAutomaticTransitions)
        {
          objc_msgSend_performSelector_withObject_afterDelay_(self, v124, sel_triggerNextEvent, 0, 0.0);
        }

        else if (!self->_ambientBuildRenderers)
        {
          v175 = objc_msgSend_transitionRenderer(self->_model, v124, v125);
          objc_msgSend_renderSlideIndex_(v175, v176, 0);

          animatingCopy = v182;
        }
      }

      else if (objc_msgSend_buildEventCount(self->_model, v121, v122))
      {
        currentEventIndex = self->_currentEventIndex;
        if (currentEventIndex < objc_msgSend_buildEventCount(self->_model, v127, v128))
        {
          v130 = objc_alloc(MEMORY[0x277CBEB58]);
          v132 = objc_msgSend_initWithCapacity_(v130, v131, 1);
          v183 = 0u;
          v184 = 0u;
          v185 = 0u;
          v186 = 0u;
          v134 = objc_msgSend_eventsAtIndex_(self->_model, v133, self->_currentEventIndex);
          v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, &v183, v196, 16);
          if (v136)
          {
            v138 = v136;
            v139 = *v184;
            do
            {
              for (i = 0; i != v138; ++i)
              {
                if (*v184 != v139)
                {
                  objc_enumerationMutation(v134);
                }

                v141 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v137, *(*(&v183 + 1) + 8 * i));
                v144 = objc_msgSend_buildStage(v141, v142, v143);
                v147 = objc_msgSend_build(v144, v145, v146);
                v150 = objc_msgSend_drawable(v147, v148, v149);

                if ((objc_msgSend_containsObject_(v132, v151, v150) & 1) == 0 && (objc_msgSend_conformsToProtocol_(v150, v152, &unk_288532838) & 1) == 0)
                {
                  objc_msgSend_begin(MEMORY[0x277CD9FF0], v153, v154);
                  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v155, 1);
                  v156 = MEMORY[0x277CD9FF0];
                  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v157, v158);
                  objc_msgSend_activateBackground_(v156, v160, isMainThread ^ 1u);
                  v161 = objc_autoreleasePoolPush();
                  v164 = objc_msgSend_animationWillBegin(v141, v162, v163);
                  objc_autoreleasePoolPop(v161);
                  objc_msgSend_commit(MEMORY[0x277CD9FF0], v165, v166);
                  objc_msgSend_addObject_(v132, v167, v150);
                  v170 = objc_msgSend_rep(v141, v168, v169);
                  v173 = objc_msgSend_textureStageIndex(v141, v171, v172);
                  objc_msgSend_updateHitTestingForTextureStage_isAtEndOfBuild_(v170, v174, v173, 0);
                }

                self = selfCopy;
              }

              v138 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v137, &v183, v196, 16);
            }

            while (v138);
          }

          animatingCopy = v182;
        }
      }
    }
  }

LABEL_64:
}

- (NSArray)allInfos
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = objc_msgSend_infosToDisplay(self->_slide, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v39, v44, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        InfoVisible_allowAudioOnlyMovies = objc_msgSend_canMakeInfoVisible_allowAudioOnlyMovies_(WeakRetained, v14, v12, 0);

        if (InfoVisible_allowAudioOnlyMovies)
        {
          objc_msgSend_addObject_(v3, v16, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v16, &v39, v44, 16);
    }

    while (v9);
  }

  v19 = objc_msgSend_templateSlide(self->_slide, v17, v18);
  v22 = objc_msgSend_nonPlaceholderObjects(v19, v20, v21);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v22;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v35, v43, 16);
  if (v25)
  {
    v26 = v25;
    v27 = *v36;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v35 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_loadWeakRetained(&self->_session);
          v33 = objc_msgSend_canMakeInfoVisible_allowAudioOnlyMovies_(v31, v32, v29, 0, v35);

          if (v33)
          {
            objc_msgSend_addObject_(v3, v30, v29);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v35, v43, 16);
    }

    while (v26);
  }

  return v3;
}

- (NSArray)allInfosIncludingAudio
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isMetalEnabled = objc_msgSend_isMetalEnabled(WeakRetained, v4, v5);

  if (isMetalEnabled)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = objc_msgSend_infosToDisplay(self->_slide, v10, v11, 0);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v28, 16);
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_loadWeakRetained(&self->_session);
          InfoVisible_allowAudioOnlyMovies = objc_msgSend_canMakeInfoVisible_allowAudioOnlyMovies_(v19, v20, v18, 1);

          if (InfoVisible_allowAudioOnlyMovies)
          {
            objc_msgSend_addObject_(v9, v22, v18);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v24, v28, 16);
      }

      while (v15);
    }
  }

  else
  {
    v9 = objc_msgSend_allInfos(self, v7, v8);
  }

  return v9;
}

- (NSArray)infosCurrentlyVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  objc_msgSend_shouldIgnoreBuildVisibility(WeakRetained, v4, v5);

  currentEventIndex = self->_currentEventIndex;

  return MEMORY[0x2821F9670](self, sel_infosVisibleAtEvent_ignoreBuildVisibility_, currentEventIndex);
}

- (id)p_repsForInfos:(id)infos
{
  v32 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(infosCopy, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = infosCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        v21 = objc_msgSend_canvas(self, v19, v20, v27);
        v23 = objc_msgSend_repForInfo_onCanvas_(WeakRetained, v22, v17, v21);

        if (v23)
        {
          objc_msgSend_addObject_(v10, v24, v23);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v25, &v27, v31, 16);
    }

    while (v14);
  }

  return v10;
}

- (NSArray)allReps
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_allInfos(self, a2, v2);
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v4;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        v21 = objc_msgSend_canvas(self, v19, v20, v27);
        v23 = objc_msgSend_repForInfo_onCanvas_(WeakRetained, v22, v17, v21);

        if (v23)
        {
          objc_msgSend_addObject_(v10, v24, v23);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v25, &v27, v31, 16);
    }

    while (v14);
  }

  return v10;
}

- (NSArray)repsCurrentlyVisible
{
  v4 = objc_msgSend_infosCurrentlyVisible(self, a2, v2);
  v6 = objc_msgSend_p_repsForInfos_(self, v5, v4);

  return v6;
}

- (id)infosVisibleAtEvent:(unint64_t)event ignoreBuildVisibility:(BOOL)visibility
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_msgSend_infosToDisplay(self->_slide, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (visibility || objc_msgSend_info_isVisibleDuringEvent_(self->_model, v12, *(*(&v22 + 1) + 8 * i), event))
        {
          WeakRetained = objc_loadWeakRetained(&self->_session);
          InfoVisible_allowAudioOnlyMovies = objc_msgSend_canMakeInfoVisible_allowAudioOnlyMovies_(WeakRetained, v18, v16, 0);

          if (InfoVisible_allowAudioOnlyMovies)
          {
            objc_msgSend_addObject_(v21, v12, v16);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v26, 16);
    }

    while (v13);
  }

  return v21;
}

- (BOOL)hasTransitionAtEventIndex:(int64_t)index
{
  if (objc_msgSend_buildEventCount(self->_model, a2, index) != index)
  {
    return 0;
  }

  v6 = objc_msgSend_transitionRenderer(self->_model, v4, v5);
  v7 = v6 != 0;

  return v7;
}

- (KNAnimatedSlideView)nextASV
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v5 = objc_msgSend_nextSlideNodeAfterSlideNode_(WeakRetained, v4, self->_slideNode);

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_session);
    v8 = objc_msgSend_animatedSlideViewFor_(v6, v7, v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldPreCache
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_animatedBuilds(self->_model, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v7, *(*(&v17 + 1) + 8 * i));
        Textures = objc_msgSend_shouldPreGenerateTextures(v11, v12, v13);

        if (!Textures)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v17, v21, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (void)p_setMotionBlurStatus
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  isMotionBlurEnabledForEvent = self->_isMotionBlurEnabledForEvent;
  self->_isMotionBlurEnabledForEvent = v4;

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v9 = objc_msgSend_animationContext(WeakRetained, v7, v8);
  isMotionBlurCapableWithAnimationContext = objc_msgSend_isMotionBlurCapableWithAnimationContext_(KNAnimationUtils, v10, v9);

  v14 = objc_msgSend_buildEventCount(self->_model, v12, v13);
  v18 = objc_msgSend_set(MEMORY[0x277CBEB58], v15, v16);
  if (v14)
  {
    v19 = 0;
    v42 = v14;
    do
    {
      if (isMotionBlurCapableWithAnimationContext)
      {
        v20 = isMotionBlurCapableWithAnimationContext;
        v21 = objc_msgSend_buildChunksForEventRange_(self->_model, v17, v19, 1);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v43, v47, 16);
        if (v23)
        {
          v26 = v23;
          v27 = *v44;
          do
          {
            v28 = 0;
            do
            {
              if (*v44 != v27)
              {
                objc_enumerationMutation(v21);
              }

              v29 = objc_msgSend_build(*(*(&v43 + 1) + 8 * v28), v24, v25);
              v32 = objc_msgSend_drawable(v29, v30, v31);
              objc_msgSend_addObject_(v18, v33, v32);

              ++v28;
            }

            while (v26 != v28);
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v43, v47, 16);
          }

          while (v26);
        }

        v34 = self->_isMotionBlurEnabledForEvent;
        v35 = MEMORY[0x277CCABB0];
        v36 = objc_msgSend_count(v18, v24, v25) < 0xB;
        v38 = objc_msgSend_numberWithInt_(v35, v37, v36);
        objc_msgSend_addObject_(v34, v39, v38);

        objc_msgSend_removeAllObjects(v18, v40, v41);
        isMotionBlurCapableWithAnimationContext = v20;
        v14 = v42;
      }

      else
      {
        objc_msgSend_addObject_(self->_isMotionBlurEnabledForEvent, v17, MEMORY[0x277CBEC28]);
      }

      ++v19;
    }

    while (v19 != v14);
  }
}

- (BOOL)isMotionBlurEnabledWithEvent:(unint64_t)event
{
  v3 = objc_msgSend_objectAtIndexedSubscript_(self->_isMotionBlurEnabledForEvent, a2, event);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  return v6;
}

- (TSDCanvas)canvas
{
  v4 = objc_msgSend_canvasLock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);

  if (!self->_canvas)
  {
    v9 = objc_msgSend_infosToDisplay(self->_slide, v7, v8);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_275DB51BC;
    v21[3] = &unk_27A698A98;
    v21[4] = self;
    v11 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v9, v10, v21);

    WeakRetained = objc_loadWeakRetained(&self->_session);
    v14 = objc_msgSend_newCanvasForInfos_(WeakRetained, v13, v11);
    canvas = self->_canvas;
    self->_canvas = v14;
  }

  v16 = objc_msgSend_canvasLock(self, v7, v8);
  objc_msgSend_unlock(v16, v17, v18);

  v19 = self->_canvas;

  return v19;
}

- (id)p_addParentLayerForInfo:(id)info
{
  v38 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v8 = objc_msgSend_animationContext(WeakRetained, v6, v7);
  v11 = objc_msgSend_showLayer(v8, v9, v10);

  v12 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  objc_msgSend_bounds(v11, v13, v14);
  objc_msgSend_setFrame_(v12, v15, v16);
  objc_msgSend_addSublayer_(v11, v17, v12);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = objc_msgSend_animatedBuilds(self->_model, v18, v19, 0);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v33, v37, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v23, *(*(&v33 + 1) + 8 * i));
        v30 = objc_msgSend_info(v27, v28, v29);

        if (v30 == infoCopy)
        {
          objc_msgSend_setParentLayer_(v27, v31, v12);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v33, v37, 16);
    }

    while (v24);
  }

  return v12;
}

- (void)p_addInfoToLayerTree:(id)tree rep:(id)rep renderer:(id)renderer builtInfos:(id)infos
{
  treeCopy = tree;
  repCopy = rep;
  rendererCopy = renderer;
  infosCopy = infos;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  shouldIgnoreBuildVisibility = objc_msgSend_shouldIgnoreBuildVisibility(WeakRetained, v14, v15);

  v17 = objc_loadWeakRetained(&self->_session);
  v20 = objc_msgSend_animationContext(v17, v18, v19);
  v23 = objc_msgSend_showLayer(v20, v21, v22);

  v26 = objc_msgSend_p_addParentLayerForInfo_(self, v24, treeCopy);
  if (rendererCopy && (objc_msgSend_containsObject_(infosCopy, v25, treeCopy) & 1) == 0)
  {
    v28 = objc_msgSend_animationWillBegin(rendererCopy, v25, v27);
    objc_msgSend_addObject_(infosCopy, v34, treeCopy);
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v28 = objc_msgSend_p_initializeTextureSetForRep_info_eventIndex_ignoreBuildVisibility_isRenderingToContext_(self, v25, repCopy, treeCopy, self->_currentEventIndex, shouldIgnoreBuildVisibility, 0);
    v29 = repCopy;
    objc_sync_enter(v29);
    objc_msgSend_renderLayerContentsIfNeeded(v28, v30, v31);
    objc_sync_exit(v29);

    if (!v28)
    {
      goto LABEL_8;
    }
  }

  if (v23)
  {
    v35 = objc_msgSend_layer(v28, v32, v33);
    objc_msgSend_addSublayer_(v26, v36, v35);
  }

LABEL_8:
}

- (void)renderCurrentEvent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_p_renderCurrentEvent(selfCopy, v3, v4);
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_session);
  v7 = objc_msgSend_textureManager(WeakRetained, v5, v6);
  objc_msgSend_setCurrentSlideNode_(v7, v8, selfCopy->_slideNode);
}

- (void)p_renderCurrentEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isMetalEnabled = objc_msgSend_isMetalEnabled(WeakRetained, v4, v5);

  if (isMetalEnabled)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimatedSlideView p_renderCurrentEvent]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 905, 0, "SERIOUS BUG: Non-metal rendering being performed when Metal is enabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v29 = objc_msgSend_transitionRenderer(self->_model, v7, v8);
  if (!objc_msgSend_hasTransitionAtEventIndex_(self, v16, self->_currentEventIndex))
  {
    goto LABEL_6;
  }

  v19 = objc_loadWeakRetained(&self->_session);
  v22 = objc_msgSend_show(v19, v20, v21);
  if (objc_msgSend_mode(v22, v23, v24) == 2)
  {

LABEL_6:
    objc_msgSend_p_renderSlideContentWithCALayers(self, v17, v18);
    goto LABEL_7;
  }

  v25 = objc_loadWeakRetained(&self->_session);
  v28 = objc_msgSend_playMode(v25, v26, v27);

  if (v28 == 5 || !v29)
  {
    goto LABEL_6;
  }

  objc_msgSend_renderSlideIndex_(v29, v17, 0);
LABEL_7:
}

- (void)p_renderSlideContentWithCALayers
{
  v73 = *MEMORY[0x277D85DE8];
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v4, 1);
  v5 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v6, v7);
  objc_msgSend_activateBackground_(v5, v9, isMainThread ^ 1u);
  context = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v13 = objc_msgSend_animationContext(WeakRetained, v11, v12);
  v16 = objc_msgSend_showLayer(v13, v14, v15);

  objc_msgSend_setSublayers_(v16, v17, 0);
  v65 = v16;
  objc_msgSend_kn_removeAllAnimationsOnLayerTree(v16, v18, v19);
  v20 = objc_loadWeakRetained(&self->_session);
  objc_msgSend_makeSharedMetalLayerVisible_(v20, v21, 0);

  v22 = objc_loadWeakRetained(&self->_session);
  v25 = objc_msgSend_bitmapRenderingQualityInfo(v22, v23, v24);

  if (v25)
  {
    v28 = objc_msgSend_canvas(self, v26, v27);
    v29 = objc_loadWeakRetained(&self->_session);
    v32 = objc_msgSend_bitmapRenderingQualityInfo(v29, v30, v31);
    objc_msgSend_addBitmapsToRenderingQualityInfo_inContext_(v28, v33, v32, 0);
  }

  v67 = objc_msgSend_set(MEMORY[0x277CBEB58], v26, v27);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v36 = objc_msgSend_allInfos(self, v34, v35);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v68, v72, 16);
  if (v38)
  {
    v39 = v38;
    v40 = *v69;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v69 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v68 + 1) + 8 * i);
        v43 = objc_loadWeakRetained(&self->_session);
        v46 = objc_msgSend_canvas(self, v44, v45);
        v48 = objc_msgSend_repForInfo_onCanvas_(v43, v47, v42, v46);

        if (v48)
        {
          v49 = objc_loadWeakRetained(&self->_session);
          isExitingShow = objc_msgSend_isExitingShow(v49, v50, v51);

          if ((isExitingShow & 1) == 0)
          {
            objc_opt_class();
            v54 = TSUDynamicCast();
            if (v54)
            {
              v55 = objc_msgSend_animatedBuildForInfo_atEvent_(self->_model, v53, v54, self->_currentEventIndex);
              v57 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v56, v55);
            }

            else
            {
              v57 = 0;
            }

            objc_msgSend_p_addInfoToLayerTree_rep_renderer_builtInfos_(self, v53, v42, v48, v57, v67);
            v60 = objc_msgSend_textureStageIndex(v57, v58, v59);
            objc_msgSend_updateHitTestingForTextureStage_isAtEndOfBuild_(v48, v61, v60, 0);
          }
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v62, &v68, v72, 16);
    }

    while (v39);
  }

  objc_autoreleasePoolPop(context);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v63, v64);
}

- (void)renderIntoContext:(CGContext *)context eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  v73 = *MEMORY[0x277D85DE8];
  if (!context)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimatedSlideView renderIntoContext:eventIndex:ignoreBuildVisibility:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 967, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    context = 0;
  }

  contextCopy = context;
  v63 = TSDCGContextGetPdfTagger();
  v66 = objc_msgSend_canvas(self, v13, v14);
  v59 = TSDCGContextGetBitmapQualityInfo();
  v16 = v59;
  if (v59)
  {
    objc_msgSend_addBitmapsToRenderingQualityInfo_inContext_(v66, v15, v59, contextCopy);
  }

  objc_msgSend_begin(MEMORY[0x277CD9FF0], v15, v16);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v17, 1);
  v18 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v19, v20);
  objc_msgSend_activateBackground_(v18, v22, isMainThread ^ 1u);
  context = objc_autoreleasePoolPush();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = objc_msgSend_allInfos(self, v23, v24);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v68, v72, 16);
  if (v26)
  {
    v65 = *v69;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v69 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v68 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_session);
        v31 = objc_msgSend_repForInfo_onCanvas_(WeakRetained, v30, v28, v66);

        if (v31)
        {
          v32 = objc_loadWeakRetained(&self->_session);
          isExitingShow = objc_msgSend_isExitingShow(v32, v33, v34);

          if ((isExitingShow & 1) == 0)
          {
            v37 = objc_msgSend_p_initializeTextureSetForRep_info_eventIndex_ignoreBuildVisibility_isRenderingToContext_(self, v36, v31, v28, index, visibilityCopy, 1);
            v67 = 0;
            objc_opt_class();
            v39 = TSUDynamicCast();
            if (v39)
            {
              v40 = objc_msgSend_animatedBuildForInfo_aroundEvent_isAtEndOfBuild_(self->_model, v38, v39, index, &v67);
              v43 = v40;
              if (v40 && !visibilityCopy)
              {
                v44 = objc_msgSend_eventIndex(v40, v41, v42);
                indexCopy = v44 + v67;
LABEL_18:
                v46 = v31;
                objc_sync_enter(v46);
                objc_msgSend_beginObject_(v63, v47, v46);
                v50 = objc_msgSend_canvas(self, v48, v49);
                isCanvasDrawingIntoPDF = objc_msgSend_isCanvasDrawingIntoPDF_(self, v51, v50);
                objc_msgSend_renderIntoContext_eventIndex_requiresTransparentBackground_(v37, v53, contextCopy, indexCopy, isCanvasDrawingIntoPDF ^ 1u);

                objc_msgSend_endObject_(v63, v54, v46);
                objc_sync_exit(v46);

                goto LABEL_19;
              }
            }

            else
            {
              v43 = 0;
            }

            indexCopy = index;
            goto LABEL_18;
          }
        }

LABEL_19:
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v68, v72, 16);
    }

    while (v26);
  }

  objc_autoreleasePoolPop(context);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v56, v57);
}

- (BOOL)playAutomaticEvents
{
  v3 = objc_msgSend_eventsAtIndex_(self->_model, a2, self->_currentEventIndex);
  if ((objc_msgSend_hasTransitionAtEventIndex_(self, v4, self->_currentEventIndex) & 1) != 0 || !objc_msgSend_count(v3, v5, v6))
  {
    v10 = 0;
  }

  else
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(v3, v5, 0);
    v10 = objc_msgSend_automatic(v7, v8, v9);
  }

  if (objc_msgSend_hasTransitionAtEventIndex_(self, v5, self->_currentEventIndex))
  {
    v13 = objc_msgSend_transition(self->_slide, v11, v12);
    v16 = v13;
    if (v13)
    {
      v10 |= objc_msgSend_hasAutomaticTrigger(v13, v14, v15);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  if (objc_msgSend_playMode(WeakRetained, v18, v19) == 1)
  {
  }

  else
  {
    triggerQueued = self->_triggerQueued;

    if (((triggerQueued | v10) & 1) == 0)
    {
      v22 = 0;
      goto LABEL_14;
    }
  }

  objc_msgSend_performSelector_withObject_afterDelay_(self, v20, sel_triggerNextEvent, 0, 0.0);
  v22 = 1;
LABEL_14:

  return v22;
}

- (void)triggerNextEventIgnoringDelay:(BOOL)delay
{
  delayCopy = delay;
  v5 = objc_msgSend_transitionRenderer(self->_model, a2, delay);
  if (self->_animationsStarted || self->_transitionHasFinishedCallbackPending)
  {
    self->_triggerQueued = 1;
    goto LABEL_4;
  }

  v44 = v5;
  if (!objc_msgSend_hasTransitionAtEventIndex_(self, v6, self->_currentEventIndex))
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v12 = objc_msgSend_nextSlideAfterCurrent(WeakRetained, v10, v11);

  if (v12)
  {
    goto LABEL_9;
  }

  v27 = objc_msgSend_plugin(v44, v7, v8);
  if (v27)
  {
    v30 = v27;
    v31 = objc_msgSend_plugin(v44, v28, v29);
    v32 = objc_opt_class();
    v35 = objc_msgSend_animationName(v32, v33, v34);
    if (objc_msgSend_isEqualToString_(v35, v36, *MEMORY[0x277D80160]))
    {
    }

    else
    {
      v37 = objc_loadWeakRetained(&self->_session);
      shouldAnimateTransitionOnLastSlide = objc_msgSend_shouldAnimateTransitionOnLastSlide(v37, v38, v39);

      if (shouldAnimateTransitionOnLastSlide)
      {
LABEL_9:
        self->_triggerQueued = 0;
        self->_shouldStopAnimations = 0;
        v13 = objc_msgSend_eventIndexesToAnimate(self, v7, v8);
        v16 = v13;
        if (v13 && (v17 = self->_currentEventIndex, v17 > objc_msgSend_lastIndex(v13, v14, v15)))
        {
          v18 = objc_loadWeakRetained(&self->_session);
          v21 = objc_msgSend_playMode(v18, v19, v20);

          if (v21)
          {
            v22 = objc_loadWeakRetained(&self->_session);
            objc_msgSend_executeEndShowHandlerAfterDelay_(v22, v23, v24, 0.0);
          }
        }

        else
        {
          currentEventIndex = self->_currentEventIndex;
          if (currentEventIndex < objc_msgSend_buildEventCount(self->_model, v14, v15) + 1)
          {
            objc_msgSend_p_animateCurrentEventIgnoringDelays_(self, v26, delayCopy);
          }
        }

        goto LABEL_16;
      }
    }
  }

  v41 = objc_loadWeakRetained(&self->_session);
  objc_msgSend_executeEndShowHandlerAfterDelay_(v41, v42, v43, self->_transitionStartTime);

LABEL_16:
  v5 = v44;
LABEL_4:
}

- (void)p_animateCurrentEventIgnoringDelays:(BOOL)delays
{
  delaysCopy = delays;
  v100 = *MEMORY[0x277D85DE8];
  objc_msgSend_p_minimumDelay(self, a2, delays);
  v6 = v5;
  if (objc_msgSend_hasTransitionAtEventIndex_(self, v7, self->_currentEventIndex))
  {
    if (!self->_isSlideBuildable || self->_currentEventIndex)
    {
      v82 = objc_msgSend_transitionRenderer(self->_model, v8, v9);
      objc_msgSend_registerForTransitionEndCallback_target_(v82, v10, sel_transitionHasFinishedAnimating_, self);
      ++self->_animationsStarted;
      self->_isInDelayBeforeActiveTransition = 1;
      objc_msgSend_setHasEventStarted_(self, v11, 1);
      objc_msgSend_p_notifyEventStart(self, v12, v13);
      v16 = 0.0;
      if (!delaysCopy)
      {
        v16 = fmax(self->_transitionStartTime, v6);
      }

      if (objc_msgSend_isResponsivenessLoggingEnabled(KNAnimationUtils, v14, v15))
      {
        objc_msgSend_duration(v82, v17, v18);
        v20 = v19;
        v25 = objc_msgSend_plugin(v82, v21, v22);
        if (v25)
        {
          v26 = objc_msgSend_plugin(v82, v23, v24);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (v16 == 0.0)
          {
            v28 = 0.001;
          }

          else
          {
            v28 = v16;
          }

          if ((isKindOfClass & 1) == 0)
          {
            v28 = v16 + v20;
          }
        }

        else if (v16 == 0.0)
        {
          v28 = 0.001;
        }

        else
        {
          v28 = v16;
        }

        WeakRetained = objc_loadWeakRetained(&self->_session);
        v66 = objc_msgSend_animationStringArray(WeakRetained, v64, v65);
        v69 = objc_msgSend_pluginClass(v82, v67, v68);
        v70 = NSStringFromClass(v69);
        objc_msgSend_addObject_(v66, v71, v70);

        v72 = objc_loadWeakRetained(&self->_session);
        v75 = objc_msgSend_animationDurationArray(v72, v73, v74);
        v78 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v76, v77, v28);
        objc_msgSend_addObject_(v75, v79, v78);
      }

      objc_msgSend_p_performAnimationWithTarget_selector_object_delay_performAsynchronously_(self, v17, self, sel_p_animateTransition_, v82, 0, v16);
      objc_msgSend_p_setupTransitionStartTime(self, v80, v81);

      return;
    }
  }

  else if (!self->_isSlideBuildable)
  {
    return;
  }

  v29 = 0.0;
  if (delaysCopy)
  {
    objc_msgSend_initialDelayForEventIndex_(self->_model, v8, self->_currentEventIndex);
    v29 = -v30;
  }

  if (objc_msgSend_isResponsivenessLoggingEnabled(KNAnimationUtils, v8, v9))
  {
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = sub_275DB6694;
    v93 = sub_275DB66A4;
    v94 = &stru_2884D8E20;
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x2020000000;
    v88[3] = 0;
    model = self->_model;
    currentEventIndex = self->_currentEventIndex;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_275DB66AC;
    v87[3] = &unk_27A698AC0;
    v87[4] = &v95;
    v87[5] = v88;
    v87[6] = &v89;
    objc_msgSend_enumerateAnimatedBuildsAndTimeRangesAtIndex_usingBlock_(model, v31, currentEventIndex, v87);
    v34 = objc_loadWeakRetained(&self->_session);
    v37 = objc_msgSend_animationStringArray(v34, v35, v36);
    objc_msgSend_addObject_(v37, v38, v90[5]);

    v39 = objc_loadWeakRetained(&self->_session);
    v42 = objc_msgSend_animationDurationArray(v39, v40, v41);
    v45 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v43, v44, v96[3]);
    objc_msgSend_addObject_(v42, v46, v45);

    _Block_object_dispose(v88, 8);
    _Block_object_dispose(&v89, 8);

    _Block_object_dispose(&v95, 8);
  }

  objc_msgSend_eventsAtIndex_(self->_model, v31, self->_currentEventIndex);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v47 = v84 = 0u;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v83, v99, 16);
  if (v51)
  {
    v52 = *v84;
LABEL_20:
    v53 = 0;
    while (1)
    {
      if (*v84 != v52)
      {
        objc_enumerationMutation(v47);
      }

      v54 = *(*(&v83 + 1) + 8 * v53);
      if (objc_msgSend_isChildBuild(v54, v49, v50) & 1) != 0 || (objc_msgSend_animateAtEndOfPreviousBuild(v54, v55, v56))
      {
        break;
      }

      objc_msgSend_startTime(v54, v57, v58);
      v61 = v29 + v60;
      v62 = fmax(v61, v6);
      if (!delaysCopy)
      {
        v61 = v62;
      }

      objc_msgSend_p_animateBuild_afterDelay_(self, v59, v54, v61);
      if (v51 == ++v53)
      {
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v83, v99, 16);
        if (v51)
        {
          goto LABEL_20;
        }

        break;
      }
    }
  }
}

- (void)setCurrentEventIndex:(unint64_t)index
{
  if (objc_msgSend_buildEventCount(self, a2, index) + 1 >= index)
  {
    self->_currentEventIndex = index;
  }
}

- (void)setEventIndexesToAnimate:(id)animate
{
  animateCopy = animate;
  if (!objc_msgSend_count(animateCopy, v4, v5))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNAnimatedSlideView setEventIndexesToAnimate:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1236, 0, "trying to animate an event range of length 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = animateCopy;
  if (self->_eventIndexesToAnimate != animateCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB58]);
    v17 = objc_msgSend_initWithIndexSet_(v15, v16, animateCopy);
    Index = objc_msgSend_firstIndex(v17, v18, v19);
    v23 = objc_msgSend_numberOfAddedEvents(self->_model, v21, v22);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v17, v24, Index, v23);
    v27 = objc_msgSend_firstIndex(v17, v25, v26);
    objc_msgSend_setCurrentEventIndex_(self, v28, v27);
    eventIndexesToAnimate = self->_eventIndexesToAnimate;
    self->_eventIndexesToAnimate = v17;

    v14 = animateCopy;
  }
}

- (void)reset
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x277D82BB8], a2, self);
  self->_triggerQueued = 0;
  self->_shouldStopAnimations = 0;
  self->_transitionHasFinishedCallbackPending = 0;
  objc_msgSend_stopAnimations(self, v3, v4);

  MEMORY[0x2821F9670](self, sel_resetAmbientBuildTextures, v5);
}

- (void)interruptAndReset
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_copy(self->_ambientBuildRenderers, a2, v2);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        objc_msgSend_interruptAndReset(v13, v8, v9, v15);
        objc_msgSend_p_removeAmbientBuildRenderer_(self, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
    }

    while (v10);
  }
}

- (void)p_stopAllAmbientBuildRenderers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_copy(self->_ambientBuildRenderers, a2, v2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_stopAnimations(*(*(&v12 + 1) + 8 * v11++), v7, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)stopAnimations
{
  v35 = *MEMORY[0x277D85DE8];
  self->_shouldStopAnimations = 1;
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_(MEMORY[0x277D82BB8], a2, self);
  WeakRetained = objc_loadWeakRetained(&self->_session);
  objc_msgSend_cancelEndShowHandler(WeakRetained, v4, v5);

  objc_msgSend_cancelAllCallbacks(self->_delayedCallbacks, v6, v7);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = objc_msgSend_animatedBuilds(self->_model, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v34, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v13, *(*(&v30 + 1) + 8 * v16));
        objc_msgSend_stopAnimations(v17, v18, v19);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v30, v34, 16);
    }

    while (v14);
  }

  objc_msgSend_p_stopAllAmbientBuildRenderers(self, v20, v21);
  v24 = objc_msgSend_transitionRenderer(self->_model, v22, v23);
  v27 = v24;
  if (v24)
  {
    objc_msgSend_stopAnimations(v24, v25, v26);
  }

  self->_isInDelayBeforeActiveBuild = 0;
  self->_isInDelayBeforeActiveTransition = 0;
  self->_animationsActive = 0;
  self->_animationsStarted = 0;
  objc_msgSend_clearActiveAnimatedBuilds(self, v25, v26);
  objc_msgSend_p_clearAmbientBuildRenderers(self, v28, v29);
}

- (void)pauseAnimations
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_pauseAllCallbacks(self->_delayedCallbacks, a2, v2);
  if ((objc_msgSend_hasTransitionAtEventIndex_(self, v4, self->_currentEventIndex) & 1) == 0)
  {
    if (!self->_isSlideBuildable)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (self->_isSlideBuildable && !self->_currentEventIndex)
  {
LABEL_6:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = objc_msgSend_eventsAtIndex_(self->_model, v5, self->_currentEventIndex);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v31, v36, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v12, *(*(&v31 + 1) + 8 * i));
          objc_msgSend_pauseAnimations(v16, v17, v18);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v31, v36, 16);
      }

      while (v13);
    }

    goto LABEL_13;
  }

  v7 = objc_msgSend_transitionRenderer(self->_model, v5, v6);
  objc_msgSend_pauseAnimations(v7, v8, v9);
LABEL_13:

LABEL_14:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_ambientBuildRenderers;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v35, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v28;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_pauseAnimations(*(*(&v27 + 1) + 8 * j), v22, v23, v27);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v27, v35, 16);
    }

    while (v24);
  }
}

- (void)resumeAnimationsIfPaused
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_resumeAllCallbacks(self->_delayedCallbacks, a2, v2);
  if ((objc_msgSend_hasTransitionAtEventIndex_(self, v4, self->_currentEventIndex) & 1) == 0)
  {
    if (!self->_isSlideBuildable)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (self->_isSlideBuildable && !self->_currentEventIndex)
  {
LABEL_6:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = objc_msgSend_eventsAtIndex_(self->_model, v5, self->_currentEventIndex);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v31, v36, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v12, *(*(&v31 + 1) + 8 * i));
          objc_msgSend_resumeAnimationsIfPaused(v16, v17, v18);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v31, v36, 16);
      }

      while (v13);
    }

    goto LABEL_13;
  }

  v7 = objc_msgSend_transitionRenderer(self->_model, v5, v6);
  objc_msgSend_resumeAnimationsIfPaused(v7, v8, v9);
LABEL_13:

LABEL_14:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_ambientBuildRenderers;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v35, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v28;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_resumeAnimationsIfPaused(*(*(&v27 + 1) + 8 * j), v22, v23, v27);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v27, v35, 16);
    }

    while (v24);
  }
}

- (void)p_setupTransitionStartTime
{
  self->_transitionStartTime = 0.0;
  v4 = objc_msgSend_transition(self->_slide, a2, v2);
  if (v4 && self->_playsAutomaticTransitions)
  {
    v18 = v4;
    if (objc_msgSend_hasAutomaticTrigger(v4, v5, v6))
    {
      objc_msgSend_delay(v18, v7, v8);
      self->_transitionStartTime = v9;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_session);
      v13 = objc_msgSend_playMode(WeakRetained, v11, v12);

      v4 = v18;
      if (v13 != 1)
      {
        goto LABEL_8;
      }

      v14 = objc_loadWeakRetained(&self->_session);
      objc_msgSend_autoplayTransitionDelay(v14, v15, v16);
      self->_transitionStartTime = v17;
    }

    v4 = v18;
  }

LABEL_8:
}

- (void)p_animateTransition:(id)transition
{
  v49 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  objc_msgSend_setSignpostId_(transitionCopy, v5, -1);
  v6 = os_signpost_id_make_with_pointer(self->_signpostLog, transitionCopy);
  objc_msgSend_setSignpostId_(transitionCopy, v7, v6);
  v8 = self->_signpostLog;
  v11 = objc_msgSend_signpostId(transitionCopy, v9, v10);
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v8))
    {
      v15 = objc_msgSend_pluginClass(transitionCopy, v13, v14);
      v18 = objc_msgSend_animationName(v15, v16, v17);
      v47 = 138543362;
      v48 = v18;
      _os_signpost_emit_with_name_impl(&dword_275D41000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Animation", "Transitition-%{public}@", &v47, 0xCu);
    }
  }

  objc_msgSend_begin(MEMORY[0x277CD9FF0], v19, v20);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v21, 1);
  v22 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v23, v24);
  objc_msgSend_activateBackground_(v22, v26, isMainThread ^ 1u);
  v27 = objc_autoreleasePoolPush();
  objc_msgSend_p_stopAllAmbientBuildRenderers(self, v28, v29);
  objc_autoreleasePoolPop(v27);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v30, v31);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v32, v33);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v34, 1);
  v35 = MEMORY[0x277CD9FF0];
  v38 = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v36, v37);
  objc_msgSend_activateBackground_(v35, v39, v38 ^ 1u);
  v40 = objc_autoreleasePoolPush();
  ++self->_animationsActive;
  self->_isInDelayBeforeActiveTransition = 0;
  objc_msgSend_p_evictCacheAmbientBuildTexturesForTransition_(self, v41, transitionCopy);
  objc_msgSend_p_notifyEventAnimationActiveWithObject_(self, v42, transitionCopy);
  objc_msgSend_animate(transitionCopy, v43, v44);
  objc_autoreleasePoolPop(v40);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v45, v46);
}

- (void)p_animateBuild:(id)build isAmbientBuild:(BOOL)ambientBuild
{
  ambientBuildCopy = ambientBuild;
  buildCopy = build;
  v7 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v6, buildCopy);
  v10 = objc_msgSend_eventIndexesToAnimate(self, v8, v9);
  v12 = v10;
  if (v10 && !objc_msgSend_containsIndex_(v10, v11, self->_currentEventIndex))
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v19 = objc_msgSend_info(v7, v17, v18);
    v22 = objc_msgSend_canvas(self, v20, v21);
    v24 = objc_msgSend_repForInfo_onCanvas_(WeakRetained, v23, v19, v22);

    if (v24)
    {
      model = self->_model;
      v28 = objc_msgSend_info(v7, v25, v26);
      v30 = objc_msgSend_animatedBuildForInfo_atEvent_(model, v29, v28, self->_currentEventIndex);

      v32 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v31, v30);
      v35 = v32;
      if (v30)
      {
        objc_msgSend_textureSet(v32, v33, v34);
      }

      else
      {
        objc_msgSend_p_textureSetForRep_shouldRender_(self, v33, v24, 0);
      }
      v36 = ;
      v39 = v36;
      if (v36)
      {
        v40 = objc_msgSend_layer(v36, v37, v38);
        v43 = objc_msgSend_buildType(buildCopy, v41, v42);
        objc_msgSend_begin(MEMORY[0x277CD9FF0], v44, v45);
        objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v46, 1);
        objc_msgSend_setHidden_(v40, v47, v43 == 2);
        objc_msgSend_commit(MEMORY[0x277CD9FF0], v48, v49);
      }
    }

    objc_msgSend_buildHasFinishedAnimating_(self, v25, v7);
  }

  else
  {
    v13 = &selRef_p_ambientBuildEnded_;
    if (!ambientBuildCopy)
    {
      v13 = &selRef_buildHasFinishedAnimating_;
    }

    objc_msgSend_registerForBuildEndCallback_target_(v7, v11, *v13, self);
    objc_msgSend_animate(v7, v14, v15);
  }
}

- (BOOL)p_shouldSkipActionBuild:(id)build onDrawable:(id)drawable
{
  v39 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  drawableCopy = drawable;
  if (objc_msgSend_isActionBuild(buildCopy, v8, v9))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = self->_ambientBuildRenderers;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v34, v38, 16);
    if (!v12)
    {
      v16 = 0;
      goto LABEL_20;
    }

    v15 = v12;
    v16 = 0;
    v17 = *v35;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v22 = objc_msgSend_info(v19, v13, v14, v34);
        if (v22 == drawableCopy)
        {
          hasAmbientBuildStarted = objc_msgSend_hasAmbientBuildStarted(v19, v20, v21);

          if (hasAmbientBuildStarted)
          {
            continue;
          }

          buildsToStartAfterAmbientBuildStartsMap = self->_buildsToStartAfterAmbientBuildStartsMap;
          if (!buildsToStartAfterAmbientBuildStartsMap)
          {
            v25 = objc_alloc(MEMORY[0x277CCAB00]);
            v27 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v25, v26, 5, 0, 1);
            v28 = self->_buildsToStartAfterAmbientBuildStartsMap;
            self->_buildsToStartAfterAmbientBuildStartsMap = v27;

            buildsToStartAfterAmbientBuildStartsMap = self->_buildsToStartAfterAmbientBuildStartsMap;
          }

          v22 = objc_msgSend_objectForKey_(buildsToStartAfterAmbientBuildStartsMap, v13, drawableCopy);
          if (!v22)
          {
            v30 = objc_alloc(MEMORY[0x277CBEB18]);
            v22 = objc_msgSend_initWithCapacity_(v30, v31, 1);
            objc_msgSend_setObject_forKey_(self->_buildsToStartAfterAmbientBuildStartsMap, v32, v22, drawableCopy);
          }

          objc_msgSend_addObject_(v22, v29, buildCopy);
          v16 = 1;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v34, v38, 16);
      if (!v15)
      {
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  v16 = 0;
LABEL_21:

  return v16 & 1;
}

- (void)p_performAnimationWithTarget:(id)target selector:(SEL)selector object:(id)object delay:(double)delay performAsynchronously:(BOOL)asynchronously
{
  asynchronouslyCopy = asynchronously;
  targetCopy = target;
  objectCopy = object;
  if (delay == 0.0)
  {
    if (asynchronouslyCopy)
    {
      objc_msgSend_performSelector_withObject_afterDelay_(self, v12, selector, objectCopy, delay);
    }

    else
    {
      objc_msgSend_performSelector_withObject_(self, v12, selector, objectCopy);
    }
  }

  else
  {
    v14 = objc_msgSend_performSelector_onTarget_withObject_afterDelay_(self->_delayedCallbacks, v12, selector, targetCopy, objectCopy, delay);
  }
}

- (void)p_animateBuild:(id)build afterDelay:(double)delay
{
  buildCopy = build;
  animationsStarted = self->_animationsStarted;
  self->_animationsStarted = animationsStarted + 1;
  v15 = buildCopy;
  if (!animationsStarted)
  {
    self->_isInDelayBeforeActiveBuild = 1;
    objc_msgSend_setHasEventStarted_(self, buildCopy, 1);
    objc_msgSend_p_notifyEventStart(self, v8, v9);
    buildCopy = v15;
  }

  v10 = objc_msgSend_rendererForAnimatedBuild_(self->_model, buildCopy, buildCopy);
  objc_opt_class();
  v14 = &unk_28851BA00;
  v12 = TSUClassAndProtocolCast();
  if (v12)
  {
    objc_msgSend_p_addAmbientBuildRenderer_(self, v11, v12, &unk_28851BA00);
    objc_msgSend_registerForAmbientBuildStartCallback_target_(v12, v13, sel_p_ambientBuildStarted_, self);
  }

  objc_msgSend_p_performAnimationWithTarget_selector_object_delay_performAsynchronously_(self, v11, self, sel_p_animateBuild_, v15, 1, delay, v14);
}

- (void)p_animateBuild:(id)build
{
  v68 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  ++self->_animationsActive;
  v7 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v5, buildCopy);
  if (self->_isInDelayBeforeActiveBuild)
  {
    self->_isInDelayBeforeActiveBuild = 0;
    objc_msgSend_p_notifyEventAnimationActiveWithObject_(self, v6, v7);
  }

  objc_msgSend_addActiveAnimatedBuild_(self, v6, buildCopy);
  v9 = objc_msgSend_conformsToProtocol_(v7, v8, &unk_28851BA00);
  if (!objc_msgSend_isActionBuild(buildCopy, v10, v11))
  {
    if (!objc_msgSend_isBuildOut(buildCopy, v12, v13))
    {
      v53 = objc_msgSend_info(v7, v37, v38);
      shouldSkipActionBuild_onDrawable = objc_msgSend_p_shouldSkipActionBuild_onDrawable_(self, v54, buildCopy, v53);

      if (shouldSkipActionBuild_onDrawable)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v57 = v9;
    v39 = objc_msgSend_copy(self->_ambientBuildRenderers, v37, v38);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v14 = v39;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v40, &v58, v66, 16);
    if (v41)
    {
      v44 = v41;
      v45 = *v59;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v59 != v45)
          {
            objc_enumerationMutation(v14);
          }

          v47 = *(*(&v58 + 1) + 8 * i);
          v48 = objc_msgSend_info(v7, v42, v43);
          v51 = objc_msgSend_info(v47, v49, v50);

          if (v48 == v51)
          {
            objc_msgSend_stopAnimations(v47, v42, v43);
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v42, &v58, v66, 16);
      }

      while (v44);
    }

    goto LABEL_33;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v14 = objc_msgSend_copy(self->_ambientBuildRenderers, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v62, v67, 16);
  if (v16)
  {
    v19 = v16;
    v57 = v9;
    selfCopy = self;
    v20 = *v63;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v63 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v62 + 1) + 8 * j);
        v23 = objc_msgSend_info(v7, v17, v18);
        if (objc_msgSend_shouldActionBuildsStopAnimations(v22, v24, v25))
        {
          v28 = v23 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = objc_msgSend_info(v22, v26, v27);

          if (v29 == v23)
          {
            objc_msgSend_stopAnimations(v22, v30, v31);
          }
        }

        objc_opt_class();
        v32 = TSUDynamicCast();
        if (v32)
        {
          objc_opt_class();
          v33 = TSUDynamicCast();
          v36 = v33;
          if (v33)
          {
            objc_msgSend_info(v33, v34, v35);
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v62, v67, 16);
    }

    while (v19);
    self = selfCopy;
LABEL_33:
    v9 = v57;
  }

LABEL_35:
  objc_msgSend_p_animateBuild_isAmbientBuild_(self, v52, buildCopy, v9);
LABEL_36:
}

- (CGRect)boundingRectOnCanvasForInfo:(id)info
{
  v105 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v103 = 0;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v7 = objc_msgSend_animatedBuildForInfo_aroundEvent_isAtEndOfBuild_(self->_model, v5, v6, self->_currentEventIndex, &v103);
    if (v7)
    {
      v9 = v7;
      v10 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v8, v7);
      v13 = objc_msgSend_textureSet(v10, v11, v12);
      v16 = objc_msgSend_copy(v13, v14, v15);

      if (v103)
      {
        goto LABEL_4;
      }

      v44 = objc_msgSend_previousAttributes(v9, v17, v18);

      if (v44)
      {
        v20 = objc_msgSend_previousAttributes(v9, v17, v18);
        goto LABEL_11;
      }

      if (v103)
      {
LABEL_4:
        v19 = objc_msgSend_finalAttributes(v9, v17, v18);

        if (v19)
        {
          v20 = objc_msgSend_finalAttributes(v9, v17, v18);
LABEL_11:
          v45 = v20;
          WeakRetained = objc_loadWeakRetained(&self->_session);
          v49 = objc_msgSend_animationContext(WeakRetained, v47, v48);
          objc_msgSend_viewScale(v49, v50, v51);
          objc_msgSend_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys_eventIndex_(v16, v52, v45, 0, 0, 0, 0, 0, self->_currentEventIndex);

LABEL_14:
          goto LABEL_15;
        }
      }

      objc_msgSend_setLayerGeometry(v16, v17, v18);
      goto LABEL_14;
    }
  }

  v21 = objc_loadWeakRetained(&self->_session);
  v24 = objc_msgSend_canvas(self, v22, v23);
  v9 = objc_msgSend_repForInfo_onCanvas_(v21, v25, infoCopy, v24);

  if (!v9)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[KNAnimatedSlideView boundingRectOnCanvasForInfo:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1604, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v34 = MEMORY[0x277D803D8];
  v35 = objc_loadWeakRetained(&self->_session);
  v37 = objc_msgSend_descriptionWithSession_(v34, v36, v35);
  v39 = objc_msgSend_textureSetForRep_description_shouldRender_(self, v38, v9, v37, 0);
  v16 = objc_msgSend_copy(v39, v40, v41);

  objc_msgSend_setLayerGeometry(v16, v42, v43);
LABEL_15:

  if (!v16)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[KNAnimatedSlideView boundingRectOnCanvasForInfo:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v59, v56, v58, 1608, 0, "invalid nil value for '%{public}s'", "textureSet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
  }

  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v66 = objc_msgSend_allTextures(v16, v53, v54);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v99, v104, 16);
  if (v68)
  {
    v71 = v68;
    v72 = *v100;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v100 != v72)
        {
          objc_enumerationMutation(v66);
        }

        v74 = objc_msgSend_layer(*(*(&v99 + 1) + 8 * i), v69, v70);
        objc_msgSend_frame(v74, v75, v76);
        v111.origin.x = v77;
        v111.origin.y = v78;
        v111.size.width = v79;
        v111.size.height = v80;
        v106.origin.x = x;
        v106.origin.y = y;
        v106.size.width = width;
        v106.size.height = height;
        v107 = CGRectUnion(v106, v111);
        x = v107.origin.x;
        y = v107.origin.y;
        width = v107.size.width;
        height = v107.size.height;
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v99, v104, 16);
    }

    while (v71);
  }

  objc_msgSend_frame(v16, v81, v82);
  v84 = v83;
  objc_msgSend_frame(v16, v85, v86);
  v88 = v87;
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  v109 = CGRectOffset(v108, v84, v88);
  v89 = v109.origin.x;
  v90 = v109.origin.y;
  v91 = v109.size.width;
  v92 = v109.size.height;
  objc_msgSend_teardown(v16, v93, v94);

  v95 = v89;
  v96 = v90;
  v97 = v91;
  v98 = v92;
  result.size.height = v98;
  result.size.width = v97;
  result.origin.y = v96;
  result.origin.x = v95;
  return result;
}

- (NSSet)movieRenderers
{
  v2 = objc_msgSend_objectsPassingTest_(self->_ambientBuildRenderers, a2, &unk_2884D5090);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v5 = v4;

  return v5;
}

- (void)p_addAmbientBuildRenderer:(id)renderer
{
  rendererCopy = renderer;
  ambientBuildRenderers = self->_ambientBuildRenderers;
  v19 = rendererCopy;
  if (ambientBuildRenderers)
  {
    v6 = objc_msgSend_containsObject_(ambientBuildRenderers, rendererCopy, rendererCopy);
    v7 = v19;
    if (v6)
    {
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v10 = self->_ambientBuildRenderers;
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = 4;
    }

LABEL_12:
    v12 = 1;
    goto LABEL_13;
  }

  v9 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v8, v19);
  v10 = self->_ambientBuildRenderers;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  objc_msgSend_willChangeValueForKey_withSetMutation_usingObjects_(self, v8, @"movieRenderers", v11, v9);
  v12 = 0;
  v10 = self->_ambientBuildRenderers;
LABEL_13:
  v13 = v19;
  if (!v10)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB58]);
    v16 = objc_msgSend_initWithCapacity_(v14, v15, 1);
    v17 = self->_ambientBuildRenderers;
    self->_ambientBuildRenderers = v16;

    v13 = v19;
    v10 = self->_ambientBuildRenderers;
  }

  objc_msgSend_addObject_(v10, v8, v13);
  if ((v12 & 1) == 0)
  {
    objc_msgSend_didChangeValueForKey_withSetMutation_usingObjects_(self, v18, @"movieRenderers", v11, v9);
  }

  v7 = v19;
LABEL_18:
}

- (void)p_removeAmbientBuildRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_msgSend_containsObject_(self->_ambientBuildRenderers, v4, rendererCopy))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v5, rendererCopy), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      objc_msgSend_willChangeValueForKey_withSetMutation_usingObjects_(self, v5, @"movieRenderers", 2, v6);
      objc_msgSend_removeObject_(self->_ambientBuildRenderers, v8, rendererCopy);
      objc_msgSend_didChangeValueForKey_withSetMutation_usingObjects_(self, v9, @"movieRenderers", 2, v7);
    }

    else
    {
      objc_msgSend_removeObject_(self->_ambientBuildRenderers, v5, rendererCopy);
    }
  }
}

- (void)p_clearAmbientBuildRenderers
{
  v8 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, v2);
  objc_msgSend_willChangeValueForKey_withSetMutation_usingObjects_(self, v4, @"movieRenderers", 4, v8);
  objc_msgSend_removeAllObjects(self->_ambientBuildRenderers, v5, v6);
  objc_msgSend_didChangeValueForKey_withSetMutation_usingObjects_(self, v7, @"movieRenderers", 4, v8);
}

- (void)resetAmbientBuildTextures
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_ambientBuildRenderers(self->_model, a2, v2, 0);
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

        objc_msgSend_interruptAndReset(*(*(&v11 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v8);
  }
}

- (void)p_evictCacheAmbientBuildTexturesForTransition:(id)transition
{
  v53 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v7 = objc_msgSend_ambientBuildRenderers(self->_model, v5, v6);
  if (!objc_msgSend_count(v7, v8, v9))
  {
LABEL_15:

    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  shouldIgnoreBuildVisibility = objc_msgSend_shouldIgnoreBuildVisibility(WeakRetained, v11, v12);

  if ((shouldIgnoreBuildVisibility & 1) == 0)
  {
    objc_msgSend_teardown(transitionCopy, v14, v15);
    eventToSlideTextureMap = self->_eventToSlideTextureMap;
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, self->_currentEventIndex);
    v7 = objc_msgSend_objectForKey_(eventToSlideTextureMap, v19, v18);

    if (v7)
    {
      objc_msgSend_teardown(v7, v20, v21);
    }

    v22 = self->_eventToSlideTextureMap;
    v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, self->_currentEventIndex);
    objc_msgSend_removeObjectForKey_(v22, v24, v23);

    objc_msgSend_lock(self->_textureDescriptionAndSetForRepMapLock, v25, v26);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = objc_msgSend_copy(self->_textureDescriptionAndSetForRepMap, v27, v28, 0);
    v32 = objc_msgSend_keyEnumerator(v29, v30, v31);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v48, v52, 16);
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        v37 = 0;
        do
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v48 + 1) + 8 * v37);
          objc_opt_class();
          v40 = TSUDynamicCast();
          if (v40)
          {
            objc_msgSend_removeObjectForKey_(self->_textureDescriptionAndSetForRepMap, v39, v38);
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v41, &v48, v52, 16);
      }

      while (v35);
    }

    objc_msgSend_unlock(self->_textureDescriptionAndSetForRepMapLock, v42, v43);
    objc_msgSend_generateTextures(transitionCopy, v44, v45);
    objc_msgSend_renderTexturesSynchronously(transitionCopy, v46, v47);
    goto LABEL_15;
  }

LABEL_16:
}

- (void)setTexture:(id)texture forRep:(id)rep forDescription:(id)description
{
  textureCopy = texture;
  repCopy = rep;
  descriptionCopy = description;
  objc_msgSend_lock(self->_textureDescriptionAndSetForRepMapLock, v10, v11);
  v15 = objc_msgSend_copy(descriptionCopy, v12, v13);
  textureDescriptionAndSetForRepMap = self->_textureDescriptionAndSetForRepMap;
  if (!textureDescriptionAndSetForRepMap)
  {
    v17 = objc_alloc(MEMORY[0x277CCAB00]);
    v19 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v17, v18, 5, 0, 1);
    v20 = self->_textureDescriptionAndSetForRepMap;
    self->_textureDescriptionAndSetForRepMap = v19;

    textureDescriptionAndSetForRepMap = self->_textureDescriptionAndSetForRepMap;
  }

  v23 = objc_msgSend_objectForKey_(textureDescriptionAndSetForRepMap, v14, repCopy);
  v24 = textureCopy;
  if (textureCopy && !v23)
  {
    v23 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v21, v22);
    objc_msgSend_setObject_forKey_(self->_textureDescriptionAndSetForRepMap, v25, v23, repCopy);
    v24 = textureCopy;
  }

  if ((objc_msgSend_containsFinalTextures(v24, v21, v22) & 1) == 0 && (objc_msgSend_containsContentBuildTextures(textureCopy, v26, v27) & 1) == 0 && objc_msgSend_stage(descriptionCopy, v26, v28))
  {
    objc_msgSend_setStage_(v15, v26, 0);
  }

  v31 = objc_msgSend_objectForKey_(v23, v26, v15);
  if (v31 != textureCopy)
  {
    if (v31)
    {
      objc_msgSend_teardown(v31, v29, v30);
    }

    if (textureCopy)
    {
      objc_msgSend_setObject_forKey_(v23, textureCopy, textureCopy, v15);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(v23, 0, v15);
      if (!objc_msgSend_count(v23, v32, v33))
      {
        objc_msgSend_removeObjectForKey_(self->_textureDescriptionAndSetForRepMap, v34, repCopy);
      }
    }
  }

  objc_msgSend_unlock(self->_textureDescriptionAndSetForRepMapLock, v35, v36);
}

- (id)p_initializeTextureSetForRep:(id)rep info:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility isRenderingToContext:(BOOL)context
{
  contextCopy = context;
  visibilityCopy = visibility;
  v91 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  infoCopy = info;
  v15 = infoCopy;
  if (repCopy)
  {
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = infoCopy;
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[KNAnimatedSlideView p_initializeTextureSetForRep:info:eventIndex:ignoreBuildVisibility:isRenderingToContext:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 1768, 0, "invalid nil value for '%{public}s'", "rep");

    v15 = v34;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    if (v34)
    {
      goto LABEL_3;
    }
  }

  v42 = MEMORY[0x277D81150];
  v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[KNAnimatedSlideView p_initializeTextureSetForRep:info:eventIndex:ignoreBuildVisibility:isRenderingToContext:]");
  v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 1769, 0, "invalid nil value for '%{public}s'", "info");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
LABEL_3:
  v89 = 0;
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (v18)
  {
    v19 = objc_msgSend_animatedBuildForInfo_aroundEvent_isAtEndOfBuild_(self->_model, v16, v18, index, &v89);
    if (v19 && !visibilityCopy)
    {
      v20 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v16, v19);
      v21 = v89;
      v24 = objc_msgSend_model(self, v22, v23);
      v27 = objc_msgSend_buildEventCount(v24, v25, v26) == index;
      v30 = objc_msgSend_textureDescription(v20, v28, v29);
      v32 = objc_msgSend_initializeTextureSetForEndOfBuild_endOfSlide_description_isRenderingToContext_(v20, v31, v21, v27, v30, contextCopy);

      objc_msgSend_setLayerVisibility_isAtEndOfBuild_(v20, v33, v32, v89);
      goto LABEL_28;
    }
  }

  else
  {
    v19 = 0;
  }

  if (visibilityCopy)
  {
    v89 = 0;

    v19 = 0;
    index = 0;
  }

  v82 = v18;
  if (contextCopy)
  {
    v49 = 0;
  }

  else
  {
    v49 = objc_msgSend_isMetalSlide(self->_model, v16, v17) ^ 1;
  }

  v84 = repCopy;
  v32 = objc_msgSend_p_textureSetForRep_shouldRender_(self, v16, repCopy, v49);
  objc_msgSend_setLayerGeometryAtEventIndex_(v32, v50, index);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v51, v52);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v53, 1);
  v54 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v55, v56);
  objc_msgSend_activateBackground_(v54, v58, isMainThread ^ 1u);
  v20 = objc_msgSend_viewLayerAtEventIndex_(v32, v59, index);
  objc_msgSend_setHidden_(v20, v60, !visibilityCopy);
  v83 = v15;
  if (objc_msgSend_info_isVisibleDuringEvent_(self->_model, v61, v15, index))
  {
    objc_msgSend_setHidden_(v20, v62, 0);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v64 = objc_msgSend_visibleTexturesIncludingCaptions(v32, v62, v63);
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v85, v90, 16);
  if (v66)
  {
    v68 = v66;
    v69 = *v86;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v86 != v69)
        {
          objc_enumerationMutation(v64);
        }

        v71 = *(*(&v85 + 1) + 8 * i);
        v72 = objc_msgSend_viewLayerAtEventIndex_(v71, v67, index);
        isIncomingContent = objc_msgSend_isIncomingContent(v71, v73, v74);
        if (v19 && objc_msgSend_isContentBuild(v19, v75, v76))
        {
          isIncomingContent ^= v89;
        }

        objc_msgSend_setHidden_(v72, v75, isIncomingContent & 1);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v85, v90, 16);
    }

    while (v68);
  }

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v78, v79);
  v15 = v83;
  repCopy = v84;
  v18 = v82;
LABEL_28:

  objc_msgSend_setRep_(v32, v80, repCopy);

  return v32;
}

- (id)p_textureSetForRep:(id)rep shouldRender:(BOOL)render
{
  renderCopy = render;
  v6 = MEMORY[0x277D803D8];
  repCopy = rep;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v10 = objc_msgSend_descriptionWithSession_(v6, v9, WeakRetained);
  v12 = objc_msgSend_textureSetForRep_description_shouldRender_(self, v11, repCopy, v10, renderCopy);

  return v12;
}

- (id)textureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render
{
  renderCopy = render;
  repCopy = rep;
  descriptionCopy = description;
  v10 = repCopy;
  objc_sync_enter(v10);
  if (v10 && (WeakRetained = objc_loadWeakRetained(&self->_session), isExitingShow = objc_msgSend_isExitingShow(WeakRetained, v12, v13), WeakRetained, (isExitingShow & 1) == 0))
  {
    v18 = objc_msgSend_copy(descriptionCopy, v15, v16);
    objc_opt_class();
    v21 = objc_msgSend_info(v10, v19, v20);
    v22 = TSUDynamicCast();

    if (objc_msgSend_deliveryStyle(descriptionCopy, v23, v24) && (!v22 || (objc_msgSend_suppliesFinalTextures(v22, v25, v26) & 1) == 0) && objc_msgSend_stage(descriptionCopy, v25, v26))
    {
      objc_msgSend_setStage_(v18, v25, 0);
    }

    objc_msgSend_lock(self->_textureDescriptionAndSetForRepMapLock, v25, v26);
    v28 = objc_msgSend_objectForKey_(self->_textureDescriptionAndSetForRepMap, v27, v10);
    v30 = objc_msgSend_objectForKey_(v28, v29, v18);
    v17 = v30;
    if (v30 && (objc_msgSend_isRenderable(v30, v31, v32) & 1) == 0)
    {
      objc_msgSend_removeObjectForKey_(v28, v33, v18);

      v17 = 0;
    }

    objc_msgSend_unlock(self->_textureDescriptionAndSetForRepMapLock, v34, v35);
    if (!v17)
    {
      v17 = objc_msgSend_nonCachedTextureSetForRep_description_shouldRender_(self, v36, v10, v18, renderCopy);
      objc_msgSend_setTexture_forRep_forDescription_(self, v37, v17, v10, v18);
    }
  }

  else
  {
    v17 = 0;
  }

  objc_sync_exit(v10);

  return v17;
}

- (void)applyASVColorSpaceToTextureSet:(id)set
{
  setCopy = set;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v7 = objc_msgSend_animationContext(WeakRetained, v5, v6);
  v10 = objc_msgSend_colorSpace(v7, v8, v9);
  objc_msgSend_setColorSpace_(setCopy, v11, v10);

  if (objc_msgSend_objectType(setCopy, v12, v13) == 10)
  {
    v14 = TSUP3ColorSpace();
    objc_msgSend_setColorSpace_(setCopy, v15, v14);
    objc_msgSend_setShouldUseFloatingPointTextures_(setCopy, v16, 0);
  }
}

- (id)nonCachedTextureSetForRep:(id)rep description:(id)description shouldRender:(BOOL)render
{
  renderCopy = render;
  repCopy = rep;
  descriptionCopy = description;
  v10 = repCopy;
  objc_sync_enter(v10);
  if (!descriptionCopy)
  {
    v12 = MEMORY[0x277D803D8];
    WeakRetained = objc_loadWeakRetained(&self->_session);
    descriptionCopy = objc_msgSend_descriptionWithSession_(v12, v14, WeakRetained);
  }

  v15 = objc_msgSend_textureForDescription_(v10, v11, descriptionCopy);
  objc_msgSend_setRep_(v15, v16, v10);
  objc_msgSend_setTextureDescription_(v15, v17, descriptionCopy);
  objc_msgSend_applyASVColorSpaceToTextureSet_(self, v18, v15);
  v19 = objc_loadWeakRetained(&self->_session);
  shouldUseContentlessLayers = objc_msgSend_shouldUseContentlessLayers(v19, v20, v21);

  if ((shouldUseContentlessLayers & 1) == 0 && renderCopy)
  {
    v23 = objc_loadWeakRetained(&self->_session);
    v26 = objc_msgSend_bitmapRenderingQualityInfo(v23, v24, v25);

    if (v26)
    {
      v29 = objc_loadWeakRetained(&self->_session);
      v32 = objc_msgSend_bitmapRenderingQualityInfo(v29, v30, v31);
      objc_msgSend_setBitmapRenderingQualityInfo_(v15, v33, v32);
    }

    objc_msgSend_renderLayerContentsIfNeeded(v15, v27, v28);
  }

  objc_sync_exit(v10);

  return v15;
}

- (id)textureSetForInfo:(id)info eventIndex:(unint64_t)index ignoreBuildVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v12 = objc_msgSend_canvas(self, v10, v11);
  v14 = objc_msgSend_repForInfo_onCanvas_(WeakRetained, v13, infoCopy, v12);

  if (v14)
  {
    v16 = objc_msgSend_p_initializeTextureSetForRep_info_eventIndex_ignoreBuildVisibility_isRenderingToContext_(self, v15, v14, infoCopy, index, visibilityCopy, 0);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)newSlideTextureForEvent:(unint64_t)event
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_initWeak(&location, selfCopy);
  eventToSlideTextureMap = selfCopy->_eventToSlideTextureMap;
  v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, event);
  v9 = objc_msgSend_objectForKey_(eventToSlideTextureMap, v8, v7);

  if (v9)
  {
    if (objc_msgSend_isRenderable(v9, v10, v11))
    {
      goto LABEL_7;
    }

    v13 = selfCopy->_eventToSlideTextureMap;
    v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, event);
    objc_msgSend_removeObjectForKey_(v13, v15, v14);
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_session);
  shouldIgnoreBuildVisibility = objc_msgSend_shouldIgnoreBuildVisibility(WeakRetained, v17, v18);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275DB959C;
  aBlock[3] = &unk_27A698B30;
  aBlock[4] = selfCopy;
  objc_copyWeak(v49, &location);
  v49[1] = event;
  v50 = shouldIgnoreBuildVisibility;
  v20 = _Block_copy(aBlock);
  v21 = objc_alloc(MEMORY[0x277D803E8]);
  v22 = objc_loadWeakRetained(&selfCopy->_session);
  v25 = objc_msgSend_animationContext(v22, v23, v24);
  objc_msgSend_slideRect(v25, v26, v27);
  v9 = objc_msgSend_initWithSize_offset_renderBlock_(v21, v28, v20, v29, v30, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));

  v31 = objc_loadWeakRetained(&selfCopy->_session);
  v34 = objc_msgSend_animationContext(v31, v32, v33);
  v37 = objc_msgSend_colorSpace(v34, v35, v36);
  objc_msgSend_setColorSpace_(v9, v38, v37);

  v40 = selfCopy->_eventToSlideTextureMap;
  if (!v40)
  {
    v41 = objc_alloc(MEMORY[0x277CCAB00]);
    v43 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v41, v42, 0, 0, 1);
    v44 = selfCopy->_eventToSlideTextureMap;
    selfCopy->_eventToSlideTextureMap = v43;

    v40 = selfCopy->_eventToSlideTextureMap;
  }

  v45 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v39, event);
  objc_msgSend_setObject_forKey_(v40, v46, v9, v45);

  objc_destroyWeak(v49);
LABEL_7:
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)generateTextures
{
  v114 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isSerialized = 0;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v3, v4);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v5, 1);
  v6 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v7, v8);
  objc_msgSend_activateBackground_(v6, v10, isMainThread ^ 1u);
  context = objc_autoreleasePoolPush();
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (selfCopy->_isSlideBuildable)
  {
    v14 = objc_msgSend_set(MEMORY[0x277CBEB58], v11, v12);
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v17 = objc_msgSend_animatedBuilds(selfCopy->_model, v15, v16);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v106, v113, 16);
    if (v20)
    {
      v21 = *v107;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v107 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = objc_msgSend_rendererForAnimatedBuild_(selfCopy->_model, v19, *(*(&v106 + 1) + 8 * i));
          objc_msgSend_generateTextures(v23, v24, v25);
          v28 = objc_msgSend_info(v23, v26, v27);
          objc_msgSend_addObject_(v14, v29, v28);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v106, v113, 16);
      }

      while (v20);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v32 = objc_msgSend_ambientBuildRenderers(selfCopy->_model, v30, v31);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v102, v112, 16);
    if (v36)
    {
      v37 = *v103;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v103 != v37)
          {
            objc_enumerationMutation(v32);
          }

          v39 = *(*(&v102 + 1) + 8 * j);
          objc_msgSend_generateTextures(v39, v34, v35);
          v42 = objc_msgSend_info(v39, v40, v41);
          objc_msgSend_addObject_(v14, v43, v42);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v102, v112, 16);
      }

      while (v36);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v46 = objc_msgSend_allInfos(selfCopy, v44, v45);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v98, v111, 16);
    if (v49)
    {
      v50 = *v99;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v99 != v50)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&v98 + 1) + 8 * k);
          if ((objc_msgSend_containsObject_(v14, v48, v52) & 1) == 0)
          {
            WeakRetained = objc_loadWeakRetained(&selfCopy->_session);
            v56 = objc_msgSend_canvas(selfCopy, v54, v55);
            v58 = objc_msgSend_repForInfo_onCanvas_(WeakRetained, v57, v52, v56);

            if (v58)
            {
              v61 = objc_msgSend_p_textureSetForRep_shouldRender_(selfCopy, v59, v58, 0);
              if (v61)
              {
                objc_msgSend_addObject_(v13, v60, v61);
              }
            }
          }
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v98, v111, 16);
      }

      while (v49);
    }
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v14 = objc_msgSend_allInfos(selfCopy, v11, v12);
    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v62, &v94, v110, 16);
    if (v63)
    {
      v64 = *v95;
      do
      {
        for (m = 0; m != v63; ++m)
        {
          if (*v95 != v64)
          {
            objc_enumerationMutation(v14);
          }

          v66 = *(*(&v94 + 1) + 8 * m);
          v67 = objc_loadWeakRetained(&selfCopy->_session);
          v70 = objc_msgSend_canvas(selfCopy, v68, v69);
          v72 = objc_msgSend_repForInfo_onCanvas_(v67, v71, v66, v70);

          if (v72)
          {
            v75 = objc_msgSend_p_textureSetForRep_shouldRender_(selfCopy, v73, v72, 0);
            if (v75)
            {
              objc_msgSend_addObject_(v13, v74, v75);
            }
          }
        }

        v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v76, &v94, v110, 16);
      }

      while (v63);
    }
  }

  if (objc_msgSend_shouldPreCache(selfCopy, v77, v78))
  {
    v83 = objc_msgSend_nextASV(selfCopy, v79, v80);
    if (!v83 || (objc_msgSend_nextASV(selfCopy, v81, v82), v84 = objc_claimAutoreleasedReturnValue(), shouldPreCache = objc_msgSend_shouldPreCache(v84, v85, v86), v84, v83, shouldPreCache))
    {
      v88 = objc_msgSend_transitionRenderer(selfCopy->_model, v81, v82);
      objc_msgSend_generateTextures(v88, v89, v90);
    }
  }

  objc_autoreleasePoolPop(context);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v91, v92);
  objc_sync_exit(selfCopy);
}

- (void)renderTextures
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = objc_msgSend_isTexturePreCachingThread(WeakRetained, v4, v5);

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimatedSlideView renderTextures]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2051, 0, "Running on unexpected thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_begin(MEMORY[0x277CD9FF0], v7, v8);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v16, 1);
  v17 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v18, v19);
  objc_msgSend_activateBackground_(v17, v21, isMainThread ^ 1u);
  v22 = objc_autoreleasePoolPush();
  v25 = objc_msgSend_transitionRenderer(self->_model, v23, v24);
  objc_msgSend_renderTextures(v25, v26, v27);
  if (self->_isSlideBuildable)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = objc_msgSend_animatedBuilds(self->_model, v28, v29, 0);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v42, v46, 16);
    if (v32)
    {
      v34 = v32;
      v35 = *v43;
      do
      {
        v36 = 0;
        do
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = objc_msgSend_rendererForAnimatedBuild_(self->_model, v33, *(*(&v42 + 1) + 8 * v36));
          objc_msgSend_renderTextures(v37, v38, v39);

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v42, v46, 16);
      }

      while (v34);
    }
  }

  objc_autoreleasePoolPop(v22);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v40, v41);
}

- (void)waitUntilAsyncRenderingIsCompleteShouldCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  v114 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = objc_msgSend_isTexturePreCachingThread(WeakRetained, v6, v7);

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNAnimatedSlideView waitUntilAsyncRenderingIsCompleteShouldCancel:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 2117, 0, "Running on unexpected thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v82 = objc_msgSend_transitionRenderer(self->_model, v9, v10);
  objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(v82, v18, cancelCopy);
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v21 = objc_msgSend_objectEnumerator(self->_eventToSlideTextureMap, v19, v20);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v104, v113, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v105;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v105 != v26)
        {
          objc_enumerationMutation(v21);
        }

        objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(*(*(&v104 + 1) + 8 * i), v24, cancelCopy);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v104, v113, 16);
    }

    while (v25);
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_lock(self->_textureDescriptionAndSetForRepMapLock, v29, v30);
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  selfCopy = self;
  v33 = objc_msgSend_objectEnumerator(self->_textureDescriptionAndSetForRepMap, v31, v32);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v100, v112, 16);
  if (v35)
  {
    v38 = v35;
    v39 = *v101;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v101 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v100 + 1) + 8 * j);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v42 = objc_msgSend_objectEnumerator(v41, v36, v37);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v96, v111, 16);
        if (v44)
        {
          v46 = v44;
          v47 = *v97;
          do
          {
            for (k = 0; k != v46; ++k)
            {
              if (*v97 != v47)
              {
                objc_enumerationMutation(v42);
              }

              objc_msgSend_addObject_(v28, v45, *(*(&v96 + 1) + 8 * k));
            }

            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v96, v111, 16);
          }

          while (v46);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v100, v112, 16);
    }

    while (v38);
  }

  objc_msgSend_unlock(selfCopy->_textureDescriptionAndSetForRepMapLock, v49, v50);
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v51 = v28;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v92, v110, 16);
  if (v53)
  {
    v56 = v53;
    v57 = *v93;
    do
    {
      for (m = 0; m != v56; ++m)
      {
        if (*v93 != v57)
        {
          objc_enumerationMutation(v51);
        }

        v59 = *(*(&v92 + 1) + 8 * m);
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v60 = objc_msgSend_allTextures(v59, v54, v55);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v88, v109, 16);
        if (v62)
        {
          v65 = v62;
          v66 = *v89;
          do
          {
            for (n = 0; n != v65; ++n)
            {
              if (*v89 != v66)
              {
                objc_enumerationMutation(v60);
              }

              v68 = objc_msgSend_renderingOperation(*(*(&v88 + 1) + 8 * n), v63, v64);
              objc_msgSend_waitUntilFinished(v68, v69, v70);
            }

            v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v88, v109, 16);
          }

          while (v65);
        }
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v92, v110, 16);
    }

    while (v56);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v73 = objc_msgSend_animatedBuilds(selfCopy->_model, v71, v72);
  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v84, v108, 16);
  if (v75)
  {
    v77 = v75;
    v78 = *v85;
    do
    {
      for (ii = 0; ii != v77; ++ii)
      {
        if (*v85 != v78)
        {
          objc_enumerationMutation(v73);
        }

        v80 = objc_msgSend_rendererForAnimatedBuild_(selfCopy->_model, v76, *(*(&v84 + 1) + 8 * ii));
        objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(v80, v81, cancelCopy);
      }

      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v84, v108, 16);
    }

    while (v77);
  }
}

- (void)prepareAnimations
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = objc_msgSend_isTexturePreCachingThread(WeakRetained, v4, v5);

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimatedSlideView prepareAnimations]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2163, 0, "Running on unexpected thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_shouldPrepareAnimationsAsynchronously(self, v7, v8))
  {
    v18 = objc_msgSend_nextASV(self, v16, v17);
    if (!v18 || (v21 = v18, objc_msgSend_nextASV(self, v19, v20), v22 = objc_claimAutoreleasedReturnValue(), shouldPreCache = objc_msgSend_shouldPreCache(v22, v23, v24), v22, v21, shouldPreCache))
    {
      objc_msgSend_begin(MEMORY[0x277CD9FF0], v19, v20);
      objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v26, 1);
      v27 = MEMORY[0x277CD9FF0];
      isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v28, v29);
      objc_msgSend_activateBackground_(v27, v31, isMainThread ^ 1u);
      v32 = objc_autoreleasePoolPush();
      objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(self, v33, 0);
      v36 = objc_msgSend_transitionRenderer(self->_model, v34, v35);
      objc_msgSend_prepareAnimations(v36, v37, v38);

      objc_autoreleasePoolPop(v32);
      v41 = MEMORY[0x277CD9FF0];

      objc_msgSend_commit(v41, v39, v40);
    }
  }
}

- (void)serializeTextures
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isTexturePreCachingThread = objc_msgSend_isTexturePreCachingThread(WeakRetained, v4, v5);

  if ((isTexturePreCachingThread & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAnimatedSlideView serializeTextures]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideView.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 2193, 0, "Running on unexpected thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  obj = self;
  objc_sync_enter(obj);
  v16 = objc_autoreleasePoolPush();
  if (!obj->_isSerialized)
  {
    objc_msgSend_waitUntilAsyncRenderingIsCompleteShouldCancel_(obj, v15, 1);
    objc_msgSend_tearDown(obj, v17, v18);
    obj->_isSerialized = 1;
  }

  objc_autoreleasePoolPop(v16);
  objc_sync_exit(obj);
}

- (void)addActiveAnimatedBuild:(id)build
{
  buildCopy = build;
  activeAnimatedBuilds = self->_activeAnimatedBuilds;
  v10 = buildCopy;
  if (!activeAnimatedBuilds)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB58]);
    v8 = objc_msgSend_initWithCapacity_(v6, v7, 1);
    v9 = self->_activeAnimatedBuilds;
    self->_activeAnimatedBuilds = v8;

    buildCopy = v10;
    activeAnimatedBuilds = self->_activeAnimatedBuilds;
  }

  objc_msgSend_addObject_(activeAnimatedBuilds, buildCopy, buildCopy);
}

- (KNPlaybackSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end