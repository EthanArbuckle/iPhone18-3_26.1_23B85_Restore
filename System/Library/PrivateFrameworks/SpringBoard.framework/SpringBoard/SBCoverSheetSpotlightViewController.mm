@interface SBCoverSheetSpotlightViewController
- (BOOL)handleEvent:(id)event;
- (SBCoverSheetSpotlightViewController)initWithSpotlightViewController:(id)controller;
- (SBCoverSheetSpotlightViewControllerDelegate)delegate;
- (double)_scaleGivenTranslation:(double)translation;
- (id)_newDisplayLayoutElement;
- (void)_updatePresentationProgress:(double)progress withOffset:(double)offset velocity:(double)velocity presentationState:(int64_t)state;
- (void)addGrabberView:(id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)dismissForHomeButton;
- (void)handleBottomEdgeGestureChanged:(id)changed;
- (void)handleBottomEdgeGestureEnded:(id)ended;
- (void)setTargetDisplayConfiguration:(id)configuration;
- (void)updateComponentTransitionWithOffset:(double)offset presentationState:(int64_t)state;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBCoverSheetSpotlightViewController

- (SBCoverSheetSpotlightViewController)initWithSpotlightViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBCoverSheetSpotlightViewController;
  v6 = [(SBCoverSheetSpotlightViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spotlightViewController, controller);
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSCoverSheetViewControllerBase *)self setDisplayLayoutElementActive:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained coverSheetSpotlightViewControllerShouldDismiss:self animated:0];
}

- (void)setTargetDisplayConfiguration:(id)configuration
{
  spotlightViewController = self->_spotlightViewController;
  configurationCopy = configuration;
  spotlightMultiplexingViewController = [(SBSpotlightPresentableViewController *)spotlightViewController spotlightMultiplexingViewController];
  [spotlightMultiplexingViewController setTargetDisplayConfiguration:configurationCopy];
}

- (void)_updatePresentationProgress:(double)progress withOffset:(double)offset velocity:(double)velocity presentationState:(int64_t)state
{
  [(SBSpotlightPresentableViewController *)self->_spotlightViewController setTopOffset:self->_topOffset];
  [(SBSpotlightPresentableViewController *)self->_spotlightViewController setMaxPresentationOffset:self->_maxPresentationOffset];
  [(SBSpotlightPresentableViewController *)self->_spotlightViewController updatePresentationProgress:state withOffset:progress velocity:offset presentationState:velocity];

  [(SBCoverSheetSpotlightViewController *)self updateComponentTransitionWithOffset:state presentationState:offset];
}

- (void)updateComponentTransitionWithOffset:(double)offset presentationState:(int64_t)state
{
  delegate = [(SBCoverSheetSpotlightViewController *)self delegate];
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  CSComponentTransitionInputsMake();
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  CSComponentTransitionInputsMake();
  if (state == 1 && offset == 0.0)
  {
    proudLockComponent = self->_proudLockComponent;
    self->_proudLockComponent = 0;

    dateViewComponent = self->_dateViewComponent;
    self->_dateViewComponent = 0;

    contentComponent = self->_contentComponent;
    self->_contentComponent = 0;

    wallpaperFloatingLayerComponent = self->_wallpaperFloatingLayerComponent;
    self->_wallpaperFloatingLayerComponent = 0;

    [delegate coverSheetSpotlightViewControllerRemoveContentView:self];
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
    [delegate coverSheetSpotlightViewControllerAddContentView:self];
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

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = SBCoverSheetSpotlightViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    if ([eventCopy type] == 25)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained coverSheetSpotlightViewControllerShouldDismiss:self animated:0];
    }

    isConsumable = 0;
  }

  return isConsumable;
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetSpotlightViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy setIdleTimerDuration:{13, v4.receiver, v4.super_class}];
  [behaviorCopy setIdleTimerMode:1];
  [behaviorCopy setNotificationBehavior:2];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v25.receiver = self;
  v25.super_class = SBCoverSheetSpotlightViewController;
  [(CSCoverSheetViewControllerBase *)&v25 aggregateAppearance:appearanceCopy];
  controlCenterGrabber = [MEMORY[0x277D02BC8] controlCenterGrabber];
  v6 = [controlCenterGrabber priority:40];
  v7 = [v6 hidden:1];
  [appearanceCopy addComponent:v7];

  footerCallToActionLabel = [MEMORY[0x277D02BC8] footerCallToActionLabel];
  v9 = [footerCallToActionLabel priority:40];
  coverSheetIdentifier = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
  v11 = [v9 identifier:coverSheetIdentifier];
  v12 = [v11 hidden:1];
  [appearanceCopy addComponent:v12];

  homeAffordance = [MEMORY[0x277D02BC8] homeAffordance];
  v14 = [homeAffordance priority:40];
  coverSheetIdentifier2 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
  v16 = [v14 identifier:coverSheetIdentifier2];
  v17 = [v16 hidden:1];
  [appearanceCopy addComponent:v17];

  whitePoint = [MEMORY[0x277D02BC8] whitePoint];
  v19 = [whitePoint priority:40];
  coverSheetIdentifier3 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
  v21 = [v19 identifier:coverSheetIdentifier3];
  v22 = [v21 hidden:1];
  [appearanceCopy addComponent:v22];

  proudLockComponent = self->_proudLockComponent;
  if (proudLockComponent)
  {
    v24 = [(CSProudLockComponent *)proudLockComponent shouldResideInALowerSubview:1];
    [appearanceCopy addComponent:v24];
  }

  if (self->_dateViewComponent)
  {
    [appearanceCopy addComponent:?];
  }

  if (self->_contentComponent)
  {
    [appearanceCopy addComponent:?];
  }

  if (self->_wallpaperFloatingLayerComponent)
  {
    [appearanceCopy addComponent:?];
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

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    view = [(SBCoverSheetSpotlightViewController *)self view];
    [view bounds];
    [viewCopy setFrame:?];

    [viewCopy setAutoresizingMask:18];
    scalingContentView = [(SBSpotlightPresentableViewController *)self->_spotlightViewController scalingContentView];
    [scalingContentView addSubview:viewCopy];

    [viewCopy setAutoHides:0];
  }
}

- (void)handleBottomEdgeGestureChanged:(id)changed
{
  changedCopy = changed;
  view = [(SBCoverSheetSpotlightViewController *)self view];
  [changedCopy translationInView:view];
  v7 = v6;

  [(SBCoverSheetSpotlightViewController *)self _scaleGivenTranslation:v7];

  [(SBCoverSheetSpotlightViewController *)self _updateSpotlightScale:1 interactive:?];
}

- (void)handleBottomEdgeGestureEnded:(id)ended
{
  endedCopy = ended;
  [(SBCoverSheetSpotlightViewController *)self _updateSpotlightScale:0 interactive:1.0];
  view = [(SBCoverSheetSpotlightViewController *)self view];
  [endedCopy velocityInView:view];
  v7 = v6;

  view2 = [(SBCoverSheetSpotlightViewController *)self view];
  [endedCopy translationInView:view2];
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

- (double)_scaleGivenTranslation:(double)translation
{
  view = [(SBCoverSheetSpotlightViewController *)self view];
  [view bounds];
  v6 = translation / (v5 * 0.5) + 1.0;

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