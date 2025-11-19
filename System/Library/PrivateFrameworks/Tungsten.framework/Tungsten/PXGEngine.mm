@interface PXGEngine
- ($28B10562A11C0018BB97DE3323169FD5)interactionState;
- (BOOL)_isInBackground;
- (BOOL)_shouldDeferContentOffsetUpdates;
- (BOOL)_shouldDeferRenderUntilNextFrame;
- (BOOL)_shouldWaitForScrollEvent;
- (BOOL)copyPresentedSpriteFor:(id)a3 geometry:(id *)a4 style:(id *)a5 info:(id *)a6;
- (BOOL)lowMemoryMode;
- (PXGEngine)init;
- (PXGEngine)initWithAnimator:(id)a3 renderers:(id)a4 displayLinkClass:(Class)a5 layoutQueue:(id)a6;
- (PXGEngine)initWithPixelBufferDestination:(id)a3 layoutQueue:(id)a4 displayLinkClass:(Class)a5;
- (PXGEngineDelegate)delegate;
- (PXGHitTestEnvironment)interactionView;
- (UIScreen)screen;
- (_PXGEngineScrollState)scrollState;
- (id)_createDisplayLinkWithScreen:(id)a3;
- (id)_mergeTexturesByPresentationType:(id)a3 withOverlayTexturesByPresentationType:(id)a4;
- (id)_rendererForPresentationType:(unsigned __int8)a3;
- (id)startRecordingToDirectoryURL:(id)a3;
- (id)textureManager:(id)a3 requestRenderSnapshot:(id *)a4 offscreenEffect:(id)a5;
- (int64_t)currentFrameTime;
- (void)__setNeedsUpdate;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_deferredInvalidate:(unint64_t)a3;
- (void)_enumerateRenderers:(id)a3;
- (void)_extensionHostDidEnterBackground:(id)a3;
- (void)_extensionHostWillEnterForeground:(id)a3;
- (void)_forceInvalidate:(unint64_t)a3;
- (void)_handleRescheduledRecursiveUpdate;
- (void)_handleTimeoutForNotificationBlock:(id)a3;
- (void)_hasBeenInvisibleForSomeTime;
- (void)_invalidateOrDefer:(unint64_t)a3;
- (void)_notifyContentLoadedObserversIfNeeded;
- (void)_performOnLayoutQueue:(id)a3;
- (void)_performRender;
- (void)_propagateTextureConverters;
- (void)_recursiveUpdateDetected;
- (void)_releaseResources;
- (void)_resetChangeDetails;
- (void)_retargetAnimations;
- (void)_setNeedsRender;
- (void)_updateAnimatorWithTargetTimestamp:(double)a3;
- (void)_updateDisplayLink;
- (void)_updateIfNeededWithReason:(id)a3;
- (void)_updateInteractionState;
- (void)_updateInvisibleTextureManager;
- (void)_updateLayout;
- (void)_updateLayoutInteractions;
- (void)_updateMipmapPreferences;
- (void)_updateScrollStateWithReason:(unint64_t)a3;
- (void)_updateTextureManager;
- (void)_windowSceneDidBeginLiveResize:(id)a3;
- (void)_windowSceneDidEndLiveResize:(id)a3;
- (void)dealloc;
- (void)ensureUpdatedLayout;
- (void)enumerateSpritesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)handleDisplayLink:(id)a3;
- (void)handleScreensDidWakeNotification:(id)a3;
- (void)layoutNeedsUpdate:(id)a3;
- (void)notifyContentFullyLoadedWithTimeout:(double)a3 block:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)px_scrollControllerDidScroll:(id)a3;
- (void)px_scrollControllerDidUpdate:(id)a3;
- (void)registerAllTextureProvidersWithMediaProvider:(id)a3 namedImagesBundle:(id)a4;
- (void)registerTextureProvider:(id)a3 forMediaKind:(unsigned __int8)a4;
- (void)rendererPerformRender:(id)a3;
- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDidRenderThisFrame:(BOOL)a3;
- (void)setDisableMetalViewDisplayCompositing:(BOOL)a3;
- (void)setExpectingScrollEvents:(BOOL)a3;
- (void)setGotScrollEventThisFrame:(BOOL)a3;
- (void)setInteractionState:(id *)a3;
- (void)setIsInitialLoad:(BOOL)a3;
- (void)setIsInvisibleForSomeTime:(BOOL)a3;
- (void)setIsSuspended:(BOOL)a3;
- (void)setLayout:(id)a3;
- (void)setLowMemoryMode:(BOOL)a3;
- (void)setLowPowerMode:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
- (void)setMissedScrollEventThisFrame:(BOOL)a3;
- (void)setScreen:(id)a3;
- (void)setScrollController:(id)a3;
- (void)setScrollViewController:(id)a3;
- (void)setScrollViewSpeedometer:(id)a3;
- (void)setSlowAnimationsEnabled:(BOOL)a3;
- (void)setViewEnvironment:(id)a3;
- (void)setVisible:(BOOL)a3;
- (void)test_installRenderSnapshotHandler:(id)a3;
@end

@implementation PXGEngine

- (void)_propagateTextureConverters
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PXGEngine__propagateTextureConverters__block_invoke;
  v6[3] = &unk_2782A92D0;
  v7 = v3;
  v4 = v3;
  [(PXGEngine *)self _enumerateRenderers:v6];
  v5 = [(PXGEngine *)self textureManager];
  [v5 setTextureConverters:v4];
}

- (BOOL)_shouldDeferRenderUntilNextFrame
{
  v3 = [(PXGEngine *)self didRenderThisFrame];
  if (v3)
  {
    LOBYTE(v3) = ![(PXGEngine *)self _isInBackground];
  }

  return v3;
}

- (void)__setNeedsUpdate
{
  kdebug_trace();
  v3 = [(PXGEngine *)self delegate];
  [v3 engineSetNeedsUpdate:self];
}

- (void)_updateDisplayLink
{
  needsUpdate = self->_updateFlags.needsUpdate;
  pendingUpdateEntities = self->_pendingUpdateEntities;
  v5 = [(PXGEngine *)self didRenderThisFrame];
  keepDisplayLinkAlive = self->_keepDisplayLinkAlive;
  v21 = [(PXGEngine *)self gotScrollEventThisFrame];
  v7 = [(PXGEngine *)self expectingScrollEvents];
  v8 = [(PXGAnimator *)self->_animator isAnimating];
  v9 = [(PXGAnimator *)self->_animator hasCriticalAnimations];
  v10 = [(PXGEngine *)self scrollViewController];
  v11 = [v10 deferContentOffsetUpdates];

  v12 = 1;
  if (needsUpdate || pendingUpdateEntities || v5 || keepDisplayLinkAlive)
  {
    v13 = v21;
  }

  else
  {
    v13 = v21;
    if (!v21 && !v7 && !v8 && !v9 && (v11 & 1) == 0)
    {
      v12 = [(PXGEngine *)self isExporting];
    }
  }

  v14 = [(PXGEngine *)self isVisible]&& v12;
  v15 = [(PXGEngine *)self displayLink];
  [v15 setPaused:v14 ^ 1u];

  v16 = 2228224;
  if ([(PXGEngine *)self lowPowerMode])
  {
    v17 = 4;
  }

  else
  {
    v18 = [(PXGAnimator *)self->_animator highFrameRateReason];
    if (v13 || v7)
    {
      v19 = 2228225;
    }

    else
    {
      v19 = 2228224;
    }

    if (v18)
    {
      v16 = v18;
    }

    else
    {
      v16 = v19;
    }

    if (v18)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }
  }

  v20 = [(PXGEngine *)self displayLink];
  [v20 setHighFrameRateReason:v16];

  v22 = [(PXGEngine *)self displayLink];
  [v22 setFrameRateRangeType:v17];
}

- (void)_updateLayoutInteractions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(PXGEngine *)self interactions];
  v4 = [(PXGEngine *)self activeInteractions];
  [v4 removeAllObjects];
  v5 = [(PXGEngine *)self interactionView];
  v6 = [(PXGEngine *)self scrollViewController];
  v7 = [(PXGEngine *)self layout];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__PXGEngine__updateLayoutInteractions__block_invoke;
  v23[3] = &unk_2782A92F8;
  v8 = v6;
  v24 = v8;
  v9 = v5;
  v25 = v9;
  v10 = v3;
  v26 = v10;
  v11 = v4;
  v27 = v11;
  [v7 enumerateDescendantsLayoutsUsingBlock:v23];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        [v17 setScrollViewController:{0, v19}];
        [v17 setView:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(PXGEngine *)self interactions];
  [v18 setSet:v11];
}

- (PXGHitTestEnvironment)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionView);

  return WeakRetained;
}

void __38__PXGEngine__updateLayoutInteractions__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a2 interactions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setScrollViewController:*(a1 + 32)];
        [v8 setView:*(a1 + 40)];
        [*(a1 + 48) removeObject:v8];
        [*(a1 + 56) addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __40__PXGEngine__propagateTextureConverters__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textureConverter];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (BOOL)_shouldWaitForScrollEvent
{
  v3 = [(PXGEngine *)self expectingScrollEvents];
  if (v3)
  {
    if ([(PXGEngine *)self _isInBackground])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PXGAnimator *)self->_animator hasCriticalAnimations];
    }
  }

  return v3;
}

- (PXGEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateLayout
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = [(PXGEngine *)self layout];
  v5 = [(PXGEngine *)self stats];
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  [(PXGEngine *)self scrollState];
  kdebug_trace();
  Current = CFAbsoluteTimeGetCurrent();
  v7 = [(PXGEngine *)self coalescingAXResponder];
  v78 = [v7 pauseEventDelivery];
  isLiveResizing = 1;
  [v7 setPauseEventDelivery:1];
  [v4 visibleRect];
  if (PXSizeApproximatelyEqualToSize())
  {
    isLiveResizing = self->_isLiveResizing;
  }

  self->_viewSizeDidChange = isLiveResizing;
  v74 = a2;
  if ([(PXGEngine *)self didDisappear])
  {
    v9 = 0;
  }

  else
  {
    v9 = [(PXGEngine *)self isInitialLoad]^ 1;
  }

  [v4 setAppearState:v9];
  [v4 setVisibleRect:{0.0, 0.0, 0.0, 0.0}];
  v10 = [(PXGEngine *)self viewEnvironment];
  [v10 userInterfaceLayoutDirection];
  PXEdgeInsetsNormalizeForLayoutDirection();
  [v4 setSafeAreaInsets:?];

  [v4 setReferenceSize:v89];
  [v4 setLastScrollDirection:v98];
  [v4 setScrollSpeedRegime:v99];
  [(PXGEngine *)self _updateLayoutInteractions];
  v11 = [(PXGEngine *)self layoutQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MEMORY[0x277CCACC8] isMainThread];
  v13 = PXGLayoutCanInstallLayoutCompletionBlock;
  if (v12)
  {
    PXGLayoutCanInstallLayoutCompletionBlock = 1;
  }

  v14 = [(PXGEngine *)self scrollStateIncludesScrollEvent];
  [(PXGEngine *)self setScrollStateIncludesScrollEvent:0];
  PXPointSubtract();
  v16 = v15;
  v18 = v17;
  v19 = *(MEMORY[0x277CBF348] + 8);
  v75 = *MEMORY[0x277CBF348];
  if ((PXPointApproximatelyEqualToPoint() & 1) == 0 && v14)
  {
    [v4 containingScrollViewDidScroll:{v16, v18}];
  }

  [v4 updateIfNeeded];
  if (v12)
  {
    PXGLayoutCanInstallLayoutCompletionBlock = v13;
  }

  v20 = CFAbsoluteTimeGetCurrent() - Current;
  v5->var0[0] = v20;
  v5->var1[0] = v20 + v5->var1[0];
  ++v5->var2[0];
  v21 = v5->var3[0];
  if (v21 > v20 || v21 == 0.0)
  {
    v5->var3[0] = v20;
  }

  if (v5->var4[0] < v20)
  {
    v5->var4[0] = v20;
  }

  v76 = v5;
  v22 = CFAbsoluteTimeGetCurrent();
  v23 = [v4 numberOfSprites];
  v24 = [v4 changeDetails];
  v25 = [v24 copy];

  if (kdebug_is_enabled())
  {
    v73 = v7;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
    if (v26)
    {
      v27 = v26;
      v80 = *v86;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v86 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v85 + 1) + 8 * i);
          v30 = [v29 removedIndexes];
          v84[0] = MEMORY[0x277D85DD0];
          v84[1] = 3221225472;
          v84[2] = __26__PXGEngine__updateLayout__block_invoke;
          v84[3] = &unk_2782AA948;
          v84[4] = self;
          [v30 enumerateRangesUsingBlock:v84];

          v31 = [v29 insertedIndexes];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __26__PXGEngine__updateLayout__block_invoke_2;
          v83[3] = &unk_2782AA948;
          v83[4] = self;
          [v31 enumerateRangesUsingBlock:v83];

          v32 = [v29 movesToIndexes];
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __26__PXGEngine__updateLayout__block_invoke_3;
          v82[3] = &unk_2782AA948;
          v82[4] = self;
          [v32 enumerateRangesUsingBlock:v82];

          v33 = [v29 changedIndexes];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __26__PXGEngine__updateLayout__block_invoke_4;
          v81[3] = &unk_2782AA948;
          v81[4] = self;
          [v33 enumerateRangesUsingBlock:v81];
        }

        v27 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
      }

      while (v27);
    }

    v7 = v73;
  }

  v34 = [(PXGChangeDetails *)self->_layoutChangeDetails layoutVersionAfterChange];
  [(PXGChangeDetails *)self->_layoutChangeDetails configureWithNumberOfSpritesAfterChange:v23 changeDetails:v25];
  [(PXGChangeDetails *)self->_layoutChangeDetails setLayoutVersionBeforeChange:v34];
  -[PXGChangeDetails setLayoutVersionAfterChange:](self->_layoutChangeDetails, "setLayoutVersionAfterChange:", [v4 version]);
  v35 = [v4 changeDetails];
  [v35 removeAllObjects];

  v36 = self->_layoutSpriteDataStore;
  [v4 copyLayoutForSpritesInRange:v23 << 32 toSpriteDataStore:v36];
  [v4 contentSize];
  v38 = v37;
  v40 = v39;
  v41 = [v4 changeDetails];
  v42 = [v41 count];

  if (v42)
  {
    v70 = [MEMORY[0x277CCA890] currentHandler];
    v71 = [v4 changeDetails];
    [v70 handleFailureInMethod:v74 object:self file:@"PXGEngine.m" lineNumber:1257 description:{@"%@ modified itself during the layout copy pass, details:%@", v4, v71}];
  }

  v43 = CFAbsoluteTimeGetCurrent() - v22;
  v76->var0[1] = v43;
  v76->var1[1] = v43 + v76->var1[1];
  ++v76->var2[1];
  v44 = v76->var3[1];
  if (v44 > v43 || v44 == 0.0)
  {
    v76->var3[1] = v43;
  }

  if (v76->var4[1] < v43)
  {
    v76->var4[1] = v43;
  }

  v77 = v19;
  kdebug_trace();
  if ([v4 scrollableAxis] != 2 && objc_msgSend(v4, "userInterfaceDirection") == 1)
  {
    [v4 referenceSize];
    v46 = v45;
    v47 = [(PXGSpriteDataStore *)v36 geometries];
    v48 = [(PXGSpriteDataStore *)v36 styles];
    if (v23)
    {
      v49 = (v48 + 70);
      do
      {
        *v47 = v46 - *v47;
        v50 = *v49;
        if (v50 > 0xD)
        {
          v51 = 0;
        }

        else
        {
          v51 = byte_21AE2D968[v50];
        }

        *v49 = v51;
        v49 += 160;
        v47 += 4;
        LODWORD(v23) = v23 - 1;
      }

      while (v23);
    }
  }

  isUpdatingScrollView = self->_isUpdatingScrollView;
  self->_isUpdatingScrollView = 1;
  v53 = [(PXGEngine *)self scrollController];
  [v53 contentBounds];
  v55 = v54;
  v57 = v56;
  [v53 visibleOrigin];
  [v4 visibleRect];
  v59 = v58;
  v61 = v60;
  [v53 setContentBounds:{v55, v57, v38, v40}];
  v62 = v75;
  v63 = v77;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [v53 setVisibleOrigin:{v59, v61}];
    [v53 visibleOrigin];
    PXPointSubtract();
    v62 = v64;
    v63 = v65;
    [(PXGEngine *)self _updateScrollStateWithReason:1];
  }

  self->_viewportShift.x = v62;
  self->_viewportShift.y = v63;
  [v53 constrainedVisibleRect];
  self->_previousVisibleOrigin.x = v66;
  self->_previousVisibleOrigin.y = v67;
  self->_isUpdatingScrollView = isUpdatingScrollView;
  [(PXGEngine *)self _forceInvalidate:14];
  [v7 setPauseEventDelivery:v78];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v68 = MEMORY[0x21CEE40A0](PXGLayoutLayoutCompletionBlock);
    v69 = PXGLayoutLayoutCompletionBlock;
    PXGLayoutLayoutCompletionBlock = 0;

    if (v68)
    {
      v68[2](v68);
    }

    if (PXGSimulatedLayoutGlitchPeriod)
    {
      v72 = _updateLayout_counter;
      if (!(_updateLayout_counter % PXGSimulatedLayoutGlitchPeriod))
      {
        [MEMORY[0x277CCACC8] sleepForTimeInterval:*&PXGSimulatedLayoutGlitchDuration];
        v72 = _updateLayout_counter;
      }

      _updateLayout_counter = v72 + 1;
    }
  }

  [(PXGEngine *)self setDidChangeWindow:0];
}

- (_PXGEngineScrollState)scrollState
{
  retstr->scrollSpeedRegime = *&self[4].visibleRect.origin.y;
  v3 = *&self[4].contentInsets.right;
  retstr->constrainedVisibleRect.size = *&self[4].contentInsets.left;
  retstr->lastScrollDirection = v3;
  lastScrollDirection = self[3].lastScrollDirection;
  retstr->visibleRect.size = self[3].constrainedVisibleRect.size;
  retstr->targetRect.origin = lastScrollDirection;
  v5 = *&self[4].referenceSize.height;
  retstr->targetRect.size = *&self[3].scrollSpeedRegime;
  retstr->constrainedVisibleRect.origin = v5;
  origin = self[3].targetRect.origin;
  retstr->referenceSize = self[3].visibleRect.size;
  *&retstr->contentInsets.top = origin;
  v7 = self[3].constrainedVisibleRect.origin;
  *&retstr->contentInsets.bottom = self[3].targetRect.size;
  retstr->visibleRect.origin = v7;
  return self;
}

- (void)_updateInteractionState
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v3 = [(PXGEngine *)self scrollViewSpeedometer];
  v4 = [v3 regime];

  v37 = v4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v5 = [(PXGEngine *)self layout];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __36__PXGEngine__updateInteractionState__block_invoke;
  v29[3] = &unk_2782A9320;
  v29[4] = &v38;
  v29[5] = &v34;
  v29[6] = &v30;
  [v5 enumerateDescendantsLayoutsUsingBlock:v29];

  v6 = self->_animatorWasAnimatingAtBeginningOfFrame && [(PXGAnimator *)self->_animator isAnimating];
  v17 = [(PXGEngine *)self isExporting];
  v16 = v35[3];
  v7 = [(PXGEngine *)self scrollViewController];
  v8 = [v7 isAnimatingScrollTowardsEdge];
  v9 = [(PXGEngine *)self scrollViewController];
  v10 = [v9 isScrubbing];
  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v39 + 24);
  }

  v12 = v31[3];
  viewSizeDidChange = self->_viewSizeDidChange;
  isInitialLoad = self->_isInitialLoad;
  v15 = [(PXGEngine *)self isVisible];
  [(PXGEngine *)self scrollState];
  *&v42[21] = v28;
  *&v42[5] = *&v27[101];
  v26 = *v42;
  v18 = v16;
  v19 = v8;
  v20 = v10;
  v21 = v11 & 1;
  v22 = v12;
  v23 = viewSizeDidChange && !v17;
  v24 = isInitialLoad && !v17;
  v25 = v15;
  *v27 = *&v42[16];
  *&v27[13] = *(&v28 + 1);
  [(PXGEngine *)self setInteractionState:&v18];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

void __36__PXGEngine__updateInteractionState__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 8);
  v10 = v3;
  if (*(v4 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isAnimating];
    v4 = *(a1[4] + 8);
  }

  *(v4 + 24) = v5;
  v6 = *(*(a1[5] + 8) + 24);
  v7 = [v10 intrinsicScrollRegime];
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  *(*(a1[5] + 8) + 24) = v8;
  v9 = [v10 contentChangeTrend];
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = v9;
  }
}

- (void)_updateTextureManager
{
  animationPresentationSpriteDataStore = self->_animationPresentationSpriteDataStore;
  if (animationPresentationSpriteDataStore)
  {
    v5 = [(PXGSpriteDataStore *)animationPresentationSpriteDataStore count];
    if (v5 != [(PXGSpriteDataStore *)self->_animationTargetSpriteDataStore count])
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXGEngine.m" lineNumber:1379 description:{@"Invalid parameter not satisfying: %@", @"_animationPresentationSpriteDataStore.count == _animationTargetSpriteDataStore.count"}];
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  textureManager = self->_textureManager;
  v9 = self->_animationPresentationSpriteDataStore;
  animationTargetSpriteDataStore = self->_animationTargetSpriteDataStore;
  animationLayout = self->_animationLayout;
  animationChangeDetails = self->_animationChangeDetails;
  [(PXGEngine *)self interactionState];
  [(PXGTextureManager *)textureManager streamTexturesForSpritesInDataStore:animationTargetSpriteDataStore presentationDataStore:v9 changeDetails:animationChangeDetails layout:animationLayout interactionState:v16];
  v12 = [(PXGEngine *)self stats];
  v13 = CFAbsoluteTimeGetCurrent() - Current;
  v12->var0[3] = v13;
  v12->var1[3] = v13 + v12->var1[3];
  ++v12->var2[3];
  v14 = v12->var3[3];
  if (v14 > v13 || v14 == 0.0)
  {
    v12->var3[3] = v13;
  }

  if (v12->var4[3] < v13)
  {
    v12->var4[3] = v13;
  }

  [(PXGEngine *)self _notifyContentLoadedObserversIfNeeded];
  [(PXGEngine *)self _forceInvalidate:8];
}

- ($28B10562A11C0018BB97DE3323169FD5)interactionState
{
  v3 = *&self[8].var1;
  *&retstr->var0 = *&self[7].var8.size.height;
  *&retstr->var4 = v3;
  v4 = *&self[8].var8.origin.y;
  retstr->var8.origin = *&self[8].var5;
  retstr->var8.size = v4;
  return self;
}

- (void)_notifyContentLoadedObserversIfNeeded
{
  v3 = [(PXGEngine *)self pendingContentLoadedNotificationBlocks];
  v4 = [v3 count];

  if (v4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = [(PXGEngine *)self entityManager];
    v6 = [v5 loadingStatus];
    v7 = [v6 states];

    animationPresentationSpriteDataStore = self->_animationPresentationSpriteDataStore;
    [(PXGLayout *)self->_layout visibleRect];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__PXGEngine__notifyContentLoadedObserversIfNeeded__block_invoke;
    v16[3] = &unk_2782A9288;
    v16[4] = &v17;
    v16[5] = v7;
    [(PXGSpriteDataStore *)animationPresentationSpriteDataStore enumerateSpritesInRect:v16 usingBlock:?];
    if ((v18[3] & 1) == 0)
    {
      v9 = [(PXGEngine *)self pendingContentLoadedNotificationBlocks];
      v10 = [v9 copy];

      v11 = [(PXGEngine *)self pendingContentLoadedNotificationBlocks];
      [v11 removeAllObjects];

      v12 = [(PXGEngine *)self layoutQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__PXGEngine__notifyContentLoadedObserversIfNeeded__block_invoke_2;
      block[3] = &unk_2782ABE50;
      v15 = v10;
      v13 = v10;
      dispatch_async(v12, block);
    }

    _Block_object_dispose(&v17, 8);
  }
}

- (void)_setNeedsRender
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(PXGEngine *)self displayLink];
  [v3 timestamp];
  v4 = [(PXGEngine *)self displayLink];
  [v4 targetTimestamp];
  CACurrentMediaTime();
  kdebug_trace();

  [(PXGEngine *)self setDidRenderThisFrame:1];
  v5 = [(PXGEngine *)self _shouldDeferContentOffsetUpdates];
  v6 = [(PXGEngine *)self scrollViewController];
  [v6 setDeferContentOffsetUpdates:v5];

  [(PXGEngine *)self _updateDisplayLink];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(PXGEngine *)self renderers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setNeedsRender];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = [(PXGEngine *)self drivingRenderer];

  if (!v12)
  {
    [(PXGEngine *)self _performRender];
  }
}

- (BOOL)_shouldDeferContentOffsetUpdates
{
  v3 = [(PXGEngine *)self scrollViewController];
  v4 = [v3 isTracking];

  if (v4)
  {
    return 1;
  }

  v5 = [(PXGEngine *)self scrollViewController];
  v6 = [v5 isDragging];

  if (v6)
  {
    return 1;
  }

  v8 = [(PXGEngine *)self scrollViewController];
  v9 = [v8 isDecelerating];

  return v9;
}

- (void)_resetChangeDetails
{
  layoutChangeDetails = self->_layoutChangeDetails;
  v4 = [(PXGSpriteDataStore *)self->_layoutSpriteDataStore count];
  v5 = MEMORY[0x277CBEBF8];
  [(PXGChangeDetails *)layoutChangeDetails configureWithNumberOfSpritesAfterChange:v4 changeDetails:MEMORY[0x277CBEBF8]];
  [(PXGChangeDetails *)self->_animationChangeDetails configureWithNumberOfSpritesAfterChange:[(PXGSpriteDataStore *)self->_animationTargetSpriteDataStore count] changeDetails:v5];
  v7 = [(PXGEngine *)self layout];
  v6 = [v7 version];
  [(PXGChangeDetails *)self->_layoutChangeDetails setLayoutVersionAfterChange:v6];
  [(PXGChangeDetails *)self->_layoutChangeDetails setLayoutVersionBeforeChange:v6];
}

- (void)_performRender
{
  v3 = [(PXGEngine *)self stats];
  [(PXGLayout *)self->_layout visibleRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  kdebug_trace();
  Current = CFAbsoluteTimeGetCurrent();
  v13 = self->_animationPresentationSpriteDataStore;
  [(PXGSpriteDataStore *)v13 count];
  v14 = self->_presentationSpriteMetadaStore;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  [(PXGEngine *)self interactionState];
  v15 = [(PXGEngine *)self textureManager];
  v16 = [v15 texturesByPresentationType];

  v17 = [(PXGEngine *)self overlayTextureManager];
  v18 = [v17 overlayTexturesByPresentationTypeForTextures:v16 spriteDataStore:v13];

  v44 = v18;
  v19 = [(PXGEngine *)self _mergeTexturesByPresentationType:v16 withOverlayTexturesByPresentationType:v18];

  v20 = CFAbsoluteTimeGetCurrent() - Current;
  v3->var0[4] = v20;
  v3->var1[4] = v20 + v3->var1[4];
  ++v3->var2[4];
  v21 = v3->var3[4];
  if (v21 > v20 || v21 == 0.0)
  {
    v3->var3[4] = v20;
  }

  if (v3->var4[4] < v20)
  {
    v3->var4[4] = v20;
  }

  v22 = CFAbsoluteTimeGetCurrent();
  v23 = +[PXTungstenSettings sharedInstance];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __27__PXGEngine__performRender__block_invoke;
  v45[3] = &unk_2782A9348;
  v50 = v5;
  v51 = v7;
  v52 = v9;
  v53 = v11;
  v54 = v58;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v45[4] = self;
  v24 = v19;
  v46 = v24;
  v25 = v23;
  v47 = v25;
  v26 = v13;
  v48 = v26;
  v27 = v14;
  v49 = v27;
  [(PXGEngine *)self _enumerateRenderers:v45];
  recordingSession = self->_recordingSession;
  if (recordingSession)
  {
    [(PXGTungstenRecordingSession *)self->_recordingSession frameState];
    v29 = v43 = v25;
    v30 = [v29 recordedSpriteIndexes];
    [(PXGEngine *)self layout];
    v32 = v31 = v27;
    [v32 displayScale];
    v33 = [PXGEngineRecordingDataStoreEvent eventWithTextures:v24 dataStore:v26 spriteIndexes:v30 screenScale:?];
    [(PXGTungstenRecordingSession *)recordingSession recordEvent:v33];

    v27 = v31;
    v25 = v43;
  }

  [(PXGEngine *)self setIsInitialLoad:0];
  [(PXGEngine *)self setDidDisappear:0];
  v34 = [(PXGEngine *)self layout];
  [v34 setAppearState:1];

  v35 = [(PXGEngine *)self layout];
  [v35 didRender];

  v36 = [(PXGEngine *)self displayLink];
  [v36 currentMediaTime];
  self->_lastRenderCompletionTimestamp = v37;

  v38 = CFAbsoluteTimeGetCurrent() - v22;
  v3->var0[5] = v38;
  v3->var1[5] = v38 + v3->var1[5];
  ++v3->var2[5];
  v39 = v3->var3[5];
  if (v39 > v38 || v39 == 0.0)
  {
    v3->var3[5] = v38;
  }

  if (v3->var4[5] < v38)
  {
    v3->var4[5] = v38;
  }

  v40 = [(PXGEngine *)self displayLink];
  [v40 targetTimestamp];
  kdebug_trace();

  v41 = [(PXGEngine *)self renderingCompletionHandler];
  if (v41)
  {
    [(PXGEngine *)self setRenderingCompletionHandler:0];
    v41[2](v41);
  }

  if (self->_delegateRespondsTo.didRender)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained engineDidRender:self];
  }

  [(PXGEngine *)self _retargetAnimations];
}

void __27__PXGEngine__performRender__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentationType];
  [v3 setVisibleRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v5 = *(a1 + 120);
  v14 = *(a1 + 104);
  v15 = v5;
  v6 = *(a1 + 152);
  v16 = *(a1 + 136);
  v17 = v6;
  [v3 setInteractionState:&v14];
  v7 = *(*(a1 + 32) + 96);
  if (v7)
  {
    [v7 cameraConfiguration];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  v24 = v37;
  v25 = v38;
  v26 = v39;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v14 = v27;
  v15 = v28;
  [v3 setCameraConfiguration:&v14];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = v10;
  v12 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if (!v4)
  {
    if ([*(a1 + 48) enableMetalRenderer])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4 == 1 && ([*(a1 + 48) enableViewRenderer] & 1) == 0)
  {
LABEL_9:

    v13 = MEMORY[0x277CBEBF8];
  }

LABEL_10:
  [v3 renderSpritesWithTextures:v13 dataStore:*(*(a1 + 32) + 88) presentationDataStore:*(a1 + 56) presentationMetadataStore:*(a1 + 64) layout:*(*(a1 + 32) + 96)];
}

- (BOOL)_isInBackground
{
  v3 = [(PXGEngine *)self layoutQueue];
  v4 = MEMORY[0x277D85CD0];

  if (v3 == v4)
  {
    if (_UIApplicationIsExtension())
    {
      if (!self->_extensionHostIsInBackground)
      {
        goto LABEL_2;
      }
    }

    else if (!self->_applicationIsInBackground)
    {
      goto LABEL_2;
    }

    return 1;
  }

LABEL_2:

  return [(PXGEngine *)self wantsImmediateUpdates];
}

- (void)_retargetAnimations
{
  renderForTargetTimestamp = self->_renderForTargetTimestamp;
  if (renderForTargetTimestamp != 0.0)
  {
    [(PXDisplayLinkProtocol *)self->_displayLink currentMediaTime];
    if (v4 > renderForTargetTimestamp)
    {
      [(PXGAnimator *)self->_animator retargetAnimationsAfterStartTime:renderForTargetTimestamp newStartTime:v4];
    }

    self->_renderForTargetTimestamp = 0.0;
  }

  if (![(PXGAnimator *)self->_animator isAnimating])
  {
    v5 = [(PXGEngine *)self animationRenderingCompletionHandler];
    if (v5)
    {
      v6 = v5;
      [(PXGEngine *)self setAnimationRenderingCompletionHandler:0];
      v6[2](v6);
      v5 = v6;
    }
  }
}

- (void)registerTextureProvider:(id)a3 forMediaKind:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXGEngine *)self textureManager];
  [v7 registerTextureProvider:v6 forMediaKind:v4];
}

- (void)registerAllTextureProvidersWithMediaProvider:(id)a3 namedImagesBundle:(id)a4
{
  v26 = a3;
  v6 = a4;
  if (v26)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(PXGEngine *)self layoutQueue];
      v8 = [(PXGEngine *)self px_createDisplayAssetTextureProviderWithMediaProvider:v26 layoutQueue:v7];
    }

    else
    {
      v9 = [PXGDisplayAssetTextureProvider alloc];
      v7 = [(PXGEngine *)self layoutQueue];
      v8 = [(PXGDisplayAssetTextureProvider *)v9 initWithDefaultMediaProvider:v26 layoutQueue:v7];
    }

    v10 = v8;

    [(PXGEngine *)self registerTextureProvider:v10 forMediaKind:2];
    [(PXGEngine *)self setMediaProvider:v26];
  }

  v11 = objc_alloc_init(PXGStringTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v11 forMediaKind:3];

  v12 = objc_alloc_init(PXGTitleSubtitleTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v12 forMediaKind:4];

  v13 = objc_alloc_init(PXGSolidColorTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v13 forMediaKind:5];

  v14 = objc_alloc_init(PXGDecorationTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v14 forMediaKind:8];

  v15 = objc_alloc_init(PXGGradientTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v15 forMediaKind:6];

  v16 = objc_alloc_init(PXGShadowTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v16 forMediaKind:7];

  v17 = objc_alloc_init(PXGViewTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v17 forMediaKind:10];

  v18 = objc_alloc_init(PXGCaptureSpriteTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v18 forMediaKind:9];

  v19 = objc_alloc_init(PXGPathTextureProvider);
  [(PXGEngine *)self registerTextureProvider:v19 forMediaKind:11];

  v20 = objc_alloc_init(PXGNamedImageTextureProvider);
  v21 = v6;
  v22 = v21;
  if (!v21)
  {
    if (objc_opt_respondsToSelector())
    {
      v23 = [(PXGEngine *)self px_defaultBundleForNamedImages];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = PXPhotosUIFoundationBundle();
      }

      v22 = v25;
    }

    else
    {
      v22 = PXPhotosUIFoundationBundle();
    }
  }

  [(PXGNamedImageTextureProvider *)v20 setBundle:v22];
  [(PXGEngine *)self registerTextureProvider:v20 forMediaKind:1];
  if (objc_opt_respondsToSelector())
  {
    [(PXGEngine *)self px_registerAdditionalTextureProviders];
  }
}

- (void)setInteractionState:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var4;
  size = a3->var8.size;
  self->_interactionState.targetRect.origin = a3->var8.origin;
  self->_interactionState.targetRect.size = size;
  *&self->_interactionState.scrollRegime = v3;
  *&self->_interactionState.contentChangeTrend = v4;
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (void)setSlowAnimationsEnabled:(BOOL)a3
{
  if (self->_slowAnimationsEnabled != a3)
  {
    self->_slowAnimationsEnabled = a3;
    v5 = +[PXTungstenSettings sharedInstance];
    [v5 slowAnimationsSpeed];
    v7 = v6;

    v8 = 1.0;
    if (self->_slowAnimationsEnabled)
    {
      v8 = v7;
    }

    animator = self->_animator;

    [(PXGAnimator *)animator setSpeed:v8];
  }
}

- (id)startRecordingToDirectoryURL:(id)a3
{
  v4 = a3;
  v5 = [(PXGEngine *)self recordingSession];
  if (v5 && (v6 = v5, -[PXGEngine recordingSession](self, "recordingSession"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isStopped], v7, v6, !v8))
  {
    v11 = 0;
  }

  else
  {
    v9 = [[PXGTungstenEngineRecordingSession alloc] initWithEngine:self directoryURL:v4];
    recordingSession = self->_recordingSession;
    self->_recordingSession = v9;

    [(PXGEngine *)self _invalidateOrDefer:8];
    v11 = [(PXGEngine *)self recordingSession];
  }

  return v11;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (speedometerObservationContext != a5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXGEngine.m" lineNumber:1800 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 2) != 0)
  {
    v11 = v9;
    if (self->_isUpdatingScrollView)
    {
      [(PXGEngine *)self _deferredInvalidate:5];
    }

    else
    {
      [(PXGEngine *)self _invalidateOrDefer:5];
    }

    v9 = v11;
  }
}

- (void)px_scrollControllerDidScroll:(id)a3
{
  v4 = a3;
  if (!self->_isUpdatingScrollView)
  {
    v5 = v4;
    if (self->_isInitialLoad || self->_didDisappear || self->_didChangeWindow)
    {
      [(PXGEngine *)self _updateScrollStateWithReason:5];
    }

    else
    {
      [(PXGEngine *)self _updateScrollStateWithReason:4];
      [(PXGEngine *)self _updateIfNeededWithReason:@"px_scrollControllerDidScroll"];
    }

    v4 = v5;
  }
}

- (void)px_scrollControllerDidUpdate:(id)a3
{
  [(PXGEngine *)self _updateScrollStateWithReason:2];

  [(PXGEngine *)self _updateIfNeededWithReason:@"px_scrollControllerDidUpdate"];
}

- (id)textureManager:(id)a3 requestRenderSnapshot:(id *)a4 offscreenEffect:(id)a5
{
  var0 = a4->var0;
  v8 = a5;
  v9 = [(PXGEngine *)self _rendererForPresentationType:var0];
  v10 = *&a4->var1.origin.y;
  v13[0] = *&a4->var0;
  v13[1] = v10;
  height = a4->var1.size.height;
  v11 = [v9 renderSnapshotForRequest:v13 offscreenEffect:v8];

  return v11;
}

- (void)layoutNeedsUpdate:(id)a3
{
  v4 = a3;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v5 = v4;
    [(PXGEngine *)self _invalidateOrDefer:1];
    goto LABEL_6;
  }

  if (self->_isUpdatingScrollView || self->_isUpdatingTextureManager)
  {
    v5 = v4;
    [(PXGEngine *)self _deferredInvalidate:1];
LABEL_6:
    v4 = v5;
  }
}

- (void)rendererPerformRender:(id)a3
{
  if (self->_drivingRenderer == a3)
  {
    [(PXGEngine *)self _performRender];
  }
}

- (void)_updateScrollStateWithReason:(unint64_t)a3
{
  v66 = [(PXGEngine *)self scrollController];
  if (![(PXGEngine *)self isExporting])
  {
    [v66 referenceSize];
    v6 = v5;
    v65 = v7;
    [v66 contentInset];
    v63 = v9;
    v64 = v8;
    v61 = v11;
    v62 = v10;
    [v66 visibleRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v66 targetRect];
    v59 = v21;
    v60 = v20;
    v57 = v23;
    v58 = v22;
    [v66 constrainedVisibleRect];
    v55 = v25;
    v56 = v24;
    v53 = v27;
    v54 = v26;
    v28 = [(PXGEngine *)self scrollViewSpeedometer];
    [v28 lastScrollDirection];
    v51 = v30;
    v52 = v29;
    v31 = [(PXGEngine *)self scrollViewSpeedometer];
    v32 = [v31 regime];

    v50 = v6;
    if (self->_scrollState.referenceSize.width != v6 || self->_scrollState.referenceSize.height != v65 || (x = self->_scrollState.visibleRect.origin.x, y = self->_scrollState.visibleRect.origin.y, width = self->_scrollState.visibleRect.size.width, height = self->_scrollState.visibleRect.size.height, v48 = self->_scrollState.targetRect.origin.y, v49 = self->_scrollState.targetRect.origin.x, v46 = self->_scrollState.targetRect.size.height, v47 = self->_scrollState.targetRect.size.width, v44 = self->_scrollState.constrainedVisibleRect.origin.y, v45 = self->_scrollState.constrainedVisibleRect.origin.x, v42 = self->_scrollState.constrainedVisibleRect.size.height, v43 = self->_scrollState.constrainedVisibleRect.size.width, v40 = self->_scrollState.lastScrollDirection.y, v41 = self->_scrollState.lastScrollDirection.x, scrollSpeedRegime = self->_scrollState.scrollSpeedRegime, !PXEdgeInsetsEqualToEdgeInsets()) || (v68.origin.x = x, v68.origin.y = y, v68.size.width = width, v68.size.height = height, v71.origin.x = v13, v71.origin.y = v15, v71.size.width = v17, v71.size.height = v19, !CGRectEqualToRect(v68, v71)) || (v69.origin.y = v48, v69.origin.x = v49, v69.size.height = v46, v69.size.width = v47, v72.origin.y = v59, v72.origin.x = v60, v72.size.height = v57, v72.size.width = v58, !CGRectEqualToRect(v69, v72)) || (v70.origin.y = v44, v70.origin.x = v45, v70.size.height = v42, v70.size.width = v43, v73.origin.y = v55, v73.origin.x = v56, v73.size.height = v53, v73.size.width = v54, !CGRectEqualToRect(v70, v73)) || v41 != v52 || v40 != v51 || scrollSpeedRegime != v32)
    {
      if (a3 == 4 && (v74.origin.x = v13, v74.origin.y = v15, v74.size.width = v17, v74.size.height = v19, !CGRectEqualToRect(self->_scrollState.visibleRect, v74)))
      {
        v38 = 1;
        [(PXGEngine *)self setGotScrollEventThisFrame:1];
        [(PXGEngine *)self setExpectingScrollEvents:1];
        v39 = [(PXGEngine *)self displayLink];
        [v39 currentMediaTime];
        [(PXGEngine *)self setLastScrollEventTime:?];

        [(PXGEngine *)self setScrollStateIncludesScrollEvent:1];
        [(PXGEngine *)self _updateDisplayLink];
      }

      else
      {
        v38 = 0;
      }

      self->_scrollState.referenceSize.width = v50;
      self->_scrollState.referenceSize.height = v65;
      self->_scrollState.contentInsets.top = v64;
      self->_scrollState.contentInsets.left = v63;
      self->_scrollState.contentInsets.bottom = v62;
      self->_scrollState.contentInsets.right = v61;
      self->_scrollState.visibleRect.origin.x = v13;
      self->_scrollState.visibleRect.origin.y = v15;
      self->_scrollState.visibleRect.size.width = v17;
      self->_scrollState.visibleRect.size.height = v19;
      self->_scrollState.targetRect.origin.x = v60;
      self->_scrollState.targetRect.origin.y = v59;
      self->_scrollState.targetRect.size.width = v58;
      self->_scrollState.targetRect.size.height = v57;
      self->_scrollState.constrainedVisibleRect.origin.x = v56;
      self->_scrollState.constrainedVisibleRect.origin.y = v55;
      self->_scrollState.constrainedVisibleRect.size.width = v54;
      self->_scrollState.constrainedVisibleRect.size.height = v53;
      self->_scrollState.lastScrollDirection.x = v52;
      self->_scrollState.lastScrollDirection.y = v51;
      self->_scrollState.scrollSpeedRegime = v32;
      if (!self->_isUpdatingScrollView)
      {
        kdebug_trace();
        if (!v38)
        {
LABEL_19:
          [(PXGEngine *)self _invalidateOrDefer:15];
          goto LABEL_21;
        }

        if ([(PXGEngine *)self _shouldDeferRenderUntilNextFrame])
        {
          [(PXGEngine *)self setMissedScrollEventThisFrame:1];
          goto LABEL_19;
        }

        [(PXGEngine *)self _forceInvalidate:15];
      }
    }
  }

LABEL_21:
}

- (void)setScrollViewSpeedometer:(id)a3
{
  v5 = a3;
  scrollViewSpeedometer = self->_scrollViewSpeedometer;
  if (scrollViewSpeedometer != v5)
  {
    v7 = v5;
    [(PXScrollViewSpeedometer *)scrollViewSpeedometer unregisterChangeObserver:self context:speedometerObservationContext];
    objc_storeStrong(&self->_scrollViewSpeedometer, a3);
    [(PXScrollViewSpeedometer *)self->_scrollViewSpeedometer registerChangeObserver:self context:speedometerObservationContext];
    v5 = v7;
  }
}

- (void)setScrollViewController:(id)a3
{
  v5 = a3;
  if (self->_scrollViewController != v5)
  {
    objc_storeStrong(&self->_scrollViewController, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__PXGEngine_setScrollViewController___block_invoke;
    v6[3] = &unk_2782A92D0;
    v7 = v5;
    [(PXGEngine *)self _enumerateRenderers:v6];
  }
}

void __37__PXGEngine_setScrollViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setScrollViewController:*(a1 + 32)];
  }
}

- (void)setScrollController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_scrollController != v5)
  {
    v7 = [(PXScrollController *)v5 updateDelegate];
    if (v7)
    {
      v8 = v7;
      v9 = [(PXScrollController *)self->_scrollController updateDelegate];

      if (v9 != self)
      {
        v10 = PXAssertGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11[0] = 0;
          _os_log_error_impl(&dword_21AD38000, v10, OS_LOG_TYPE_ERROR, "unexpected updateDelegate", v11, 2u);
        }
      }
    }

    [(PXScrollController *)self->_scrollController setUpdateDelegate:0];
    objc_storeStrong(&self->_scrollController, a3);
    [(PXScrollController *)self->_scrollController setUpdateDelegate:self];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PXGEngine *)self setScrollViewController:v6];
    }

    [(PXGEngine *)self _updateScrollStateWithReason:0];
  }
}

- (id)_mergeTexturesByPresentationType:(id)a3 withOverlayTexturesByPresentationType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if ([v6 count])
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
      v12 = [v7 objectForKeyedSubscript:v11];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
      v14 = [v6 objectForKeyedSubscript:v13];

      if (v12 | v14)
      {
        v15 = v12;
        v16 = v15;
        if (v14)
        {
          if (v12)
          {
            v17 = [v15 arrayByAddingObjectsFromArray:v14];

            v16 = v17;
          }

          else
          {
            v16 = v14;
          }
        }

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
        [v8 setObject:v16 forKey:v18];
      }

      ++v9;
    }

    while (v10 < 2);
  }

  return v8;
}

- (id)_rendererForPresentationType:(unsigned __int8)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PXGEngine *)self renderers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 presentationType] == v3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_enumerateRenderers:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PXGEngine *)self renderers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_performOnLayoutQueue:(id)a3
{
  block = a3;
  v4 = [(PXGEngine *)self layoutQueue];
  v5 = MEMORY[0x277D85CD0];

  if (v4 == v5)
  {
    px_dispatch_on_main_queue();
  }

  else
  {
    v6 = [(PXGEngine *)self layoutQueue];
    dispatch_async(v6, block);
  }
}

- (id)_createDisplayLinkWithScreen:(id)a3
{
  displayLinkClass = self->_displayLinkClass;
  v5 = a3;
  v6 = [[displayLinkClass alloc] initWithWeakTarget:self selector:sel_handleDisplayLink_ screen:v5 queue:self->_layoutQueue];

  return v6;
}

- (void)_updateAnimatorWithTargetTimestamp:(double)a3
{
  v30 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  Current = CFAbsoluteTimeGetCurrent();
  [(PXGAnimator *)self->_animator setPreferredFramesPerSecond:[(PXDisplayLinkProtocol *)self->_displayLink preferredFramesPerSecond]];
  animator = self->_animator;
  layoutSpriteDataStore = self->_layoutSpriteDataStore;
  layoutChangeDetails = self->_layoutChangeDetails;
  layout = self->_layout;
  animationPresentationSpriteDataStore = self->_animationPresentationSpriteDataStore;
  animationTargetSpriteDataStore = self->_animationTargetSpriteDataStore;
  v24 = 0;
  v25 = 0;
  [(PXGAnimator *)animator computeAnimationStateForTime:layoutSpriteDataStore inputSpriteDataStore:layoutChangeDetails inputChangeDetails:layout inputLayout:animationPresentationSpriteDataStore viewportShift:animationTargetSpriteDataStore animationPresentationSpriteDataStore:&v25 animationTargetSpriteDataStore:a3 animationChangeDetails:self->_viewportShift.x animationLayout:self->_viewportShift.y, &v24];
  v12 = v25;
  v13 = v25;
  v14 = v24;
  self->_viewportShift = *MEMORY[0x277CBF348];
  objc_storeStrong(&self->_animationChangeDetails, v12);
  if (!v14)
  {
    v15 = PXAssertGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = self->_animator;
      *buf = 134218242;
      v27 = a3;
      v28 = 2112;
      v29 = v23;
      _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "missing animationLayout when computing state for time %f for animator %@", buf, 0x16u);
    }
  }

  animationLayout = self->_animationLayout;
  self->_animationLayout = v14;
  v17 = v14;

  v18 = [(PXGLayout *)self->_layout spriteMetadataStore];
  presentationSpriteMetadaStore = self->_presentationSpriteMetadaStore;
  self->_presentationSpriteMetadaStore = v18;

  [(PXGSpriteDataStore *)self->_animationPresentationSpriteDataStore count];
  kdebug_trace();
  v20 = [(PXGEngine *)self stats];
  v21 = CFAbsoluteTimeGetCurrent() - Current;
  v20->var0[2] = v21;
  v20->var1[2] = v21 + v20->var1[2];
  ++v20->var2[2];
  v22 = v20->var3[2];
  if (v22 > v21 || v22 == 0.0)
  {
    v20->var3[2] = v21;
  }

  if (v20->var4[2] < v21)
  {
    v20->var4[2] = v21;
  }

  if (self->_renderForTargetTimestamp == 0.0)
  {
    self->_renderForTargetTimestamp = a3;
  }

  [(PXGEngine *)self _forceInvalidate:12];
}

- (void)_updateIfNeededWithReason:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isSuspended)
  {
    goto LABEL_51;
  }

  if (!self->_updateFlags.needsUpdate)
  {
    self->_updateFlags.willPerformUpdate = 0;
LABEL_49:
    pendingViewEnvironment = self->_pendingViewEnvironment;
    if (pendingViewEnvironment)
    {
      self->_pendingViewEnvironment = 0;
      v38 = pendingViewEnvironment;

      [(PXGEngine *)self setViewEnvironment:v38];
    }

    goto LABEL_51;
  }

  if (!self->_updateFlags.isPerformingUpdate)
  {
    *&self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 0;
    if ([(PXGEngine *)self statsTrackingEnabled])
    {
      stats = self->_stats;
      *&stats->var0[2] = 0u;
      *&stats->var0[4] = 0u;
      *stats->var0 = 0u;
    }

    v6 = [(PXGEngine *)self displayLink];
    [v6 targetTimestamp];
    v8 = v7;

    v9 = [(PXGEngine *)self displayLink];
    [v9 currentMediaTime];
    v11 = v10;

    if (v8 < v11)
    {
      v8 = v11;
    }

    self->_animatorWasAnimatingAtBeginningOfFrame = [(PXGAnimator *)self->_animator isAnimating];
    kdebug_trace();
    recordingSession = self->_recordingSession;
    if (recordingSession)
    {
      [(PXGTungstenRecordingSession *)recordingSession startNextFrame];
      v13 = self->_recordingSession;
      v14 = [PXGEngineRecordingUpdateStartEvent eventWithTargetTimestamp:self->_updateFlags.needsUpdate needsUpdate:self->_pendingUpdateEntities pendingUpdateEntities:v8];
      [(PXGTungstenRecordingSession *)v13 recordEvent:v14];
    }

    pendingUpdateEntities = self->_pendingUpdateEntities;
    if (pendingUpdateEntities)
    {
      self->_updateFlags.needsUpdate |= pendingUpdateEntities;
      self->_pendingUpdateEntities = 0;
    }

    v16 = [(PXGEngine *)self _shouldDeferRenderUntilNextFrame];
    [(PXGEngine *)self _updateScrollStateWithReason:3];
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v41 = [MEMORY[0x277CCA890] currentHandler];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGEngine _updateIfNeededWithReason:]"];
      [v41 handleFailureInFunction:v42 file:@"PXGEngine.m" lineNumber:1067 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    needsUpdate = self->_updateFlags.needsUpdate;
    self->_updateFlags.updated |= 1uLL;
    if (needsUpdate)
    {
      self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGEngine *)self _updateLayout];
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      v43 = [MEMORY[0x277CCA890] currentHandler];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGEngine _updateIfNeededWithReason:]"];
      [v43 handleFailureInFunction:v44 file:@"PXGEngine.m" lineNumber:1072 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v19 = self->_updateFlags.needsUpdate;
    self->_updateFlags.updated |= 2uLL;
    if ((v19 & 2) != 0)
    {
      self->_updateFlags.needsUpdate = v19 & 0xFFFFFFFFFFFFFFFDLL;
      v18 |= 2uLL;
      [(PXGEngine *)self _updateAnimatorWithTargetTimestamp:v8];
      v19 = self->_updateFlags.needsUpdate;
    }

    if ((v19 & 0xC) != 0)
    {
      [(PXGEngine *)self _updateInteractionState];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      v45 = [MEMORY[0x277CCA890] currentHandler];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGEngine _updateIfNeededWithReason:]"];
      [v45 handleFailureInFunction:v46 file:@"PXGEngine.m" lineNumber:1081 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v20 = self->_updateFlags.needsUpdate;
    self->_updateFlags.updated |= 4uLL;
    if ((v20 & 4) != 0)
    {
      self->_updateFlags.needsUpdate = v20 & 0xFFFFFFFFFFFFFFFBLL;
      v18 |= 4uLL;
      isUpdatingTextureManager = self->_isUpdatingTextureManager;
      self->_isUpdatingTextureManager = 1;
      [(PXGEngine *)self _updateTextureManager];
      self->_isUpdatingTextureManager = isUpdatingTextureManager;
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      v47 = [MEMORY[0x277CCA890] currentHandler];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGEngine _updateIfNeededWithReason:]"];
      [v47 handleFailureInFunction:v48 file:@"PXGEngine.m" lineNumber:1089 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v22 = self->_updateFlags.needsUpdate;
    self->_updateFlags.updated |= 8uLL;
    if ((v22 & 8) != 0)
    {
      self->_updateFlags.needsUpdate = v22 & 0xFFFFFFFFFFFFFFF7;
      isUpdatingRenderer = self->_isUpdatingRenderer;
      self->_isUpdatingRenderer = 1;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __39__PXGEngine__updateIfNeededWithReason___block_invoke;
      v51[3] = &unk_2782A92D0;
      v51[4] = self;
      [(PXGEngine *)self _enumerateRenderers:v51];
      v24 = self->_recordingSession;
      if (v24)
      {
        v25 = [PXGEngineRecordingChangeDetailsEvent eventWithChangeDetails:self->_animationChangeDetails];
        [(PXGTungstenRecordingSession *)v24 recordEvent:v25];
      }

      v26 = [(PXGEngine *)self delegate];
      if (v26)
      {
        v27 = [(PXGEngine *)self delegate];
        v28 = [v27 engine:self shouldRenderLayout:self->_layout sprites:self->_animationPresentationSpriteDataStore];
      }

      else
      {
        v28 = 1;
      }

      v18 |= 8uLL;

      if (v16 || (v28 & 1) == 0)
      {
        self->_pendingUpdateEntities |= 8uLL;
        v29 = self->_recordingSession;
        if (v29)
        {
          v30 = [PXGEngineDeferRenderEvent eventWithShouldDeferRenderUntilNextFrame:v16 delegateAllowsRender:v28];
          [(PXGTungstenRecordingSession *)v29 recordEvent:v30];
        }
      }

      else
      {
        [(PXGEngine *)self _setNeedsRender];
      }

      self->_isUpdatingRenderer = isUpdatingRenderer;
    }

    [(PXGEngine *)self _resetChangeDetails];
    if (self->_viewSizeDidChange)
    {
      [(PXGEngine *)self _deferredInvalidate:13];
    }

    [(PXGEngine *)self _updateDisplayLink];
    self->_previousUpdateEntities = v18;
    [(PXGEngine *)self interactionState];
    v31 = v53;
    *&self->_previousInteractionState.scrollRegime = *buf;
    *&self->_previousInteractionState.contentChangeTrend = v31;
    v32 = v55;
    self->_previousInteractionState.targetRect.origin = v54;
    self->_previousInteractionState.targetRect.size = v32;
    kdebug_trace();
    v33 = self->_recordingSession;
    if (v33)
    {
      v34 = [PXGEngineRecordingUpdateEndEvent eventWithUpdated:v18 != 0];
      [(PXGTungstenRecordingSession *)v33 recordEvent:v34];
    }

    if (self->_delegateRespondsTo.updateDebugHUDWithStats)
    {
      v35 = [(PXGEngine *)self delegate];
      [v35 engine:self updateDebugHUDWithStats:self->_stats];
    }

    v36 = [(PXGEngine *)self entityManager];
    [v36 cleanupUnusedObjects];

    self->_updateFlags.isPerformingUpdate = 0;
    if (self->_updateFlags.needsUpdate)
    {
      v49 = [MEMORY[0x277CCA890] currentHandler];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGEngine _updateIfNeededWithReason:]"];
      [v49 handleFailureInFunction:v50 file:@"PXGEngine.m" lineNumber:1143 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }

    goto LABEL_49;
  }

  v39 = PXGTungstenGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = PFBitmaskDescription();
    *buf = 138412290;
    *&buf[4] = v40;
    _os_log_impl(&dword_21AD38000, v39, OS_LOG_TYPE_ERROR, "Recursive update in PXGEngine (needs update: %@)", buf, 0xCu);
  }

  [(PXGEngine *)self _recursiveUpdateDetected];
LABEL_51:
}

- (void)ensureUpdatedLayout
{
  if (self->_updateFlags.isPerformingUpdate)
  {
    return;
  }

  v4 = [(PXGEngine *)self layout];
  v5 = [v4 changeDetails];
  if ([v5 count])
  {

LABEL_5:
    [(PXGEngine *)self _forceInvalidate:1];
    goto LABEL_6;
  }

  pendingUpdateEntities = self->_pendingUpdateEntities;

  if (pendingUpdateEntities)
  {
    goto LABEL_5;
  }

LABEL_6:

  [(PXGEngine *)self _updateIfNeededWithReason:@"ensureUpdatedLayout"];
}

- (void)_handleRescheduledRecursiveUpdate
{
  [(PXGEngine *)self setRecursiveUpdateRescheduled:0];

  [(PXGEngine *)self _forceInvalidate:15];
}

- (void)_recursiveUpdateDetected
{
  if (![(PXGEngine *)self recursiveUpdateRescheduled])
  {
    [(PXGEngine *)self setRecursiveUpdateRescheduled:1];
    objc_initWeak(&location, self);
    v3 = [(PXGEngine *)self layoutQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__PXGEngine__recursiveUpdateDetected__block_invoke;
    v4[3] = &unk_2782AB888;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __37__PXGEngine__recursiveUpdateDetected__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRescheduledRecursiveUpdate];
}

- (void)_forceInvalidate:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_updateFlags.isPerformingUpdate)
  {
    if ((self->_updateFlags.updated & a3) == 0)
    {
      needsUpdate = self->_updateFlags.needsUpdate;
LABEL_10:
      self->_updateFlags.needsUpdate = needsUpdate | a3;
      return;
    }

    v6 = PXGTungstenGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = PFBitmaskDescription();
      v8 = PFBitmaskDescription();
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "Recursive update in PXGEngine (invalidating: %@; already updated: %@)", &v9, 0x16u);
    }

    [(PXGEngine *)self _recursiveUpdateDetected];
  }

  else
  {
    needsUpdate = self->_updateFlags.needsUpdate;
    if (!a3 || needsUpdate)
    {
      goto LABEL_10;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    self->_updateFlags.needsUpdate = a3;
    if (!willPerformUpdate)
    {
      kdebug_trace();
      [(PXGEngine *)self __setNeedsUpdate];

      [(PXGEngine *)self _updateDisplayLink];
    }
  }
}

- (void)_deferredInvalidate:(unint64_t)a3
{
  kdebug_trace();
  pendingUpdateEntities = self->_pendingUpdateEntities;
  if ((pendingUpdateEntities | a3) != pendingUpdateEntities)
  {
    self->_pendingUpdateEntities = pendingUpdateEntities | a3;

    [(PXGEngine *)self _updateDisplayLink];
  }
}

- (void)_invalidateOrDefer:(unint64_t)a3
{
  if (!self->_updateFlags.isPerformingUpdate && ([(PXGEngine *)self _shouldDeferRenderUntilNextFrame]|| [(PXGEngine *)self _shouldWaitForScrollEvent]))
  {

    [(PXGEngine *)self _deferredInvalidate:a3];
  }

  else
  {

    [(PXGEngine *)self _forceInvalidate:a3];
  }
}

- (void)handleDisplayLink:(id)a3
{
  v4 = a3;
  if (self->_displayLink == v4)
  {
    v15 = v4;
    [(PXDisplayLinkProtocol *)v4 timestamp];
    [(PXDisplayLinkProtocol *)v15 currentMediaTime];
    [(PXDisplayLinkProtocol *)v15 targetTimestamp];
    kdebug_trace();
    v5 = [(PXGEngine *)self gotScrollEventThisFrame];
    v6 = [(PXGEngine *)self missedScrollEventThisFrame];
    [(PXGEngine *)self lastScrollEventTime];
    v8 = v7;
    [(PXDisplayLinkProtocol *)v15 timestamp];
    v10 = v8 >= v9 || v6;
    [(PXGEngine *)self isExporting];
    [(PXGEngine *)self setExpectingScrollEvents:(v5 | v10) & 1];
    [(PXGEngine *)self setGotScrollEventThisFrame:v10];
    if (v6)
    {
      [(PXGEngine *)self setMissedScrollEventThisFrame:0];
      [(PXGEngine *)self _forceInvalidate:15];
    }

    v11 = [(PXGEngine *)self textureManager];
    self->_keepDisplayLinkAlive = [v11 streamUpdatedTexturesForDisplayLinkIfNeeded:v15];

    lastRenderCompletionTimestamp = self->_lastRenderCompletionTimestamp;
    [(PXDisplayLinkProtocol *)v15 timestamp];
    [(PXGEngine *)self setDidRenderThisFrame:lastRenderCompletionTimestamp > v13];
    if (self->_pendingUpdateEntities)
    {
      self->_pendingUpdateEntities = 0;
      [(PXGEngine *)self _invalidateOrDefer:?];
    }

    if ([(PXGAnimator *)self->_animator isAnimating])
    {
      [(PXGEngine *)self _invalidateOrDefer:2];
    }

    v14 = [(PXGEngine *)self scrollViewController];
    [v14 setDeferContentOffsetUpdates:0];

    [(PXGEngine *)self _updateDisplayLink];
    v4 = v15;
  }
}

- (void)setMissedScrollEventThisFrame:(BOOL)a3
{
  if (self->_missedScrollEventThisFrame != a3)
  {
    self->_missedScrollEventThisFrame = a3;
    kdebug_trace();
  }
}

- (void)setGotScrollEventThisFrame:(BOOL)a3
{
  if (self->_gotScrollEventThisFrame != a3)
  {
    self->_gotScrollEventThisFrame = a3;
    kdebug_trace();
  }
}

- (void)setExpectingScrollEvents:(BOOL)a3
{
  if (self->_expectingScrollEvents != a3)
  {
    self->_expectingScrollEvents = a3;
    kdebug_trace();
  }
}

- (void)setIsInitialLoad:(BOOL)a3
{
  if (self->_isInitialLoad != a3)
  {
    self->_isInitialLoad = a3;
    [(PXGEngine *)self _deferredInvalidate:12];
  }
}

- (void)setDidRenderThisFrame:(BOOL)a3
{
  if (self->_didRenderThisFrame != a3)
  {
    self->_didRenderThisFrame = a3;
    kdebug_trace();
  }
}

uint64_t __50__PXGEngine__notifyContentLoadedObserversIfNeeded__block_invoke(uint64_t result, uint64_t a2, unsigned int **a3, _BYTE *a4)
{
  if (*(*(result + 40) + **a3) - 1 <= 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_handleTimeoutForNotificationBlock:(id)a3
{
  v8 = a3;
  v4 = [(PXGEngine *)self pendingContentLoadedNotificationBlocks];
  v5 = MEMORY[0x21CEE40A0](v8);
  v6 = [v4 indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PXGEngine *)self pendingContentLoadedNotificationBlocks];
    [v7 removeObjectAtIndex:v6];

    v8[2](v8, 0);
  }
}

- (void)notifyContentFullyLoadedWithTimeout:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(PXGEngine *)self pendingContentLoadedNotificationBlocks];
  v8 = MEMORY[0x21CEE40A0](v6);
  [v7 addObject:v8];

  [(PXGEngine *)self _invalidateOrDefer:5];
  objc_initWeak(&location, self);
  v9 = dispatch_time(0, (a3 * 1000000000.0));
  v10 = [(PXGEngine *)self layoutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PXGEngine_notifyContentFullyLoadedWithTimeout_block___block_invoke;
  block[3] = &unk_2782A9260;
  objc_copyWeak(&v14, &location);
  v13 = v6;
  v11 = v6;
  dispatch_after(v9, v10, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__PXGEngine_notifyContentFullyLoadedWithTimeout_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTimeoutForNotificationBlock:*(a1 + 32)];
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    v6 = [(PXGEngine *)self layout];
    [v6 setMediaProvider:v7];

    v5 = v7;
  }
}

- (int64_t)currentFrameTime
{
  v2 = [(PXGEngine *)self displayLink];
  [v2 targetTimestamp];
  v4 = llround(v3 * 1000.0);

  return v4;
}

- (void)test_installRenderSnapshotHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PXGEngine_test_installRenderSnapshotHandler___block_invoke;
  v6[3] = &unk_2782A9238;
  v7 = v4;
  v5 = v4;
  [(PXGEngine *)self _enumerateRenderers:v6];
  [(PXGEngine *)self _invalidateOrDefer:8];
}

void __47__PXGEngine_test_installRenderSnapshotHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setTest_renderSnapshotHandler:*(a1 + 32)];
  }
}

- (void)setScreen:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_screen, obj);
    v5 = obj;
    if (obj)
    {
      v6 = [(objc_class *)self->_displayLinkClass supportsSpecificScreen];
      v5 = obj;
      if (v6)
      {
        [(PXDisplayLinkProtocol *)self->_displayLink invalidate];
        v7 = [(PXGEngine *)self _createDisplayLinkWithScreen:obj];
        displayLink = self->_displayLink;
        self->_displayLink = v7;

        [(PXGEngine *)self _updateDisplayLink];
        v5 = obj;
      }
    }
  }
}

- (void)setViewEnvironment:(id)a3
{
  v12 = a3;
  v5 = self->_viewEnvironment;
  pendingViewEnvironment = v5;
  if (v5 == v12)
  {
    goto LABEL_7;
  }

  v7 = [(PXGViewEnvironment *)v5 isEqual:v12];

  v8 = v12;
  if (!v7)
  {
    v9 = [(PXGViewEnvironment *)self->_viewEnvironment hasEqualAppearanceTo:v12];
    v8 = v12;
    if (!v9)
    {
      if (self->_isUpdatingRenderer)
      {
        v10 = v12;
        pendingViewEnvironment = self->_pendingViewEnvironment;
        self->_pendingViewEnvironment = v10;
      }

      else
      {
        objc_storeStrong(&self->_viewEnvironment, a3);
        v11 = [(PXGEngine *)self layout];
        [v11 setViewEnvironment:v12];

        pendingViewEnvironment = [(PXGEngine *)self textureManager];
        [pendingViewEnvironment setViewEnvironment:v12];
      }

LABEL_7:

      v8 = v12;
    }
  }
}

- (void)_releaseResources
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = PXGTungstenGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_21AD38000, v3, OS_LOG_TYPE_DEFAULT, "%@ releasing resources", &v4, 0xCu);
  }

  [(PXGEngine *)self _enumerateRenderers:&__block_literal_global_7403];
}

- (void)_updateInvisibleTextureManager
{
  [(PXGEngine *)self _updateInteractionState];
  [(PXGEngine *)self _updateTextureManager];

  [(PXGEngine *)self _invalidateOrDefer:4];
}

- (void)setIsInvisibleForSomeTime:(BOOL)a3
{
  if (self->_isInvisibleForSomeTime != a3)
  {
    v4 = a3;
    self->_isInvisibleForSomeTime = a3;
    if ([(PXGEngine *)self shouldReleaseResourcesWhenInvisible])
    {
      if (v4)
      {
        v3 = +[PXTungstenSettings sharedInstance];
        v6 = [v3 shouldDeactivateTextureManagerWhenNotVisible];
      }

      else
      {
        v6 = 0;
      }

      v7 = [(PXGEngine *)self textureManager];
      [v7 setIsInactive:v6];

      if (v4)
      {

        [(PXGEngine *)self _updateInvisibleTextureManager];

        [(PXGEngine *)self _releaseResources];
      }

      else
      {

        [(PXGEngine *)self _invalidateOrDefer:13];
      }
    }
  }
}

- (void)_hasBeenInvisibleForSomeTime
{
  if (![(PXGEngine *)self isVisible])
  {

    [(PXGEngine *)self setIsInvisibleForSomeTime:1];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.updateDebugHUDWithStats = objc_opt_respondsToSelector() & 1;
    v6 = objc_opt_respondsToSelector();
    v5 = obj;
    self->_delegateRespondsTo.didRender = v6 & 1;
    if (self->_updateFlags.needsUpdate)
    {
      [(PXGEngine *)self __setNeedsUpdate];
      v5 = obj;
    }
  }
}

- (void)setIsSuspended:(BOOL)a3
{
  if (self->_isSuspended != a3)
  {
    self->_isSuspended = a3;
    if (!a3)
    {
      [(PXGEngine *)self __setNeedsUpdate];
    }
  }
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    [(PXGEngine *)self _updateDisplayLink];
    if (a3)
    {
      pendingIsInvisibleForSomeTimeBlock = self->_pendingIsInvisibleForSomeTimeBlock;
      if (pendingIsInvisibleForSomeTimeBlock)
      {
        dispatch_block_cancel(pendingIsInvisibleForSomeTimeBlock);
        v6 = self->_pendingIsInvisibleForSomeTimeBlock;
        self->_pendingIsInvisibleForSomeTimeBlock = 0;
      }

      [(PXGEngine *)self setIsInvisibleForSomeTime:0];
    }

    else
    {
      [(PXGEngine *)self setDidDisappear:1];
      v7 = [(PXGEngine *)self layout];
      [v7 setAppearState:3];

      if (!self->_pendingIsInvisibleForSomeTimeBlock)
      {
        objc_initWeak(&location, self);
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __24__PXGEngine_setVisible___block_invoke;
        v17 = &unk_2782AB888;
        objc_copyWeak(&v18, &location);
        v8 = dispatch_block_create(0, &v14);
        v9 = self->_pendingIsInvisibleForSomeTimeBlock;
        self->_pendingIsInvisibleForSomeTimeBlock = v8;

        v10 = [PXTungstenSettings sharedInstance:v14];
        [v10 inactivityTimeout];
        v12 = dispatch_time(0, (v11 * 1000000000.0));
        v13 = [(PXGEngine *)self layoutQueue];
        dispatch_after(v12, v13, self->_pendingIsInvisibleForSomeTimeBlock);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      if ([(PXGEngine *)self lowMemoryMode])
      {
        [(PXGEngine *)self _releaseResources];
      }
    }
  }
}

void __24__PXGEngine_setVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hasBeenInvisibleForSomeTime];
}

- (void)setDisableMetalViewDisplayCompositing:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_disableMetalViewDisplayCompositing != a3)
  {
    v3 = a3;
    self->_disableMetalViewDisplayCompositing = a3;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(PXGEngine *)self renderers];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v11 = [v10 renderDestination];

          if (v11)
          {
            v12 = v11;
            if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v13 = v12;

              [v13 setDisableDisplayCompositing:v3];
            }

            else
            {

              v13 = 0;
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)a3
{
  if (self->_allowLargerImagesDuringScrollingInLowMemoryMode != a3)
  {
    self->_allowLargerImagesDuringScrollingInLowMemoryMode = a3;
    v5 = [(PXGEngine *)self allowLargerImagesDuringScrollingInLowMemoryMode];
    v6 = [(PXGEngine *)self textureManager];
    [v6 setAllowLargerImagesDuringScrollingInLowMemoryMode:v5];
  }
}

- (void)setLowPowerMode:(BOOL)a3
{
  if (self->_lowPowerMode != a3)
  {
    self->_lowPowerMode = a3;
    [(PXGEngine *)self _updateDisplayLink];
  }
}

- (void)_updateMipmapPreferences
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXGEngine *)self renderers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    LOBYTE(v6) = 0;
    v7 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v6)
        {
          v6 = 1;
        }

        else
        {
          v6 = [*(*(&v9 + 1) + 8 * i) wantsMipmaps];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(PXGTextureManager *)self->_textureManager setPreferMipmaps:v6];
}

- (void)setLowMemoryMode:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_lowMemoryMode != a3)
  {
    v3 = a3;
    self->_lowMemoryMode = a3;
    v5 = [(PXGEngine *)self lowMemoryMode];
    v6 = [(PXGEngine *)self textureManager];
    [v6 setLowMemoryMode:v5];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(PXGEngine *)self renderers];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setLowMemoryMode:v3];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(PXGEngine *)self _updateMipmapPreferences];
  }
}

- (BOOL)lowMemoryMode
{
  if (self->_lowMemoryMode)
  {
    return 1;
  }

  v3 = +[PXTungstenSettings sharedInstance];
  v4 = [v3 lowMemoryMode];

  return v4;
}

- (void)_windowSceneDidEndLiveResize:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__PXGEngine__windowSceneDidEndLiveResize___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

- (void)_windowSceneDidBeginLiveResize:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__PXGEngine__windowSceneDidBeginLiveResize___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__PXGEngine__applicationWillEnterForeground___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

void __45__PXGEngine__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 265) = 0;
  v2 = PXGTungstenGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21AD38000, v2, OS_LOG_TYPE_DEFAULT, "%@ _applicationWillEnterForeground", &v4, 0xCu);
  }
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__PXGEngine__applicationDidEnterBackground___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

void __44__PXGEngine__applicationDidEnterBackground___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 265) = 1;
  v2 = PXGTungstenGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21AD38000, v2, OS_LOG_TYPE_DEFAULT, "%@ _applicationDidEnterBackground", &v4, 0xCu);
  }
}

- (void)_extensionHostWillEnterForeground:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PXGEngine__extensionHostWillEnterForeground___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

void __47__PXGEngine__extensionHostWillEnterForeground___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 264) = 0;
  v2 = PXGTungstenGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21AD38000, v2, OS_LOG_TYPE_DEFAULT, "%@ _extensionHostWillEnterForeground", &v4, 0xCu);
  }
}

- (void)_extensionHostDidEnterBackground:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PXGEngine__extensionHostDidEnterBackground___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

void __46__PXGEngine__extensionHostDidEnterBackground___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 264) = 1;
  v2 = PXGTungstenGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21AD38000, v2, OS_LOG_TYPE_DEFAULT, "%@ _extensionHostDidEnterBackground", &v4, 0xCu);
  }
}

- (void)handleScreensDidWakeNotification:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PXGEngine_handleScreensDidWakeNotification___block_invoke;
  v3[3] = &unk_2782ABE50;
  v3[4] = self;
  [(PXGEngine *)self _performOnLayoutQueue:v3];
}

- (BOOL)copyPresentedSpriteFor:(id)a3 geometry:(id *)a4 style:(id *)a5 info:(id *)a6
{
  v10 = a3;
  [(PXGEngine *)self ensureUpdatedLayout];
  v11 = [(PXGEngine *)self layout];
  v12 = [v11 changeDetails];
  v13 = [v12 count];

  if (v13)
  {
    v14 = PXAssertGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "layout has unprocessed changes, sprite enumeration is currently undefined", buf, 2u);
    }
  }

  v15 = [(PXGEngine *)self layout];
  v16 = [v15 spriteIndexForSpriteReference:v10 options:0];

  if (v16 != -1)
  {
    layoutSpriteDataStore = self->_layoutSpriteDataStore;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__PXGEngine_copyPresentedSpriteFor_geometry_style_info___block_invoke;
    v19[3] = &__block_descriptor_56_e34_v52__0I8____________________12_B44l;
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a6;
    [(PXGSpriteDataStore *)layoutSpriteDataStore enumerateSpritesInRange:v16 | 0x100000000 usingBlock:v19];
  }

  return v16 != -1;
}

__n128 __56__PXGEngine_copyPresentedSpriteFor_geometry_style_info___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[4];
  v4 = a3[1];
  v5 = v4[1];
  *v3 = *v4;
  v3[1] = v5;
  v6 = a1[5];
  v7 = a3[2];
  v8 = v7[5];
  v10 = v7[2];
  v9 = v7[3];
  v6[4] = v7[4];
  v6[5] = v8;
  v6[2] = v10;
  v6[3] = v9;
  v11 = v7[9];
  v13 = v7[6];
  v12 = v7[7];
  v6[8] = v7[8];
  v6[9] = v11;
  v6[6] = v13;
  v6[7] = v12;
  v14 = v7[1];
  *v6 = *v7;
  v6[1] = v14;
  v15 = a1[6];
  v16 = a3[3];
  result = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = result;
  *(v15 + 16) = v18;
  return result;
}

- (void)enumerateSpritesInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(PXGEngine *)self ensureUpdatedLayout];
  v10 = [(PXGEngine *)self layout];
  v11 = [v10 changeDetails];
  v12 = [v11 count];

  if (v12)
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "layout has unprocessed changes, sprite enumeration is currently undefined", buf, 2u);
    }
  }

  else
  {
    layoutSpriteDataStore = self->_layoutSpriteDataStore;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__PXGEngine_enumerateSpritesInRect_usingBlock___block_invoke;
    v15[3] = &unk_2782AA3B8;
    v16 = v9;
    [(PXGSpriteDataStore *)layoutSpriteDataStore enumerateSpritesInRect:v15 usingBlock:x, y, width, height];
    v13 = v16;
  }
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  layout = self->_layout;
  if (layout != v5)
  {
    v18 = v5;
    [(PXGLayout *)layout setUpdateDelegate:0];
    [(PXGLayout *)self->_layout setEntityManager:0];
    v7 = [(PXGLayout *)self->_layout changeDetails];
    [v7 removeAllObjects];

    objc_storeStrong(&self->_layout, a3);
    [(PXGLayout *)self->_layout setUpdateDelegate:self];
    v8 = [(PXGEngine *)self entityManager];
    [(PXGLayout *)self->_layout setEntityManager:v8];

    v9 = [(PXGEngine *)self coalescingAXResponder];
    [(PXGLayout *)self->_layout setAxNextResponder:v9];

    v10 = [(PXGLayout *)self->_layout changeDetails];
    [v10 removeAllObjects];

    v11 = [(PXGLayout *)self->_layout changeDetails];
    v12 = [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{0, -[PXGSpriteDataStore count](self->_layoutSpriteDataStore, "count")}];
    [v11 addObject:v12];

    v13 = [(PXGLayout *)self->_layout changeDetails];
    v14 = [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, -[PXGLayout numberOfSprites](self->_layout, "numberOfSprites")}];
    [v13 addObject:v14];

    [(PXGEngine *)self setIsInitialLoad:1];
    v15 = [(PXGEngine *)self layoutQueue];
    [(PXGLayout *)v18 setLayoutQueue:v15];

    v16 = [(PXGEngine *)self viewEnvironment];
    [(PXGLayout *)v18 setViewEnvironment:v16];

    v17 = [(PXGEngine *)self mediaProvider];
    [(PXGLayout *)v18 setMediaProvider:v17];

    [(PXGEngine *)self _updateLayoutInteractions];
    [(PXGEngine *)self _invalidateOrDefer:15];
    v5 = v18;
  }
}

- (void)dealloc
{
  free(self->_stats);
  [(PXDisplayLinkProtocol *)self->_displayLink invalidate];
  [(PXGSpriteDataStore *)self->_layoutSpriteDataStore recycle];
  [(PXGSpriteDataStore *)self->_animationPresentationSpriteDataStore recycle];
  [(PXGSpriteDataStore *)self->_animationTargetSpriteDataStore recycle];
  v3.receiver = self;
  v3.super_class = PXGEngine;
  [(PXGEngine *)&v3 dealloc];
}

- (PXGEngine)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGEngine.m" lineNumber:378 description:{@"%s is not available as initializer", "-[PXGEngine init]"}];

  abort();
}

- (PXGEngine)initWithPixelBufferDestination:(id)a3 layoutQueue:(id)a4 displayLinkClass:(Class)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v9 layoutQueue];

  if (v11 != v10)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXGEngine.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"pixelBufferDestination.layoutQueue == layoutQueue"}];
  }

  v12 = [[PXGMetalRenderer alloc] initWithRenderDestination:v9 layoutQueue:v10];
  v13 = objc_alloc_init(PXGAnimator);
  v36[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v15 = [(PXGEngine *)self initWithAnimator:v13 renderers:v14 displayLinkClass:a5 layoutQueue:v10];

  if (v15)
  {
    [v9 renderBoundsInPoints];
    v17 = v16;
    v19 = v18;
    [v9 renderBoundsInPoints];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v9 renderBoundsInPoints];
    v15->_scrollState.referenceSize.width = v17;
    v15->_scrollState.referenceSize.height = v19;
    v28 = *(MEMORY[0x277D3CF90] + 16);
    *&v15->_scrollState.contentInsets.top = *MEMORY[0x277D3CF90];
    *&v15->_scrollState.contentInsets.bottom = v28;
    v15->_scrollState.visibleRect.origin.x = v21;
    v15->_scrollState.visibleRect.origin.y = v23;
    v15->_scrollState.visibleRect.size.width = v25;
    v15->_scrollState.visibleRect.size.height = v27;
    v29 = *(MEMORY[0x277CBF398] + 16);
    v15->_scrollState.targetRect.origin = *MEMORY[0x277CBF398];
    v15->_scrollState.targetRect.size = v29;
    v15->_scrollState.constrainedVisibleRect.origin.x = v30;
    v15->_scrollState.constrainedVisibleRect.origin.y = v31;
    v15->_scrollState.constrainedVisibleRect.size.width = v32;
    v15->_scrollState.constrainedVisibleRect.size.height = v33;
    v15->_scrollState.lastScrollDirection = *MEMORY[0x277CBF348];
    v15->_scrollState.scrollSpeedRegime = 0;
  }

  return v15;
}

- (PXGEngine)initWithAnimator:(id)a3 renderers:(id)a4 displayLinkClass:(Class)a5 layoutQueue:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v66.receiver = self;
  v66.super_class = PXGEngine;
  v14 = [(PXGEngine *)&v66 init];
  if (!v14)
  {
    goto LABEL_30;
  }

  obj = a3;
  v61 = v11;
  v59 = v13;
  v15 = [[PXGEntityManager alloc] initWithQueue:v13];
  objc_storeStrong(&v14->_entityManager, v15);
  v14->_displayLinkClass = a5;
  objc_storeStrong(&v14->_layoutQueue, a6);
  v16 = [(PXGEngine *)v14 _createDisplayLinkWithScreen:0];
  displayLink = v14->_displayLink;
  v14->_displayLink = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  interactions = v14->_interactions;
  v14->_interactions = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  activeInteractions = v14->_activeInteractions;
  v14->_activeInteractions = v20;

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pendingContentLoadedNotificationBlocks = v14->_pendingContentLoadedNotificationBlocks;
  v14->_pendingContentLoadedNotificationBlocks = v22;

  v14->_canBlockMainThreadIfNeeded = 1;
  v14->_shouldReleaseResourcesWhenInvisible = 1;
  v60 = v12;
  v24 = [v12 copy];
  renderers = v14->_renderers;
  v14->_renderers = v24;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v26 = v14->_renderers;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (!v27)
  {
    v30 = 0;
    v32 = 12;
    goto LABEL_21;
  }

  v28 = v27;
  v29 = 0;
  LOBYTE(v30) = 0;
  v31 = *v63;
  v32 = 12;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v63 != v31)
      {
        objc_enumerationMutation(v26);
      }

      v34 = *(*(&v62 + 1) + 8 * i);
      [v34 setDelegate:{v14, obj}];
      [v34 setEntityManager:v15];
      if ([v34 wantsToDriveRender] && !v14->_drivingRenderer)
      {
        objc_storeStrong(&v14->_drivingRenderer, v34);
        if (v30)
        {
LABEL_10:
          v30 = 1;
          if (!v29)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }
      }

      else if (v30)
      {
        goto LABEL_10;
      }

      v30 = [v34 wantsBGRATextures];
      if (!v29)
      {
LABEL_11:
        v29 = [v34 presentationType] == 0;
        goto LABEL_15;
      }

LABEL_14:
      v29 = 1;
LABEL_15:
      if ([v34 destinationColorSpaceName])
      {
        v32 = [v34 destinationColorSpaceName];
      }
    }

    v28 = [(NSArray *)v26 countByEnumeratingWithState:&v62 objects:v67 count:16];
  }

  while (v28);
LABEL_21:

  v35 = +[PXTungstenSettings sharedInstance];
  -[PXGEngine setLowMemoryMode:](v14, "setLowMemoryMode:", [v35 lowMemoryMode]);
  v13 = v59;
  v36 = [[PXGTextureManager alloc] initWithEntityManager:v15 layoutQueue:v59];
  textureManager = v14->_textureManager;
  v14->_textureManager = v36;

  [(PXGTextureManager *)v14->_textureManager setDelegate:v14];
  [(PXGTextureManager *)v14->_textureManager setPreferBGRA:v30];
  [(PXGTextureManager *)v14->_textureManager setPreferredColorSpaceName:v32];
  v38 = +[PXGSpriteDataStore newSpriteDataStore];
  layoutSpriteDataStore = v14->_layoutSpriteDataStore;
  v14->_layoutSpriteDataStore = v38;

  v40 = objc_alloc_init(PXGChangeDetails);
  layoutChangeDetails = v14->_layoutChangeDetails;
  v14->_layoutChangeDetails = v40;

  objc_storeStrong(&v14->_animator, obj);
  v42 = +[PXGSpriteDataStore newSpriteDataStore];
  animationPresentationSpriteDataStore = v14->_animationPresentationSpriteDataStore;
  v14->_animationPresentationSpriteDataStore = v42;

  v44 = +[PXGSpriteDataStore newSpriteDataStore];
  animationTargetSpriteDataStore = v14->_animationTargetSpriteDataStore;
  v14->_animationTargetSpriteDataStore = v44;

  v14->_stats = malloc_type_calloc(1uLL, 0xF0uLL, 0x100004019FCA701uLL);
  v14->_keepDisplayLinkAlive = 0;
  v46 = objc_alloc_init(PXGAXCoalescingResponder);
  coalescingAXResponder = v14->_coalescingAXResponder;
  v14->_coalescingAXResponder = v46;

  [(PXGEngine *)v14 _propagateTextureConverters];
  IsExtension = _UIApplicationIsExtension();
  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  v50 = v49;
  v51 = &selRef__extensionHostDidEnterBackground_;
  if (!IsExtension)
  {
    v51 = &selRef__applicationDidEnterBackground_;
  }

  v52 = *v51;
  v53 = MEMORY[0x277CCA0C8];
  if (IsExtension)
  {
    v54 = &selRef__extensionHostWillEnterForeground_;
  }

  else
  {
    v53 = MEMORY[0x277D76660];
    v54 = &selRef__applicationWillEnterForeground_;
  }

  if (IsExtension)
  {
    v55 = MEMORY[0x277CCA0D0];
  }

  else
  {
    v55 = MEMORY[0x277D76758];
  }

  [v49 addObserver:v14 selector:v52 name:*v53 object:{0, obj}];

  v56 = [MEMORY[0x277CCAB98] defaultCenter];
  [v56 addObserver:v14 selector:*v54 name:*v55 object:0];

  v12 = v60;
  v11 = v61;
LABEL_30:

  return v14;
}

@end