@interface PNPAirplaneModeViewController
- (CGSize)preferredContentSize;
- (PNPAirplaneModeBluetoothDelegate)delegate;
- (PNPAirplaneModeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PNPPlatterViewControllerPlatterDelegate)platterDelegate;
- (PNPViewControllerAppearanceDelegate)appearanceDelegate;
- (void)didTapOnBluetoothButton;
- (void)dismissPill;
- (void)loadView;
- (void)setDeviceState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PNPAirplaneModeViewController

- (PNPAirplaneModeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = PNPAirplaneModeViewController;
  v4 = [(PNPAirplaneModeViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = objc_opt_new();
  [(PNPAirplaneModeViewController *)v4 setDeviceState:v5];

  v6 = objc_alloc_init(PNPPlatterTransitioningDelegate);
  platterTransitioningDelegate = v4->_platterTransitioningDelegate;
  v4->_platterTransitioningDelegate = v6;

  [(PNPAirplaneModeViewController *)v4 setTransitioningDelegate:v4->_platterTransitioningDelegate];
  [(PNPAirplaneModeViewController *)v4 setModalPresentationStyle:4];
  return v4;
}

- (void)setDeviceState:(id)state
{
  [(PNPAirplaneModeView *)self->_airplaneModeView setDeviceState:state];
  _platterContainerView = [(PNPAirplaneModeViewController *)self _platterContainerView];
  [_platterContainerView setEdge:{-[PNPAirplaneModeViewController preferredEdge](self, "preferredEdge")}];
}

- (void)loadView
{
  v3 = objc_alloc_init(PNPPlatterContainerView);
  [(PNPAirplaneModeViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PNPAirplaneModeViewController;
  [(PNPAirplaneModeViewController *)&v7 viewDidLoad];
  v3 = [[PNPAirplaneModeView alloc] initWithFrame:0.0, 0.0, 1000.0, 1000.0];
  airplaneModeView = self->_airplaneModeView;
  self->_airplaneModeView = v3;

  [(PNPAirplaneModeView *)self->_airplaneModeView setBluetoothDelegate:self];
  _platterContainerView = [(PNPAirplaneModeViewController *)self _platterContainerView];
  [_platterContainerView setContentView:self->_airplaneModeView];

  _platterContainerView2 = [(PNPAirplaneModeViewController *)self _platterContainerView];
  [_platterContainerView2 setEdge:{-[PNPAirplaneModeViewController preferredEdge](self, "preferredEdge")}];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = PNPAirplaneModeViewController;
  [(PNPAirplaneModeViewController *)&v7 viewDidAppear:?];
  _platterContainerView = [(PNPAirplaneModeViewController *)self _platterContainerView];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PNPAirplaneModeViewController_viewDidAppear___block_invoke;
  v6[3] = &unk_279A0A060;
  v6[4] = self;
  PNPPlatterPresentPlatterContainerView(_platterContainerView, appearCopy, v6);
}

void __47__PNPAirplaneModeViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _platterContainerView];
  PNPChargingStatusConfigureAutoDismissWithTime(v1, v2, 4.0);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__PNPAirplaneModeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279A0A088;
  sizeCopy = size;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:&__block_literal_global_8];
  v8.receiver = self;
  v8.super_class = PNPAirplaneModeViewController;
  [(PNPAirplaneModeViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __84__PNPAirplaneModeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PNPAirplaneModeViewController;
  [(PNPAirplaneModeViewController *)&v5 viewDidDisappear:disappear];
  appearanceDelegate = [(PNPAirplaneModeViewController *)self appearanceDelegate];
  [appearanceDelegate viewControllerDidDismiss:self];
}

- (CGSize)preferredContentSize
{
  [(PNPAirplaneModeView *)self->_airplaneModeView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didTapOnBluetoothButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    [v4 didRequestEnablingBluetooth];
  }
}

- (void)dismissPill
{
  _platterContainerView = [(PNPAirplaneModeViewController *)self _platterContainerView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PNPAirplaneModeViewController_dismissPill__block_invoke;
  v4[3] = &unk_279A0A060;
  v4[4] = self;
  PNPPlatterPresentPlatterContainerView(_platterContainerView, 1, v4);
}

void __44__PNPAirplaneModeViewController_dismissPill__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _platterContainerView];
  PNPChargingStatusConfigureAutoDismissWithTime(v1, v2, 0.0);
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

- (PNPAirplaneModeBluetoothDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end