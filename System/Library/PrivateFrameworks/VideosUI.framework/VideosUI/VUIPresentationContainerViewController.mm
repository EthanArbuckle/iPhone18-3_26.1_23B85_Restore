@interface VUIPresentationContainerViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation VUIPresentationContainerViewController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = VUIPresentationContainerViewController;
  [(VUIPresentationContainerViewController *)&v7 loadView];
  v3 = [(VUIPresentationContainerViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped];
  v6 = [(VUIPresentationContainerViewController *)self view];
  [v6 addGestureRecognizer:v5];

  [v5 setDelegate:self];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = [a4 view];
  v6 = [(VUIPresentationContainerViewController *)self view];
  LOBYTE(self) = v5 == v6;

  return self;
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = VUIPresentationContainerViewController;
  [(VUIPresentationContainerViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(VUIPresentationContainerViewController *)self childViewControllers];
  v4 = [v3 lastObject];

  v5 = [v4 view];
  v6 = [(VUIPresentationContainerViewController *)self view];
  [v6 bounds];

  v7 = self;
  [(VUIPresentationContainerViewController *)v7 preferredContentSize];
  if (*MEMORY[0x1E695F060] == v9 && *(MEMORY[0x1E695F060] + 8) == v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(VUIPresentationContainerViewController *)v7 topViewController];
    }

    else
    {
      v12 = [(VUIPresentationContainerViewController *)v7 childViewControllers];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_11;
      }

      v14 = [(VUIPresentationContainerViewController *)v7 childViewControllers];
      v11 = [v14 lastObject];
    }

    [v11 preferredContentSize];
  }

LABEL_11:
  UIRectCenteredIntegralRect();
  [v5 setFrame:?];
}

@end