@interface SBUISpotlightBarNavigationController
- (BOOL)isNavigationBarBottomTrailingCornerRounded;
- (SBUISpotlightBarNavigationController)initWithRootViewController:(id)controller searchBarViewController:(id)viewController;
- (void)setLegibilitySettings:(id)settings;
- (void)setNavigationBarBlurProgress:(double)progress animated:(BOOL)animated;
- (void)setNavigationBarBottomTrailingCornerRounded:(BOOL)rounded;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBUISpotlightBarNavigationController

- (SBUISpotlightBarNavigationController)initWithRootViewController:(id)controller searchBarViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = objc_opt_class();
  v16.receiver = self;
  v16.super_class = SBUISpotlightBarNavigationController;
  v9 = [(SBUISpotlightBarNavigationController *)&v16 initWithNavigationBarClass:v8 toolbarClass:0];
  v10 = v9;
  if (v9)
  {
    [(SBUISpotlightBarNavigationController *)v9 pushViewController:controllerCopy animated:0];
    [(SBUISpotlightBarNavigationController *)v10 setDelegate:v10];
    [(SBUISpotlightBarNavigationController *)v10 _setBuiltinTransitionStyle:1];
    [(SBUISpotlightBarNavigationController *)v10 setSearchBarViewController:viewControllerCopy];
    navigationBar = [(SBUISpotlightBarNavigationController *)v10 navigationBar];
    backgroundBlurView = [viewControllerCopy backgroundBlurView];
    [navigationBar _setBackgroundView:backgroundBlurView];

    navigationItem = [controllerCopy navigationItem];
    view = [viewControllerCopy view];
    [navigationItem setTitleView:view];
  }

  return v10;
}

- (void)setNavigationBarBlurProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBUISpotlightBarNavigationController *)self isPullingToSearch])
  {
    progress = 0.0;
  }

  navigationBar = [(SBUISpotlightBarNavigationController *)self navigationBar];
  _backgroundView = [navigationBar _backgroundView];
  v9 = _backgroundView;
  v10 = 1.0;
  if (progress == 0.0)
  {
    v10 = 0.0;
  }

  [_backgroundView setAlpha:v10];

  searchBarViewController = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [searchBarViewController setBlurProgress:animatedCopy animated:progress];
}

- (BOOL)isNavigationBarBottomTrailingCornerRounded
{
  searchBarViewController = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  roundedCornerVisible = [searchBarViewController roundedCornerVisible];

  return roundedCornerVisible;
}

- (void)setNavigationBarBottomTrailingCornerRounded:(BOOL)rounded
{
  roundedCopy = rounded;
  searchBarViewController = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [searchBarViewController setRoundedCornerVisible:roundedCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBUISpotlightBarNavigationController;
  [(SBUISpotlightBarNavigationController *)&v6 viewWillAppear:?];
  searchBarViewController = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [searchBarViewController viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBUISpotlightBarNavigationController;
  [(SBUISpotlightBarNavigationController *)&v6 viewDidDisappear:?];
  searchBarViewController = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [searchBarViewController viewDidDisappear:disappearCopy];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    v4 = [settingsCopy copy];
    legibilitySettings = self->_legibilitySettings;
    self->_legibilitySettings = v4;

    searchBarViewController = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
    [searchBarViewController setLegibilitySettings:settingsCopy];
  }
}

@end