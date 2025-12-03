@interface SKUIReviewInAppRatingAnimatedTransitioning
- (id)_presentedViewControllerForContext:(id)context;
- (void)_animateTransition:(id)transition completionBlock:(id)block;
- (void)animateTransition:(id)transition;
@end

@implementation SKUIReviewInAppRatingAnimatedTransitioning

- (id)_presentedViewControllerForContext:(id)context
{
  v4 = *MEMORY[0x277D77230];
  contextCopy = context;
  v6 = [contextCopy viewControllerForKey:v4];
  v7 = [contextCopy viewControllerForKey:*MEMORY[0x277D77240]];

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

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SKUIReviewInAppRatingAnimatedTransitioning_animateTransition___block_invoke;
  v6[3] = &unk_2781F84A0;
  v7 = transitionCopy;
  v5 = transitionCopy;
  [(SKUIReviewInAppRatingAnimatedTransitioning *)self _animateTransition:v5 completionBlock:v6];
}

- (void)_animateTransition:(id)transition completionBlock:(id)block
{
  blockCopy = block;
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  isPresentation = [(SKUIReviewInAppRatingAnimatedTransitioning *)self isPresentation];
  v10 = [(SKUIReviewInAppRatingAnimatedTransitioning *)self _presentedViewControllerForContext:transitionCopy];
  view = [v10 view];
  [containerView layoutIfNeeded];
  [(SKUIReviewInAppRatingAnimatedTransitioning *)self transitionDuration:transitionCopy];
  v13 = v12;

  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v32.a = *MEMORY[0x277CBF2C0];
  *&v32.c = v14;
  *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v31.a = *&v32.a;
  *&v31.c = v14;
  *&v31.tx = *&v32.tx;
  if (isPresentation)
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
  [view setTransform:&v30];
  [view setAlpha:v15];
  presentationController = [v10 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dimmingView = [presentationController dimmingView];
  }

  else
  {
    dimmingView = 0;
  }

  if (isPresentation)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [dimmingView setAlpha:v15];
  v19 = MEMORY[0x277D75D18];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__SKUIReviewInAppRatingAnimatedTransitioning__animateTransition_completionBlock___block_invoke;
  v25[3] = &unk_2781FAE90;
  v28 = v31;
  v29 = v18;
  v26 = view;
  v27 = dimmingView;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__SKUIReviewInAppRatingAnimatedTransitioning__animateTransition_completionBlock___block_invoke_2;
  v23[3] = &unk_2781F85B8;
  v24 = blockCopy;
  v20 = blockCopy;
  v21 = dimmingView;
  v22 = view;
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