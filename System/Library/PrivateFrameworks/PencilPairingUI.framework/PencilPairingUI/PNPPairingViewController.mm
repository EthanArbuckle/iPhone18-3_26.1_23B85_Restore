@interface PNPPairingViewController
- (CGSize)preferredContentSize;
- (PNPPairingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PNPPairingViewControllerDelegate)delegate;
- (PNPPlatterViewControllerPlatterDelegate)platterDelegate;
- (PNPViewControllerAppearanceDelegate)appearanceDelegate;
- (double)_translationAmountForDismiss;
- (double)preferredCornerRadius;
- (id)_currentPlatterContainerView;
- (id)_effectivePencilView;
- (int64_t)_dimmingState;
- (unint64_t)_edgeToStickToPort;
- (unint64_t)preferredEdge;
- (void)_actuallyTransitionToCharging;
- (void)_actuallyTransitionToChargingByMovingPlatter;
- (void)_actuallyTransitionToChargingBySlideOutAndPresent;
- (void)_actuallyTransitionToSpinningPlatterWithDimmingState:(int64_t)a3;
- (void)_actuallyTransitionToWizard;
- (void)_cancelTimeoutTimer;
- (void)_centerContainerViews;
- (void)_chargingStatusViewHostsLayoutIfNeeded;
- (void)_chargingStatusViewHostsSetShowsChargingStatusView:(BOOL)a3;
- (void)_chargingStatusViewHostsSetupChargingViews;
- (void)_chargingStatusViewHostsTeardownChargingViews;
- (void)_chargingStatusViewLayoutIfNeeded;
- (void)_chargingStatusViewSetChargingState:(int64_t)a3;
- (void)_chargingStatusViewSetDeviceState:(id)a3;
- (void)_chargingStatusViewSetIsTransitioningToBatteryUI:(BOOL)a3;
- (void)_chargingStatusViewSetNeedsLayout;
- (void)_chargingStatusViewSetShowCharging:(BOOL)a3;
- (void)_chargingStatusViewUpdateConstraints;
- (void)_chargingUIViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)_dismissChargingAndPresentSpinningPencilWithDimmingState:(int64_t)a3;
- (void)_handlePanGesture:(id)a3;
- (void)_hideOrShowAllContainerViewsIfNeeded;
- (void)_hideOrShowContainerViewIfNeeded:(id)a3;
- (void)_morphToSpinningPencilWithDimmingState:(int64_t)a3;
- (void)_offsetContainerViewsIfNecessary;
- (void)_orientationChanged:(double)a3;
- (void)_performAnimations:(id)a3 completion:(id)a4;
- (void)_resetTimeoutTimer;
- (void)_resetTimerForWizard;
- (void)_showConnectingAnimationUI;
- (void)_spinningPencilViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)_startConnectingUITimer;
- (void)_transitionPairingViewToWizardByMovingPlatter;
- (void)_transitionToChargingFrom:(int64_t)a3;
- (void)_transitionToChargingFromSpinner;
- (void)_transitionToWizardBySlideOutAndPresent;
- (void)_updateAnimationTranslation;
- (void)_updateForSize:(CGSize)a3;
- (void)_updatePillUIAnimated:(BOOL)a3;
- (void)_updatePlatterContainerView:(id)a3 toPreferredCornerRadius:(double)a4 edge:(unint64_t)a5;
- (void)_updatePreferredContentSize;
- (void)_updateSubviewDeviceStateForContainerView:(id)a3;
- (void)_wizardViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)didCompleteOneRevolution;
- (void)didTapOnCancelButton;
- (void)didTapOnConnectButton;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)pairingFailed;
- (void)pairingStarted;
- (void)pairingStartedWithDimming:(BOOL)a3 deviceType:(int64_t)a4;
- (void)pairingStartedWithDimmingState:(int64_t)a3;
- (void)pairingSucceededSubsequently;
- (void)pairingSucceededWithShouldShowWhatsNew:(BOOL)a3 deviceType:(int64_t)a4;
- (void)setDeviceState:(id)a3;
- (void)showGenericBatteryUI;
- (void)showNeedsInternetAlert;
- (void)showPairingPrompt;
- (void)showPairingPromptAlert;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewRequestsDismiss:(id)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PNPPairingViewController

- (PNPPairingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v26.receiver = self;
  v26.super_class = PNPPairingViewController;
  v4 = [(PNPPairingViewController *)&v26 initWithNibName:0 bundle:0];
  v5 = objc_alloc_init(PNPPlatterTransitioningDelegate);
  platterTransitioningDelegate = v4->_platterTransitioningDelegate;
  v4->_platterTransitioningDelegate = v5;

  [(PNPPairingViewController *)v4 setTransitioningDelegate:v4->_platterTransitioningDelegate];
  [(PNPPairingViewController *)v4 setModalPresentationStyle:4];
  v7 = objc_alloc_init(PNPPlatterContainerView);
  wizardPlatterContainerView = v4->_wizardPlatterContainerView;
  v4->_wizardPlatterContainerView = v7;

  v9 = objc_alloc_init(PNPPairingView);
  pairingView = v4->_pairingView;
  v4->_pairingView = v9;

  [(PNPPairingView *)v4->_pairingView setDelegate:v4];
  v11 = [(PNPPairingView *)v4->_pairingView pencilView];
  [v11 setDelegate:v4];

  v12 = objc_alloc_init(PNPPlatterContainerView);
  horizontalPencilPlatterContainerView = v4->_horizontalPencilPlatterContainerView;
  v4->_horizontalPencilPlatterContainerView = v12;

  v14 = objc_alloc_init(PNPPencilHorizontalPresentationContainerView);
  horizontalPresentationPencilContainerView = v4->_horizontalPresentationPencilContainerView;
  v4->_horizontalPresentationPencilContainerView = v14;

  v16 = [[PNPPencilView alloc] initWithVariant:0];
  horizontalPencilView = v4->_horizontalPencilView;
  v4->_horizontalPencilView = v16;

  [(PNPPencilView *)v4->_horizontalPencilView setDelegate:v4];
  v18 = objc_alloc_init(PNPChargingStatusView);
  pairingChargingStatusView = v4->_pairingChargingStatusView;
  v4->_pairingChargingStatusView = v18;

  v20 = objc_alloc_init(PNPChargingStatusView);
  horizontalChargingStatusView = v4->_horizontalChargingStatusView;
  v4->_horizontalChargingStatusView = v20;

  [(PNPChargingStatusView *)v4->_pairingChargingStatusView setDelegate:v4];
  [(PNPChargingStatusView *)v4->_horizontalChargingStatusView setDelegate:v4];
  [(PNPPlatterContainerView *)v4->_wizardPlatterContainerView setContentView:v4->_pairingView];
  [(PNPPlatterContainerView *)v4->_horizontalPencilPlatterContainerView setContentView:v4->_horizontalPresentationPencilContainerView];
  [(PNPPencilHorizontalPresentationContainerView *)v4->_horizontalPresentationPencilContainerView setPencilView:v4->_horizontalPencilView];
  v22 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v4 action:sel__handlePanGesture_];
  panGestureRecognizer = v4->_panGestureRecognizer;
  v4->_panGestureRecognizer = v22;

  v24 = [(PNPPairingViewController *)v4 view];
  [v24 addGestureRecognizer:v4->_panGestureRecognizer];

  [(PNPPairingViewController *)v4 _offsetContainerViewsIfNecessary];
  return v4;
}

- (void)loadView
{
  v3 = objc_alloc_init(PNPPairingViewControllerView);
  [(PNPPairingViewController *)self setView:v3];
}

- (void)_orientationChanged:(double)a3
{
  if (![(PNPPairingView *)self->_pairingView state])
  {
    v4 = [(PNPPairingViewController *)self deviceState];
    v8 = [v4 copy];

    v5 = [(PNPPairingViewController *)self _edgeToStickToPort];
    v6 = v8;
    if (!v5)
    {
      if ([v8 edge] != 8 && objc_msgSend(v8, "edge") != 2 && objc_msgSend(v8, "edge") != 4)
      {
        [v8 edge];
      }

      v6 = v8;
    }

    [v6 setEdge:?];
    [(PNPPairingViewController *)self setDeviceState:v8];
    v7 = [(PNPPairingViewController *)self view];
    [v7 setNeedsLayout];
  }
}

- (unint64_t)_edgeToStickToPort
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 orientation];

  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 statusBarOrientation];

  if (v3 == 1 || v5 == 1)
  {
    return 8;
  }

  if (v3 == 2 || v5 == 2)
  {
    return 2;
  }

  if (v3 == 3 || v5 == 3)
  {
    return 1;
  }

  if (v5 == 4 || v3 == 4)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (void)viewWillLayoutSubviews
{
  wizardPlatterContainerView = self->_wizardPlatterContainerView;
  v4 = [(PNPPairingViewController *)self view];
  [v4 bounds];
  [(PNPPlatterContainerView *)wizardPlatterContainerView setFrame:?];

  horizontalPencilPlatterContainerView = self->_horizontalPencilPlatterContainerView;
  v6 = [(PNPPairingViewController *)self view];
  [v6 bounds];
  [(PNPPlatterContainerView *)horizontalPencilPlatterContainerView setFrame:?];

  [(PNPPairingViewController *)self _chargingStatusViewSetNeedsLayout];
  v7 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:v7 toPreferredCornerRadius:[(PNPPairingViewController *)self preferredEdge] edge:v8];

  v9 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  v10 = self->_wizardPlatterContainerView;

  if (!self->_viewDidAppearCalled || (v11 = v9 == v10, v12 = v9 != v10, self->_viewRequestsDismissCalled))
  {
    v11 = 0;
    v12 = 0;
  }

  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setPresented:v11];
  v13 = self->_horizontalPencilPlatterContainerView;

  [(PNPPlatterContainerView *)v13 setPresented:v12];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PNPPairingViewController;
  [(PNPPairingViewController *)&v5 viewDidLoad];
  v3 = [(PNPPairingViewController *)self view];
  [v3 addSubview:self->_horizontalPencilPlatterContainerView];

  v4 = [(PNPPairingViewController *)self view];
  [v4 insertSubview:self->_wizardPlatterContainerView belowSubview:self->_horizontalPencilPlatterContainerView];
}

- (void)_updateForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setFrame:*MEMORY[0x277CBF3A0], v7, a3.width, a3.height];
  horizontalPencilPlatterContainerView = self->_horizontalPencilPlatterContainerView;

  [(PNPPlatterContainerView *)horizontalPencilPlatterContainerView setFrame:v6, v7, width, height];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if (self->_inWizard)
  {
    [(PNPPairingViewController *)self _wizardViewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }

  else if (self->_showingChargingUI)
  {
    [(PNPPairingViewController *)self _chargingUIViewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }

  else
  {
    [(PNPPairingViewController *)self _spinningPencilViewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }

  v8.receiver = self;
  v8.super_class = PNPPairingViewController;
  [(PNPPairingViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)_wizardViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if (v7)
  {
    [v7 targetTransform];
    v9 = *(&v14 + 1);
    v10 = *&v14;
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v11 = atan2f(v9, v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__PNPPairingViewController__wizardViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_279A0A830;
  *&v13[5] = width;
  *&v13[6] = height;
  v13[4] = self;
  *&v13[7] = v11;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__PNPPairingViewController__wizardViewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_279A0A088;
  *&v12[5] = width;
  *&v12[6] = height;
  v12[4] = self;
  [v8 animateAlongsideTransition:v13 completion:v12];
}

uint64_t __86__PNPPairingViewController__wizardViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{v2, v3, v4, v5}];

  [*(a1 + 32) _orientationChanged:*(a1 + 56)];
  [*(*(a1 + 32) + 992) setFrame:{v2, v3, v4, v5}];
  [*(*(a1 + 32) + 1016) setFrame:{v2, v3, v4, v5}];
  [*(*(a1 + 32) + 992) setNeedsLayout];
  [*(*(a1 + 32) + 992) layoutIfNeeded];
  [*(*(a1 + 32) + 1016) setNeedsLayout];
  v7 = *(*(a1 + 32) + 1016);

  return [v7 layoutIfNeeded];
}

uint64_t __86__PNPPairingViewController__wizardViewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{v2, v3, v4, v5}];

  [*(*(a1 + 32) + 992) setFrame:{v2, v3, v4, v5}];
  [*(*(a1 + 32) + 1016) setFrame:{v2, v3, v4, v5}];
  [*(*(a1 + 32) + 992) setNeedsLayout];
  [*(*(a1 + 32) + 1016) setNeedsLayout];
  [*(*(a1 + 32) + 992) layoutIfNeeded];
  [*(*(a1 + 32) + 1016) layoutIfNeeded];
  v7 = *(*(a1 + 32) + 1000);

  return [v7 layoutIfNeeded];
}

- (void)_chargingUIViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (v7)
  {
    [v7 targetTransform];
    v9 = *(&v13 + 1);
    v10 = *&v13;
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v11 = atan2f(v9, v10);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__PNPPairingViewController__chargingUIViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_279A0A830;
  *&v12[5] = width;
  *&v12[6] = height;
  v12[4] = self;
  *&v12[7] = v11;
  [v8 animateAlongsideTransition:v12 completion:&__block_literal_global_14];
}

void __90__PNPPairingViewController__chargingUIViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{v2, v3, v4, v5}];

  [*(a1 + 32) _orientationChanged:*(a1 + 56)];
  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (void)_spinningPencilViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (v7)
  {
    [v7 targetTransform];
    v9 = *(&v13 + 1);
    v10 = *&v13;
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v11 = atan2f(v9, v10);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__PNPPairingViewController__spinningPencilViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_279A0A830;
  *&v12[5] = width;
  *&v12[6] = height;
  v12[4] = self;
  *&v12[7] = v11;
  [v8 animateAlongsideTransition:v12 completion:&__block_literal_global_22];
}

void __94__PNPPairingViewController__spinningPencilViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{v2, v3, v4, v5}];

  [*(a1 + 32) _orientationChanged:*(a1 + 56)];
  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (id)_currentPlatterContainerView
{
  if (self->_inWizard || self->_showingChargingUI || (-[PNPPairingViewController deviceState](self, "deviceState"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isOnLeftOrRightSide], v3, (v4 & 1) == 0))
  {
    v5 = &OBJC_IVAR___PNPPairingViewController__wizardPlatterContainerView;
  }

  else
  {
    v5 = &OBJC_IVAR___PNPPairingViewController__horizontalPencilPlatterContainerView;
  }

  v6 = *(&self->super.super.super.isa + *v5);

  return v6;
}

- (void)_updatePlatterContainerView:(id)a3 toPreferredCornerRadius:(double)a4 edge:(unint64_t)a5
{
  v8 = a3;
  [v8 setPreferredCornerRadius:a4];
  [v8 setEdge:a5];
  [(PNPPairingViewController *)self _updateSubviewDeviceStateForContainerView:v8];
  [v8 layoutIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[PencilSettings sharedPencilSettings];
  [v5 syncSettingsToBackboard];

  v6 = +[PencilSettings sharedPencilSettings];
  [v6 migrateObsoletedAXOpaqueTouchSetting];

  v16.receiver = self;
  v16.super_class = PNPPairingViewController;
  [(PNPPairingViewController *)&v16 viewDidAppear:v3];
  v7 = [(PNPPairingViewController *)self view];
  [v7 bounds];
  [(PNPPairingViewController *)self _updateForSize:v8, v9];

  v10 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:v10 toPreferredCornerRadius:[(PNPPairingViewController *)self preferredEdge] edge:v11];

  v12 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [v12 setPresented:0];

  v13 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [v13 layoutIfNeeded];

  v14 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__PNPPairingViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_279A0A060;
  v15[4] = self;
  PNPPlatterPresentPlatterContainerView(v14, v3, v15);

  self->_viewDidAppearCalled = 1;
}

uint64_t __42__PNPPairingViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) pairingViewControllerState];
  if (result == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _startConnectingUITimer];
  }

  return result;
}

- (void)_startConnectingUITimer
{
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__showConnectingAnimationUI selector:0 userInfo:0 repeats:0.8];
  initialTimer = self->_initialTimer;
  self->_initialTimer = v3;

  MEMORY[0x2821F96F8](v3, initialTimer);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PNPPairingViewController;
  [(PNPPairingViewController *)&v4 viewWillDisappear:a3];
  [(PNPPairingViewController *)self resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PNPPairingViewController;
  [(PNPPairingViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PNPPairingViewController *)self appearanceDelegate];
  [v4 viewControllerDidDismiss:self];
}

- (void)_performAnimations:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__PNPPairingViewController__performAnimations_completion___block_invoke;
  v12[3] = &unk_279A0A128;
  v13 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__PNPPairingViewController__performAnimations_completion___block_invoke_2;
  v10[3] = &unk_279A0A1C0;
  v11 = v6;
  v8 = v6;
  v9 = v5;
  [v7 animateWithDuration:4 delay:v12 usingSpringWithDamping:v10 initialSpringVelocity:0.6 options:0.0 animations:0.85 completion:0.0];
}

uint64_t __58__PNPPairingViewController__performAnimations_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_transitionPairingViewToWizardByMovingPlatter
{
  [(PNPPairingView *)self->_pairingView prepareForTransitionToWizard];
  v3 = [(PNPPairingView *)self->_pairingView wizardViewController];
  [(PNPPairingViewController *)self addChildViewController:v3];

  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke;
  v5[3] = &unk_279A0A060;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke_2;
  v4[3] = &unk_279A0A060;
  [(PNPPairingViewController *)self _performAnimations:v5 completion:v4];
}

uint64_t __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platterDelegate];
  [v2 platterPreferencesChangedForViewController:*(a1 + 32)];

  [*(*(a1 + 32) + 1000) setState:1];
  [*(*(a1 + 32) + 1016) setDimmingState:2];
  [*(*(a1 + 32) + 992) setDimmingState:2];
  [*(a1 + 32) _centerContainerViews];
  v3 = *(a1 + 32);
  v4 = v3[124];
  [v3 preferredCornerRadius];
  [v3 _updatePlatterContainerView:v4 toPreferredCornerRadius:objc_msgSend(*(a1 + 32) edge:{"preferredEdge"), v5}];
  [*(*(a1 + 32) + 1000) transitionToWizard];
  v6 = *(*(a1 + 32) + 1000);

  return [v6 layoutIfNeeded];
}

uint64_t __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke_3;
  v4[3] = &unk_279A0A060;
  v4[4] = v3;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke_4;
  v2[3] = &unk_279A0A060;
  return [v3 _performAnimations:v4 completion:v2];
}

uint64_t __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setShowWizardContents:1];
  v2 = *(*(a1 + 32) + 1000);

  return [v2 layoutIfNeeded];
}

uint64_t __73__PNPPairingViewController__transitionPairingViewToWizardByMovingPlatter__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) wizardTransitionFinished];
  v2 = *(*(a1 + 32) + 1000);

  return [v2 layoutIfNeeded];
}

- (void)_transitionToWizardBySlideOutAndPresent
{
  [(PNPPairingView *)self->_pairingView prepareForTransitionToWizard];
  v3 = [(PNPPairingView *)self->_pairingView wizardViewController];
  [(PNPPairingViewController *)self addChildViewController:v3];

  [(PNPPairingView *)self->_pairingView unhideWizardIfNecessary];
  [(PNPPairingView *)self->_pairingView setState:1];
  [(PNPPairingView *)self->_pairingView setShowWizardContents:1];
  [(PNPPairingView *)self->_pairingView wizardTransitionFinished];
  [(PNPPairingView *)self->_pairingView layoutIfNeeded];
  [(PNPPlatterContainerView *)self->_horizontalPencilPlatterContainerView setDimmingState:2];
  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setDimmingState:2];
  wizardPlatterContainerView = self->_wizardPlatterContainerView;
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:wizardPlatterContainerView toPreferredCornerRadius:0 edge:?];
  horizontalPencilPlatterContainerView = self->_horizontalPencilPlatterContainerView;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PNPPairingViewController__transitionToWizardBySlideOutAndPresent__block_invoke;
  v6[3] = &unk_279A0A060;
  v6[4] = self;
  PNPPlatterDismissPlatterContainerView(horizontalPencilPlatterContainerView, 1, v6);
  PNPPlatterPresentPlatterContainerView(self->_wizardPlatterContainerView, 1, 0);
}

- (void)_actuallyTransitionToWizard
{
  v3 = [(PNPPairingViewController *)self view];
  [v3 layoutIfNeeded];

  self->_inWizard = 1;
  v4 = [(PNPPairingView *)self->_pairingView deviceType];
  v5 = [(PNPPairingViewController *)self deviceState];
  if (([v5 isOnLeftOrRightSide] & 1) != 0 || -[PNPPairingView deviceType](self->_pairingView, "deviceType") == 1)
  {

LABEL_4:
    [(PNPPairingViewController *)self _transitionToWizardBySlideOutAndPresent];
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    goto LABEL_4;
  }

  [(PNPPairingViewController *)self _transitionPairingViewToWizardByMovingPlatter];
LABEL_5:
  v6 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v6 postNotificationName:@"PNPParingVCDidAppearNotification" object:0 userInfo:0 deliverImmediately:1];
  [(PNPPairingViewController *)self becomeFirstResponder];
}

- (void)_chargingStatusViewHostsLayoutIfNeeded
{
  [(PNPPairingView *)self->_pairingView layoutIfNeeded];
  horizontalPresentationPencilContainerView = self->_horizontalPresentationPencilContainerView;

  [(PNPPencilHorizontalPresentationContainerView *)horizontalPresentationPencilContainerView layoutIfNeeded];
}

- (void)_chargingStatusViewHostsSetupChargingViews
{
  [(PNPPairingView *)self->_pairingView setChargingStatusView:self->_pairingChargingStatusView];
  horizontalPresentationPencilContainerView = self->_horizontalPresentationPencilContainerView;
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPPencilHorizontalPresentationContainerView *)horizontalPresentationPencilContainerView setChargingStatusView:horizontalChargingStatusView];
}

- (void)_chargingStatusViewHostsTeardownChargingViews
{
  [(PNPPairingView *)self->_pairingView setChargingStatusView:0];
  horizontalPresentationPencilContainerView = self->_horizontalPresentationPencilContainerView;

  [(PNPPencilHorizontalPresentationContainerView *)horizontalPresentationPencilContainerView setChargingStatusView:0];
}

- (void)_chargingStatusViewHostsSetShowsChargingStatusView:(BOOL)a3
{
  v3 = a3;
  [(PNPPairingView *)self->_pairingView setShowsChargingStatusView:?];
  horizontalPresentationPencilContainerView = self->_horizontalPresentationPencilContainerView;

  [(PNPPencilHorizontalPresentationContainerView *)horizontalPresentationPencilContainerView setShowsChargingStatusView:v3];
}

- (void)_chargingStatusViewSetShowCharging:(BOOL)a3
{
  v3 = a3;
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setShowsCharging:?];
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPChargingStatusView *)horizontalChargingStatusView setShowsCharging:v3];
}

- (void)_chargingStatusViewSetChargingState:(int64_t)a3
{
  [(PNPChargingStatusView *)self->_pairingChargingStatusView updateChargingState:?];
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPChargingStatusView *)horizontalChargingStatusView updateChargingState:a3];
}

- (void)_chargingStatusViewSetIsTransitioningToBatteryUI:(BOOL)a3
{
  v3 = a3;
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setIsTransitioningToBatteryUI:?];
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPChargingStatusView *)horizontalChargingStatusView setIsTransitioningToBatteryUI:v3];
}

- (void)_chargingStatusViewSetNeedsLayout
{
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setNeedsLayout];
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPChargingStatusView *)horizontalChargingStatusView setNeedsLayout];
}

- (void)_chargingStatusViewLayoutIfNeeded
{
  [(PNPChargingStatusView *)self->_pairingChargingStatusView layoutIfNeeded];
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPChargingStatusView *)horizontalChargingStatusView layoutIfNeeded];
}

- (void)_chargingStatusViewUpdateConstraints
{
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setNeedsUpdateConstraints];
  horizontalChargingStatusView = self->_horizontalChargingStatusView;

  [(PNPChargingStatusView *)horizontalChargingStatusView setNeedsUpdateConstraints];
}

- (void)_chargingStatusViewSetDeviceState:(id)a3
{
  pairingChargingStatusView = self->_pairingChargingStatusView;
  v5 = a3;
  [(PNPChargingStatusView *)pairingChargingStatusView setDeviceState:v5];
  [(PNPChargingStatusView *)self->_horizontalChargingStatusView setDeviceState:v5];
}

- (void)_actuallyTransitionToCharging
{
  v3 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  horizontalPencilPlatterContainerView = self->_horizontalPencilPlatterContainerView;

  if (v3 == horizontalPencilPlatterContainerView)
  {

    [(PNPPairingViewController *)self _actuallyTransitionToChargingBySlideOutAndPresent];
  }

  else
  {

    [(PNPPairingViewController *)self _actuallyTransitionToChargingByMovingPlatter];
  }
}

- (void)_actuallyTransitionToChargingBySlideOutAndPresent
{
  self->_showingChargingUI = 1;
  [(PNPPairingView *)self->_pairingView setShowsChargingStatusView:1];
  [(PNPPairingView *)self->_pairingView setChargingStatusView:self->_pairingChargingStatusView];
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setShowsCharging:1];
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setChargingState:2];
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setIsTransitioningToBatteryUI:1];
  [(PNPChargingStatusView *)self->_pairingChargingStatusView setNeedsUpdateConstraints];
  [(PNPPairingView *)self->_pairingView layoutIfNeeded];
  [(PNPPairingViewController *)self _chargingStatusViewSetIsTransitioningToBatteryUI:0];
  [(PNPPairingViewController *)self _chargingStatusViewUpdateConstraints];
  wizardPlatterContainerView = self->_wizardPlatterContainerView;
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:wizardPlatterContainerView toPreferredCornerRadius:[(PNPPairingViewController *)self preferredEdge] edge:v4];
  v5 = [(PNPPairingViewController *)self platterDelegate];
  [v5 platterPreferencesChangedForViewController:self];

  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setNeedsLayout];
  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView layoutIfNeeded];
  PNPPlatterDismissPlatterContainerView(self->_horizontalPencilPlatterContainerView, 1, 0);
  v6 = self->_wizardPlatterContainerView;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__PNPPairingViewController__actuallyTransitionToChargingBySlideOutAndPresent__block_invoke;
  v7[3] = &unk_279A0A060;
  v7[4] = self;
  PNPPlatterPresentPlatterContainerView(v6, 1, v7);
}

void __77__PNPPairingViewController__actuallyTransitionToChargingBySlideOutAndPresent__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PNPPairingViewController__actuallyTransitionToChargingBySlideOutAndPresent__block_invoke_2;
  block[3] = &unk_279A0A060;
  block[4] = *(a1 + 32);
  v1 = dispatch_block_create(0, block);
  v2 = dispatch_time(0, 1500000000);
  dispatch_after(v2, MEMORY[0x277D85CD0], v1);
}

- (void)_actuallyTransitionToChargingByMovingPlatter
{
  v3 = [(PNPPairingViewController *)self view];
  [v3 layoutIfNeeded];

  self->_showingChargingUI = 1;
  [(PNPPairingViewController *)self _chargingStatusViewHostsSetupChargingViews];
  [(PNPPairingViewController *)self _chargingStatusViewHostsSetShowsChargingStatusView:0];
  [(PNPPairingViewController *)self _chargingStatusViewHostsLayoutIfNeeded];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__PNPPairingViewController__actuallyTransitionToChargingByMovingPlatter__block_invoke;
  v5[3] = &unk_279A0A060;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__PNPPairingViewController__actuallyTransitionToChargingByMovingPlatter__block_invoke_2;
  v4[3] = &unk_279A0A060;
  [(PNPPairingViewController *)self _performAnimations:v5 completion:v4];
}

void __72__PNPPairingViewController__actuallyTransitionToChargingByMovingPlatter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _centerContainerViews];
  [*(a1 + 32) _chargingStatusViewSetShowCharging:1];
  [*(a1 + 32) _chargingStatusViewHostsSetShowsChargingStatusView:1];
  [*(a1 + 32) _chargingStatusViewSetChargingState:2];
  [*(a1 + 32) _chargingStatusViewSetIsTransitioningToBatteryUI:1];
  [*(a1 + 32) _chargingStatusViewUpdateConstraints];
  [*(a1 + 32) _chargingStatusViewHostsLayoutIfNeeded];
  v2 = *(a1 + 32);
  v3 = [v2 _currentPlatterContainerView];
  [*(a1 + 32) preferredCornerRadius];
  [v2 _updatePlatterContainerView:v3 toPreferredCornerRadius:objc_msgSend(*(a1 + 32) edge:{"preferredEdge"), v4}];

  v5 = [*(a1 + 32) platterDelegate];
  [v5 platterPreferencesChangedForViewController:*(a1 + 32)];
}

void __72__PNPPairingViewController__actuallyTransitionToChargingByMovingPlatter__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _chargingStatusViewSetIsTransitioningToBatteryUI:0];
  [*(a1 + 32) _chargingStatusViewUpdateConstraints];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__PNPPairingViewController__actuallyTransitionToChargingByMovingPlatter__block_invoke_3;
  block[3] = &unk_279A0A060;
  block[4] = *(a1 + 32);
  v2 = dispatch_block_create(0, block);
  v3 = dispatch_time(0, 1500000000);
  dispatch_after(v3, MEMORY[0x277D85CD0], v2);
}

- (void)_centerContainerViews
{
  [(PNPPlatterContainerView *)self->_horizontalPencilPlatterContainerView setPencilOffset:0.0];
  wizardPlatterContainerView = self->_wizardPlatterContainerView;

  [(PNPPlatterContainerView *)wizardPlatterContainerView setPencilOffset:0.0];
}

- (void)_offsetContainerViewsIfNecessary
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  if (v4 < 1000.0)
  {

    v8 = 12.0;
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v7 = v6;

    if (v7 >= 1000.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 12.0;
    }
  }

  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setPencilOffset:v8];
  horizontalPencilPlatterContainerView = self->_horizontalPencilPlatterContainerView;

  [(PNPPlatterContainerView *)horizontalPencilPlatterContainerView setPencilOffset:v8];
}

- (id)_effectivePencilView
{
  v3 = [(PNPPairingViewController *)self deviceState];
  v4 = [v3 isOnLeftOrRightSide];

  if (v4)
  {
    v5 = self->_horizontalPencilView;
  }

  else
  {
    v5 = [(PNPPairingView *)self->_pairingView pencilView];
  }

  return v5;
}

- (void)_actuallyTransitionToSpinningPlatterWithDimmingState:(int64_t)a3
{
  [(PNPPairingViewController *)self _offsetContainerViewsIfNecessary];
  v5 = [(PNPPairingViewController *)self view];
  [v5 layoutIfNeeded];

  [(PNPPencilView *)self->_horizontalPencilView prepareMovieForSpinningPencil:self->_deviceState];
  v6 = [(PNPPairingView *)self->_pairingView pencilView];
  [v6 prepareMovieForSpinningPencil:self->_deviceState];

  if ([(PNPPairingViewController *)self pairingViewControllerState]&& [(PNPPairingViewController *)self pairingViewControllerState]!= 1 || (v7 = [(PNPPairingViewController *)self _edgeToStickToPort], v7 == 1) || v7 == 4)
  {

    [(PNPPairingViewController *)self _morphToSpinningPencilWithDimmingState:a3];
  }

  else
  {

    [(PNPPairingViewController *)self _dismissChargingAndPresentSpinningPencilWithDimmingState:a3];
  }
}

- (void)_morphToSpinningPencilWithDimmingState:(int64_t)a3
{
  self->_showingChargingUI = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__PNPPairingViewController__morphToSpinningPencilWithDimmingState___block_invoke;
  v3[3] = &unk_279A0A150;
  v3[4] = self;
  v3[5] = a3;
  [(PNPPairingViewController *)self _performAnimations:v3 completion:0];
}

uint64_t __67__PNPPairingViewController__morphToSpinningPencilWithDimmingState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platterDelegate];
  [v2 platterPreferencesChangedForViewController:*(a1 + 32)];

  [*(*(a1 + 32) + 1000) setState:0];
  [*(a1 + 32) _offsetContainerViewsIfNecessary];
  [*(a1 + 32) _chargingStatusViewHostsTeardownChargingViews];
  [*(a1 + 32) _chargingStatusViewHostsSetShowsChargingStatusView:0];
  [*(*(a1 + 32) + 1016) setDimmingState:*(a1 + 40)];
  [*(*(a1 + 32) + 992) setDimmingState:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [v3 _currentPlatterContainerView];
  [*(a1 + 32) preferredCornerRadius];
  [v3 _updatePlatterContainerView:v4 toPreferredCornerRadius:objc_msgSend(*(a1 + 32) edge:{"preferredEdge"), v5}];

  v6 = *(a1 + 32);

  return [v6 _chargingStatusViewHostsLayoutIfNeeded];
}

- (void)_dismissChargingAndPresentSpinningPencilWithDimmingState:(int64_t)a3
{
  self->_showingChargingUI = 0;
  [(PNPPairingViewController *)self _offsetContainerViewsIfNecessary];
  [(PNPPairingViewController *)self _chargingStatusViewHostsTeardownChargingViews];
  [(PNPPairingViewController *)self _chargingStatusViewHostsSetShowsChargingStatusView:0];
  [(PNPPairingView *)self->_pairingView setState:0];
  [(PNPPairingView *)self->_pairingView layoutIfNeeded];
  [(PNPPlatterContainerView *)self->_horizontalPencilPlatterContainerView setDimmingState:a3];
  [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setDimmingState:a3];
  v5 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:v5 toPreferredCornerRadius:[(PNPPairingViewController *)self preferredEdge] edge:v6];

  [(PNPPairingViewController *)self _chargingStatusViewHostsLayoutIfNeeded];

  [(PNPPairingViewController *)self _hideOrShowAllContainerViewsIfNeeded];
}

- (void)_transitionToChargingFrom:(int64_t)a3
{
  if (a3 == 1 && [(PNPChargingStatusView *)self->_pairingChargingStatusView chargingState]== 1)
  {

    [(PNPPairingViewController *)self _transitionToChargingFromSpinner];
  }

  else
  {

    [(PNPPairingViewController *)self _actuallyTransitionToCharging];
  }
}

- (void)_transitionToChargingFromSpinner
{
  v3 = CACurrentMediaTime() - self->_spinnerElapsedTime;
  if (v3 > 1.0 || [(PNPChargingStatusView *)self->_pairingChargingStatusView alphaOutName]|| [(PNPChargingStatusView *)self->_horizontalChargingStatusView alphaOutName])
  {

    [(PNPPairingViewController *)self _actuallyTransitionToCharging];
  }

  else
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__actuallyTransitionToCharging selector:0 userInfo:0 repeats:1.0 - v3];
  }
}

- (CGSize)preferredContentSize
{
  if (self->_showingChargingUI)
  {
    v2 = &OBJC_IVAR___PNPPairingViewController__pairingChargingStatusView;
  }

  else
  {
    v2 = &OBJC_IVAR___PNPPairingViewController__pairingView;
  }

  [*(&self->super.super.super.isa + *v2) intrinsicContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updatePreferredContentSize
{
  [(PNPPairingViewController *)self preferredContentSize];

  [(PNPPairingViewController *)self setPreferredContentSize:?];
}

- (void)viewRequestsDismiss:(id)a3
{
  self->_viewRequestsDismissCalled = 1;
  v4 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PNPPairingViewController_viewRequestsDismiss___block_invoke;
  v5[3] = &unk_279A0A060;
  v5[4] = self;
  PNPPlatterDismissPlatterContainerView(v4, 1, v5);
}

uint64_t __48__PNPPairingViewController_viewRequestsDismiss___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  if (v2 && (v3 = *(a1 + 32), v3[134]))
  {
    v4 = [v3 presentedViewController];
    v5 = *(*(a1 + 32) + 1072);

    if (v4 == v5)
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 1072);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__PNPPairingViewController_viewRequestsDismiss___block_invoke_2;
      v10[3] = &unk_279A0A060;
      v10[4] = v6;
      return [v7 dismissViewControllerAnimated:1 completion:v10];
    }
  }

  else
  {
  }

  v9 = *(a1 + 32);

  return [v9 dismissViewControllerAnimated:0 completion:0];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5.receiver = self;
  v5.super_class = PNPPairingViewController;
  [(PNPPairingViewController *)&v5 dismissViewControllerAnimated:a3 completion:a4];
  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 postNotificationName:@"PNPParingVCDidDisappearNotification" object:0 userInfo:0 deliverImmediately:1];
}

- (void)setDeviceState:(id)a3
{
  v10 = a3;
  v5 = [(PNPPairingViewController *)self deviceState];
  v6 = [v5 edge];

  objc_storeStrong(&self->_deviceState, a3);
  v7 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:v7 toPreferredCornerRadius:[(PNPPairingViewController *)self preferredEdge] edge:v8];

  v9 = [(PNPPairingViewController *)self platterDelegate];
  [v9 platterPreferencesChangedForViewController:self];

  if (v6 && !self->_viewRequestsDismissCalled)
  {
    [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setDismissUsingAlpha:1];
    [(PNPPlatterContainerView *)self->_horizontalPencilPlatterContainerView setDismissUsingAlpha:1];
    [(PNPPairingViewController *)self _hideOrShowAllContainerViewsIfNeeded];
    [(PNPPlatterContainerView *)self->_wizardPlatterContainerView setDismissUsingAlpha:0];
    [(PNPPlatterContainerView *)self->_horizontalPencilPlatterContainerView setDismissUsingAlpha:0];
  }
}

- (void)_updateSubviewDeviceStateForContainerView:(id)a3
{
  v4 = [(PNPPairingViewController *)self deviceState];
  [(PNPPairingViewController *)self _chargingStatusViewSetDeviceState:v4];

  v5 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  wizardPlatterContainerView = self->_wizardPlatterContainerView;

  v7 = &OBJC_IVAR___PNPPairingViewController__horizontalPresentationPencilContainerView;
  if (v5 == wizardPlatterContainerView)
  {
    v7 = &OBJC_IVAR___PNPPairingViewController__pairingView;
  }

  v8 = *(&self->super.super.super.isa + *v7);
  v9 = [(PNPPairingViewController *)self deviceState];
  [v8 setDeviceState:v9];
}

- (void)_hideOrShowAllContainerViewsIfNeeded
{
  [(PNPPairingViewController *)self _hideOrShowContainerViewIfNeeded:self->_wizardPlatterContainerView];
  horizontalPencilPlatterContainerView = self->_horizontalPencilPlatterContainerView;

  [(PNPPairingViewController *)self _hideOrShowContainerViewIfNeeded:horizontalPencilPlatterContainerView];
}

- (void)_hideOrShowContainerViewIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 presented];

    if (v7)
    {
      PNPPlatterDismissPlatterContainerView(v4, 1, 0);
    }
  }

  v8 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  v9 = v8;
  if (v8 == v4)
  {
    v10 = [v4 presented];

    if ((v10 & 1) == 0)
    {
      v11 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __61__PNPPairingViewController__hideOrShowContainerViewIfNeeded___block_invoke;
      v13[3] = &unk_279A0A060;
      v12 = v4;
      v14 = v12;
      [v11 performWithoutAnimation:v13];
      PNPPlatterPresentPlatterContainerView(v12, 1, 0);
    }
  }

  else
  {
  }
}

uint64_t __61__PNPPairingViewController__hideOrShowContainerViewIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_showConnectingAnimationUI
{
  [(PNPPairingViewController *)self _chargingStatusViewSetChargingState:1];
  self->_spinnerElapsedTime = CACurrentMediaTime();
  [(PNPPairingViewController *)self _chargingStatusViewSetNeedsLayout];

  [(PNPPairingViewController *)self _chargingStatusViewLayoutIfNeeded];
}

- (void)_resetTimeoutTimer
{
  [(PNPPairingViewController *)self _cancelTimeoutTimer];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_pairingFailed selector:0 userInfo:0 repeats:20.0];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v3;

  MEMORY[0x2821F96F8](v3, timeoutTimer);
}

- (void)_resetTimerForWizard
{
  [(PNPPairingViewController *)self _cancelTimeoutTimer];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_pairingFailed selector:0 userInfo:0 repeats:240.0];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v3;

  MEMORY[0x2821F96F8](v3, timeoutTimer);
}

- (void)_cancelTimeoutTimer
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    [(NSTimer *)timeoutTimer invalidate];
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (void)showPairingPrompt
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PNPPairingViewController_showPairingPrompt__block_invoke;
  v7[3] = &unk_279A0A790;
  v7[4] = self;
  v3 = MEMORY[0x25F8AE9F0](v7, a2);
  if ([(PNPPairingViewController *)self pairingViewControllerState]== 1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__PNPPairingViewController_showPairingPrompt__block_invoke_2;
    v5[3] = &unk_279A0A128;
    v6 = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__PNPPairingViewController_showPairingPrompt__block_invoke_3;
    v4[3] = &unk_279A0A060;
    v4[4] = self;
    [(PNPPairingViewController *)self _performAnimations:v5 completion:v4];
  }

  else
  {
    v3[2](v3, 0);
  }
}

uint64_t __45__PNPPairingViewController_showPairingPrompt__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPairingViewControllerState:0];
  [*(a1 + 32) _chargingStatusViewHostsSetupChargingViews];
  [*(a1 + 32) _chargingStatusViewSetChargingState:4];
  [*(*(a1 + 32) + 1016) setDimmingState:{objc_msgSend(*(a1 + 32), "_dimmingState")}];
  [*(*(a1 + 32) + 992) setDimmingState:{objc_msgSend(*(a1 + 32), "_dimmingState")}];
  v4 = *(a1 + 32);

  return [v4 _updatePillUIAnimated:a2];
}

- (void)showGenericBatteryUI
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PNPPairingViewController_showGenericBatteryUI__block_invoke;
  v7[3] = &unk_279A0A790;
  v7[4] = self;
  v3 = MEMORY[0x25F8AE9F0](v7, a2);
  if ([(PNPPairingViewController *)self pairingViewControllerState])
  {
    v3[2](v3, 0);
    [(PNPPairingViewController *)self _startConnectingUITimer];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__PNPPairingViewController_showGenericBatteryUI__block_invoke_2;
    v5[3] = &unk_279A0A128;
    v6 = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __48__PNPPairingViewController_showGenericBatteryUI__block_invoke_3;
    v4[3] = &unk_279A0A060;
    v4[4] = self;
    [(PNPPairingViewController *)self _performAnimations:v5 completion:v4];
  }
}

uint64_t __48__PNPPairingViewController_showGenericBatteryUI__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPairingViewControllerState:1];
  [*(a1 + 32) _chargingStatusViewHostsSetupChargingViews];
  [*(a1 + 32) _chargingStatusViewSetChargingState:0];
  v4 = *(a1 + 32);

  return [v4 _updatePillUIAnimated:a2];
}

uint64_t __48__PNPPairingViewController_showGenericBatteryUI__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _chargingStatusViewSetIsTransitioningToBatteryUI:0];
  v2 = *(a1 + 32);

  return [v2 _startConnectingUITimer];
}

- (void)showNeedsInternetAlert
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PNPPairingViewController_showNeedsInternetAlert__block_invoke;
  v7[3] = &unk_279A0A790;
  v7[4] = self;
  v3 = MEMORY[0x25F8AE9F0](v7, a2);
  if ([(PNPPairingViewController *)self pairingViewControllerState]== 1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__PNPPairingViewController_showNeedsInternetAlert__block_invoke_2;
    v5[3] = &unk_279A0A128;
    v6 = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__PNPPairingViewController_showNeedsInternetAlert__block_invoke_3;
    v4[3] = &unk_279A0A060;
    v4[4] = self;
    [(PNPPairingViewController *)self _performAnimations:v5 completion:v4];
  }

  else
  {
    v3[2](v3, 0);
  }
}

uint64_t __50__PNPPairingViewController_showNeedsInternetAlert__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPairingViewControllerState:2];
  [*(a1 + 32) _chargingStatusViewHostsSetupChargingViews];
  [*(a1 + 32) _chargingStatusViewSetChargingState:3];
  [*(*(a1 + 32) + 1016) setDimmingState:{objc_msgSend(*(a1 + 32), "_dimmingState")}];
  [*(*(a1 + 32) + 992) setDimmingState:{objc_msgSend(*(a1 + 32), "_dimmingState")}];
  v4 = *(a1 + 32);

  return [v4 _updatePillUIAnimated:a2];
}

- (void)_updatePillUIAnimated:(BOOL)a3
{
  v3 = a3;
  self->_showingChargingUI = 1;
  [(PNPPairingViewController *)self _centerContainerViews];
  if (v3)
  {
    [(PNPPairingViewController *)self _chargingStatusViewSetIsTransitioningToBatteryUI:1];
  }

  [(PNPPairingViewController *)self _chargingStatusViewHostsSetShowsChargingStatusView:1];
  [(PNPPairingViewController *)self _chargingStatusViewHostsLayoutIfNeeded];
  [(PNPPairingViewController *)self _chargingStatusViewUpdateConstraints];
  v5 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  [(PNPPairingViewController *)self preferredCornerRadius];
  [(PNPPairingViewController *)self _updatePlatterContainerView:v5 toPreferredCornerRadius:[(PNPPairingViewController *)self preferredEdge] edge:v6];

  v7 = [(PNPPairingViewController *)self platterDelegate];
  [v7 platterPreferencesChangedForViewController:self];

  [(PNPPairingViewController *)self _resetTimeoutTimer];
}

- (int64_t)_dimmingState
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = [v3 isEqualToString:@"com.apple.SharingViewService"];
  return v4;
}

- (void)pairingStarted
{
  v3 = [(PNPPairingViewController *)self _dimmingState];

  [(PNPPairingViewController *)self pairingStartedWithDimmingState:v3];
}

- (void)showPairingPromptAlert
{
  v3 = PencilPairingUIBundle();
  v4 = [v3 localizedStringForKey:@"APPLE_PENCIL_NAME" value:&stru_286FDFDB8 table:0];

  v5 = PencilPairingUIBundle();
  v6 = [v5 localizedStringForKey:@"PAIRING_PROMPT" value:&stru_286FDFDB8 table:0];

  v7 = PencilPairingUIBundle();
  v8 = [v7 localizedStringForKey:@"CONNECT" value:&stru_286FDFDB8 table:0];

  v9 = PencilPairingUIBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_286FDFDB8 table:0];

  if (!self->_alertVC)
  {
    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
    alertVC = self->_alertVC;
    self->_alertVC = v11;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__PNPPairingViewController_showPairingPromptAlert__block_invoke;
    v18[3] = &unk_279A0A858;
    v18[4] = self;
    v13 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__PNPPairingViewController_showPairingPromptAlert__block_invoke_2;
    v17[3] = &unk_279A0A858;
    v17[4] = self;
    v14 = [MEMORY[0x277D750F8] _actionWithTitle:v10 image:0 style:1 handler:v17 shouldDismissHandler:&__block_literal_global_68];
    [(UIAlertController *)self->_alertVC addAction:v14];
    [(UIAlertController *)self->_alertVC addAction:v13];
    [(UIAlertController *)self->_alertVC setPreferredAction:v13];
    v15 = self->_alertVC;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__PNPPairingViewController_showPairingPromptAlert__block_invoke_4;
    v16[3] = &unk_279A0A060;
    v16[4] = self;
    [(PNPPairingViewController *)self presentViewController:v15 animated:1 completion:v16];
  }
}

uint64_t __50__PNPPairingViewController_showPairingPromptAlert__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didTapOnCancelButton];
  v2 = *(a1 + 32);

  return [v2 pairingFailed];
}

- (void)pairingStartedWithDimmingState:(int64_t)a3
{
  [(PNPPairingViewController *)self _actuallyTransitionToSpinningPlatterWithDimmingState:a3];
  [(PNPPairingViewController *)self setPairingViewControllerState:3];

  [(PNPPairingViewController *)self _resetTimeoutTimer];
}

- (void)pairingStartedWithDimming:(BOOL)a3 deviceType:(int64_t)a4
{
  v5 = a3;
  v7 = [(PNPPairingViewController *)self deviceState];
  [v7 setDeviceType:a4];

  [(PNPPairingViewController *)self pairingStartedWithDimming:v5];
}

- (void)pairingSucceededWithShouldShowWhatsNew:(BOOL)a3 deviceType:(int64_t)a4
{
  v5 = a3;
  [(PNPPairingViewController *)self setPairingViewControllerState:4];
  [(PNPPairingView *)self->_pairingView setShouldShowWhatsNew:v5];
  [(PNPPairingView *)self->_pairingView setDeviceType:a4];
  [(PNPPairingViewController *)self _transitionToWizard];

  [(PNPPairingViewController *)self _resetTimerForWizard];
}

- (void)pairingSucceededSubsequently
{
  v3 = [(PNPPairingViewController *)self pairingViewControllerState];
  [(PNPPairingViewController *)self setPairingViewControllerState:5];
  [(PNPPairingViewController *)self _transitionToChargingFrom:v3];

  [(PNPPairingViewController *)self _resetTimeoutTimer];
}

- (void)pairingFailed
{
  [(PNPPairingViewController *)self setPairingViewControllerState:6];

  [(PNPPairingViewController *)self viewRequestsDismiss:0];
}

- (unint64_t)preferredEdge
{
  if (self->_showingChargingUI)
  {
    return 1;
  }

  if ([(PNPPairingView *)self->_pairingView state])
  {
    return 0;
  }

  v4 = [(PNPPairingViewController *)self deviceState];
  v5 = [v4 edge];

  return v5;
}

- (double)preferredCornerRadius
{
  if ([(PNPPairingView *)self->_pairingView state])
  {
    return 16.0;
  }

  [(PNPPairingViewController *)self preferredContentSize];
  if (v4 >= v5)
  {
    v4 = v5;
  }

  return v4 * 0.5;
}

- (double)_translationAmountForDismiss
{
  v2 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  v3 = [v2 contentView];
  [v3 frame];
  v5 = v4 * 0.25;

  return v5;
}

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(PNPPairingViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;
  v9 = v8;

  if ([v4 state] == 2)
  {
    v10 = v9 * 0.05;
    if (v9 < 0.0)
    {
      v10 = v9;
    }

    self->_animationTranslation.x = v7 * 0.1;
    self->_animationTranslation.y = v10;
    goto LABEL_5;
  }

  if ([v4 state] != 3 && objc_msgSend(v4, "state") != 4 && objc_msgSend(v4, "state") != 5)
  {
LABEL_5:
    [(PNPPairingViewController *)self _updateAnimationTranslation];
    goto LABEL_13;
  }

  y = self->_animationTranslation.y;
  if (y >= 0.0 || (v12 = fabs(y), [(PNPPairingViewController *)self _translationAmountForDismiss], v12 <= v13))
  {
    self->_animationTranslation = *MEMORY[0x277CBF348];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__PNPPairingViewController__handlePanGesture___block_invoke;
    v14[3] = &unk_279A0A060;
    v14[4] = self;
    [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2054 animations:v14 completion:0];
  }

  else
  {
    [(PNPPairingViewController *)self viewRequestsDismiss:0];
  }

LABEL_13:
}

- (void)_updateAnimationTranslation
{
  v3 = [(PNPPairingViewController *)self _currentPlatterContainerView];
  CGAffineTransformMakeTranslation(&v6, 0.0, self->_animationTranslation.y);
  v5 = v6;
  [v3 setAnimationTranslation:&v5];
  v4 = [(PNPPairingViewController *)self view];
  [v4 layoutIfNeeded];
}

- (void)didTapOnConnectButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 didTapToPairPencil];
    }
  }
}

- (void)didTapOnCancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 didTapCancelPairing];
    }
  }
}

- (void)didCompleteOneRevolution
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 didCompleteOneRevolutionOfSpinningPencil];
    }
  }
}

- (PNPPlatterViewControllerPlatterDelegate)platterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->platterDelegate);

  return WeakRetained;
}

- (PNPViewControllerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->appearanceDelegate);

  return WeakRetained;
}

- (PNPPairingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end