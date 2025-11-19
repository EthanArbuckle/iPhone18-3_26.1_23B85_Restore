@interface SUNavigationContainerViewController
- (SUNavigationContainerViewController)initWithChildViewController:(id)a3;
- (UIViewController)embeddedViewController;
- (void)setEmbeddedViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SUNavigationContainerViewController

- (SUNavigationContainerViewController)initWithChildViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = SUNavigationContainerViewController;
    v5 = [(SUViewController *)&v15 init];
    if (v5)
    {
      v6 = v4;
      v7 = [v6 parentViewController];

      if (v7)
      {
        [v6 willMoveToParentViewController:0];
        v8 = [v6 view];
        [v8 removeFromSuperview];

        [v6 removeFromParentViewController];
      }

      v9 = objc_alloc_init(MEMORY[0x1E698C7F0]);
      appearancePromise = v5->_appearancePromise;
      v5->_appearancePromise = v9;

      [(SUNavigationContainerViewController *)v5 addChildViewController:v6];
      v11 = [(SUNavigationContainerViewController *)v5 view];
      v12 = [v6 view];
      [v11 addSubview:v12];

      [v6 didMoveToParentViewController:v5];
    }

    self = v5;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SUNavigationContainerViewController;
  [(SUNavigationContainerViewController *)&v5 viewDidLoad];
  v3 = [(SUNavigationContainerViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SUNavigationContainerViewController;
  [(SUNavigationContainerViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(SUNavigationContainerViewController *)self embeddedViewController];
  v4 = [v3 view];
  v5 = [(SUNavigationContainerViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SUNavigationContainerViewController;
  [(SUViewController *)&v7 viewDidAppear:a3];
  v4 = [(SUNavigationContainerViewController *)self appearancePromise];
  [v4 finishWithSuccess];

  if ([(SUNavigationContainerViewController *)self shouldRunPopHandler])
  {
    [(SUNavigationContainerViewController *)self setShouldRunPopHandler:0];
    v5 = [(SUNavigationContainerViewController *)self popHandler];

    if (v5)
    {
      v6 = [(SUNavigationContainerViewController *)self popHandler];
      (v6)[2](v6, self);
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self su_closestNavigationController];
  v6 = [v5 topViewController];
  v7 = v6 != self;

  [(SUNavigationContainerViewController *)self setShouldRunPopHandler:v7];
  v8.receiver = self;
  v8.super_class = SUNavigationContainerViewController;
  [(SUViewController *)&v8 viewDidDisappear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  [(SUNavigationContainerViewController *)self setAppearancePromise:v5];

  v6.receiver = self;
  v6.super_class = SUNavigationContainerViewController;
  [(SUViewController *)&v6 viewWillDisappear:v3];
}

- (void)setEmbeddedViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SUNavigationContainerViewController *)self embeddedViewController];
  v11 = v8;
  v12 = v11;
  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v13 = [v12 view];
    v14 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v13 setBackgroundColor:v14];
  }

  v15 = [v12 view];
  v16 = [v10 view];
  [v16 frame];
  [v15 setFrame:?];

  [v10 willMoveToParentViewController:0];
  if (a4)
  {
    [(SUNavigationContainerViewController *)self addChildViewController:v12];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__SUNavigationContainerViewController_setEmbeddedViewController_animated_completion___block_invoke_2;
    v21[3] = &unk_1E8166168;
    v22 = v10;
    v23 = v12;
    v24 = self;
    v25 = v9;
    v20.receiver = self;
    v20.super_class = SUNavigationContainerViewController;
    [(SUNavigationContainerViewController *)&v20 transitionFromViewController:v22 toViewController:v23 duration:5242880 options:&__block_literal_global_9 animations:v21 completion:0.5];
  }

  else
  {
    v17 = [v10 view];
    [v17 removeFromSuperview];

    [v10 removeFromParentViewController];
    [(SUNavigationContainerViewController *)self addChildViewController:v12];
    v18 = [(SUNavigationContainerViewController *)self view];
    v19 = [v12 view];
    [v18 addSubview:v19];

    [v12 didMoveToParentViewController:self];
    if (v9)
    {
      v9[2](v9);
    }
  }
}

uint64_t __85__SUNavigationContainerViewController_setEmbeddedViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  [*(a1 + 40) didMoveToParentViewController:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (UIViewController)embeddedViewController
{
  v2 = [(SUNavigationContainerViewController *)self childViewControllers];
  v3 = [v2 firstObject];

  return v3;
}

@end