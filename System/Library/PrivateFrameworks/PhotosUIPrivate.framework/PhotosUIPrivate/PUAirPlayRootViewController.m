@interface PUAirPlayRootViewController
- (void)setChildViewController:(id)a3 animated:(BOOL)a4;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation PUAirPlayRootViewController

- (void)setChildViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self->_childViewController;
  if (v8 != v7)
  {
    objc_storeStrong(&self->_childViewController, a3);
    v9 = [(UIViewController *)v7 view];
    v10 = [(UIViewController *)v8 view];
    [(PUAirPlayRootViewController *)self _setChildViewConstraints:0];
    [(UIViewController *)v8 willMoveToParentViewController:0];
    if (v7)
    {
      [(PUAirPlayRootViewController *)self addChildViewController:v7];
      v11 = [(PUAirPlayRootViewController *)self view];
      [v11 addSubview:v9];

      v12 = [(PUAirPlayRootViewController *)self view];
      [v12 setNeedsUpdateConstraints];

      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PUAirPlayRootViewController_setChildViewController_animated___block_invoke;
    aBlock[3] = &unk_1E7B7F1D0;
    v13 = v10;
    v23 = v13;
    v24 = v8;
    v25 = v7;
    v26 = self;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v4)
    {
      [v9 setAlpha:0.0];
      v16 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __63__PUAirPlayRootViewController_setChildViewController_animated___block_invoke_2;
      v19[3] = &unk_1E7B80C38;
      v20 = v9;
      v21 = v13;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63__PUAirPlayRootViewController_setChildViewController_animated___block_invoke_3;
      v17[3] = &unk_1E7B7FA80;
      v18 = v15;
      [v16 _animateUsingDefaultTimingWithOptions:0 animations:v19 completion:v17];
    }

    else
    {
      (*(v14 + 2))(v14);
    }
  }
}

uint64_t __63__PUAirPlayRootViewController_setChildViewController_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromParentViewController];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 didMoveToParentViewController:v3];
}

void *__63__PUAirPlayRootViewController_setChildViewController_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result && !*(a1 + 32))
  {

    return [result setAlpha:0.0];
  }

  return result;
}

- (void)updateViewConstraints
{
  v12.receiver = self;
  v12.super_class = PUAirPlayRootViewController;
  [(PUAirPlayRootViewController *)&v12 updateViewConstraints];
  v3 = [(PUAirPlayRootViewController *)self childViewController];
  v4 = [v3 view];

  if (v4)
  {
    v5 = [v4 superview];
    if (v5)
    {
      v6 = v5;
      v7 = [(PUAirPlayRootViewController *)self _childViewConstraints];

      if (!v7)
      {
        v8 = _NSDictionaryOfVariableBindings(&cfstr_Childview.isa, v4, 0);
        v9 = [MEMORY[0x1E695DF70] array];
        v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v8];
        [v9 addObjectsFromArray:v10];

        v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v8];
        [v9 addObjectsFromArray:v11];

        [MEMORY[0x1E696ACD8] activateConstraints:v9];
        [(PUAirPlayRootViewController *)self _setChildViewConstraints:v9];
      }
    }
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUAirPlayRootViewController;
  [(PUAirPlayRootViewController *)&v6 viewDidLoad];
  v3 = +[PUInterfaceManager currentTheme];
  v4 = [v3 airPlayControllerBackgroundColor];

  v5 = [(PUAirPlayRootViewController *)self view];
  [v5 setBackgroundColor:v4];
}

@end