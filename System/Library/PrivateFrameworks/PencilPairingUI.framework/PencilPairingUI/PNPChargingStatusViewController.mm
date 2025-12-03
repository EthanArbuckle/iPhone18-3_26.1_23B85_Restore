@interface PNPChargingStatusViewController
- (CGSize)preferredContentSize;
- (PNPChargingStatusViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PNPPlatterViewControllerPlatterDelegate)platterDelegate;
- (PNPViewControllerAppearanceDelegate)appearanceDelegate;
- (unint64_t)preferredEdge;
- (void)_configureAutoDismiss;
- (void)loadView;
- (void)setDeviceState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PNPChargingStatusViewController

- (PNPChargingStatusViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = PNPChargingStatusViewController;
  v4 = [(PNPChargingStatusViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = objc_opt_new();
  [(PNPChargingStatusViewController *)v4 setDeviceState:v5];

  v6 = objc_alloc_init(PNPPlatterTransitioningDelegate);
  platterTransitioningDelegate = v4->_platterTransitioningDelegate;
  v4->_platterTransitioningDelegate = v6;

  [(PNPChargingStatusViewController *)v4 setTransitioningDelegate:v4->_platterTransitioningDelegate];
  [(PNPChargingStatusViewController *)v4 setModalPresentationStyle:4];
  return v4;
}

- (void)setDeviceState:(id)state
{
  chargingStatusView = self->_chargingStatusView;
  stateCopy = state;
  [(PNPChargingStatusView *)chargingStatusView setDeviceState:stateCopy];
  _platterContainerView = [(PNPChargingStatusViewController *)self _platterContainerView];
  [_platterContainerView setEdge:{objc_msgSend(stateCopy, "edge")}];

  LOBYTE(_platterContainerView) = [stateCopy batteryLevelUnknown];
  if ((_platterContainerView & 1) == 0)
  {

    [(PNPChargingStatusViewController *)self _configureAutoDismiss];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(PNPPlatterContainerView);
  [(PNPChargingStatusViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PNPChargingStatusViewController;
  [(PNPChargingStatusViewController *)&v7 viewDidLoad];
  v3 = [[PNPChargingStatusView alloc] initWithFrame:0.0, 0.0, 1000.0, 1000.0];
  chargingStatusView = self->_chargingStatusView;
  self->_chargingStatusView = v3;

  _platterContainerView = [(PNPChargingStatusViewController *)self _platterContainerView];
  [_platterContainerView setContentView:self->_chargingStatusView];

  _platterContainerView2 = [(PNPChargingStatusViewController *)self _platterContainerView];
  [_platterContainerView2 setEdge:{-[PNPChargingStatusViewController preferredEdge](self, "preferredEdge")}];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[PencilSettings sharedPencilSettings];
  [v5 migrateObsoletedAXOpaqueTouchSetting];

  v8.receiver = self;
  v8.super_class = PNPChargingStatusViewController;
  [(PNPChargingStatusViewController *)&v8 viewDidAppear:appearCopy];
  _platterContainerView = [(PNPChargingStatusViewController *)self _platterContainerView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PNPChargingStatusViewController_viewDidAppear___block_invoke;
  v7[3] = &unk_279A0A060;
  v7[4] = self;
  PNPPlatterPresentPlatterContainerView(_platterContainerView, appearCopy, v7);
}

void __49__PNPChargingStatusViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _platterContainerView];
  PNPChargingStatusConfigureAutoDismissWithTime(v1, v2, 8.0);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__PNPChargingStatusViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_279A0A088;
  sizeCopy = size;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

void __86__PNPChargingStatusViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CBF3A0];
  v2 = *(MEMORY[0x277CBF3A0] + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _platterContainerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

- (void)_configureAutoDismiss
{
  _platterContainerView = [(PNPChargingStatusViewController *)self _platterContainerView];
  PNPChargingStatusConfigureAutoDismiss(self, _platterContainerView);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PNPChargingStatusViewController;
  [(PNPChargingStatusViewController *)&v5 viewDidDisappear:disappear];
  appearanceDelegate = [(PNPChargingStatusViewController *)self appearanceDelegate];
  [appearanceDelegate viewControllerDidDismiss:self];
}

- (CGSize)preferredContentSize
{
  [(PNPChargingStatusView *)self->_chargingStatusView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)preferredEdge
{
  deviceState = [(PNPChargingStatusViewController *)self deviceState];
  edge = [deviceState edge];

  return edge;
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

@end