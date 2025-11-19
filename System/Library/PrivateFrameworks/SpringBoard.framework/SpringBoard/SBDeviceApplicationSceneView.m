@interface SBDeviceApplicationSceneView
- (BOOL)_contentPrefersToDisableClipping;
- (BOOL)_representsTranslucentContent;
- (BOOL)_sceneDrivesOwnRotation;
- (BOOL)_useClassicWrapperView;
- (BOOL)_wantsBlackBackground;
- (BOOL)forcesStatusBarHidden;
- (NSString)description;
- (SBDeviceApplicationSceneView)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 hostRequester:(id)a7;
- (UIEdgeInsets)_contentContainerEdgeInsets;
- (double)cornerRadius;
- (id)_adjustedOverlayViewPriorities;
- (id)_transitionViewForHostView;
- (id)prepareForContentRotation;
- (int64_t)_wallpaperStyle;
- (void)_cleanUpTransitionOverlayView:(id)a3;
- (void)_configureSceneLiveHostView:(id)a3;
- (void)_configureSceneLiveSnapshotView:(id)a3;
- (void)_configureSceneSnapshot:(id)a3;
- (void)_createClassicWrapperViewIfNecessaryForHostView:(id)a3;
- (void)_createHostCounterRotationViewIfNecessary;
- (void)_enumerateOrderedOverlayViewPriorities:(id)a3;
- (void)_invalidateSceneLiveHostView:(id)a3;
- (void)_layoutLiveHostView:(id)a3;
- (void)_layoutLiveSnapshotView:(id)a3;
- (void)_refresh;
- (void)_sceneHandleDidUpdateClientSettings:(id)a3;
- (void)_sceneHandleDidUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4;
- (void)_setOrientation:(int64_t)a3;
- (void)_tearDownHostCounterRotationViewIfNecessary;
- (void)_updateDragAndDropExclusionDebugViewsIfNecessary;
- (void)_updateEdgeProtectAndAutoHideOnHomeGrabberView;
- (void)_updateStatusBarVisibilityForHostView;
- (void)_windowManagementStyleDidChange:(id)a3;
- (void)addOverlayView:(id)a3 withPriority:(int64_t)a4;
- (void)applicationSceneCompatibilityModeAnimatingChangeTo:(int64_t)a3;
- (void)createClassicAccessoryViewIfNecessary;
- (void)createHomeGrabberViewIfNecessaryWithSettings:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enableTransitionOverlay:(BOOL)a3;
- (void)invalidate;
- (void)layoutSubviews;
- (void)noteApplicationClassicPhoneSceneOrientationPreferenceChangingForUserAction:(BOOL)a3;
- (void)removeOverlayView:(id)a3 withPriority:(int64_t)a4;
- (void)setBackgroundView:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCornerRadius:(double)a3;
- (void)setForcesStatusBarHidden:(BOOL)a3;
- (void)setStatusBarAlpha:(double)a3;
- (void)setStatusBarDescriptor:(id)a3;
- (void)tearDownHomeGrabberView;
- (void)teardownClassicAccessoryViewIfNecessary;
- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6;
@end

@implementation SBDeviceApplicationSceneView

- (int64_t)_wallpaperStyle
{
  v2 = [(SBSceneView *)self sceneHandle];
  v3 = [v2 wallpaperStyle];

  return v3;
}

- (BOOL)_contentPrefersToDisableClipping
{
  v2 = [(SBSceneView *)self sceneHandle];
  v3 = [v2 contentPrefersToDisableClipping];

  return v3;
}

- (BOOL)_wantsBlackBackground
{
  v3 = [(SBDeviceApplicationSceneView *)self _useClassicWrapperView];
  if (v3)
  {
    classicWrapperView = self->_classicWrapperView;

    LOBYTE(v3) = [(SBDeviceApplicationSceneClassicWrapperView *)classicWrapperView wantsBlackBackground];
  }

  return v3;
}

- (BOOL)_useClassicWrapperView
{
  v2 = [(SBSceneView *)self sceneHandle];
  v3 = [SBDeviceApplicationSceneClassicWrapperView shouldUseWrapperViewForSceneHandle:v2];

  return v3;
}

- (BOOL)forcesStatusBarHidden
{
  v2 = [(SBDeviceApplicationSceneView *)self statusBarDescriptor];
  v3 = [v2 isForcedHidden];

  return v3;
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = SBDeviceApplicationSceneView;
  [(SBDeviceApplicationSceneView *)&v8 didMoveToWindow];
  WeakRetained = objc_loadWeakRetained(&self->_currentHostView);
  if (WeakRetained)
  {
    v4 = self->_snapshottingInfoAssertion;
    v5 = [(SBSceneView *)self sceneHandle];
    v6 = [v5 _sceneHostingInfoForSnapshottingAssertionWithView:WeakRetained];
    snapshottingInfoAssertion = self->_snapshottingInfoAssertion;
    self->_snapshottingInfoAssertion = v6;

    [(BSInvalidatable *)v4 invalidate];
  }
}

- (void)layoutSubviews
{
  v28 = *MEMORY[0x277D85DE8];
  if (![(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView suppressLayoutUpdatesForStartOfClassicPhoneAppRotation])
  {
    v25.receiver = self;
    v25.super_class = SBDeviceApplicationSceneView;
    [(SBSceneView *)&v25 layoutSubviews];
    [(SBDeviceApplicationSceneView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (self->_hostCounterRotationView)
    {
      [(SBDeviceApplicationSceneView *)self bringSubviewToFront:?];
      v11 = [(SBSceneView *)self orientation];
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      SBFTransformFromOrientationToOrientation();
      [(SBDeviceApplicationSceneView *)self center];
      if ((v11 - 3) >= 2)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if ((v11 - 3) >= 2)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      [(_UIDirectionalRotationView *)self->_hostCounterRotationView setCenter:?];
      [(_UIDirectionalRotationView *)self->_hostCounterRotationView setBounds:v4, v6, v13, v12];
      hostCounterRotationView = self->_hostCounterRotationView;
      *buf = v22;
      *&buf[16] = v23;
      v27 = v24;
      [(_UIDirectionalRotationView *)hostCounterRotationView setTransform:buf];
      if (self->_grabberLivesInCounterRotationView)
      {
        [(SBHomeGrabberRotationView *)self->_grabberRotationView setFrame:v4, v6, v13, v12];
        [(_UIDirectionalRotationView *)self->_hostCounterRotationView bringSubviewToFront:self->_grabberRotationView];
      }

      v15 = SBLogHomeAffordance();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

      if (v16)
      {
        [(SBDeviceApplicationSceneView *)self bounds];
        v17 = NSStringFromCGRect(v29);
        [(_UIDirectionalRotationView *)self->_hostCounterRotationView bounds];
        v18 = NSStringFromCGRect(v30);
        [(SBSceneView *)self orientation];
        v19 = BSInterfaceOrientationDescription();
        v20 = SBLogHomeAffordance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          *&buf[22] = 2114;
          *&buf[24] = v18;
          LOWORD(v27) = 2114;
          *(&v27 + 2) = v19;
          _os_log_debug_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEBUG, "%p laying out sceneView - scene=%{public}@ counter=%{public}@-%{public}@", buf, 0x2Au);
        }
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__SBDeviceApplicationSceneView_layoutSubviews__block_invoke;
    v21[3] = &unk_2783BB0E0;
    v21[4] = self;
    *&v21[5] = v4;
    *&v21[6] = v6;
    *&v21[7] = v8;
    *&v21[8] = v10;
    [(SBDeviceApplicationSceneView *)self _enumerateOrderedOverlayViewPriorities:v21];
    if (self->_classicAccessoryView)
    {
      [(SBDeviceApplicationSceneView *)self bringSubviewToFront:?];
      [(SBDeviceApplicationSceneClassicAccessoryView *)self->_classicAccessoryView setFrame:v4, v6, v8, v10];
    }

    if (self->_grabberRotationView)
    {
      if (!self->_grabberLivesInCounterRotationView)
      {
        [(SBDeviceApplicationSceneView *)self bringSubviewToFront:?];
        [(SBHomeGrabberRotationView *)self->_grabberRotationView setFrame:v4, v6, v8, v10];
      }
    }

    [(SBDeviceApplicationSceneView *)self _updateDragAndDropExclusionDebugViewsIfNecessary];
  }
}

- (UIEdgeInsets)_contentContainerEdgeInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)_adjustedOverlayViewPriorities
{
  v2 = [(NSMutableDictionary *)self->_overlayViewsByPriority objectForKeyedSubscript:&unk_283371558];

  if (v2)
  {
    return &unk_28336E790;
  }

  else
  {
    return &unk_28336E7A8;
  }
}

void __46__SBDeviceApplicationSceneView_layoutSubviews__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 688);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{a2, 0}];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        [*(a1 + 32) center];
        [v10 setCenter:?];
        [v10 setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
        [*(a1 + 32) bringSubviewToFront:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateDragAndDropExclusionDebugViewsIfNecessary
{
  v2 = self;
  v63 = *MEMORY[0x277D85DE8];
  multitaskingExclusionRectDebugViews = self->_multitaskingExclusionRectDebugViews;
  if (multitaskingExclusionRectDebugViews)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v4 = multitaskingExclusionRectDebugViews;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v58;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v58 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v57 + 1) + 8 * i) removeFromSuperview];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)v2->_multitaskingExclusionRectDebugViews removeAllObjects];
  }

  v9 = +[SBMedusaDomain rootSettings];
  v10 = [v9 showContentDragExclusionRects];

  if (v10)
  {
    v11 = [(SBSceneView *)v2 sceneHandle];
    v12 = [v11 sceneIfExists];

    if (v12)
    {
      v13 = [v12 clientSettings];
      if ([v13 isUISubclass])
      {
        v50 = v13;
        [v13 multitaskingDragExclusionRects];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        obj = v56 = 0u;
        v14 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = off_2783A1000;
          v17 = *v54;
          v18 = 0x277D75000uLL;
          do
          {
            v19 = 0;
            v51 = v15;
            do
            {
              if (*v54 != v17)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v53 + 1) + 8 * v19) CGRectValue];
              v21 = v20;
              v23 = v22;
              v25 = v24;
              v27 = v26;
              v28 = v16[356];
              v29 = [*(v18 + 2464) mainScreen];
              v30 = [v29 fixedCoordinateSpace];
              v31 = [(__objc2_class *)v28 coordinateSpaceForInterfaceOrientation:1 withReferenceCoordinateSpace:v30 inOrientation:1];

              v32 = v16[356];
              v33 = [v12 settings];
              [v33 frame];
              v34 = [(__objc2_class *)v32 coordinateSpaceForFrame:v31 withinCoordinateSpace:?];

              [(SBDeviceApplicationSceneView *)v2 convertRect:v34 fromCoordinateSpace:v21, v23, v25, v27];
              x = v64.origin.x;
              y = v64.origin.y;
              width = v64.size.width;
              height = v64.size.height;
              if (!CGRectIsNull(v64))
              {
                v39 = v17;
                v40 = v16;
                v41 = v12;
                v42 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{x, y, width, height}];
                v43 = [v42 layer];
                [v43 setAllowsHitTesting:0];

                v44 = [MEMORY[0x277D75348] redColor];
                [v44 colorWithAlphaComponent:0.5];
                v46 = v45 = v2;
                [v42 setBackgroundColor:v46];

                v2 = v45;
                v47 = v45->_multitaskingExclusionRectDebugViews;
                if (!v47)
                {
                  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v49 = v45->_multitaskingExclusionRectDebugViews;
                  v45->_multitaskingExclusionRectDebugViews = v48;

                  v47 = v45->_multitaskingExclusionRectDebugViews;
                }

                [(NSMutableArray *)v47 addObject:v42];
                [(SBDeviceApplicationSceneView *)v45 addSubview:v42];

                v12 = v41;
                v16 = v40;
                v17 = v39;
                v18 = 0x277D75000;
                v15 = v51;
              }

              ++v19;
            }

            while (v15 != v19);
            v15 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
          }

          while (v15);
        }

        v13 = v50;
      }
    }
  }

  else
  {
    v12 = v2->_multitaskingExclusionRectDebugViews;
    v2->_multitaskingExclusionRectDebugViews = 0;
  }
}

- (void)_updateStatusBarVisibilityForHostView
{
  v3 = [(SBSceneView *)self sceneHandle];
  v4 = [v3 sceneIfExists];

  if (self->_statusBarLayerTarget)
  {
    v5 = [(SBSceneView *)self presenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__SBDeviceApplicationSceneView__updateStatusBarVisibilityForHostView__block_invoke;
    v12[3] = &unk_2783A9210;
    v12[4] = self;
    [v5 modifyPresentationContext:v12];
  }

  v6 = [v4 clientSettings];
  v7 = [v6 statusBarContextID];

  if (v7)
  {
    v8 = [MEMORY[0x277D75968] targetForContextID:v7];
    statusBarLayerTarget = self->_statusBarLayerTarget;
    self->_statusBarLayerTarget = v8;

    v10 = [(SBSceneView *)self presenter];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__SBDeviceApplicationSceneView__updateStatusBarVisibilityForHostView__block_invoke_2;
    v11[3] = &unk_2783A9210;
    v11[4] = self;
    [v10 modifyPresentationContext:v11];
  }
}

- (BOOL)_sceneDrivesOwnRotation
{
  v2 = [(SBSceneView *)self sceneHandle];
  v3 = [v2 _interfaceOrientationMode] == 100;

  return v3;
}

- (void)_updateEdgeProtectAndAutoHideOnHomeGrabberView
{
  v7 = [(SBDeviceApplicationSceneView *)self homeGrabberView];
  v3 = [(SBSceneView *)self sceneHandle];
  v4 = [v3 isAutoHideEnabledForHomeAffordance];

  grabberSettings = self->_grabberSettings;
  if (v4)
  {
    [(SBFHomeGrabberSettings *)grabberSettings autoHideTimeOnAppRequest];
    [v7 turnOnAutoHideWithInitialDelay:?];
  }

  else
  {
    [(SBFHomeGrabberSettings *)grabberSettings delayForUnhideOnAppRequest];
    [v7 turnOffAutoHideWithDelay:?];
  }

  v6 = [(SBSceneView *)self sceneHandle];
  [v7 setEdgeProtectEnabled:{objc_msgSend(v6, "isEdgeProtectEnabledForHomeGesture")}];
}

- (void)createClassicAccessoryViewIfNecessary
{
  if (!self->_classicAccessoryView)
  {
    v3 = [(SBSceneView *)self sceneHandle];
    v4 = [v3 application];
    v5 = [v4 classicAppPhoneAppRunningOnPad];

    if (v5)
    {
      v6 = [SBDeviceApplicationSceneClassicAccessoryView alloc];
      [(SBDeviceApplicationSceneView *)self bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(SBSceneView *)self sceneHandle];
      v16 = [(SBDeviceApplicationSceneClassicAccessoryView *)v6 initWithFrame:v15 sceneHandle:v8, v10, v12, v14];
      classicAccessoryView = self->_classicAccessoryView;
      self->_classicAccessoryView = v16;

      [(SBDeviceApplicationSceneView *)self addSubview:self->_classicAccessoryView];
      v18 = self->_classicAccessoryView;

      [(SBDeviceApplicationSceneClassicAccessoryView *)v18 setDelegate:self];
    }
  }
}

- (id)_transitionViewForHostView
{
  classicWrapperView = self->_classicWrapperView;
  if (classicWrapperView)
  {
    v3 = classicWrapperView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBDeviceApplicationSceneView;
    v3 = [(SBSceneView *)&v5 _transitionViewForHostView];
  }

  return v3;
}

- (SBDeviceApplicationSceneView)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 hostRequester:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  if (([v14 isDeviceApplicationSceneHandle] & 1) == 0)
  {
    [SBDeviceApplicationSceneView initWithSceneHandle:a2 referenceSize:self contentOrientation:? containerOrientation:? hostRequester:?];
  }

  v51.receiver = self;
  v51.super_class = SBDeviceApplicationSceneView;
  v16 = [(SBApplicationSceneView *)&v51 initWithSceneHandle:v14 referenceSize:a5 contentOrientation:a6 containerOrientation:v15 hostRequester:width, height];
  if (v16)
  {
    v17 = [[SBApplicationSceneViewStatusBarDescriptor alloc] initWithForceHidden:0];
    statusBarDescriptor = v16->_statusBarDescriptor;
    v16->_statusBarDescriptor = v17;

    v16->_statusBarAlpha = 1.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v14 placeholderContentProvider];
      [(SBSceneView *)v16 setPlaceholderContentProvider:v19];
    }

    v20 = [(SBSceneView *)v16 placeholderContentProvider];

    if (!v20)
    {
      v21 = [SBDeviceApplicationSceneViewPlaceholderContentViewProvider alloc];
      v22 = [v14 application];
      v23 = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)v21 initWithApplication:v22];
      [(SBSceneView *)v16 setPlaceholderContentProvider:v23];
    }

    v24 = [SBApplicationSceneBackgroundView alloc];
    [(SBDeviceApplicationSceneView *)v16 bounds];
    v25 = [(SBApplicationSceneBackgroundView *)v24 initWithFrame:?];
    [(SBApplicationSceneBackgroundView *)v25 setWallpaperStyle:[(SBDeviceApplicationSceneView *)v16 _wallpaperStyle]];
    [(SBDeviceApplicationSceneView *)v16 setBackgroundView:v25];
    v26 = [MEMORY[0x277D65E80] rootSettings];
    grabberSettings = v16->_grabberSettings;
    v16->_grabberSettings = v26;

    v28 = +[SBMedusaDomain rootSettings];
    medusaSettings = v16->_medusaSettings;
    v16->_medusaSettings = v28;

    objc_initWeak(&location, v16);
    v30 = objc_alloc_init(MEMORY[0x277D67978]);
    sceneHandleObserver = v16->_sceneHandleObserver;
    v16->_sceneHandleObserver = v30;

    [v14 addObserver:v16->_sceneHandleObserver];
    v32 = v16->_sceneHandleObserver;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __120__SBDeviceApplicationSceneView_initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester___block_invoke;
    v48[3] = &unk_2783B3BA0;
    objc_copyWeak(&v49, &location);
    v33 = [(SBSceneHandleBlockObserver *)v32 observeCreate:v48];
    v34 = v16->_sceneHandleObserver;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __120__SBDeviceApplicationSceneView_initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester___block_invoke_12;
    v46[3] = &unk_2783B3BC8;
    objc_copyWeak(&v47, &location);
    v35 = [(SBSceneHandleBlockObserver *)v34 observeDidUpdateClientSettings:v46];
    v36 = v16->_sceneHandleObserver;
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __120__SBDeviceApplicationSceneView_initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester___block_invoke_2;
    v44 = &unk_2783B3BF0;
    objc_copyWeak(&v45, &location);
    v37 = [(SBSceneHandleBlockObserver *)v36 observeDidUpdateSettings:&v41];
    v38 = [SBMedusaDomain rootSettings:v41];
    [v38 addKeyObserver:v16];

    v39 = [MEMORY[0x277CCAB98] defaultCenter];
    [v39 addObserver:v16 selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __120__SBDeviceApplicationSceneView_initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateStatusBarVisibilityForHostView];
    if ([v6 _sceneDrivesOwnRotation])
    {
      v7 = [v4 uiClientSettings];
      v8 = [v7 sb_effectiveInterfaceOrientation];

      [v6[83] setOrientation:v8];
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 homeGrabberView];
        v11 = BSInterfaceOrientationDescription();
        v12 = 134218242;
        v13 = v10;
        v14 = 2114;
        v15 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "%p setting affordance orientation to %{public}@ for scene creation", &v12, 0x16u);
      }
    }
  }
}

void __120__SBDeviceApplicationSceneView_initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sceneHandleDidUpdateClientSettings:v4];
}

void __120__SBDeviceApplicationSceneView_initWithSceneHandle_referenceSize_contentOrientation_containerOrientation_hostRequester___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sceneHandleDidUpdateSettingsWithDiff:v7 previousSettings:v6];
}

- (void)dealloc
{
  [(SBSceneHandleBlockObserver *)self->_sceneHandleObserver invalidate];
  [(BSInvalidatable *)self->_snapshottingInfoAssertion invalidate];
  v3 = +[SBMedusaDomain rootSettings];
  [v3 removeKeyObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SBDeviceApplicationSceneView;
  [(SBSceneView *)&v5 dealloc];
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = [SBApplicationSceneBackgroundView alloc];
    [(SBDeviceApplicationSceneView *)self bounds];
    v5 = [(SBApplicationSceneBackgroundView *)v6 initWithFrame:?];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBApplicationSceneBackgroundView *)v4 setWallpaperStyle:[(SBDeviceApplicationSceneView *)self _wallpaperStyle]];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(SBSceneView *)self sceneHandle];
    v8 = [v7 application];
    -[SBApplicationSceneBackgroundView setNeedsClassicModeBackground:](v4, "setNeedsClassicModeBackground:", [v8 isClassic]);
  }

  v9.receiver = self;
  v9.super_class = SBDeviceApplicationSceneView;
  [(SBSceneView *)&v9 setBackgroundView:v5];
}

- (void)addOverlayView:(id)a3 withPriority:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    overlayViewsByPriority = self->_overlayViewsByPriority;
    v22 = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)overlayViewsByPriority objectForKeyedSubscript:v8];
    v10 = [v9 containsObject:v22];

    v6 = v22;
    if ((v10 & 1) == 0)
    {
      v11 = self->_overlayViewsByPriority;
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = self->_overlayViewsByPriority;
        self->_overlayViewsByPriority = v12;

        v11 = self->_overlayViewsByPriority;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v15 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v14];

      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v17 = self->_overlayViewsByPriority;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
      }

      v19 = self->_overlayViewsByPriority;
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
      [v21 addObject:v22];

      [(SBDeviceApplicationSceneView *)self addSubview:v22];
      [(SBDeviceApplicationSceneView *)self setNeedsLayout];
      [(SBDeviceApplicationSceneView *)self layoutIfNeeded];
      v6 = v22;
    }
  }
}

- (void)removeOverlayView:(id)a3 withPriority:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    overlayViewsByPriority = self->_overlayViewsByPriority;
    v22 = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)overlayViewsByPriority objectForKeyedSubscript:v8];
    v10 = [v9 containsObject:v22];

    v6 = v22;
    if (v10)
    {
      [v22 removeFromSuperview];
      v11 = self->_overlayViewsByPriority;
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
      [v13 removeObject:v22];

      v14 = self->_overlayViewsByPriority;
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
      v17 = [v16 count];

      if (!v17)
      {
        v18 = self->_overlayViewsByPriority;
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        [(NSMutableDictionary *)v18 removeObjectForKey:v19];
      }

      v20 = [(NSMutableDictionary *)self->_overlayViewsByPriority count];
      v6 = v22;
      if (!v20)
      {
        v21 = self->_overlayViewsByPriority;
        self->_overlayViewsByPriority = 0;

        v6 = v22;
      }
    }
  }
}

- (void)enableTransitionOverlay:(BOOL)a3
{
  transitionOverlayView = self->_transitionOverlayView;
  if (a3)
  {
    if (!transitionOverlayView)
    {
      v5 = [(SBDeviceApplicationSceneView *)self snapshotViewAfterScreenUpdates:0];
      v6 = [objc_alloc(MEMORY[0x277D76380]) initWithSnapshot:v5];
      [(SBDeviceApplicationSceneView *)self bounds];
      [v6 setFrame:?];
      [v6 setAutoresizingMask:18];
      [(SBDeviceApplicationSceneView *)self addSubview:v6];
      objc_initWeak(&location, self);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __56__SBDeviceApplicationSceneView_enableTransitionOverlay___block_invoke;
      v11 = &unk_2783BB0B8;
      objc_copyWeak(&v12, &location);
      [v6 setTransitionCompletionBlock:&v8];
      [v6 startTransition];
      v7 = self->_transitionOverlayView;
      self->_transitionOverlayView = v6;

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  else if (transitionOverlayView)
  {

    [(_UITransitionOverlayView *)transitionOverlayView finishTransitionImmediately];
  }
}

void __56__SBDeviceApplicationSceneView_enableTransitionOverlay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanUpTransitionOverlayView:v3];
}

- (void)_cleanUpTransitionOverlayView:(id)a3
{
  transitionOverlayView = self->_transitionOverlayView;
  if (transitionOverlayView == a3)
  {
    [(_UITransitionOverlayView *)transitionOverlayView removeFromSuperview];
    v5 = self->_transitionOverlayView;
    self->_transitionOverlayView = 0;
  }
}

- (void)setForcesStatusBarHidden:(BOOL)a3
{
  v3 = a3;
  if ([(SBDeviceApplicationSceneView *)self forcesStatusBarHidden]!= a3)
  {
    v5 = [(SBDeviceApplicationSceneView *)self statusBarDescriptor];
    [v5 setForceHidden:v3];

    if ([(SBSceneView *)self effectiveDisplayMode]== 4)
    {

      [(SBDeviceApplicationSceneView *)self _updateStatusBarVisibilityForHostView];
    }
  }
}

- (void)setStatusBarDescriptor:(id)a3
{
  v5 = a3;
  if (self->_statusBarDescriptor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_statusBarDescriptor, a3);
    v6 = [(SBSceneView *)self effectiveDisplayMode]== 4;
    v5 = v7;
    if (v6)
    {
      [(SBDeviceApplicationSceneView *)self _updateStatusBarVisibilityForHostView];
      v5 = v7;
    }
  }
}

- (void)setStatusBarAlpha:(double)a3
{
  if (self->_statusBarAlpha != a3)
  {
    self->_statusBarAlpha = a3;
    if ([(SBSceneView *)self effectiveDisplayMode]== 4)
    {

      [(SBDeviceApplicationSceneView *)self _updateStatusBarVisibilityForHostView];
    }
  }
}

- (void)createHomeGrabberViewIfNecessaryWithSettings:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self->_grabberRotationView)
  {
    v4 = a3;
    v5 = [SBHomeGrabberRotationView alloc];
    [(SBDeviceApplicationSceneView *)self bounds];
    v6 = [(SBHomeGrabberRotationView *)v5 initWithFrame:v4 settings:?];

    grabberRotationView = self->_grabberRotationView;
    self->_grabberRotationView = v6;

    [(SBHomeGrabberRotationView *)self->_grabberRotationView setUserInteractionEnabled:0];
    [(SBDeviceApplicationSceneView *)self _createHostCounterRotationViewIfNecessary];
    if (self->_hostCounterRotationView && [(SBDeviceApplicationSceneView *)self _sceneDrivesOwnRotation])
    {
      self->_grabberLivesInCounterRotationView = 1;
      [(_UIDirectionalRotationView *)self->_hostCounterRotationView addSubview:self->_grabberRotationView];
      v8 = [(SBSceneView *)self sceneHandle];
      v9 = [v8 sceneIfExists];
      v10 = [v9 uiClientSettings];

      if (v10)
      {
        -[SBHomeGrabberRotationView setOrientation:](self->_grabberRotationView, "setOrientation:", [v10 interfaceOrientation]);
        v11 = SBLogHomeAffordance();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(SBDeviceApplicationSceneView *)self homeGrabberView];
          [(SBHomeGrabberRotationView *)self->_grabberRotationView orientation];
          v13 = BSInterfaceOrientationDescription();
          *buf = 134218242;
          v20 = v12;
          v21 = 2114;
          v22 = v13;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "grabber=%p initializing affordance orientation to %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      self->_grabberLivesInCounterRotationView = 0;
      [(SBDeviceApplicationSceneView *)self addSubview:self->_grabberRotationView];
    }

    v14 = [(SBSceneView *)self sceneHandle];
    v15 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__SBDeviceApplicationSceneView_createHomeGrabberViewIfNecessaryWithSettings___block_invoke;
    v17[3] = &unk_2783A92D8;
    v17[4] = self;
    v18 = v14;
    v16 = v14;
    [v15 performWithoutAnimation:v17];
  }
}

void __77__SBDeviceApplicationSceneView_createHomeGrabberViewIfNecessaryWithSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeGrabberView];
  [v2 setAutoHides:{objc_msgSend(*(a1 + 40), "isAutoHideEnabledForHomeAffordance")}];

  v3 = [*(a1 + 32) homeGrabberView];
  [v3 setEdgeProtectEnabled:{objc_msgSend(*(a1 + 40), "isEdgeProtectEnabledForHomeGesture")}];
}

- (void)tearDownHomeGrabberView
{
  [(SBHomeGrabberRotationView *)self->_grabberRotationView removeFromSuperview];
  grabberRotationView = self->_grabberRotationView;
  self->_grabberRotationView = 0;

  [(SBDeviceApplicationSceneView *)self _tearDownHostCounterRotationViewIfNecessary];
}

- (void)_createHostCounterRotationViewIfNecessary
{
  if (!self->_hostCounterRotationView && [(SBDeviceApplicationSceneView *)self _sceneDrivesOwnRotation])
  {
    v3 = objc_alloc_init(MEMORY[0x277D75EC0]);
    hostCounterRotationView = self->_hostCounterRotationView;
    self->_hostCounterRotationView = v3;

    [(_UIDirectionalRotationView *)self->_hostCounterRotationView setCounterTransformView:1];
    v5 = self->_hostCounterRotationView;

    [(SBDeviceApplicationSceneView *)self addSubview:v5];
  }
}

- (void)_tearDownHostCounterRotationViewIfNecessary
{
  if (self->_hostCounterRotationView && ![(SBDeviceApplicationSceneView *)self _sceneDrivesOwnRotation])
  {
    [(_UIDirectionalRotationView *)self->_hostCounterRotationView removeFromSuperview];
    hostCounterRotationView = self->_hostCounterRotationView;
    self->_hostCounterRotationView = 0;
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneView;
  [(SBDeviceApplicationSceneView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SBSceneView *)self _updateBackgroundColor];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBApplicationSceneView *)self application];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 appendObject:v5 withName:0];

  [(SBSceneView *)self displayMode];
  v7 = NSStringFromSBSceneViewDisplayMode();
  v8 = [v3 appendObject:v7 withName:@"displayMode"];

  v9 = [v3 appendBool:-[SBDeviceApplicationSceneView forcesStatusBarHidden](self withName:"forcesStatusBarHidden") ifEqualTo:{@"forceStatusBarHidden", 1}];
  [(SBDeviceApplicationSceneView *)self statusBarAlpha];
  v10 = [v3 appendFloat:@"statusBarAlpha" withName:?];
  v11 = [v3 appendSuper];
  v12 = [v3 build];

  return v12;
}

- (void)invalidate
{
  [(SBSceneHandleBlockObserver *)self->_sceneHandleObserver invalidate];
  sceneHandleObserver = self->_sceneHandleObserver;
  self->_sceneHandleObserver = 0;

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_clientSettingsInspector removeAllObservers];
  clientSettingsInspector = self->_clientSettingsInspector;
  self->_clientSettingsInspector = 0;

  [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsInspector removeAllObservers];
  sceneSettingsInspector = self->_sceneSettingsInspector;
  self->_sceneSettingsInspector = 0;

  [(SBDeviceApplicationSceneClassicAccessoryView *)self->_classicAccessoryView invalidate];
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneView;
  [(SBSceneView *)&v6 invalidate];
}

- (void)_enumerateOrderedOverlayViewPriorities:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBDeviceApplicationSceneView *)self _adjustedOverlayViewPriorities];
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

        v4[2](v4, [*(*(&v10 + 1) + 8 * v9++) integerValue]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_refresh
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneView;
  [(SBSceneView *)&v3 _refresh];
  if ([(SBSceneView *)self effectiveDisplayMode]== 4)
  {
    [(SBDeviceApplicationSceneView *)self _updateStatusBarVisibilityForHostView];
  }
}

- (void)_configureSceneSnapshot:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSceneView *)self sceneHandle];
  v6 = [v5 sceneIfExists];

  if ([(SBDeviceApplicationSceneView *)self forcesStatusBarHidden]|| ([(SBDeviceApplicationSceneView *)self statusBarAlpha], v7 < 1.0))
  {
    v8 = MEMORY[0x277CBEB58];
    v9 = [v4 layersToExclude];
    v10 = [v8 setWithSet:v9];

    v11 = [v6 clientSettings];
    v12 = [v11 statusBarContextID];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v6 layerManager];
    v14 = [v13 layers];

    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          v20 = [v19 contextID];
          if (v20)
          {
            v21 = v20 == v12;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            [v10 addObject:v19];
            goto LABEL_16;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    [v4 setLayersToExclude:v10];
  }
}

- (BOOL)_representsTranslucentContent
{
  v2 = [(SBSceneView *)self sceneHandle];
  v3 = [v2 isTranslucent];

  return v3;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(SBDeviceApplicationSceneView *)self layer];
  [v4 setCornerRadius:a3];
}

- (double)cornerRadius
{
  v2 = [(SBDeviceApplicationSceneView *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

uint64_t __69__SBDeviceApplicationSceneView__updateStatusBarVisibilityForHostView__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 616);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SBDeviceApplicationSceneView__updateStatusBarVisibilityForHostView__block_invoke_3;
  v5[3] = &unk_2783BB108;
  v5[4] = v2;
  return [a2 modifyLayerPresentationOverrideContextForLayerTarget:v3 block:v5];
}

void __69__SBDeviceApplicationSceneView__updateStatusBarVisibilityForHostView__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 statusBarAlpha];
  [v4 setAlpha:?];
  [v4 setHidden:{objc_msgSend(*(a1 + 32), "forcesStatusBarHidden")}];
}

- (void)_sceneHandleDidUpdateClientSettings:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDeviceApplicationSceneView _sceneHandleDidUpdateClientSettings:];
  }

  v5 = [v4 settingsDiff];
  v6 = [v4 transitionContext];
  if (!self->_clientSettingsInspector)
  {
    v7 = objc_alloc_init(MEMORY[0x277D75160]);
    clientSettingsInspector = self->_clientSettingsInspector;
    self->_clientSettingsInspector = v7;

    objc_initWeak(location, self);
    v9 = self->_clientSettingsInspector;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke;
    v22[3] = &unk_2783AC8A0;
    objc_copyWeak(&v23, location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v9 observeStatusBarContextIDWithBlock:v22];
    v10 = self->_clientSettingsInspector;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_2;
    v20[3] = &unk_2783AC8A0;
    objc_copyWeak(&v21, location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v10 observeBackgroundStyleWithBlock:v20];
    v11 = self->_clientSettingsInspector;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_4;
    v18[3] = &unk_2783AC8A0;
    objc_copyWeak(&v19, location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v11 observeInterfaceOrientationWithBlock:v18];
    v12 = self->_clientSettingsInspector;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_87;
    v16[3] = &unk_2783AC8A0;
    objc_copyWeak(&v17, location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v12 observeHomeIndicatorAutoHiddenWithBlock:v16];
    v13 = self->_clientSettingsInspector;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_2_88;
    v14[3] = &unk_2783AC8A0;
    objc_copyWeak(&v15, location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v13 observeScreenEdgesDeferringSystemGesturesWithBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  [(SBDeviceApplicationSceneView *)self _updateDragAndDropExclusionDebugViewsIfNecessary];
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_clientSettingsInspector inspectDiff:v5 withContext:v6];
}

void __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusBarVisibilityForHostView];
}

void __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = a2;
  v5 = [WeakRetained backgroundView];
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained _wallpaperStyle];
    if ([v5 wallpaperStyle] != v6)
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [v4 animationSettings];
        [v5 setWallpaperStyle:v6 withAnimationSettings:v7];

        v8 = MEMORY[0x277D75940];
        v9 = [v4 animationFence];
        [v8 _synchronizeDrawingWithFence:v9];
      }

      else if (objc_opt_respondsToSelector())
      {
        v10 = MEMORY[0x277CF0D38];
        v11 = [v4 animationSettings];
        v12 = [v10 factoryWithSettings:v11];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_3;
        v18 = &unk_2783A8BC8;
        v19 = v5;
        v20 = v6;
        [v10 animateWithFactory:v12 actions:&v15];

        v13 = MEMORY[0x277D75940];
        v14 = [v4 animationFence];
        [v13 _synchronizeDrawingWithFence:v14];
      }
    }
  }
}

void __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained sceneHandle];
    v6 = [v5 sceneIfExists];

    v7 = [v6 uiClientSettings];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 interfaceOrientation];
    }

    else
    {
      v9 = [v4[83] orientation];
    }

    v10 = v9;
    if ([v4 _sceneDrivesOwnRotation])
    {
      [v4 setNeedsLayout];
      v11 = a2;
      v12 = [v11 animationSettings];
      [v4[83] setOrientation:v10 animated:1 rotationSettings:v12];
      v13 = SBLogHomeAffordance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4[83] grabberView];
        v15 = BSInterfaceOrientationDescription();
        v20 = 134218242;
        v21 = v14;
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "grabber=%p rotating affordance to %{public}@", &v20, 0x16u);
      }

      v16 = MEMORY[0x277D75940];
      v17 = [v11 animationFence];

      [v16 _synchronizeDrawingWithFence:v17];
    }

    v18 = [v4 homeGrabberView];
    v19 = [v4 sceneHandle];
    [v18 setEdgeProtectEnabled:{objc_msgSend(v19, "isEdgeProtectEnabledForHomeGesture")}];
  }
}

void __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateEdgeProtectAndAutoHideOnHomeGrabberView];
    WeakRetained = v2;
  }
}

void __68__SBDeviceApplicationSceneView__sceneHandleDidUpdateClientSettings___block_invoke_2_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateEdgeProtectAndAutoHideOnHomeGrabberView];
    WeakRetained = v2;
  }
}

- (void)_sceneHandleDidUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDeviceApplicationSceneView _sceneHandleDidUpdateSettingsWithDiff:previousSettings:];
  }

  sceneSettingsInspector = self->_sceneSettingsInspector;
  if (!sceneSettingsInspector)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75178]);
    v10 = self->_sceneSettingsInspector;
    self->_sceneSettingsInspector = v9;

    objc_initWeak(&location, self);
    v11 = self->_sceneSettingsInspector;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __87__SBDeviceApplicationSceneView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke;
    v15 = &unk_2783AC8A0;
    objc_copyWeak(&v16, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v11 observeInterfaceOrientationWithBlock:&v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    sceneSettingsInspector = self->_sceneSettingsInspector;
  }

  [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsInspector inspectDiff:v6 withContext:0, v12, v13, v14, v15];
}

void __87__SBDeviceApplicationSceneView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[88];
  v2 = v1;
  if (v1 && [v1 suppressLayoutUpdatesForStartOfClassicPhoneAppRotation])
  {
    [v2 setSuppressLayoutUpdatesForStartOfClassicPhoneAppRotation:0];
    [WeakRetained setNeedsLayout];
  }
}

- (id)prepareForContentRotation
{
  v3 = [(SBSceneView *)self sceneHandle];
  v4 = [v3 application];
  v5 = [v4 classicAppPhoneAppRunningOnPad];

  if (v5 && ([(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView setStartingOrientationForClassicPhoneAppRotation:[(SBSceneView *)self orientation]], [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView suppressLayoutUpdatesForStartOfClassicPhoneAppRotation]))
  {
    v6 = [SBUIBlockAnimationController alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SBDeviceApplicationSceneView_prepareForContentRotation__block_invoke;
    v9[3] = &unk_2783BB130;
    v9[4] = self;
    v7 = [(SBUIBlockAnimationController *)v6 initWithWorkspaceTransitionRequest:0 animationSettings:0 animationBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __57__SBDeviceApplicationSceneView_prepareForContentRotation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(*(a1 + 32) + 704);
  v7 = a5;
  [v6 setPreparingForUserDrivenClassicRotation:1];
  [*(*(a1 + 32) + 704) setNeedsLayout];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 704) setPreparingForUserDrivenClassicRotation:0];
  [*(*(a1 + 32) + 704) setStartingOrientationForClassicPhoneAppRotation:0];
  v8 = [*(a1 + 32) sceneHandle];
  v9 = [v8 _windowScene];
  v10 = [v9 switcherController];
  v11 = [v10 traitsParticipantForSceneHandle:v8];

  v12 = +[SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:toInterfaceOrientation:](SBAnimationUtilities, "animationSettingsForRotationFromInterfaceOrientation:toInterfaceOrientation:", [v11 sbf_previousOrientation], objc_msgSend(v11, "sbf_currentOrientation"));
  v13 = MEMORY[0x277D75D18];
  [v12 duration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SBDeviceApplicationSceneView_prepareForContentRotation__block_invoke_2;
  v14[3] = &unk_2783A8C18;
  v14[4] = *(a1 + 32);
  [v13 animateWithDuration:v14 animations:v7 completion:?];
}

uint64_t __57__SBDeviceApplicationSceneView_prepareForContentRotation__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 704) setNeedsLayout];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6
{
  if (a6)
  {
    v9 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:a3 toInterfaceOrientation:a4, a5];
  }

  else
  {
    v9 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __122__SBDeviceApplicationSceneView_willRotateFromInterfaceOrientation_toInterfaceOrientation_alongsideContainerView_animated___block_invoke;
  v11[3] = &unk_2783BB158;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [(SBDeviceApplicationSceneView *)self _enumerateOrderedOverlayViewPriorities:v11];
}

void __122__SBDeviceApplicationSceneView_willRotateFromInterfaceOrientation_toInterfaceOrientation_alongsideContainerView_animated___block_invoke(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1[4] + 688);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{a2, 0}];
  v5 = [v3 objectForKeyedSubscript:v4];

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

        [*(*(&v10 + 1) + 8 * v9++) containingSceneWillRotateFromInterfaceOrientation:a1[6] toInterfaceOrientation:a1[7] animationSettings:a1[5]];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)teardownClassicAccessoryViewIfNecessary
{
  classicAccessoryView = self->_classicAccessoryView;
  if (classicAccessoryView)
  {
    [(SBDeviceApplicationSceneClassicAccessoryView *)classicAccessoryView invalidate];
    [(SBDeviceApplicationSceneClassicAccessoryView *)self->_classicAccessoryView removeFromSuperview];
    v4 = self->_classicAccessoryView;
    self->_classicAccessoryView = 0;
  }
}

- (void)applicationSceneCompatibilityModeAnimatingChangeTo:(int64_t)a3
{
  [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView setNeedsLayout];
  [(SBDeviceApplicationSceneView *)self setNeedsLayout];

  [(SBDeviceApplicationSceneView *)self layoutIfNeeded];
}

- (void)noteApplicationClassicPhoneSceneOrientationPreferenceChangingForUserAction:(BOOL)a3
{
  if (a3)
  {
    [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView setSuppressLayoutUpdatesForStartOfClassicPhoneAppRotation:1];
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SBClassicPhoneSceneOrientationPreferenceChanged" object:0];
}

- (void)_createClassicWrapperViewIfNecessaryForHostView:(id)a3
{
  v11 = a3;
  v4 = [(SBDeviceApplicationSceneView *)self _useClassicWrapperView];
  classicWrapperView = self->_classicWrapperView;
  if (v4)
  {
    if (!classicWrapperView)
    {
      v6 = [SBDeviceApplicationSceneClassicWrapperView alloc];
      v7 = [(SBSceneView *)self sceneHandle];
      v8 = [(SBDeviceApplicationSceneClassicWrapperView *)v6 initWithSceneHandle:v7];
      v9 = self->_classicWrapperView;
      self->_classicWrapperView = v8;

      [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView setOrientation:[(SBSceneView *)self orientation]];
      [(SBDeviceApplicationSceneView *)self addSubview:self->_classicWrapperView];
    }

    [(SBDeviceApplicationSceneView *)self _layoutLiveHostView:v11];
    [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView addContentView:v11];
  }

  else
  {
    [(SBDeviceApplicationSceneClassicWrapperView *)classicWrapperView removeFromSuperview];
    v10 = self->_classicWrapperView;
    self->_classicWrapperView = 0;
  }
}

- (void)_windowManagementStyleDidChange:(id)a3
{
  [(SBSceneView *)self _updateLiveViewContainment];

  [(SBDeviceApplicationSceneView *)self setNeedsLayout];
}

- (void)_configureSceneLiveSnapshotView:(id)a3
{
  v4 = a3;
  if ([(SBDeviceApplicationSceneView *)self _useClassicWrapperView])
  {
    [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView addContentView:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBDeviceApplicationSceneView;
    [(SBSceneView *)&v5 _configureSceneLiveSnapshotView:v4];
  }
}

- (void)_configureSceneLiveHostView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_currentHostView, v4);
  [(SBDeviceApplicationSceneView *)self _updateStatusBarVisibilityForHostView];
  [(SBDeviceApplicationSceneView *)self createClassicAccessoryViewIfNecessary];
  [(SBDeviceApplicationSceneView *)self _createClassicWrapperViewIfNecessaryForHostView:v4];
  if (![(SBDeviceApplicationSceneView *)self _useClassicWrapperView])
  {
    v8.receiver = self;
    v8.super_class = SBDeviceApplicationSceneView;
    [(SBSceneView *)&v8 _configureSceneLiveHostView:v4];
  }

  [(BSInvalidatable *)self->_snapshottingInfoAssertion invalidate];
  v5 = [(SBSceneView *)self sceneHandle];
  v6 = [v5 _sceneHostingInfoForSnapshottingAssertionWithView:v4];
  snapshottingInfoAssertion = self->_snapshottingInfoAssertion;
  self->_snapshottingInfoAssertion = v6;
}

- (void)_invalidateSceneLiveHostView:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationSceneView;
  [(SBSceneView *)&v5 _invalidateSceneLiveHostView:a3];
  objc_storeWeak(&self->_currentHostView, 0);
  [(BSInvalidatable *)self->_snapshottingInfoAssertion invalidate];
  snapshottingInfoAssertion = self->_snapshottingInfoAssertion;
  self->_snapshottingInfoAssertion = 0;
}

- (void)_layoutLiveHostView:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentHostView);
  v7 = self->_classicWrapperView;
  v8 = v7;
  if (!v5 || (WeakRetained ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    v12.receiver = self;
    v12.super_class = SBDeviceApplicationSceneView;
    [(SBSceneView *)&v12 _layoutLiveHostView:v5];
  }

  else
  {

    if (WeakRetained != v5)
    {
      [(SBDeviceApplicationSceneView(ClassicSupport) *)a2 _layoutLiveHostView:?];
    }

    [(SBDeviceApplicationSceneView *)self bounds];
    [(SBDeviceApplicationSceneClassicWrapperView *)v8 setFrame:?];
    [(SBDeviceApplicationSceneClassicWrapperView *)v8 layoutIfNeeded];
    v10 = [(SBSceneView *)self backgroundView];
    v11 = [WeakRetained backgroundView];

    if (v11 == v10)
    {
      [WeakRetained bounds];
      [v10 setFrame:?];
    }
  }
}

- (void)_layoutLiveSnapshotView:(id)a3
{
  v4 = a3;
  if ([(SBDeviceApplicationSceneView *)self _useClassicWrapperView])
  {
    [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView addContentView:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBDeviceApplicationSceneView;
    [(SBSceneView *)&v5 _layoutLiveSnapshotView:v4];
  }
}

- (void)_setOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationSceneView;
  [(SBSceneView *)&v5 _setOrientation:?];
  [(SBDeviceApplicationSceneClassicWrapperView *)self->_classicWrapperView setOrientation:a3];
}

- (void)initWithSceneHandle:(uint64_t)a1 referenceSize:(uint64_t)a2 contentOrientation:containerOrientation:hostRequester:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneView.m" lineNumber:94 description:@"This class requires a SBDeviceApplicationSceneHandle."];
}

- (void)_sceneHandleDidUpdateClientSettings:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDeviceApplicationSceneView _sceneHandleDidUpdateClientSettings:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDeviceApplicationSceneView.m" lineNumber:580 description:@"this call must be made on the main thread"];
}

- (void)_sceneHandleDidUpdateSettingsWithDiff:previousSettings:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDeviceApplicationSceneView _sceneHandleDidUpdateSettingsWithDiff:previousSettings:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDeviceApplicationSceneView.m" lineNumber:672 description:@"this call must be made on the main thread"];
}

@end