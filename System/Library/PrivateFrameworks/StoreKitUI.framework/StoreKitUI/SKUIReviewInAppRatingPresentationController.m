@interface SKUIReviewInAppRatingPresentationController
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3;
- (SKUIReviewInAppRatingPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_prepareConstraintsIfNecessary;
- (void)_prepareDimmingViewIfNecessary;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionWillBegin;
@end

@implementation SKUIReviewInAppRatingPresentationController

- (SKUIReviewInAppRatingPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKUIReviewInAppRatingPresentationController;
  v4 = [(SKUIReviewInAppRatingPresentationController *)&v7 initWithPresentedViewController:a3 presentingViewController:a4];
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
  v3 = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];

  if (v3)
  {
    v4 = [(SKUIReviewInAppRatingPresentationController *)self containerView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3
{
  [a3 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_prepareDimmingViewIfNecessary
{
  v10 = [(SKUIReviewInAppRatingPresentationController *)self presentedViewController];
  v3 = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];

  v4 = v10;
  if (!v3 && v10)
  {
    v5 = [(SKUIReviewInAppRatingPresentationController *)self containerView];
    v6 = [(SKUIReviewInAppRatingPresentationController *)self dimmingView];
    [v6 removeFromSuperview];

    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [v8 setBackgroundColor:v9];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SKUIReviewInAppRatingPresentationController *)self setDimmingView:v8];
    [v5 insertSubview:v8 atIndex:0];
    [v5 sendSubviewToBack:v8];

    v4 = v10;
  }
}

- (void)presentationTransitionWillBegin
{
  v4 = [(SKUIReviewInAppRatingPresentationController *)self containerView];
  v3 = [(SKUIReviewInAppRatingPresentationController *)self presentedView];
  [v4 addSubview:v3];

  [(SKUIReviewInAppRatingPresentationController *)self _prepareDimmingViewIfNecessary];
  [(SKUIReviewInAppRatingPresentationController *)self _prepareConstraintsIfNecessary];
}

- (void)_prepareConstraintsIfNecessary
{
  if (![(SKUIReviewInAppRatingPresentationController *)self constraintsPrepared])
  {
    v3 = [(SKUIReviewInAppRatingPresentationController *)self presentedViewController];
    v4 = [v3 view];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(SKUIReviewInAppRatingPresentationController *)self containerView];
    if ([v4 isDescendantOfView:v5])
    {
      [(SKUIReviewInAppRatingPresentationController *)self setConstraintsPrepared:1];
      v6 = [MEMORY[0x277CBEB18] array];
      v7 = MEMORY[0x277D75D18];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __77__SKUIReviewInAppRatingPresentationController__prepareConstraintsIfNecessary__block_invoke;
      v9[3] = &unk_2781F8680;
      v10 = v4;
      v11 = v5;
      v12 = v6;
      v8 = v6;
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