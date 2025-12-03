@interface SBDashBoardTraitsAwareAppHostingViewController
- (CGRect)_referenceBoundsForBounds:(CGRect)bounds;
- (SBApplicationHosting)appHosting;
- (SBDashBoardTraitsAwareAppHostingViewController)initWithAppHosting:(id)hosting targetWindow:(id)window;
- (id)_effectiveWindow;
- (id)_hostedAppViewController;
- (id)_hostedSceneHandle;
- (id)_traitsArbiter;
- (void)_acquireTraitsParticipantIfNeeded;
- (void)_invalidateTraitsParticipant;
- (void)_updateWindowLevel;
- (void)dealloc;
- (void)sceneDidAttach;
- (void)sceneWasDestroyed;
- (void)setAppHosting:(id)hosting;
- (void)setContentViewBounds:(CGRect)bounds;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBDashBoardTraitsAwareAppHostingViewController

- (SBDashBoardTraitsAwareAppHostingViewController)initWithAppHosting:(id)hosting targetWindow:(id)window
{
  hostingCopy = hosting;
  windowCopy = window;
  v11.receiver = self;
  v11.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  v8 = [(SBDashBoardTraitsAwareAppHostingViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_appHosting, hostingCopy);
    objc_storeStrong(&v9->_targetWindow, window);
    [(SBDashBoardTraitsAwareAppHostingViewController *)v9 _acquireTraitsParticipantIfNeeded];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  [(SBDashBoardTraitsAwareAppHostingViewController *)&v4 viewWillAppear:appear];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _acquireTraitsParticipantIfNeeded];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _updateWindowLevel];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  [(SBDashBoardTraitsAwareAppHostingViewController *)&v4 viewWillDisappear:disappear];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _invalidateTraitsParticipant];
}

- (void)setAppHosting:(id)hosting
{
  obj = hosting;
  WeakRetained = objc_loadWeakRetained(&self->_appHosting);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appHosting, obj);
    [(SBDashBoardTraitsAwareAppHostingViewController *)self _acquireTraitsParticipantIfNeeded];
    v5 = obj;
  }
}

- (void)setContentViewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  view = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  [view setFrame:{x, y, width, height}];

  view2 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _referenceBoundsForBounds:x, y, width, height];
  [view2 setContentViewBoundsInReferenceSpace:?];
}

- (void)sceneDidAttach
{
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _acquireTraitsParticipantIfNeeded];

  [(SBDashBoardTraitsAwareAppHostingViewController *)self _updateWindowLevel];
}

- (void)sceneWasDestroyed
{
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _invalidateTraitsParticipant];

  [(SBDashBoardTraitsAwareAppHostingViewController *)self _updateWindowLevel];
}

- (id)_traitsArbiter
{
  _effectiveWindow = [(SBDashBoardTraitsAwareAppHostingViewController *)self _effectiveWindow];
  v5 = _effectiveWindow;
  if (_effectiveWindow)
  {
    _sbWindowScene = [_effectiveWindow _sbWindowScene];
    traitsArbiter = [_sbWindowScene traitsArbiter];
  }

  else
  {
    _sbWindowScene = [MEMORY[0x277CCA890] currentHandler];
    [_sbWindowScene handleFailureInMethod:a2 object:self file:@"SBDashBoardTraitsAwareAppHostingViewController.m" lineNumber:93 description:@"Unexpected nil window"];
    traitsArbiter = 0;
  }

  return traitsArbiter;
}

- (id)_hostedSceneHandle
{
  _hostedAppViewController = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedAppViewController];
  applicationSceneHandle = [_hostedAppViewController applicationSceneHandle];

  return applicationSceneHandle;
}

- (id)_hostedAppViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_appHosting);
  v3 = objc_opt_class();
  v4 = WeakRetained;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (id)_effectiveWindow
{
  view = [(SBDashBoardTraitsAwareAppHostingViewController *)self view];
  window = [view window];
  targetWindow = window;
  if (!window)
  {
    targetWindow = self->_targetWindow;
  }

  v6 = targetWindow;

  return targetWindow;
}

- (void)_updateWindowLevel
{
  _effectiveWindow = [(SBDashBoardTraitsAwareAppHostingViewController *)self _effectiveWindow];
  if (_effectiveWindow)
  {
    traitsParticipantDelegate = self->_traitsParticipantDelegate;
    v5 = MEMORY[0x277CCABB0];
    v7 = _effectiveWindow;
    [_effectiveWindow windowLevel];
    v6 = [v5 numberWithDouble:?];
    [(SBTraitsSceneParticipantDelegate *)traitsParticipantDelegate setPreferredSceneLevel:v6];

    _effectiveWindow = v7;
  }
}

- (void)_acquireTraitsParticipantIfNeeded
{
  if (self->_traitsParticipant || (WeakRetained = objc_loadWeakRetained(&self->_appHosting), WeakRetained, !WeakRetained))
  {
    view = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
    view2 = [(SBDashBoardTraitsAwareAppHostingViewController *)self view];
    [view2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [view setFrame:{v5, v7, v9, v11}];
    [(SBDashBoardTraitsAwareAppHostingViewController *)self _referenceBoundsForBounds:v5, v7, v9, v11];
    [view setContentViewBoundsInReferenceSpace:?];
  }

  else
  {
    _effectiveWindow = [(SBDashBoardTraitsAwareAppHostingViewController *)self _effectiveWindow];
    if (_effectiveWindow)
    {
      _hostedAppViewController = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedAppViewController];
      [_hostedAppViewController setMode:2];

      _traitsArbiter = [(SBDashBoardTraitsAwareAppHostingViewController *)self _traitsArbiter];
      v16 = [SBTraitsSceneParticipantDelegate alloc];
      _hostedSceneHandle = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedSceneHandle];
      v18 = [(SBTraitsSceneParticipantDelegate *)v16 initWithSceneHandle:_hostedSceneHandle];
      traitsParticipantDelegate = self->_traitsParticipantDelegate;
      self->_traitsParticipantDelegate = v18;

      v20 = [_traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleCoverSheetPosterSwitcher" delegate:self->_traitsParticipantDelegate];
      traitsParticipant = self->_traitsParticipant;
      self->_traitsParticipant = v20;

      [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setArbiter:_traitsArbiter];
      [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setParticipant:self->_traitsParticipant];
      v22 = self->_traitsParticipantDelegate;
      v23 = MEMORY[0x277CCABB0];
      [_effectiveWindow windowLevel];
      v24 = [v23 numberWithDouble:?];
      [(SBTraitsSceneParticipantDelegate *)v22 setPreferredSceneLevel:v24];

      v25 = [[SBTraitsOrientedContentViewController alloc] initWithNibName:0 bundle:0];
      orientedContentViewController = self->_orientedContentViewController;
      self->_orientedContentViewController = v25;

      [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController setContentParticipant:self->_traitsParticipant];
      v27 = objc_opt_class();
      v28 = SBSafeCast(v27, _effectiveWindow);
      v29 = v28;
      if (v28)
      {
        v30 = self->_orientedContentViewController;
        traitsParticipant = [v28 traitsParticipant];
        [(SBTraitsOrientedContentViewController *)v30 setContainerParticipant:traitsParticipant];
      }

      view3 = [(SBDashBoardTraitsAwareAppHostingViewController *)self view];
      [view3 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      view4 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
      [view4 setFrame:{v34, v36, v38, v40}];
      [(SBDashBoardTraitsAwareAppHostingViewController *)self _referenceBoundsForBounds:v34, v36, v38, v40];
      [view4 setContentViewBoundsInReferenceSpace:?];
      [view4 setAutoresizingMask:18];
      v42 = self->_orientedContentViewController;
      _hostedAppViewController2 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedAppViewController];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke;
      v55[3] = &unk_2783A9460;
      v44 = view4;
      v56 = v44;
      selfCopy = self;
      [(SBTraitsOrientedContentViewController *)v42 bs_addChildViewController:_hostedAppViewController2 animated:0 transitionBlock:v55];

      objc_initWeak(&location, self);
      v45 = self->_traitsParticipantDelegate;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke_2;
      v52[3] = &unk_2783AD848;
      objc_copyWeak(&v53, &location);
      [(SBTraitsSceneParticipantDelegate *)v45 setActuateOrientationAlongsideBlock:v52];
      v46 = self->_orientedContentViewController;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke_3;
      v50[3] = &unk_2783AD870;
      objc_copyWeak(&v51, &location);
      [(SBTraitsOrientedContentViewController *)v46 setActuateAlongsideBlock:v50];
      [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"setup"];
      v47 = self->_orientedContentViewController;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke_4;
      v49[3] = &unk_2783AA930;
      v49[4] = self;
      [(SBDashBoardTraitsAwareAppHostingViewController *)self bs_addChildViewController:v47 animated:0 transitionBlock:v49];
      objc_destroyWeak(&v51);
      objc_destroyWeak(&v53);
      objc_destroyWeak(&location);
    }
  }
}

void __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) _hostedAppViewController];
  v2 = [v3 view];
  [v1 setContentView:v2];
}

void __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[127] updateOrientationIfNeeded];
    WeakRetained = v2;
  }
}

void __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v8 = objc_loadWeakRetained(WeakRetained + 124);
    [v8 setHostedAppReferenceSize:a2 withInterfaceOrientation:{a3, a4}];

    WeakRetained = v9;
  }
}

void __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [*(*(a1 + 32) + 1016) view];
  [v3 addSubview:v2];
}

- (void)_invalidateTraitsParticipant
{
  [(TRAParticipant *)self->_traitsParticipant invalidate];
  [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate invalidate];
  traitsParticipantDelegate = self->_traitsParticipantDelegate;
  self->_traitsParticipantDelegate = 0;

  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;
}

- (CGRect)_referenceBoundsForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = CGRectGetHeight(bounds);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetWidth(v13);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = x;
  v12 = y;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)dealloc
{
  [(TRAParticipant *)self->_traitsParticipant invalidate];
  [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate invalidate];
  v3.receiver = self;
  v3.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  [(SBDashBoardTraitsAwareAppHostingViewController *)&v3 dealloc];
}

- (SBApplicationHosting)appHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_appHosting);

  return WeakRetained;
}

@end