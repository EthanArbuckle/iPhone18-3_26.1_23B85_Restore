@interface _UIUserDefaultsActivityPresentableViewController
- (_UIUserDefaultsActivityPresentableViewController)initWithUserDefaultsViewController:(id)controller;
- (void)_loadNavigationController;
- (void)viewDidLoad;
@end

@implementation _UIUserDefaultsActivityPresentableViewController

- (_UIUserDefaultsActivityPresentableViewController)initWithUserDefaultsViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _UIUserDefaultsActivityPresentableViewController;
  v5 = [(_UIUserDefaultsActivityPresentableViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIUserDefaultsActivityPresentableViewController *)v5 setUserDefaultsViewController:controllerCopy];
    [(_UIUserDefaultsActivityPresentableViewController *)v6 setModalPresentationCapturesStatusBarAppearance:1];
    [(_UIUserDefaultsActivityPresentableViewController *)v6 setModalPresentationStyle:5];
    view = [(_UIUserDefaultsActivityPresentableViewController *)v6 view];
    [view setTintAdjustmentMode:1];
  }

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _UIUserDefaultsActivityPresentableViewController;
  [(_UIUserDefaultsActivityPresentableViewController *)&v3 viewDidLoad];
  [(_UIUserDefaultsActivityPresentableViewController *)self _loadNavigationController];
}

- (void)_loadNavigationController
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = [_UIUserDefaultsActivityNavigationController alloc];
  userDefaultsViewController = [(_UIUserDefaultsActivityPresentableViewController *)self userDefaultsViewController];
  v5 = [(_UIUserDefaultsActivityNavigationController *)v3 initWithRootViewController:userDefaultsViewController];

  view = [(_UIUserDefaultsActivityNavigationController *)v5 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIUserDefaultsActivityNavigationController *)v5 willMoveToParentViewController:self];
  v26 = v5;
  [(_UIUserDefaultsActivityPresentableViewController *)self addChildViewController:v5];
  view2 = [(_UIUserDefaultsActivityPresentableViewController *)self view];
  [view2 addSubview:view];

  [(_UIUserDefaultsActivityNavigationController *)v5 didMoveToParentViewController:self];
  v18 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  view3 = [(_UIUserDefaultsActivityPresentableViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v22;
  bottomAnchor = [view bottomAnchor];
  view4 = [(_UIUserDefaultsActivityPresentableViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[1] = v17;
  leftAnchor = [view leftAnchor];
  view5 = [(_UIUserDefaultsActivityPresentableViewController *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v27[2] = v11;
  rightAnchor = [view rightAnchor];
  view6 = [(_UIUserDefaultsActivityPresentableViewController *)self view];
  rightAnchor2 = [view6 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v27[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v18 activateConstraints:v16];
}

@end