@interface SBDashBoardTraitsAwareAppHostingViewController
- (CGRect)_referenceBoundsForBounds:(CGRect)a3;
- (SBApplicationHosting)appHosting;
- (SBDashBoardTraitsAwareAppHostingViewController)initWithAppHosting:(id)a3 targetWindow:(id)a4;
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
- (void)setAppHosting:(id)a3;
- (void)setContentViewBounds:(CGRect)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBDashBoardTraitsAwareAppHostingViewController

- (SBDashBoardTraitsAwareAppHostingViewController)initWithAppHosting:(id)a3 targetWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  v8 = [(SBDashBoardTraitsAwareAppHostingViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_appHosting, v6);
    objc_storeStrong(&v9->_targetWindow, a4);
    [(SBDashBoardTraitsAwareAppHostingViewController *)v9 _acquireTraitsParticipantIfNeeded];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  [(SBDashBoardTraitsAwareAppHostingViewController *)&v4 viewWillAppear:a3];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _acquireTraitsParticipantIfNeeded];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _updateWindowLevel];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardTraitsAwareAppHostingViewController;
  [(SBDashBoardTraitsAwareAppHostingViewController *)&v4 viewWillDisappear:a3];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _invalidateTraitsParticipant];
}

- (void)setAppHosting:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appHosting);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appHosting, obj);
    [(SBDashBoardTraitsAwareAppHostingViewController *)self _acquireTraitsParticipantIfNeeded];
    v5 = obj;
  }
}

- (void)setContentViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  [v8 setFrame:{x, y, width, height}];

  v9 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  [(SBDashBoardTraitsAwareAppHostingViewController *)self _referenceBoundsForBounds:x, y, width, height];
  [v9 setContentViewBoundsInReferenceSpace:?];
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
  v4 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _effectiveWindow];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _sbWindowScene];
    v7 = [v6 traitsArbiter];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SBDashBoardTraitsAwareAppHostingViewController.m" lineNumber:93 description:@"Unexpected nil window"];
    v7 = 0;
  }

  return v7;
}

- (id)_hostedSceneHandle
{
  v2 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedAppViewController];
  v3 = [v2 applicationSceneHandle];

  return v3;
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
  v3 = [(SBDashBoardTraitsAwareAppHostingViewController *)self view];
  v4 = [v3 window];
  targetWindow = v4;
  if (!v4)
  {
    targetWindow = self->_targetWindow;
  }

  v6 = targetWindow;

  return targetWindow;
}

- (void)_updateWindowLevel
{
  v3 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _effectiveWindow];
  if (v3)
  {
    traitsParticipantDelegate = self->_traitsParticipantDelegate;
    v5 = MEMORY[0x277CCABB0];
    v7 = v3;
    [v3 windowLevel];
    v6 = [v5 numberWithDouble:?];
    [(SBTraitsSceneParticipantDelegate *)traitsParticipantDelegate setPreferredSceneLevel:v6];

    v3 = v7;
  }
}

- (void)_acquireTraitsParticipantIfNeeded
{
  if (self->_traitsParticipant || (WeakRetained = objc_loadWeakRetained(&self->_appHosting), WeakRetained, !WeakRetained))
  {
    v48 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
    v3 = [(SBDashBoardTraitsAwareAppHostingViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v48 setFrame:{v5, v7, v9, v11}];
    [(SBDashBoardTraitsAwareAppHostingViewController *)self _referenceBoundsForBounds:v5, v7, v9, v11];
    [v48 setContentViewBoundsInReferenceSpace:?];
  }

  else
  {
    v13 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _effectiveWindow];
    if (v13)
    {
      v14 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedAppViewController];
      [v14 setMode:2];

      v15 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _traitsArbiter];
      v16 = [SBTraitsSceneParticipantDelegate alloc];
      v17 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedSceneHandle];
      v18 = [(SBTraitsSceneParticipantDelegate *)v16 initWithSceneHandle:v17];
      traitsParticipantDelegate = self->_traitsParticipantDelegate;
      self->_traitsParticipantDelegate = v18;

      v20 = [v15 acquireParticipantWithRole:@"SBTraitsParticipantRoleCoverSheetPosterSwitcher" delegate:self->_traitsParticipantDelegate];
      traitsParticipant = self->_traitsParticipant;
      self->_traitsParticipant = v20;

      [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setArbiter:v15];
      [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setParticipant:self->_traitsParticipant];
      v22 = self->_traitsParticipantDelegate;
      v23 = MEMORY[0x277CCABB0];
      [v13 windowLevel];
      v24 = [v23 numberWithDouble:?];
      [(SBTraitsSceneParticipantDelegate *)v22 setPreferredSceneLevel:v24];

      v25 = [[SBTraitsOrientedContentViewController alloc] initWithNibName:0 bundle:0];
      orientedContentViewController = self->_orientedContentViewController;
      self->_orientedContentViewController = v25;

      [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController setContentParticipant:self->_traitsParticipant];
      v27 = objc_opt_class();
      v28 = SBSafeCast(v27, v13);
      v29 = v28;
      if (v28)
      {
        v30 = self->_orientedContentViewController;
        v31 = [v28 traitsParticipant];
        [(SBTraitsOrientedContentViewController *)v30 setContainerParticipant:v31];
      }

      v32 = [(SBDashBoardTraitsAwareAppHostingViewController *)self view];
      [v32 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v41 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
      [v41 setFrame:{v34, v36, v38, v40}];
      [(SBDashBoardTraitsAwareAppHostingViewController *)self _referenceBoundsForBounds:v34, v36, v38, v40];
      [v41 setContentViewBoundsInReferenceSpace:?];
      [v41 setAutoresizingMask:18];
      v42 = self->_orientedContentViewController;
      v43 = [(SBDashBoardTraitsAwareAppHostingViewController *)self _hostedAppViewController];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __83__SBDashBoardTraitsAwareAppHostingViewController__acquireTraitsParticipantIfNeeded__block_invoke;
      v55[3] = &unk_2783A9460;
      v44 = v41;
      v56 = v44;
      v57 = self;
      [(SBTraitsOrientedContentViewController *)v42 bs_addChildViewController:v43 animated:0 transitionBlock:v55];

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

- (CGRect)_referenceBoundsForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetHeight(a3);
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