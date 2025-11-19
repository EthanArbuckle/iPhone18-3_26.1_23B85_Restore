@interface TSKSheetViewController
- (TSKSheetViewController)initWithContentViewController:(id)a3 allowTapsOutsideContentView:(BOOL)a4;
- (double)transitionDuration:(id)a3;
- (void)animateDismissWithContext:(id)a3;
- (void)animateShowWithContext:(id)a3;
- (void)animateTransition:(id)a3;
- (void)didTapView;
- (void)dismissSheetAnimated:(BOOL)a3 completion:(id)a4;
- (void)setContentHidden:(BOOL)a3;
@end

@implementation TSKSheetViewController

- (TSKSheetViewController)initWithContentViewController:(id)a3 allowTapsOutsideContentView:(BOOL)a4
{
  v4 = a4;
  v12.receiver = self;
  v12.super_class = TSKSheetViewController;
  v6 = [(TSKSheetViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_contentViewController = a3;
    [(TSKSheetViewController *)v6 setTransitioningDelegate:v6];
    [(TSKSheetViewController *)v7 setModalPresentationStyle:4];
    v8 = [(TSKSheetViewController *)v7 view];
    v9 = [a3 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TSKSheetViewController *)v7 addChildViewController:a3];
    [v8 addSubview:v9];
    [v8 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"|[contentView]|", 0, 0, _NSDictionaryOfVariableBindings(@"contentView", v9, 0))}];
    [(TSKSheetViewController *)v7 setContentHidden:1];
    [a3 preferredContentSize];
    [v8 addConstraint:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", v9, 8, 0, 0, 0, 1.0)}];
    [a3 didMoveToParentViewController:v7];
    if (v4)
    {
      v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel_didTapView];
      [v10 setDelegate:v7];
      [v8 addGestureRecognizer:v10];
    }
  }

  return v7;
}

- (void)dismissSheetAnimated:(BOOL)a3 completion:(id)a4
{
  if (a3)
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
    v5[5] = a4;
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

- (double)transitionDuration:(id)a3
{
  v3 = [(TSKSheetViewController *)self isShowingForTransitionContext:a3];
  result = 0.0;
  if (v3)
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  if ([(TSKSheetViewController *)self isShowingForTransitionContext:?])
  {

    [(TSKSheetViewController *)self animateShowWithContext:a3];
  }

  else
  {

    [(TSKSheetViewController *)self animateDismissWithContext:a3];
  }
}

- (void)animateShowWithContext:(id)a3
{
  v5 = [a3 containerView];
  v6 = [(TSKSheetViewController *)self view];
  [v5 addSubview:v6];
  v7 = _NSDictionaryOfVariableBindings(@"rootView", v6, 0);
  [v5 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"H:|[rootView]|", 0, 0, v7)}];
  [v5 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:|[rootView]|", 0, 0, v7)}];
  [v6 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "clearColor")}];
  [(TSKSheetViewController *)self setContentHidden:1];
  [v6 layoutIfNeeded];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TSKSheetViewController_animateShowWithContext___block_invoke;
  v9[3] = &unk_279D47708;
  v9[4] = v6;
  v9[5] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__TSKSheetViewController_animateShowWithContext___block_invoke_2;
  v8[3] = &unk_279D479B0;
  v8[4] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v9 options:v8 animations:0.25 completion:0.0];
}

uint64_t __49__TSKSheetViewController_animateShowWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.4)}];
  [*(a1 + 40) setContentHidden:0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)animateDismissWithContext:(id)a3
{
  [-[TSKSheetViewController view](self "view")];

  [a3 completeTransition:1];
}

- (void)setContentHidden:(BOOL)a3
{
  if (self->_isContentHidden != a3)
  {
    v4 = a3;
    self->_isContentHidden = a3;
    v6 = [(TSKSheetViewController *)self view];
    v7 = [(UIViewController *)self->_contentViewController view];
    if (self->_contentVerticalConstraint)
    {
      [v6 removeConstraint:?];
    }

    if (v4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    v9 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:v8 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
    self->_contentVerticalConstraint = v9;

    [v6 addConstraint:v9];
  }
}

@end