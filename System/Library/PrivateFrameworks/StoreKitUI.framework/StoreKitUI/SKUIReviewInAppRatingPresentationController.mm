@interface SKUIReviewInAppRatingPresentationController
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview;
- (SKUIReviewInAppRatingPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_prepareConstraintsIfNecessary;
- (void)_prepareDimmingViewIfNecessary;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionWillBegin;
@end

@implementation SKUIReviewInAppRatingPresentationController

- (SKUIReviewInAppRatingPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v7.receiver = self;
  v7.super_class = SKUIReviewInAppRatingPresentationController;
  v4 = [(SKUIReviewInAppRatingPresentationController *)&v7 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = v4;
  if (v4)
  {
    [(SKUIReviewInAppRatingPresentationController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)containerViewWillLayoutSubviews
{
  [(SKUIReviewInAppRatingPresentationController *)self _prepareDimmingViewIfNecessary];

  [(SKUIReviewInAppRatingPresentationController *)self _prepareConstraintsIfNecessary];
}

- (void)containerViewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = SKUIReviewInAppRatingPresentationController;
  [(SKUIReviewInAppRatingPresentationController *)&v14 containerViewDidLayoutSubviews];
  dimmingView = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];

  if (dimmingView)
  {
    containerView = [(SKUIReviewInAppRatingPresentationController *)self containerView];
    [containerView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    dimmingView2 = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];
    [dimmingView2 setFrame:{v6, v8, v10, v12}];
  }
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview
{
  [superview bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_prepareDimmingViewIfNecessary
{
  presentedViewController = [(SKUIReviewInAppRatingPresentationController *)self presentedViewController];
  dimmingView = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];

  v4 = presentedViewController;
  if (!dimmingView && presentedViewController)
  {
    containerView = [(SKUIReviewInAppRatingPresentationController *)self containerView];
    dimmingView2 = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];
    [dimmingView2 removeFromSuperview];

    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [v8 setBackgroundColor:v9];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SKUIReviewInAppRatingPresentationController *)self setDimmingView:v8];
    [containerView insertSubview:v8 atIndex:0];
    [containerView sendSubviewToBack:v8];

    v4 = presentedViewController;
  }
}

- (void)presentationTransitionWillBegin
{
  containerView = [(SKUIReviewInAppRatingPresentationController *)self containerView];
  presentedView = [(SKUIReviewInAppRatingPresentationController *)self presentedView];
  [containerView addSubview:presentedView];

  [(SKUIReviewInAppRatingPresentationController *)self _prepareDimmingViewIfNecessary];
  [(SKUIReviewInAppRatingPresentationController *)self _prepareConstraintsIfNecessary];
}

- (void)_prepareConstraintsIfNecessary
{
  if (![(SKUIReviewInAppRatingPresentationController *)self constraintsPrepared])
  {
    presentedViewController = [(SKUIReviewInAppRatingPresentationController *)self presentedViewController];
    view = [presentedViewController view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    containerView = [(SKUIReviewInAppRatingPresentationController *)self containerView];
    if ([view isDescendantOfView:containerView])
    {
      [(SKUIReviewInAppRatingPresentationController *)self setConstraintsPrepared:1];
      array = [MEMORY[0x277CBEB18] array];
      v7 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __77__SKUIReviewInAppRatingPresentationController__prepareConstraintsIfNecessary__block_invoke;
      v9[3] = &unk_2781F8680;
      v10 = view;
      v11 = containerView;
      v12 = array;
      v8 = array;
      [v7 performWithoutAnimation:v9];
    }
  }
}

uint64_t __77__SKUIReviewInAppRatingPresentationController__prepareConstraintsIfNecessary__block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAAD0];
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:9 relatedBy:0 toItem:*(a1 + 40) attribute:9 multiplier:1.0 constant:0.0];
  v13[0] = v3;
  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:10 relatedBy:0 toItem:*(a1 + 40) attribute:10 multiplier:1.0 constant:0.0];
  v13[1] = v4;
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:7 relatedBy:0 toItem:*(a1 + 40) attribute:7 multiplier:1.0 constant:0.0];
  v13[2] = v5;
  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:8 relatedBy:0 toItem:*(a1 + 40) attribute:8 multiplier:1.0 constant:0.0];
  v13[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  [v2 activateConstraints:v7];

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:3 relatedBy:1 toItem:*(a1 + 40) attribute:3 multiplier:1.0 constant:0.0];
  [v8 addObject:v9];

  v10 = *(a1 + 48);
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:4 relatedBy:-1 toItem:*(a1 + 40) attribute:4 multiplier:1.0 constant:0.0];
  [v10 addObject:v11];

  return [*(a1 + 40) addConstraints:*(a1 + 48)];
}

@end