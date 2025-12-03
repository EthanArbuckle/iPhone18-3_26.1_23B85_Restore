@interface SBActivitySystemApertureBannerViewController
- (BOOL)isTouchOutsideDismissalEnabled;
- (CGSize)preferredActivityContentSize;
- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size;
- (SBActivitySystemApertureBannerViewController)initWithActivityItem:(id)item;
- (SBUISystemApertureLayoutMetrics)systemApertureLayoutMetrics;
- (id)_createSystemApertureSceneHandleWithItem:(id)item;
- (id)acquireSuppressionAssertionForBackgroundActivities:(id)activities reason:(id)reason;
- (void)_updatePreferredContentSize;
- (void)_updateSceneElementLayoutWithCoordinator:(id)coordinator preAlongsideActions:(id)actions;
- (void)_updateSceneElementLayoutWithCoordinator:(id)coordinator size:(CGSize)size preAlongsideActions:(id)actions;
- (void)dealloc;
- (void)ensureContent:(double)content queue:(id)queue completion:(id)completion;
- (void)invalidate;
- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)setInvalidated:(BOOL)invalidated;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBActivitySystemApertureBannerViewController

- (SBActivitySystemApertureBannerViewController)initWithActivityItem:(id)item
{
  itemCopy = item;
  if (SBSIsSystemApertureAvailable())
  {
    [(SBActivitySystemApertureBannerViewController *)a2 initWithActivityItem:?];
  }

  v8.receiver = self;
  v8.super_class = SBActivitySystemApertureBannerViewController;
  v6 = [(SBActivityViewController *)&v8 initWithActivityItem:itemCopy];

  return v6;
}

- (SBUISystemApertureLayoutMetrics)systemApertureLayoutMetrics
{
  systemApertureLayoutMetrics = self->_systemApertureLayoutMetrics;
  if (!systemApertureLayoutMetrics)
  {
    mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
    v5 = self->_systemApertureLayoutMetrics;
    self->_systemApertureLayoutMetrics = mEMORY[0x277D67E28];

    systemApertureLayoutMetrics = self->_systemApertureLayoutMetrics;
  }

  return systemApertureLayoutMetrics;
}

- (void)ensureContent:(double)content queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if ([(SBActivitySystemApertureBannerViewController *)self isInvalidated])
  {
    [SBActivitySystemApertureBannerViewController ensureContent:a2 queue:self completion:?];
  }

  if (![(SBActivitySystemApertureBannerViewController *)self isInvalidated])
  {
    sceneHandle = [(SBActivitySystemApertureBannerViewController *)self sceneHandle];
    if (sceneHandle)
    {
    }

    else
    {
      ensureContentHandler = [(SBActivitySystemApertureBannerViewController *)self ensureContentHandler];

      if (!ensureContentHandler)
      {
        [(SBActivitySystemApertureBannerViewController *)self setEnsureContentHandler:completionCopy];
        activityItem = [(SBActivityViewController *)self activityItem];
        v13 = [(SBActivitySystemApertureBannerViewController *)self _createSystemApertureSceneHandleWithItem:activityItem];

        objc_initWeak(&location, self);
        v14 = [SBSystemApertureSceneElement alloc];
        scene = [v13 scene];
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __79__SBActivitySystemApertureBannerViewController_ensureContent_queue_completion___block_invoke;
        v21 = &unk_2783C1258;
        objc_copyWeak(&v22, &location);
        v16 = [(SBSystemApertureSceneElement *)v14 initWithScene:scene statusBarBackgroundActivitiesSuppresser:self readyForPresentationHandler:&v18];

        [(SBActivitySystemApertureBannerViewController *)self setSceneElement:v16, v18, v19, v20, v21];
        [(SBSystemApertureSceneElement *)v16 setLayoutHost:self];
        v17 = objc_alloc_init(SBSystemApertureSceneElementConfiguration);
        [(SBSystemApertureSceneElementConfiguration *)v17 setAllowsSceneReactivation:1];
        [(SBSystemApertureSceneElement *)v16 setConfiguration:v17];
        [(SBSystemApertureSceneElement *)v16 activate];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __79__SBActivitySystemApertureBannerViewController_ensureContent_queue_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isInvalidated] & 1) == 0 && a3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__SBActivitySystemApertureBannerViewController_ensureContent_queue_completion___block_invoke_2;
    v9[3] = &unk_2783A8C18;
    v9[4] = WeakRetained;
    [WeakRetained _updateSceneElementLayoutWithCoordinator:0 preAlongsideActions:v9];
    v6 = dispatch_time(0, 500000000);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__SBActivitySystemApertureBannerViewController_ensureContent_queue_completion___block_invoke_3;
    v7[3] = &unk_2783A8C68;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
  }
}

void __79__SBActivitySystemApertureBannerViewController_ensureContent_queue_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) sceneElement];
  [v1 setLayoutMode:3 reason:4];
}

void __79__SBActivitySystemApertureBannerViewController_ensureContent_queue_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained isInvalidated];
  v2 = WeakRetained;
  if ((v1 & 1) == 0)
  {
    v3 = [WeakRetained ensureContentHandler];
    [WeakRetained setEnsureContentHandler:0];
    if (v3)
    {
      v3[2](v3, 0);
    }

    v2 = WeakRetained;
  }
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();

  [(SBActivitySystemApertureBannerViewController *)self setInvalidated:1];
}

- (void)setInvalidated:(BOOL)invalidated
{
  if (!invalidated)
  {
    [(SBActivitySystemApertureBannerViewController *)a2 setInvalidated:?];
  }

  if (!self->_invalidated)
  {
    sceneElement = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__SBActivitySystemApertureBannerViewController_setInvalidated___block_invoke;
    v6[3] = &unk_2783AFCD0;
    v6[4] = self;
    [sceneElement deactivateWhenRemovedWithHandler:v6];

    sceneElement2 = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
    [sceneElement2 setLayoutMode:-1 reason:4];
  }
}

void __63__SBActivitySystemApertureBannerViewController_setInvalidated___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) ensureContentHandler];
  [*(a1 + 32) setEnsureContentHandler:0];
  if (v4)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBActivitySystemApertureBannerViewControllerInvalidated" code:1 userInfo:0];
    v4[2](v4, v2);
  }

  *(*(a1 + 32) + 1096) = 1;
  v3 = [*(a1 + 32) sceneHandle];
  [v3 invalidate];

  [*(a1 + 32) setSceneHandle:0];
}

- (id)_createSystemApertureSceneHandleWithItem:(id)item
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  BSDispatchQueueAssertMain();
  sceneHandle = [(SBActivitySystemApertureBannerViewController *)self sceneHandle];
  if (!sceneHandle)
  {
    descriptor = [itemCopy descriptor];
    v7 = SBLogActivity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [itemCopy identifier];
      v11 = 138543362;
      v12 = identifier;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Creating a system aperture scene handle for SBActivitySystemApertureBannerViewController", &v11, 0xCu);
    }

    defaultMetrics = [MEMORY[0x277D67D08] defaultMetrics];
    sceneHandle = [objc_alloc(MEMORY[0x277CE9598]) initWithDescriptor:descriptor metricsRequest:defaultMetrics];
    [(SBActivitySystemApertureBannerViewController *)self setSceneHandle:sceneHandle];
  }

  return sceneHandle;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBActivitySystemApertureBannerViewController;
  [(SBActivityBannerViewController *)&v5 viewWillLayoutSubviews];
  sceneElementContainerView = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
  view = [(SBActivitySystemApertureBannerViewController *)self view];
  [view bounds];
  [sceneElementContainerView setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SBActivitySystemApertureBannerViewController;
  coordinatorCopy = coordinator;
  [(SBActivitySystemApertureBannerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__SBActivitySystemApertureBannerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783A8C18;
  v8[4] = self;
  [(SBActivitySystemApertureBannerViewController *)self _updateSceneElementLayoutWithCoordinator:coordinatorCopy size:v8 preAlongsideActions:width, height];
}

void __99__SBActivitySystemApertureBannerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) sceneElementContainerView];
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBActivitySystemApertureBannerViewController;
  [(SBActivitySystemApertureBannerViewController *)&v5 viewDidLayoutSubviews];
  sceneElementContainerView = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
  view = [(SBActivitySystemApertureBannerViewController *)self view];
  [view bounds];
  [sceneElementContainerView setFrame:?];
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  isMomentary = [descriptor isMomentary];

  return isMomentary;
}

- (id)acquireSuppressionAssertionForBackgroundActivities:(id)activities reason:(id)reason
{
  reasonCopy = reason;
  activitiesCopy = activities;
  [(SBActivitySystemApertureBannerViewController *)self setBackgroundActivityIdentifiersToSuppress:activitiesCopy];
  [(SBActivitySystemApertureBannerViewController *)self setBackgroundActivitySuppressionReason:reasonCopy];
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  v9 = _sbWindowScene;
  if (_sbWindowScene)
  {
    v10 = _sbWindowScene;
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    sceneElement = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
    scene = [sceneElement scene];
    settings = [scene settings];
    displayIdentity = [settings displayIdentity];
    v10 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];
  }

  v16 = objc_alloc_init(SBMutableStatusBarSettings);
  [(SBMutableStatusBarSettings *)v16 setBackgroundActivitiesToSuppress:activitiesCopy];

  statusBarManager = [v10 statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [assertionManager newSettingsAssertionWithSettings:v16 atLevel:8 reason:v20];

  initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [v21 acquireWithAnimationParameters:initWithDefaultParameters];

  v23 = objc_alloc(MEMORY[0x277CF0CE8]);
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __106__SBActivitySystemApertureBannerViewController_acquireSuppressionAssertionForBackgroundActivities_reason___block_invoke;
  v29[3] = &unk_2783A8A98;
  v30 = v21;
  v26 = v21;
  v27 = [v23 initWithIdentifier:v25 forReason:reasonCopy invalidationBlock:v29];

  return v27;
}

void __106__SBActivitySystemApertureBannerViewController_acquireSuppressionAssertionForBackgroundActivities_reason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [v1 invalidateWithAnimationParameters:v2];
}

- (CGSize)preferredActivityContentSize
{
  systemApertureLayoutMetrics = [(SBActivitySystemApertureBannerViewController *)self systemApertureLayoutMetrics];
  [systemApertureLayoutMetrics sensorRegionSize];
  v5 = v4;
  v7 = v6;

  sceneElement = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
  isReadyForPresentation = [sceneElement isReadyForPresentation];

  if (isReadyForPresentation)
  {
    systemApertureLayoutMetrics2 = [(SBActivitySystemApertureBannerViewController *)self systemApertureLayoutMetrics];
    [systemApertureLayoutMetrics2 maximumExpandedSize];
    v12 = v11;
    v14 = v13;

    view = [(SBActivitySystemApertureBannerViewController *)self view];
    UIRoundToViewScale();
    v17 = -v16;

    systemApertureLayoutMetrics3 = [(SBActivitySystemApertureBannerViewController *)self systemApertureLayoutMetrics];
    [systemApertureLayoutMetrics3 expandedConcentricAreaSize];
    v20 = -(v19 - v7);

    sceneElement2 = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
    [sceneElement2 preferredEdgeOutsetsForLayoutMode:3 suggestedOutsets:0.0 maximumOutsets:{v17, v20, v17, 0.0, v17, -(v14 - v7), v17}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = v5 + -v29 - v25;
    if (v5 >= v30)
    {
      v30 = v5;
    }

    if (v12 >= v30)
    {
      v5 = v30;
    }

    else
    {
      v5 = v12;
    }

    if (v7 >= v7 + -v27 - v23)
    {
      v31 = v7;
    }

    else
    {
      v31 = v7 + -v27 - v23;
    }

    if (v14 >= v31)
    {
      v7 = v31;
    }

    else
    {
      v7 = v14;
    }
  }

  v32 = v5;
  v33 = v7;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)_updatePreferredContentSize
{
  [(SBActivitySystemApertureBannerViewController *)self preferredActivityContentSize];
  v4 = v3;
  v6 = v5;
  [(SBActivitySystemApertureBannerViewController *)self preferredContentSize];
  if (v8 != v4 || v7 != v6)
  {

    [(SBActivitySystemApertureBannerViewController *)self setPreferredContentSize:v4, v6];
  }
}

- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size
{
  systemApertureLayoutMetrics = [(SBActivitySystemApertureBannerViewController *)self systemApertureLayoutMetrics];
  [systemApertureLayoutMetrics sensorRegionSize];

  view = [(SBActivitySystemApertureBannerViewController *)self view];
  UIRoundToViewScale();
  v7 = v6;
  view2 = [(SBActivitySystemApertureBannerViewController *)self view];
  UIRoundToViewScale();
  v10 = v9;
  view3 = [(SBActivitySystemApertureBannerViewController *)self view];
  UIRoundToViewScale();
  v13 = v12;

  v14 = 0.0;
  v15 = v7;
  v16 = v10;
  v17 = v13;
  result.trailing = v17;
  result.bottom = v16;
  result.leading = v15;
  result.top = v14;
  return result;
}

- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier
{
  [(SBActivitySystemApertureBannerViewController *)self _updatePreferredContentSize];
  if (![(SBActivitySystemApertureBannerViewController *)self isInvalidated])
  {
    sceneElement = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
    if ([sceneElement isReadyForPresentation])
    {
      ensureContentHandler = [(SBActivitySystemApertureBannerViewController *)self ensureContentHandler];

      if (!ensureContentHandler)
      {
        return;
      }

      sceneElement = [(SBActivitySystemApertureBannerViewController *)self ensureContentHandler];
      [(SBActivitySystemApertureBannerViewController *)self setEnsureContentHandler:0];
      (*(sceneElement + 2))(sceneElement, 0);
    }
  }
}

- (void)_updateSceneElementLayoutWithCoordinator:(id)coordinator preAlongsideActions:(id)actions
{
  actionsCopy = actions;
  coordinatorCopy = coordinator;
  sceneElementContainerView = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
  [sceneElementContainerView bounds];
  [(SBActivitySystemApertureBannerViewController *)self _updateSceneElementLayoutWithCoordinator:coordinatorCopy size:actionsCopy preAlongsideActions:v8, v9];
}

- (void)_updateSceneElementLayoutWithCoordinator:(id)coordinator size:(CGSize)size preAlongsideActions:(id)actions
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  actionsCopy = actions;
  sceneElementContainerView = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];

  if (!sceneElementContainerView)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(SBActivitySystemApertureBannerViewController *)self setSceneElementContainerView:v12];

    view = [(SBActivitySystemApertureBannerViewController *)self view];
    sceneElementContainerView2 = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
    [view addSubview:sceneElementContainerView2];
  }

  sceneElementContainerView3 = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
  view2 = [(SBActivitySystemApertureBannerViewController *)self view];
  [view2 bounds];
  [sceneElementContainerView3 setFrame:?];

  view3 = [(SBActivitySystemApertureBannerViewController *)self view];
  sceneElementContainerView4 = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
  [view3 bringSubviewToFront:sceneElementContainerView4];

  if (coordinatorCopy)
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277D763A0]);
    [v19 _setIsAnimated:0];
    view4 = [(SBActivitySystemApertureBannerViewController *)self view];
    [v19 _setContainerView:view4];

    [v19 _setAllowUserInteraction:0];
    [v19 _setDuration:0.0];
    [v19 _setAllowUserInteraction:0];
    coordinatorCopy = [v19 _transitionCoordinator];
  }

  sceneElement = [(SBActivitySystemApertureBannerViewController *)self sceneElement];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __114__SBActivitySystemApertureBannerViewController__updateSceneElementLayoutWithCoordinator_size_preAlongsideActions___block_invoke;
  v28[3] = &unk_2783B86B0;
  v29 = actionsCopy;
  v22 = actionsCopy;
  [coordinatorCopy animateAlongsideTransition:v28 completion:0];
  sceneElementContainerView5 = [(SBActivitySystemApertureBannerViewController *)self sceneElementContainerView];
  [sceneElement contentProviderWillTransitionToSize:sceneElementContainerView5 inContainerView:coordinatorCopy transitionCoordinator:{width, height}];

  v24 = MEMORY[0x277D75D18];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__SBActivitySystemApertureBannerViewController__updateSceneElementLayoutWithCoordinator_size_preAlongsideActions___block_invoke_2;
  v26[3] = &unk_2783A8C18;
  v27 = v19;
  v25 = v19;
  [v24 performWithoutAnimation:v26];
}

uint64_t __114__SBActivitySystemApertureBannerViewController__updateSceneElementLayoutWithCoordinator_size_preAlongsideActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) __runAlongsideAnimations];
  v2 = *(a1 + 32);

  return [v2 completeTransition:1];
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  if ([-[SBActivitySystemApertureBannerViewController superclass](self "superclass")])
  {
    v7.receiver = self;
    v7.super_class = SBActivitySystemApertureBannerViewController;
    [(SBActivityBannerViewController *)&v7 presentableWillAppearAsBanner:bannerCopy];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SBActivitySystemApertureBannerViewController_presentableWillAppearAsBanner___block_invoke;
  v6[3] = &unk_2783A8C18;
  v6[4] = self;
  [(SBActivitySystemApertureBannerViewController *)self _updateSceneElementLayoutWithCoordinator:0 preAlongsideActions:v6];
}

void __78__SBActivitySystemApertureBannerViewController_presentableWillAppearAsBanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneElement];
  [v2 setLayoutMode:3 reason:4];

  v3 = [*(a1 + 32) sceneElement];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [*(a1 + 32) sceneElement];
    v5 = [*(a1 + 32) sceneElement];
    [v6 element:v5 visibilityWillChange:1];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  if ([-[SBActivitySystemApertureBannerViewController superclass](self "superclass")])
  {
    v7.receiver = self;
    v7.super_class = SBActivitySystemApertureBannerViewController;
    [(SBActivityBannerViewController *)&v7 presentableDidAppearAsBanner:bannerCopy];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SBActivitySystemApertureBannerViewController_presentableDidAppearAsBanner___block_invoke;
  v6[3] = &unk_2783A8C18;
  v6[4] = self;
  [(SBActivitySystemApertureBannerViewController *)self _updateSceneElementLayoutWithCoordinator:0 preAlongsideActions:v6];
}

void __77__SBActivitySystemApertureBannerViewController_presentableDidAppearAsBanner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneElement];
  [v2 setLayoutMode:3 reason:4];

  v3 = [*(a1 + 32) sceneElement];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [*(a1 + 32) sceneElement];
    v5 = [*(a1 + 32) sceneElement];
    [v6 element:v5 visibilityDidChange:1];
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  if ([-[SBActivitySystemApertureBannerViewController superclass](self "superclass")])
  {
    v10.receiver = self;
    v10.super_class = SBActivitySystemApertureBannerViewController;
    [(SBActivityBannerViewController *)&v10 presentableWillDisappearAsBanner:bannerCopy withReason:reasonCopy];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__SBActivitySystemApertureBannerViewController_presentableWillDisappearAsBanner_withReason___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [(SBActivitySystemApertureBannerViewController *)self _updateSceneElementLayoutWithCoordinator:0 preAlongsideActions:v9];
}

void __92__SBActivitySystemApertureBannerViewController_presentableWillDisappearAsBanner_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneElement];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [*(a1 + 32) sceneElement];
    v4 = [*(a1 + 32) sceneElement];
    [v5 element:v4 visibilityWillChange:0];
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  if ([-[SBActivitySystemApertureBannerViewController superclass](self "superclass")])
  {
    v12.receiver = self;
    v12.super_class = SBActivitySystemApertureBannerViewController;
    [(SBActivityBannerViewController *)&v12 presentableDidDisappearAsBanner:bannerCopy withReason:reasonCopy];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__SBActivitySystemApertureBannerViewController_presentableDidDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v11 = reasonCopy;
  v9 = reasonCopy;
  [(SBActivitySystemApertureBannerViewController *)self _updateSceneElementLayoutWithCoordinator:0 preAlongsideActions:v10];
}

void __91__SBActivitySystemApertureBannerViewController_presentableDidDisappearAsBanner_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneElement];
  v3 = v2;
  if (*(a1 + 40) == *MEMORY[0x277CF0A50])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLayoutMode:0 reason:v4];

  v5 = [*(a1 + 32) sceneElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [*(a1 + 32) sceneElement];
    v7 = [*(a1 + 32) sceneElement];
    [v8 element:v7 visibilityDidChange:0];
  }
}

- (void)dealloc
{
  [(SBActivitySystemApertureBannerViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBActivitySystemApertureBannerViewController;
  [(SBActivityViewController *)&v3 dealloc];
}

- (void)initWithActivityItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivitySystemApertureBannerViewController.m" lineNumber:49 description:@"Only use SBActivitySystemApertureBannerViewController on non-jindo devices."];
}

- (void)ensureContent:(uint64_t)a1 queue:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivitySystemApertureBannerViewController.m" lineNumber:62 description:@"already invalidated when trying to start activity system aperture banner view controller"];
}

- (void)setInvalidated:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivitySystemApertureBannerViewController.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"invalidated"}];
}

@end