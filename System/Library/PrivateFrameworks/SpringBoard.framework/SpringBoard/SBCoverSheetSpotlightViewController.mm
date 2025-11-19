@interface SBCoverSheetSpotlightViewController
- (BOOL)handleEvent:(id)a3;
- (SBCoverSheetSpotlightViewController)initWithSpotlightViewController:(id)a3;
- (SBCoverSheetSpotlightViewControllerDelegate)delegate;
- (double)_scaleGivenTranslation:(double)a3;
- (id)_newDisplayLayoutElement;
- (void)_updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6;
- (void)addGrabberView:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)dismissForHomeButton;
- (void)handleBottomEdgeGestureChanged:(id)a3;
- (void)handleBottomEdgeGestureEnded:(id)a3;
- (void)setTargetDisplayConfiguration:(id)a3;
- (void)updateComponentTransitionWithOffset:(double)a3 presentationState:(int64_t)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBCoverSheetSpotlightViewController

- (SBCoverSheetSpotlightViewController)initWithSpotlightViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBCoverSheetSpotlightViewController;
  v6 = [(SBCoverSheetSpotlightViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spotlightViewController, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
  spotlightViewController = self->_spotlightViewController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SBCoverSheetSpotlightViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_2783AA930;
  v4[4] = self;
  [(SBCoverSheetSpotlightViewController *)self bs_addChildViewController:spotlightViewController animated:0 transitionBlock:v4];
}

void __50__SBCoverSheetSpotlightViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 view];
  v5 = [*(*(a1 + 32) + 1104) view];
  [v6 bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];
  [v5 setAutoresizesSubviews:1];
  [v6 addSubview:v5];
  v4[2](v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSCoverSheetViewControllerBase *)self setDisplayLayoutElementActive:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained coverSheetSpotlightViewControllerShouldDismiss:self animated:0];
}

- (void)setTargetDisplayConfiguration:(id)a3
{
  spotlightViewController = self->_spotlightViewController;
  v4 = a3;
  v5 = [(SBSpotlightPresentableViewController *)spotlightViewController spotlightMultiplexingViewController];
  [v5 setTargetDisplayConfiguration:v4];
}

- (void)_updatePresentationProgress:(double)a3 withOffset:(double)a4 velocity:(double)a5 presentationState:(int64_t)a6
{
  [(SBSpotlightPresentableViewController *)self->_spotlightViewController setTopOffset:self->_topOffset];
  [(SBSpotlightPresentableViewController *)self->_spotlightViewController setMaxPresentationOffset:self->_maxPresentationOffset];
  [(SBSpotlightPresentableViewController *)self->_spotlightViewController updatePresentationProgress:a6 withOffset:a3 velocity:a4 presentationState:a5];

  [(SBCoverSheetSpotlightViewController *)self updateComponentTransitionWithOffset:a6 presentationState:a4];
}

- (void)updateComponentTransitionWithOffset:(double)a3 presentationState:(int64_t)a4
{
  v7 = [(SBCoverSheetSpotlightViewController *)self delegate];
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  CSComponentTransitionInputsMake();
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  CSComponentTransitionInputsMake();
  if (a4 == 1 && a3 == 0.0)
  {
    proudLockComponent = self->_proudLockComponent;
    self->_proudLockComponent = 0;

    dateViewComponent = self->_dateViewComponent;
    self->_dateViewComponent = 0;

    contentComponent = self->_contentComponent;
    self->_contentComponent = 0;

    wallpaperFloatingLayerComponent = self->_wallpaperFloatingLayerComponent;
    self->_wallpaperFloatingLayerComponent = 0;

    [v7 coverSheetSpotlightViewControllerRemoveContentView:self];
  }

  else
  {
    CSComponentTransitionInputsMake();
    v35 = v29;
    v36 = v30;
    v37 = v31;
    CSComponentTransitionInputsMake();
    v32 = v29;
    v33 = v30;
    v34 = v31;
    [v7 coverSheetSpotlightViewControllerAddContentView:self];
    v12 = objc_opt_new();
    v13 = [v12 priority:40];
    v14 = [v13 transitionModifiers:8];
    v15 = [v14 transitionInputs:&v29];
    v16 = [v15 shouldResideInALowerSubview:1];
    v17 = [v16 optOutOfAlphaFadesForPageScroll:0];
    v18 = self->_proudLockComponent;
    self->_proudLockComponent = v17;

    v19 = objc_opt_new();
    v20 = [v19 priority:40];
    v21 = [v20 transitionModifiers:8];
    v29 = v32;
    v30 = v33;
    v31 = v34;
    v22 = [v21 transitionInputs:&v29];
    v23 = self->_dateViewComponent;
    self->_dateViewComponent = v22;

    v24 = objc_opt_new();
    v25 = [v24 priority:40];
    v26 = [v25 transitionModifiers:8];
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v27 = [v26 transitionInputs:&v29];
    v28 = self->_contentComponent;
    self->_contentComponent = v27;
  }

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBCoverSheetSpotlightViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0)
  {
    v5 = [v4 isConsumable];
  }

  else
  {
    if ([v4 type] == 25)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained coverSheetSpotlightViewControllerShouldDismiss:self animated:0];
    }

    v5 = 0;
  }

  return v5;
}

- (void)aggregateBehavior:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetSpotlightViewController;
  v3 = a3;
  [(CSCoverSheetViewControllerBase *)&v4 aggregateBehavior:v3];
  [v3 setIdleTimerDuration:{13, v4.receiver, v4.super_class}];
  [v3 setIdleTimerMode:1];
  [v3 setNotificationBehavior:2];
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v25 aggregateAppearance:v4];
  v5 = [MEMORY[0x277D02BC8] controlCenterGrabber];
  v6 = [v5 priority:40];
  v7 = [v6 hidden:1];
  [v4 addComponent:v7];

  v8 = [MEMORY[0x277D02BC8] footerCallToActionLabel];
  v9 = [v8 priority:40];
  v10 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
  v11 = [v9 identifier:v10];
  v12 = [v11 hidden:1];
  [v4 addComponent:v12];

  v13 = [MEMORY[0x277D02BC8] homeAffordance];
  v14 = [v13 priority:40];
  v15 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
  v16 = [v14 identifier:v15];
  v17 = [v16 hidden:1];
  [v4 addComponent:v17];

  v18 = [MEMORY[0x277D02BC8] whitePoint];
  v19 = [v18 priority:40];
  v20 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
  v21 = [v19 identifier:v20];
  v22 = [v21 hidden:1];
  [v4 addComponent:v22];

  proudLockComponent = self->_proudLockComponent;
  if (proudLockComponent)
  {
    v24 = [(CSProudLockComponent *)proudLockComponent shouldResideInALowerSubview:1];
    [v4 addComponent:v24];
  }

  if (self->_dateViewComponent)
  {
    [v4 addComponent:?];
  }

  if (self->_contentComponent)
  {
    [v4 addComponent:?];
  }

  if (self->_wallpaperFloatingLayerComponent)
  {
    [v4 addComponent:?];
  }
}

- (id)_newDisplayLayoutElement
{
  v2 = objc_alloc(MEMORY[0x277D66A50]);
  v3 = [v2 initWithIdentifier:*MEMORY[0x277D66F58]];
  [v3 setFillsDisplayBounds:1];
  [v3 setLayoutRole:6];
  return v3;
}

- (void)addGrabberView:(id)a3
{
  v6 = a3;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v4 = [(SBCoverSheetSpotlightViewController *)self view];
    [v4 bounds];
    [v6 setFrame:?];

    [v6 setAutoresizingMask:18];
    v5 = [(SBSpotlightPresentableViewController *)self->_spotlightViewController scalingContentView];
    [v5 addSubview:v6];

    [v6 setAutoHides:0];
  }
}

- (void)handleBottomEdgeGestureChanged:(id)a3
{
  v4 = a3;
  v5 = [(SBCoverSheetSpotlightViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;

  [(SBCoverSheetSpotlightViewController *)self _scaleGivenTranslation:v7];

  [(SBCoverSheetSpotlightViewController *)self _updateSpotlightScale:1 interactive:?];
}

- (void)handleBottomEdgeGestureEnded:(id)a3
{
  v4 = a3;
  [(SBCoverSheetSpotlightViewController *)self _updateSpotlightScale:0 interactive:1.0];
  v5 = [(SBCoverSheetSpotlightViewController *)self view];
  [v4 velocityInView:v5];
  v7 = v6;

  v8 = [(SBCoverSheetSpotlightViewController *)self view];
  [v4 translationInView:v8];
  v10 = v9;

  [(SBCoverSheetSpotlightViewController *)self _scaleGivenTranslation:v10 + v7 / 1000.0 * *MEMORY[0x277D76EC0] / (1.0 - *MEMORY[0x277D76EC0])];
  if (v11 < 0.98)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained coverSheetSpotlightViewControllerShouldDismiss:self animated:1];
  }
}

- (void)dismissForHomeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained coverSheetSpotlightViewControllerShouldDismiss:self animated:1];
}

- (double)_scaleGivenTranslation:(double)a3
{
  v4 = [(SBCoverSheetSpotlightViewController *)self view];
  [v4 bounds];
  v6 = a3 / (v5 * 0.5) + 1.0;

  BSUIConstrainValueWithRubberBand();
  if (v6 >= 1.0)
  {
    v8 = v7 + 1.0;
  }

  else
  {
    v8 = 1.0 - v7;
  }

  return fmin(fmax(v8, 0.0), 1.1);
}

- (SBCoverSheetSpotlightViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end