@interface VUIPresentationContainerViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation VUIPresentationContainerViewController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = VUIPresentationContainerViewController;
  [(VUIPresentationContainerViewController *)&v7 loadView];
  view = [(VUIPresentationContainerViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped];
  view2 = [(VUIPresentationContainerViewController *)self view];
  [view2 addGestureRecognizer:v5];

  [v5 setDelegate:self];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  view2 = [(VUIPresentationContainerViewController *)self view];
  LOBYTE(self) = view == view2;

  return self;
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = VUIPresentationContainerViewController;
  [(VUIPresentationContainerViewController *)&v15 viewDidLayoutSubviews];
  childViewControllers = [(VUIPresentationContainerViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  view = [lastObject view];
  view2 = [(VUIPresentationContainerViewController *)self view];
  [view2 bounds];

  selfCopy = self;
  [(VUIPresentationContainerViewController *)selfCopy preferredContentSize];
  if (*MEMORY[0x1E695F060] == v9 && *(MEMORY[0x1E695F060] + 8) == v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = [(VUIPresentationContainerViewController *)selfCopy topViewController];
    }

    else
    {
      childViewControllers2 = [(VUIPresentationContainerViewController *)selfCopy childViewControllers];
      v13 = [childViewControllers2 count];

      if (!v13)
      {
        goto LABEL_11;
      }

      childViewControllers3 = [(VUIPresentationContainerViewController *)selfCopy childViewControllers];
      topViewController = [childViewControllers3 lastObject];
    }

    [topViewController preferredContentSize];
  }

LABEL_11:
  UIRectCenteredIntegralRect();
  [view setFrame:?];
}

@end