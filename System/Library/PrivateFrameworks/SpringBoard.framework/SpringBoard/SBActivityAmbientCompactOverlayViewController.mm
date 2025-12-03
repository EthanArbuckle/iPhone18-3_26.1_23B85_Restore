@interface SBActivityAmbientCompactOverlayViewController
- (CGSize)contentSize;
- (SBActivityAmbientCompactOverlayViewControllerDelegate)compactOverlayDelegate;
- (void)_configureTapGesture;
- (void)_handleTapGesture;
- (void)_layoutSubviews;
- (void)setContentAlpha:(double)alpha;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityAmbientCompactOverlayViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBActivityAmbientCompactOverlayViewController;
  [(SBActivityViewController *)&v8 viewDidLoad];
  view = [(SBActivityAmbientCompactOverlayViewController *)self view];
  v4 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:52];
  platterView = self->_platterView;
  self->_platterView = v4;

  [(PLPlatterView *)self->_platterView setUsesBackgroundView:1];
  [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:2];
  [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:@"Activities"];
  [view addSubview:self->_platterView];
  [view sendSubviewToBack:self->_platterView];
  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  view2 = [activityHostViewController view];
  [view2 bs_setHitTestingDisabled:1];

  [(SBActivityAmbientCompactOverlayViewController *)self _configureTapGesture];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBActivityAmbientCompactOverlayViewController;
  [(SBActivityViewController *)&v3 viewWillLayoutSubviews];
  [(SBActivityAmbientCompactOverlayViewController *)self _layoutSubviews];
}

- (CGSize)contentSize
{
  [(SBActivityAmbientCompactOverlayViewController *)self preferredContentSize];
  if (v2 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v2 = 40.0;
    v3 = 40.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentAlpha:(double)alpha
{
  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  view = [activityHostViewController view];
  [view setAlpha:alpha];
}

- (void)_layoutSubviews
{
  view = [(SBActivityAmbientCompactOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  platterView = self->_platterView;

  [(PLPlatterView *)platterView setFrame:v5, v7, v9, v11];
}

- (void)_configureTapGesture
{
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture];
  view = [(SBActivityAmbientCompactOverlayViewController *)self view];
  [view addGestureRecognizer:v4];
}

- (void)_handleTapGesture
{
  compactOverlayDelegate = [(SBActivityAmbientCompactOverlayViewController *)self compactOverlayDelegate];
  activityItem = [(SBActivityViewController *)self activityItem];
  [compactOverlayDelegate handleTapForCompactOverlayViewController:self withActivityItem:activityItem];
}

- (SBActivityAmbientCompactOverlayViewControllerDelegate)compactOverlayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_compactOverlayDelegate);

  return WeakRetained;
}

@end