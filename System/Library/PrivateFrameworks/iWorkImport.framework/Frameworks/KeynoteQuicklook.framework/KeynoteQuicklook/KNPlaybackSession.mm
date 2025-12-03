@interface KNPlaybackSession
+ (double)p_viewScaleByUpdatingShowLayerGeometry:(id)geometry forConfiguration:(id)configuration showSize:(CGSize)size;
+ (void)p_updateAnimationContext:(id)context fromConfiguration:(id)configuration;
- (BOOL)atBeginningOfDeck;
- (BOOL)atEndOfDeck;
- (BOOL)canMakeInfoVisible:(id)visible allowAudioOnlyMovies:(BOOL)movies;
- (BOOL)isOffscreenPlayback;
- (BOOL)isPreCachingOperationActive;
- (BOOL)isPrintingCanvas;
- (BOOL)isTexturePreCachingThread;
- (BOOL)p_checkArrayInclusionIncludingUUID:(id)d object:(id)object;
- (BOOL)p_slideNodeIsPlayable:(id)playable;
- (BOOL)shouldShowInstructionalText;
- (KNAnimatedSlideView)animatedSlideViewForCurrentSlide;
- (KNPlaybackSession)initWithShow:(id)show configuration:(id)configuration canvasDelegate:(id)delegate;
- (KNSlide)currentSlide;
- (KNSlide)nextSlideAfterCurrent;
- (KNSlideNode)firstSlideNode;
- (KNSlideNode)lastSlideNode;
- (NSArray)breadCrumbTrail;
- (NSArray)playableSlideNodes;
- (TSDCanvasDelegate)canvasDelegate;
- (TSKAccessController)accessController;
- (double)showScale;
- (id)animatedSlideViewFor:(id)for;
- (id)breadCrumb;
- (id)gotoFirstSlide;
- (id)gotoLastSlide;
- (id)gotoNextSlide;
- (id)gotoPreviousSlide;
- (id)newCanvasForInfos:(id)infos;
- (id)nextSlideNodeAfterSlideNode:(id)node;
- (id)p_intersectArraysWithUUIDEquality:(id)equality secondArray:(id)array;
- (id)p_nextBestSlideNodeToSlideNode:(id)node;
- (id)previousSlideNodeBeforeSlideNode:(id)node;
- (id)repForInfo:(id)info onCanvas:(id)canvas;
- (int64_t)analyticsVisitedSlideCount;
- (unint64_t)p_findIndexIncludingUUID:(id)d object:(id)object;
- (unint64_t)slideNumberForSlideNode:(id)node;
- (void)analyticsVisitedSlideNode:(id)node;
- (void)dealloc;
- (void)didChangeRootLayerGeometryAndScreenEnvironment;
- (void)dropABreadCrumb;
- (void)enableMetalBadge:(BOOL)badge;
- (void)executeEndShowHandlerAfterDelay:(double)delay;
- (void)gotoSlideNode:(id)node;
- (void)p_executeEndShowHandler;
- (void)performSlideRead:(id)read;
- (void)setBreadCrumbTrail:(id)trail;
- (void)setPlayMode:(int64_t)mode;
- (void)waitUntilSlideTextureRenderingIsCompleteForIdentifier:(id)identifier;
@end

@implementation KNPlaybackSession

- (KNPlaybackSession)initWithShow:(id)show configuration:(id)configuration canvasDelegate:(id)delegate
{
  showCopy = show;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v66.receiver = self;
  v66.super_class = KNPlaybackSession;
  v12 = [(KNPlaybackSession *)&v66 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_show, show);
    objc_storeStrong((v13 + 8), configuration);
    objc_msgSend_size(showCopy, v14, v15);
    v17 = v16;
    v19 = v18;
    v22 = objc_msgSend_layerHost(configurationCopy, v20, v21);
    v25 = objc_msgSend_rootLayer(v22, v23, v24);

    v28 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v26, v27);
    v29 = objc_opt_class();
    objc_msgSend_p_viewScaleByUpdatingShowLayerGeometry_forConfiguration_showSize_(v29, v30, v28, configurationCopy, v17, v19);
    v32 = v31;
    objc_msgSend_addSublayer_(v25, v33, v28);
    v34 = [KNAnimationContext alloc];
    v36 = objc_msgSend_initWithShowSize_viewScale_showLayer_(v34, v35, v28, v17, v19, v32);
    v37 = *(v13 + 136);
    *(v13 + 136) = v36;

    v38 = objc_opt_class();
    objc_msgSend_p_updateAnimationContext_fromConfiguration_(v38, v39, *(v13 + 136), configurationCopy);
    v40 = objc_alloc_init(KNAnimationRegistryWithFallbacks);
    v41 = *(v13 + 144);
    *(v13 + 144) = v40;

    isMetalEnabled = objc_msgSend_isMetalEnabled(configurationCopy, v42, v43);
    objc_storeWeak((v13 + 104), delegateCopy);
    *(v13 + 79) = 1;
    *(v13 + 74) = 1;
    *(v13 + 85) = 1;
    *(v13 + 200) = isMetalEnabled;
    *(v13 + 69) = 1;
    objc_msgSend_autoplayBuildDelay(showCopy, v45, v46);
    *(v13 + 184) = v47;
    objc_msgSend_autoplayTransitionDelay(showCopy, v48, v49);
    *(v13 + 176) = v50;
    v51 = [KNAnimatedTextureManager alloc];
    v53 = objc_msgSend_initWithSession_(v51, v52, v13);
    v54 = *(v13 + 128);
    *(v13 + 128) = v53;

    if (objc_msgSend_isResponsivenessLoggingEnabled(KNAnimationUtils, v55, v56))
    {
      v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v58 = *(v13 + 224);
      *(v13 + 224) = v57;

      v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60 = *(v13 + 216);
      *(v13 + 216) = v59;

      v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v62 = *(v13 + 232);
      *(v13 + 232) = v61;

      v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64 = *(v13 + 240);
      *(v13 + 240) = v63;
    }
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNPlaybackSession;
  [(KNPlaybackSession *)&v2 dealloc];
}

- (void)setPlayMode:(int64_t)mode
{
  if (self->_playMode != mode)
  {
    self->_playMode = mode;
  }
}

- (BOOL)shouldShowInstructionalText
{
  v3 = objc_msgSend_canvasDelegate(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    shouldShowInstructionalTextForLayout = objc_msgSend_shouldShowInstructionalTextForLayout_(v3, v4, 0);
  }

  else
  {
    shouldShowInstructionalTextForLayout = 0;
  }

  return shouldShowInstructionalTextForLayout;
}

- (TSKAccessController)accessController
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  v5 = objc_msgSend_documentRoot(WeakRetained, v3, v4);
  v8 = objc_msgSend_accessController(v5, v6, v7);

  return v8;
}

- (void)performSlideRead:(id)read
{
  readCopy = read;
  v7 = objc_msgSend_accessController(self, v5, v6);
  accessControllerReadTicket = self->_accessControllerReadTicket;
  v10 = v7;
  if (accessControllerReadTicket)
  {
    objc_msgSend_performReadWithTicket_block_(v7, v8, accessControllerReadTicket, readCopy);
  }

  else
  {
    objc_msgSend_performRead_(v7, v8, readCopy);
  }
}

- (void)gotoSlideNode:(id)node
{
  nodeCopy = node;
  v16 = nodeCopy;
  if (!nodeCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[KNPlaybackSession gotoSlideNode:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 232, 0, "invalid nil value for '%{public}s'", "slideNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    nodeCopy = 0;
  }

  v13 = objc_msgSend_p_nextBestSlideNodeToSlideNode_(self, nodeCopy, nodeCopy);
  if (v13)
  {
    objc_msgSend_p_setCurrentSlideNode_(self, v12, v13);
    objc_msgSend_dropABreadCrumb(self, v14, v15);
  }
}

- (KNSlide)currentSlide
{
  currentSlideNode = self->_currentSlideNode;
  if (currentSlideNode)
  {
    currentSlideNode = objc_msgSend_slide(currentSlideNode, a2, v2);
    v3 = vars8;
  }

  return currentSlideNode;
}

- (id)nextSlideNodeAfterSlideNode:(id)node
{
  nodeCopy = node;
  v7 = nodeCopy;
  alternateNextSlideNode = self->_alternateNextSlideNode;
  if (alternateNextSlideNode && self->_currentSlideNode == nodeCopy)
  {
    v34 = alternateNextSlideNode;
    goto LABEL_21;
  }

  if (self->_shouldRespectSkippedSlides || !objc_msgSend_isSkipped(nodeCopy, v5, v6))
  {
    v9 = objc_msgSend_slideTree(self->_show, v5, v6);
    v12 = objc_msgSend_visibleSlideNodes(v9, v13, v14);
  }

  else
  {
    v9 = objc_msgSend_slideTree(self->_show, v5, v6);
    v12 = objc_msgSend_slideNodes(v9, v10, v11);
  }

  v15 = v12;

  v18 = objc_msgSend_slideNodesWithinPlayableRange(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_slideNodesWithinPlayableRange(self, v19, v20);
    v23 = objc_msgSend_p_intersectArraysWithUUIDEquality_secondArray_(self, v22, v15, v21);

    v15 = v23;
  }

  if (objc_msgSend_p_checkArrayInclusionIncludingUUID_object_(self, v19, v15, v7))
  {
    v26 = objc_msgSend_lastObject(v15, v24, v25);
    v28 = objc_msgSend_p_checkNodeEqualityIncludingUUID_secondSlideNode_(self, v27, v26, v7);

    if (v28)
    {
      if ((objc_msgSend_loopPresentation(self->_show, v29, v30) & 1) == 0 && !objc_msgSend_shouldAlwaysLoop(self, v31, v32))
      {
        v34 = 0;
        goto LABEL_20;
      }

      v33 = objc_msgSend_firstObject(v15, v31, v32);
    }

    else
    {
      v35 = objc_msgSend_p_findIndexIncludingUUID_object_(self, v29, v15, v7) + 1;
      if (v35 >= objc_msgSend_count(v15, v36, v37))
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[KNPlaybackSession nextSlideNodeAfterSlideNode:]");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 286, 0, "Index of next slide node is out of bounds.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
      }

      v33 = objc_msgSend_objectAtIndexedSubscript_(v15, v38, v35);
    }
  }

  else
  {
    v33 = objc_msgSend_p_nextBestSlideNodeToSlideNode_(self, v24, v7);
  }

  v34 = v33;
LABEL_20:

LABEL_21:

  return v34;
}

- (id)p_nextBestSlideNodeToSlideNode:(id)node
{
  nodeCopy = node;
  IsPlayable = objc_msgSend_p_slideNodeIsPlayable_(self, v5, nodeCopy);
  v9 = nodeCopy;
  if (nodeCopy)
  {
    v9 = nodeCopy;
    if ((IsPlayable & 1) == 0)
    {
      v9 = nodeCopy;
      do
      {
        v10 = v9;
        v9 = objc_msgSend_previous(v9, v7, v8);

        v12 = objc_msgSend_p_slideNodeIsPlayable_(self, v11, v9);
      }

      while (v9 && !v12);
      if (!v9)
      {
        v9 = objc_msgSend_next(nodeCopy, v7, v8);
        v14 = objc_msgSend_p_slideNodeIsPlayable_(self, v13, v9);
        if (v9 && (v14 & 1) == 0)
        {
          do
          {
            v17 = v9;
            v9 = objc_msgSend_next(v9, v15, v16);

            v19 = objc_msgSend_p_slideNodeIsPlayable_(self, v18, v9);
          }

          while (v9 && !v19);
        }

        if (!v9)
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNPlaybackSession p_nextBestSlideNodeToSlideNode:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 323, 0, "SERIOUS BUG: Show slide tree should never be mutually exclusive from playback session slide tree.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
          v9 = 0;
        }
      }
    }
  }

  return v9;
}

- (KNSlide)nextSlideAfterCurrent
{
  v3 = objc_msgSend_nextSlideNodeAfterCurrent(self, a2, v2);
  v6 = objc_msgSend_slide(v3, v4, v5);

  return v6;
}

- (id)gotoNextSlide
{
  v6 = objc_msgSend_nextSlideNodeAfterCurrent(self, a2, v2);
  if (v6)
  {
    objc_msgSend_p_setCurrentSlideNode_(self, v4, v6);
    v9 = objc_msgSend_slide(self->_currentSlideNode, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  objc_msgSend_dropABreadCrumb(self, v4, v5);

  return v9;
}

- (id)previousSlideNodeBeforeSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_playableSlideNodes(self, v5, v6);
  if ((objc_msgSend_p_slideNodeIsPlayable_(self, v8, nodeCopy) & 1) == 0)
  {
    v18 = objc_msgSend_p_nextBestSlideNodeToSlideNode_(self, v9, nodeCopy);
    goto LABEL_10;
  }

  v11 = objc_msgSend_firstObject(v7, v9, v10);
  v13 = objc_msgSend_p_checkNodeEqualityIncludingUUID_secondSlideNode_(self, v12, v11, nodeCopy);

  if (!v13)
  {
    IndexIncludingUUID_object = objc_msgSend_p_findIndexIncludingUUID_object_(self, v14, v7, nodeCopy);
    if (!IndexIncludingUUID_object)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNPlaybackSession previousSlideNodeBeforeSlideNode:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 366, 0, "Index of previous slide node is out of bounds.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v18 = objc_msgSend_objectAtIndexedSubscript_(v7, v19, IndexIncludingUUID_object - 1);
    goto LABEL_10;
  }

  if ((objc_msgSend_loopPresentation(self->_show, v14, v15) & 1) != 0 || objc_msgSend_shouldAlwaysLoop(self, v16, v17))
  {
    v18 = objc_msgSend_lastObject(v7, v16, v17);
LABEL_10:
    v28 = v18;
    goto LABEL_11;
  }

  v28 = 0;
LABEL_11:

  return v28;
}

- (id)gotoPreviousSlide
{
  v6 = objc_msgSend_previousSlideNodeBeforeCurrent(self, a2, v2);
  if (v6)
  {
    objc_msgSend_p_setCurrentSlideNode_(self, v4, v6);
    v9 = objc_msgSend_slide(self->_currentSlideNode, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  objc_msgSend_dropABreadCrumb(self, v4, v5);

  return v9;
}

- (BOOL)atBeginningOfDeck
{
  selfCopy = self;
  currentSlideNode = self->_currentSlideNode;
  v5 = objc_msgSend_playableSlideNodes(self, a2, v2);
  v8 = objc_msgSend_firstObject(v5, v6, v7);
  LOBYTE(selfCopy) = objc_msgSend_p_checkNodeEqualityIncludingUUID_secondSlideNode_(selfCopy, v9, currentSlideNode, v8);

  return selfCopy;
}

- (BOOL)atEndOfDeck
{
  selfCopy = self;
  currentSlideNode = self->_currentSlideNode;
  v5 = objc_msgSend_playableSlideNodes(self, a2, v2);
  v8 = objc_msgSend_lastObject(v5, v6, v7);
  LOBYTE(selfCopy) = objc_msgSend_p_checkNodeEqualityIncludingUUID_secondSlideNode_(selfCopy, v9, currentSlideNode, v8);

  return selfCopy;
}

- (KNSlideNode)firstSlideNode
{
  v3 = objc_msgSend_playableSlideNodes(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  return v6;
}

- (id)gotoFirstSlide
{
  v4 = objc_msgSend_firstSlideNode(self, a2, v2);
  objc_msgSend_p_setCurrentSlideNode_(self, v5, v4);
  objc_msgSend_dropABreadCrumb(self, v6, v7);
  v10 = objc_msgSend_slide(v4, v8, v9);

  return v10;
}

- (KNSlideNode)lastSlideNode
{
  v3 = objc_msgSend_playableSlideNodes(self, a2, v2);
  v6 = objc_msgSend_lastObject(v3, v4, v5);

  return v6;
}

- (id)gotoLastSlide
{
  v4 = objc_msgSend_lastSlideNode(self, a2, v2);
  objc_msgSend_p_setCurrentSlideNode_(self, v5, v4);
  objc_msgSend_dropABreadCrumb(self, v6, v7);
  v10 = objc_msgSend_slide(v4, v8, v9);

  return v10;
}

- (NSArray)breadCrumbTrail
{
  if (self->_breadCrumbTrail)
  {
    return self->_breadCrumbTrail;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)setBreadCrumbTrail:(id)trail
{
  v4 = objc_msgSend_mutableCopy(trail, a2, trail);
  breadCrumbTrail = self->_breadCrumbTrail;
  self->_breadCrumbTrail = v4;
}

- (void)dropABreadCrumb
{
  breadCrumbTrail = self->_breadCrumbTrail;
  if (!breadCrumbTrail)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = objc_msgSend_initWithCapacity_(v5, v6, 1);
    v8 = self->_breadCrumbTrail;
    self->_breadCrumbTrail = v7;

    breadCrumbTrail = self->_breadCrumbTrail;
  }

  currentSlideNode = self->_currentSlideNode;
  v10 = objc_msgSend_lastObject(breadCrumbTrail, a2, v2);

  if (currentSlideNode != v10)
  {
    v13 = self->_currentSlideNode;
    v12 = self->_breadCrumbTrail;

    objc_msgSend_addObject_(v12, v11, v13);
  }
}

- (id)breadCrumb
{
  v3 = self->_currentSlideNode;
  if (!objc_msgSend_count(self->_breadCrumbTrail, v4, v5))
  {
    goto LABEL_4;
  }

  v8 = objc_msgSend_lastObject(self->_breadCrumbTrail, v6, v7);

  objc_msgSend_removeLastObject(self->_breadCrumbTrail, v9, v10);
  if (v8 != self->_currentSlideNode)
  {
    v3 = v8;
LABEL_4:
    v13 = v3;
    v8 = v13;
    goto LABEL_6;
  }

  v13 = objc_msgSend_breadCrumb(self, v11, v12);
LABEL_6:

  return v13;
}

- (KNAnimatedSlideView)animatedSlideViewForCurrentSlide
{
  currentSlideNode = self->_currentSlideNode;
  if (currentSlideNode)
  {
    v4 = objc_msgSend_animatedSlideViewFor_(self, a2, currentSlideNode);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)animatedSlideViewFor:(id)for
{
  forCopy = for;
  v7 = objc_msgSend_textureManager(self, v5, v6);
  v9 = objc_msgSend_ASVForSlideNode_(v7, v8, forCopy);

  return v9;
}

- (unint64_t)slideNumberForSlideNode:(id)node
{
  show = self->_show;
  nodeCopy = node;
  v7 = objc_msgSend_slideTree(show, v5, v6);
  v9 = objc_msgSend_slideNumberForSlideNode_(v7, v8, nodeCopy);

  return v9;
}

- (BOOL)isPrintingCanvas
{
  v4 = objc_msgSend_canvasDelegate(self, a2, v2);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v8 = objc_msgSend_canvasDelegate(self, v6, v7);
  isPrintingCanvas = objc_msgSend_isPrintingCanvas(v8, v9, v10);

  return isPrintingCanvas;
}

- (BOOL)isOffscreenPlayback
{
  if ((self->_playMode - 5) < 2)
  {
    return 1;
  }

  v4 = objc_msgSend_showLayer(self->_animationContext, a2, v2);
  v3 = v4 == 0;

  return v3;
}

- (double)showScale
{
  v6 = objc_msgSend_animationContext(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_animationContext(self, v4, v5);
    objc_msgSend_showScale(v7, v8, v9);
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  return v11;
}

- (BOOL)canMakeInfoVisible:(id)visible allowAudioOnlyMovies:(BOOL)movies
{
  visibleCopy = visible;
  if (!movies)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    if (v9)
    {
      v10 = v9;
      isAudioOnly = objc_msgSend_isAudioOnly(v9, v6, v7);

      if (isAudioOnly)
      {
        goto LABEL_8;
      }
    }
  }

  if ((objc_msgSend_shouldShowLiveVideos(self, v6, v7) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }
  }

  if (objc_msgSend_floatingCommentBehavior(self, v12, v13) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  if (v15)
  {
    v18 = v15;
    v19 = objc_msgSend_imageData(v15, v16, v17);
    v22 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v20, v21);
    v24 = objc_msgSend_providerForData_shouldValidate_(v22, v23, v19, 0);

    if (!objc_msgSend_isError(v24, v25, v26))
    {
LABEL_15:

      goto LABEL_16;
    }

    v29 = objc_msgSend_thumbnailImageData(v18, v27, v28);
    v32 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v30, v31);
    v34 = objc_msgSend_providerForData_shouldValidate_(v32, v33, v29, 0);

    if (!objc_msgSend_isError(v34, v35, v36))
    {
LABEL_14:

      goto LABEL_15;
    }

    v39 = objc_msgSend_fallbackColor(v19, v37, v38);
    if (v39)
    {

      goto LABEL_14;
    }

    v63 = objc_msgSend_fallbackColor(v29, v40, v41);

    if (!v63)
    {
LABEL_8:
      v14 = 0;
      goto LABEL_26;
    }
  }

LABEL_16:
  objc_opt_class();
  v42 = TSUDynamicCast();
  v45 = v42;
  if (v42)
  {
    v46 = objc_msgSend_fill(v42, v43, v44);
    objc_opt_class();
    v47 = TSUDynamicCast();
    v50 = v47;
    if (v47)
    {
      v51 = objc_msgSend_imageData(v47, v48, v49);
      v54 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v52, v53);
      v56 = objc_msgSend_providerForData_shouldValidate_(v54, v55, v51, 0);

      if (objc_msgSend_isError(v56, v57, v58))
      {
        v61 = objc_msgSend_fallbackColor(v51, v59, v60);
        v14 = v61 != 0;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_26:
  return v14;
}

- (id)newCanvasForInfos:(id)infos
{
  v58 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v5 = objc_alloc_init(MEMORY[0x277D801E0]);
  v8 = objc_msgSend_canvasDelegate(self, v6, v7);
  objc_msgSend_setDelegate_(v5, v9, v8);

  v12 = objc_msgSend_animationContext(self, v10, v11);
  objc_msgSend_unscaledSlideRect(v12, v13, v14);
  objc_msgSend_setUnscaledSize_(v5, v15, v16, v17, v18);
  objc_msgSend_viewScale(v12, v19, v20);
  objc_msgSend_setViewScale_(v5, v21, v22);
  objc_msgSend_setInfosToDisplay_(v5, v23, infosCopy);
  v26 = objc_msgSend_supportsHDR(self, v24, v25);
  objc_msgSend_setSupportsHDR_(v5, v27, v26);
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v30 = objc_msgSend_layoutController(v5, v28, v29, 0, 0);
  v33 = objc_msgSend_rootLayout(v30, v31, v32);
  v36 = objc_msgSend_children(v33, v34, v35);

  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v53, v57, 16);
  if (v38)
  {
    v39 = v38;
    v40 = *v54;
    do
    {
      v41 = 0;
      do
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(v36);
        }

        objc_opt_class();
        v42 = TSUDynamicCast();
        v45 = v42;
        if (v42)
        {
          v46 = objc_msgSend_containedLayout(v42, v43, v44);
          objc_msgSend_invalidateTextLayout(v46, v47, v48);
        }

        ++v41;
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v49, &v53, v57, 16);
    }

    while (v39);
  }

  objc_msgSend_nonInteractiveLayoutIfNeeded(v5, v50, v51);
  return v5;
}

- (id)repForInfo:(id)info onCanvas:(id)canvas
{
  canvasCopy = canvas;
  infoCopy = info;
  v10 = objc_msgSend_layoutController(canvasCopy, v8, v9);
  v12 = objc_msgSend_layoutForInfo_(v10, v11, infoCopy);

  v14 = objc_msgSend_repForLayout_(canvasCopy, v13, v12);

  shouldBeDisplayedInShowMode = objc_msgSend_shouldBeDisplayedInShowMode(v12, v15, v16);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (shouldBeDisplayedInShowMode)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (objc_msgSend_floatingCommentBehavior(self, v18, v19) == 1)
  {
LABEL_5:

    v14 = 0;
  }

LABEL_6:

  return v14;
}

- (void)waitUntilSlideTextureRenderingIsCompleteForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = objc_msgSend_canvasDelegate(self, v4, v5);
    v9 = objc_msgSend_documentRoot(v6, v7, v8);
    v12 = objc_msgSend_accessController(v9, v10, v11);

    objc_msgSend_waitOnIdentifier_(v12, v13, identifierCopy);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNPlaybackSession waitUntilSlideTextureRenderingIsCompleteForIdentifier:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSession.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 618, 0, "invalid nil value for '%{public}s'", "identifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }
}

- (void)executeEndShowHandlerAfterDelay:(double)delay
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CBE738];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 1);
  objc_msgSend_performSelector_withObject_afterDelay_inModes_(self, v6, sel_p_executeEndShowHandler, 0, v5, delay);

  self->_hasEndShowHandlerBeenCancelled = 0;
}

- (void)p_executeEndShowHandler
{
  if (!self->_hasEndShowHandlerBeenCancelled)
  {
    endShowHandler = self->_endShowHandler;
    if (endShowHandler)
    {
      endShowHandler[2]();
    }
  }
}

- (BOOL)isPreCachingOperationActive
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x277D805D8]);
  v9 = v8 != 0;

  return v9;
}

- (BOOL)isTexturePreCachingThread
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x277D80478]);
  v9 = v8 != 0;

  return v9;
}

- (void)didChangeRootLayerGeometryAndScreenEnvironment
{
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  v4 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v5, v6);
  objc_msgSend_activateBackground_(v4, v8, isMainThread ^ 1u);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v9, 1);
  v33 = self->_configuration;
  v12 = objc_msgSend_configurationWithUpdatedLayerScreenEnvironment(self->_configuration, v10, v11);
  configuration = self->_configuration;
  self->_configuration = v12;

  v14 = objc_opt_class();
  v17 = objc_msgSend_showLayer(self->_animationContext, v15, v16);
  v18 = self->_configuration;
  v21 = objc_msgSend_show(self, v19, v20);
  objc_msgSend_size(v21, v22, v23);
  objc_msgSend_p_viewScaleByUpdatingShowLayerGeometry_forConfiguration_showSize_(v14, v24, v17, v18);
  v26 = v25;

  if (v33 != self->_configuration)
  {
    v29 = objc_opt_class();
    objc_msgSend_p_updateAnimationContext_fromConfiguration_(v29, v30, self->_animationContext, self->_configuration);
  }

  objc_msgSend_updateGeometryToFitShowLayerAtViewScale_(self->_animationContext, v27, v28, v26);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v31, v32);
}

+ (double)p_viewScaleByUpdatingShowLayerGeometry:(id)geometry forConfiguration:(id)configuration showSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  geometryCopy = geometry;
  configurationCopy = configuration;
  objc_msgSend_canvasViewScaleForUnscaledSize_(configurationCopy, v10, v11, width, height);
  v15 = v14;
  if (v14 < 1.0 && (objc_msgSend_shouldDisableViewScaling(KNAnimationUtils, v12, v13) & 1) != 0)
  {
    TSURectWithSize();
    objc_msgSend_setFrame_(geometryCopy, v16, v17);
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v18, v19, v15);
    objc_msgSend_setValue_forKeyPath_(geometryCopy, v21, v20, @"transform.scale.xy");

    v15 = 1.0;
  }

  else
  {
    objc_msgSend_boundsSize(configurationCopy, v12, v13);
    TSURectWithSize();
    objc_msgSend_setFrame_(geometryCopy, v22, v23);
  }

  return v15;
}

+ (void)p_updateAnimationContext:(id)context fromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  contextCopy = context;
  v8 = objc_msgSend_colorSpace(configurationCopy, v6, v7);
  objc_msgSend_setColorSpace_(contextCopy, v9, v8);
  objc_msgSend_pixelAspectRatio(configurationCopy, v10, v11);
  v13 = v12;

  objc_msgSend_setPixelAspectRatio_(contextCopy, v14, v15, v13);
}

- (NSArray)playableSlideNodes
{
  shouldRespectSkippedSlides = self->_shouldRespectSkippedSlides;
  v5 = objc_msgSend_slideTree(self->_show, a2, v2);
  v8 = v5;
  if (shouldRespectSkippedSlides)
  {
    objc_msgSend_visibleSlideNodes(v5, v6, v7);
  }

  else
  {
    objc_msgSend_slideNodes(v5, v6, v7);
  }
  v9 = ;

  v12 = objc_msgSend_slideNodesWithinPlayableRange(self, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_slideNodesWithinPlayableRange(self, v13, v14);
    v17 = objc_msgSend_p_intersectArraysWithUUIDEquality_secondArray_(self, v16, v9, v15);

    v9 = v17;
  }

  return v9;
}

- (void)enableMetalBadge:(BOOL)badge
{
  badgeCopy = badge;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, badge);
  v5 = 1;
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v6, 1);
  v7 = MEMORY[0x277CD9FF0];
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v8, v9);
  objc_msgSend_activateBackground_(v7, v11, isMainThread ^ 1u);
  objc_msgSend_setHidden_(self->_noMetalBadgeLayer, v12, badgeCopy);
  if (badgeCopy)
  {
    v5 = objc_msgSend_isSceneRenderingEnabled(self, v13, v14) ^ 1;
  }

  objc_msgSend_setHidden_(self->_sceneRenderingMetalBadgeLayer, v13, v5);
  v17 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v17, v15, v16);
}

- (id)p_intersectArraysWithUUIDEquality:(id)equality secondArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  equalityCopy = equality;
  arrayCopy = array;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = equalityCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_p_checkArrayInclusionIncludingUUID_object_(self, v14, arrayCopy, v18, v20))
        {
          objc_msgSend_addObject_(v10, v14, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v24, 16);
    }

    while (v15);
  }

  return v10;
}

- (BOOL)p_slideNodeIsPlayable:(id)playable
{
  playableCopy = playable;
  v7 = objc_msgSend_playableSlideNodes(self, v5, v6);
  LOBYTE(self) = objc_msgSend_p_checkArrayInclusionIncludingUUID_object_(self, v8, v7, playableCopy);

  return self;
}

- (BOOL)p_checkArrayInclusionIncludingUUID:(id)d object:(id)object
{
  dCopy = d;
  objectCopy = object;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275DAF684;
  v11[3] = &unk_27A697EB8;
  v11[4] = self;
  v8 = objectCopy;
  v12 = v8;
  v13 = &v14;
  objc_msgSend_enumerateObjectsUsingBlock_(dCopy, v9, v11);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (unint64_t)p_findIndexIncludingUUID:(id)d object:(id)object
{
  dCopy = d;
  objectCopy = object;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275DAF7D8;
  v12[3] = &unk_27A697EB8;
  v12[4] = self;
  v8 = objectCopy;
  v13 = v8;
  v14 = &v15;
  objc_msgSend_enumerateObjectsUsingBlock_(dCopy, v9, v12);
  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (int64_t)analyticsVisitedSlideCount
{
  result = self->_analyticsSlideNodesVisited;
  if (result)
  {
    return objc_msgSend_count(result, a2, v2);
  }

  return result;
}

- (void)analyticsVisitedSlideNode:(id)node
{
  nodeCopy = node;
  analyticsSlideNodesVisited = self->_analyticsSlideNodesVisited;
  v9 = nodeCopy;
  if (!analyticsSlideNodesVisited)
  {
    v7 = objc_msgSend_set(MEMORY[0x277CBEB58], nodeCopy, v5);
    v8 = self->_analyticsSlideNodesVisited;
    self->_analyticsSlideNodesVisited = v7;

    nodeCopy = v9;
    analyticsSlideNodesVisited = self->_analyticsSlideNodesVisited;
  }

  objc_msgSend_addObject_(analyticsSlideNodesVisited, nodeCopy, nodeCopy);
}

- (TSDCanvasDelegate)canvasDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);

  return WeakRetained;
}

@end