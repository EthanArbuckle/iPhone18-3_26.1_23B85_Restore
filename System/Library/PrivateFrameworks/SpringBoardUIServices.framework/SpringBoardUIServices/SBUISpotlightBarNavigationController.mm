@interface SBUISpotlightBarNavigationController
- (BOOL)isNavigationBarBottomTrailingCornerRounded;
- (SBUISpotlightBarNavigationController)initWithRootViewController:(id)a3 searchBarViewController:(id)a4;
- (void)setLegibilitySettings:(id)a3;
- (void)setNavigationBarBlurProgress:(double)a3 animated:(BOOL)a4;
- (void)setNavigationBarBottomTrailingCornerRounded:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBUISpotlightBarNavigationController

- (SBUISpotlightBarNavigationController)initWithRootViewController:(id)a3 searchBarViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v16.receiver = self;
  v16.super_class = SBUISpotlightBarNavigationController;
  v9 = [(SBUISpotlightBarNavigationController *)&v16 initWithNavigationBarClass:v8 toolbarClass:0];
  v10 = v9;
  if (v9)
  {
    [(SBUISpotlightBarNavigationController *)v9 pushViewController:v6 animated:0];
    [(SBUISpotlightBarNavigationController *)v10 setDelegate:v10];
    [(SBUISpotlightBarNavigationController *)v10 _setBuiltinTransitionStyle:1];
    [(SBUISpotlightBarNavigationController *)v10 setSearchBarViewController:v7];
    v11 = [(SBUISpotlightBarNavigationController *)v10 navigationBar];
    v12 = [v7 backgroundBlurView];
    [v11 _setBackgroundView:v12];

    v13 = [v6 navigationItem];
    v14 = [v7 view];
    [v13 setTitleView:v14];
  }

  return v10;
}

- (void)setNavigationBarBlurProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(SBUISpotlightBarNavigationController *)self isPullingToSearch])
  {
    a3 = 0.0;
  }

  v7 = [(SBUISpotlightBarNavigationController *)self navigationBar];
  v8 = [v7 _backgroundView];
  v9 = v8;
  v10 = 1.0;
  if (a3 == 0.0)
  {
    v10 = 0.0;
  }

  [v8 setAlpha:v10];

  v11 = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [v11 setBlurProgress:v4 animated:a3];
}

- (BOOL)isNavigationBarBottomTrailingCornerRounded
{
  v2 = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  v3 = [v2 roundedCornerVisible];

  return v3;
}

- (void)setNavigationBarBottomTrailingCornerRounded:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [v4 setRoundedCornerVisible:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBUISpotlightBarNavigationController;
  [(SBUISpotlightBarNavigationController *)&v6 viewWillAppear:?];
  v5 = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [v5 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBUISpotlightBarNavigationController;
  [(SBUISpotlightBarNavigationController *)&v6 viewDidDisappear:?];
  v5 = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
  [v5 viewDidDisappear:v3];
}

- (void)setLegibilitySettings:(id)a3
{
  v7 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    v4 = [v7 copy];
    legibilitySettings = self->_legibilitySettings;
    self->_legibilitySettings = v4;

    v6 = [(SBUISpotlightBarNavigationController *)self searchBarViewController];
    [v6 setLegibilitySettings:v7];
  }
}

@end