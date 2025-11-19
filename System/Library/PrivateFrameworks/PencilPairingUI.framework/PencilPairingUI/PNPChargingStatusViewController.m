@interface PNPChargingStatusViewController
- (CGSize)preferredContentSize;
- (PNPChargingStatusViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PNPPlatterViewControllerPlatterDelegate)platterDelegate;
- (PNPViewControllerAppearanceDelegate)appearanceDelegate;
- (unint64_t)preferredEdge;
- (void)_configureAutoDismiss;
- (void)loadView;
- (void)setDeviceState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PNPChargingStatusViewController

- (PNPChargingStatusViewController)initWithNibName:(id)a3 bundle:(id)a4
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

- (void)setDeviceState:(id)a3
{
  chargingStatusView = self->_chargingStatusView;
  v5 = a3;
  [(PNPChargingStatusView *)chargingStatusView setDeviceState:v5];
  v6 = [(PNPChargingStatusViewController *)self _platterContainerView];
  [v6 setEdge:{objc_msgSend(v5, "edge")}];

  LOBYTE(v6) = [v5 batteryLevelUnknown];
  if ((v6 & 1) == 0)
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

  v5 = [(PNPChargingStatusViewController *)self _platterContainerView];
  [v5 setContentView:self->_chargingStatusView];

  v6 = [(PNPChargingStatusViewController *)self _platterContainerView];
  [v6 setEdge:{-[PNPChargingStatusViewController preferredEdge](self, "preferredEdge")}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[PencilSettings sharedPencilSettings];
  [v5 migrateObsoletedAXOpaqueTouchSetting];

  v8.receiver = self;
  v8.super_class = PNPChargingStatusViewController;
  [(PNPChargingStatusViewController *)&v8 viewDidAppear:v3];
  v6 = [(PNPChargingStatusViewController *)self _platterContainerView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PNPChargingStatusViewController_viewDidAppear___block_invoke;
  v7[3] = &unk_279A0A060;
  v7[4] = self;
  PNPPlatterPresentPlatterContainerView(v6, v3, v7);
}

void __49__PNPChargingStatusViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _platterContainerView];
  PNPChargingStatusConfigureAutoDismissWithTime(v1, v2, 8.0);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__PNPChargingStatusViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_279A0A088;
  v5 = a3;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
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
  v3 = [(PNPChargingStatusViewController *)self _platterContainerView];
  PNPChargingStatusConfigureAutoDismiss(self, v3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PNPChargingStatusViewController;
  [(PNPChargingStatusViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PNPChargingStatusViewController *)self appearanceDelegate];
  [v4 viewControllerDidDismiss:self];
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
  v2 = [(PNPChargingStatusViewController *)self deviceState];
  v3 = [v2 edge];

  return v3;
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