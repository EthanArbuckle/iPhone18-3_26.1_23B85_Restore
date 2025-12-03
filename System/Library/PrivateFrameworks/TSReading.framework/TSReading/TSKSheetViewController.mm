@interface TSKSheetViewController
- (TSKSheetViewController)initWithContentViewController:(id)controller allowTapsOutsideContentView:(BOOL)view;
- (double)transitionDuration:(id)duration;
- (void)animateDismissWithContext:(id)context;
- (void)animateShowWithContext:(id)context;
- (void)animateTransition:(id)transition;
- (void)didTapView;
- (void)dismissSheetAnimated:(BOOL)animated completion:(id)completion;
- (void)setContentHidden:(BOOL)hidden;
@end

@implementation TSKSheetViewController

- (TSKSheetViewController)initWithContentViewController:(id)controller allowTapsOutsideContentView:(BOOL)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = TSKSheetViewController;
  v6 = [(TSKSheetViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_contentViewController = controller;
    [(TSKSheetViewController *)v6 setTransitioningDelegate:v6];
    [(TSKSheetViewController *)v7 setModalPresentationStyle:4];
    view = [(TSKSheetViewController *)v7 view];
    view2 = [controller view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TSKSheetViewController *)v7 addChildViewController:controller];
    [view addSubview:view2];
    [view addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"|[contentView]|", 0, 0, _NSDictionaryOfVariableBindings(@"contentView", view2, 0))}];
    [(TSKSheetViewController *)v7 setContentHidden:1];
    [controller preferredContentSize];
    [view addConstraint:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", view2, 8, 0, 0, 0, 1.0)}];
    [controller didMoveToParentViewController:v7];
    if (viewCopy)
    {
      v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel_didTapView];
      [v10 setDelegate:v7];
      [view addGestureRecognizer:v10];
    }
  }

  return v7;
}

- (void)dismissSheetAnimated:(BOOL)animated completion:(id)completion
{
  if (animated)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__TSKSheetViewController_dismissSheetAnimated_completion___block_invoke;
    v6[3] = &unk_279D46770;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__TSKSheetViewController_dismissSheetAnimated_completion___block_invoke_2;
    v5[3] = &unk_279D47988;
    v5[4] = self;
    v5[5] = completion;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:v5 animations:0.25 completion:0.0];
  }

  else
  {

    [TSKSheetViewController dismissViewControllerAnimated:"dismissViewControllerAnimated:completion:" completion:?];
  }
}

uint64_t __58__TSKSheetViewController_dismissSheetAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "clearColor")}];
  [*(a1 + 32) setContentHidden:1];

  return [v2 layoutIfNeeded];
}

- (void)didTapView
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__TSKSheetViewController_didTapView__block_invoke;
  v2[3] = &unk_279D46770;
  v2[4] = self;
  [(TSKSheetViewController *)self dismissSheetAnimated:1 completion:v2];
}

- (double)transitionDuration:(id)duration
{
  v3 = [(TSKSheetViewController *)self isShowingForTransitionContext:duration];
  result = 0.0;
  if (v3)
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  if ([(TSKSheetViewController *)self isShowingForTransitionContext:?])
  {

    [(TSKSheetViewController *)self animateShowWithContext:transition];
  }

  else
  {

    [(TSKSheetViewController *)self animateDismissWithContext:transition];
  }
}

- (void)animateShowWithContext:(id)context
{
  containerView = [context containerView];
  view = [(TSKSheetViewController *)self view];
  [containerView addSubview:view];
  v7 = _NSDictionaryOfVariableBindings(@"rootView", view, 0);
  [containerView addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"H:|[rootView]|", 0, 0, v7)}];
  [containerView addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:|[rootView]|", 0, 0, v7)}];
  [view setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "clearColor")}];
  [(TSKSheetViewController *)self setContentHidden:1];
  [view layoutIfNeeded];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TSKSheetViewController_animateShowWithContext___block_invoke;
  v9[3] = &unk_279D47708;
  v9[4] = view;
  v9[5] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__TSKSheetViewController_animateShowWithContext___block_invoke_2;
  v8[3] = &unk_279D479B0;
  v8[4] = context;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v9 options:v8 animations:0.25 completion:0.0];
}

uint64_t __49__TSKSheetViewController_animateShowWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.4)}];
  [*(a1 + 40) setContentHidden:0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)animateDismissWithContext:(id)context
{
  [-[TSKSheetViewController view](self "view")];

  [context completeTransition:1];
}

- (void)setContentHidden:(BOOL)hidden
{
  if (self->_isContentHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_isContentHidden = hidden;
    view = [(TSKSheetViewController *)self view];
    view2 = [(UIViewController *)self->_contentViewController view];
    if (self->_contentVerticalConstraint)
    {
      [view removeConstraint:?];
    }

    if (hiddenCopy)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    v9 = [MEMORY[0x277CCAAD0] constraintWithItem:view2 attribute:v8 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:0.0];
    self->_contentVerticalConstraint = v9;

    [view addConstraint:v9];
  }
}

@end