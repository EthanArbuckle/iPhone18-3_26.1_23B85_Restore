@interface PNPLockScreenViewController
- (CGSize)preferredContentSize;
- (PNPLockScreenViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PNPPlatterViewControllerPlatterDelegate)platterDelegate;
- (PNPViewControllerAppearanceDelegate)appearanceDelegate;
- (void)dismissPill;
- (void)loadView;
- (void)setDeviceState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PNPLockScreenViewController

- (PNPLockScreenViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = PNPLockScreenViewController;
  v4 = [(PNPLockScreenViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = objc_opt_new();
  [(PNPLockScreenViewController *)v4 setDeviceState:v5];

  v6 = objc_alloc_init(PNPPlatterTransitioningDelegate);
  platterTransitioningDelegate = v4->_platterTransitioningDelegate;
  v4->_platterTransitioningDelegate = v6;

  [(PNPLockScreenViewController *)v4 setTransitioningDelegate:v4->_platterTransitioningDelegate];
  [(PNPLockScreenViewController *)v4 setModalPresentationStyle:4];
  return v4;
}

- (void)setDeviceState:(id)a3
{
  [(PNPDeviceStateConfigurable *)self->_pillView setDeviceState:a3];
  v4 = [(PNPLockScreenViewController *)self _platterContainerView];
  [v4 setEdge:{-[PNPLockScreenViewController preferredEdge](self, "preferredEdge")}];
}

- (void)loadView
{
  v3 = objc_alloc_init(PNPPlatterContainerView);
  [(PNPLockScreenViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v13 viewDidLoad];
  v3 = [PNPStackedPillView alloc];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"APPLE_PENCIL_NAME" value:&stru_286FDFDB8 table:0];
  v6 = PencilPairingUIBundle();
  v7 = [v6 localizedStringForKey:@"UNLOCK" value:&stru_286FDFDB8 table:0];
  v8 = [(PNPStackedPillView *)v3 initWithFrame:v5 topString:v7 bottomString:0.0, 0.0, 1000.0, 1000.0];

  pillView = self->_pillView;
  self->_pillView = v8;
  v10 = v8;

  v11 = [(PNPLockScreenViewController *)self _platterContainerView];
  [v11 setContentView:self->_pillView];

  v12 = [(PNPLockScreenViewController *)self _platterContainerView];
  [v12 setEdge:{-[PNPLockScreenViewController preferredEdge](self, "preferredEdge")}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v7 viewDidAppear:?];
  v5 = [(PNPLockScreenViewController *)self _platterContainerView];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PNPLockScreenViewController_viewDidAppear___block_invoke;
  v6[3] = &unk_279A0A060;
  v6[4] = self;
  PNPPlatterPresentPlatterContainerView(v5, v3, v6);
}

void __45__PNPLockScreenViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _platterContainerView];
  PNPChargingStatusConfigureAutoDismiss(v1, v2);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PNPLockScreenViewController *)self appearanceDelegate];
  [v4 viewControllerDidDismiss:self];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__PNPLockScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279A0A088;
  v10 = a3;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:&__block_literal_global_7];
  v8.receiver = self;
  v8.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __82__PNPLockScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
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

- (CGSize)preferredContentSize
{
  [(PNPDeviceStateConfigurable *)self->_pillView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dismissPill
{
  v3 = [(PNPLockScreenViewController *)self _platterContainerView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PNPLockScreenViewController_dismissPill__block_invoke;
  v4[3] = &unk_279A0A060;
  v4[4] = self;
  PNPPlatterPresentPlatterContainerView(v3, 1, v4);
}

void __42__PNPLockScreenViewController_dismissPill__block_invoke(uint64_t a1)
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

@end