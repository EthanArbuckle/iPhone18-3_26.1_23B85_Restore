@interface SKUIReviewInAppRatingAnimatedTransitioning
- (id)_presentedViewControllerForContext:(id)a3;
- (void)_animateTransition:(id)a3 completionBlock:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation SKUIReviewInAppRatingAnimatedTransitioning

- (id)_presentedViewControllerForContext:(id)a3
{
  v4 = *MEMORY[0x277D77230];
  v5 = a3;
  v6 = [v5 viewControllerForKey:v4];
  v7 = [v5 viewControllerForKey:*MEMORY[0x277D77240]];

  if ([(SKUIReviewInAppRatingAnimatedTransitioning *)self isPresentation])
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SKUIReviewInAppRatingAnimatedTransitioning_animateTransition___block_invoke;
  v6[3] = &unk_2781F84A0;
  v7 = v4;
  v5 = v4;
  [(SKUIReviewInAppRatingAnimatedTransitioning *)self _animateTransition:v5 completionBlock:v6];
}

- (void)_animateTransition:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 containerView];
  v9 = [(SKUIReviewInAppRatingAnimatedTransitioning *)self isPresentation];
  v10 = [(SKUIReviewInAppRatingAnimatedTransitioning *)self _presentedViewControllerForContext:v7];
  v11 = [v10 view];
  [v8 layoutIfNeeded];
  [(SKUIReviewInAppRatingAnimatedTransitioning *)self transitionDuration:v7];
  v13 = v12;

  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v32.a = *MEMORY[0x277CBF2C0];
  *&v32.c = v14;
  *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v31.a = *&v32.a;
  *&v31.c = v14;
  *&v31.tx = *&v32.tx;
  if (v9)
  {
    CGAffineTransformMakeScale(&v32, 1.2, 1.2);
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
    CGAffineTransformMakeScale(&v31, 1.0, 1.0);
  }

  v30 = v32;
  [v11 setTransform:&v30];
  [v11 setAlpha:v15];
  v16 = [v10 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 dimmingView];
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [v17 setAlpha:v15];
  v19 = MEMORY[0x277D75D18];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__SKUIReviewInAppRatingAnimatedTransitioning__animateTransition_completionBlock___block_invoke;
  v25[3] = &unk_2781FAE90;
  v28 = v31;
  v29 = v18;
  v26 = v11;
  v27 = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__SKUIReviewInAppRatingAnimatedTransitioning__animateTransition_completionBlock___block_invoke_2;
  v23[3] = &unk_2781F85B8;
  v24 = v6;
  v20 = v6;
  v21 = v17;
  v22 = v11;
  [v19 animateWithDuration:6 delay:v25 usingSpringWithDamping:v23 initialSpringVelocity:v13 options:0.0 animations:600.0 completion:0.0];
}

uint64_t __81__SKUIReviewInAppRatingAnimatedTransitioning__animateTransition_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v4[2] = *(a1 + 80);
  [*(a1 + 32) setTransform:v4];
  [*(a1 + 32) setAlpha:*(a1 + 96)];
  return [*(a1 + 40) setAlpha:*(a1 + 96)];
}

@end