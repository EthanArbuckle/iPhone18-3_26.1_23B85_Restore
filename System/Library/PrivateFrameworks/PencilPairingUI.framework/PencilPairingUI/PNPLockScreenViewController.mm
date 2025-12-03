@interface PNPLockScreenViewController
- (CGSize)preferredContentSize;
- (PNPLockScreenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PNPPlatterViewControllerPlatterDelegate)platterDelegate;
- (PNPViewControllerAppearanceDelegate)appearanceDelegate;
- (void)dismissPill;
- (void)loadView;
- (void)setDeviceState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PNPLockScreenViewController

- (PNPLockScreenViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)setDeviceState:(id)state
{
  [(PNPDeviceStateConfigurable *)self->_pillView setDeviceState:state];
  _platterContainerView = [(PNPLockScreenViewController *)self _platterContainerView];
  [_platterContainerView setEdge:{-[PNPLockScreenViewController preferredEdge](self, "preferredEdge")}];
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

  _platterContainerView = [(PNPLockScreenViewController *)self _platterContainerView];
  [_platterContainerView setContentView:self->_pillView];

  _platterContainerView2 = [(PNPLockScreenViewController *)self _platterContainerView];
  [_platterContainerView2 setEdge:{-[PNPLockScreenViewController preferredEdge](self, "preferredEdge")}];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v7 viewDidAppear:?];
  _platterContainerView = [(PNPLockScreenViewController *)self _platterContainerView];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PNPLockScreenViewController_viewDidAppear___block_invoke;
  v6[3] = &unk_279A0A060;
  v6[4] = self;
  PNPPlatterPresentPlatterContainerView(_platterContainerView, appearCopy, v6);
}

void __45__PNPLockScreenViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _platterContainerView];
  PNPChargingStatusConfigureAutoDismiss(v1, v2);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v5 viewDidDisappear:disappear];
  appearanceDelegate = [(PNPLockScreenViewController *)self appearanceDelegate];
  [appearanceDelegate viewControllerDidDismiss:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__PNPLockScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279A0A088;
  sizeCopy = size;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:&__block_literal_global_7];
  v8.receiver = self;
  v8.super_class = PNPLockScreenViewController;
  [(PNPLockScreenViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  _platterContainerView = [(PNPLockScreenViewController *)self _platterContainerView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PNPLockScreenViewController_dismissPill__block_invoke;
  v4[3] = &unk_279A0A060;
  v4[4] = self;
  PNPPlatterPresentPlatterContainerView(_platterContainerView, 1, v4);
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