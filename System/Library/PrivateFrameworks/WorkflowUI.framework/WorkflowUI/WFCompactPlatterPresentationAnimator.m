@interface WFCompactPlatterPresentationAnimator
- (id)initForPresenting:(BOOL)a3;
- (void)_animateDismissalWithTransitionContext:(id)a3;
- (void)_animatePresentationWithTransitionContext:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation WFCompactPlatterPresentationAnimator

- (void)_animateDismissalWithTransitionContext:(id)a3
{
  v3 = a3;
  v4 = [v3 viewControllerForKey:*MEMORY[0x277D77230]];
  v5 = [v4 presentationController];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 frameOfDismissedViewInContainerView];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__WFCompactPlatterPresentationAnimator__animateDismissalWithTransitionContext___block_invoke;
  v21[3] = &unk_279EE89B0;
  v22 = v4;
  v23 = v9;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__WFCompactPlatterPresentationAnimator__animateDismissalWithTransitionContext___block_invoke_2;
  v19[3] = &unk_279EE8540;
  v20 = v3;
  v17 = v3;
  v18 = v4;
  [v16 _animateUsingSpringWithDampingRatio:0 response:v21 tracking:v19 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.998];
}

void __79__WFCompactPlatterPresentationAnimator__animateDismissalWithTransitionContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

uint64_t __79__WFCompactPlatterPresentationAnimator__animateDismissalWithTransitionContext___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

- (void)_animatePresentationWithTransitionContext:(id)a3
{
  v3 = a3;
  v4 = [v3 viewControllerForKey:*MEMORY[0x277D77240]];
  v5 = [v4 presentationController];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 view];
  [v7 frameOfDismissedViewInContainerView];
  [v8 setFrame:?];
  v9 = [v3 containerView];
  [v9 addSubview:v8];

  [v7 frameOfPresentedViewInContainerView];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x277D75D18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__WFCompactPlatterPresentationAnimator__animatePresentationWithTransitionContext___block_invoke;
  v23[3] = &unk_279EE89B0;
  v24 = v8;
  v25 = v11;
  v26 = v13;
  v27 = v15;
  v28 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__WFCompactPlatterPresentationAnimator__animatePresentationWithTransitionContext___block_invoke_2;
  v21[3] = &unk_279EE8540;
  v22 = v3;
  v19 = v3;
  v20 = v8;
  [v18 _animateUsingSpringWithDampingRatio:0 response:v23 tracking:v21 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.998];
}

uint64_t __82__WFCompactPlatterPresentationAnimator__animatePresentationWithTransitionContext___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  if ([(WFCompactPlatterPresentationAnimator *)self isPresenting])
  {
    [(WFCompactPlatterPresentationAnimator *)self _animatePresentationWithTransitionContext:v4];
  }

  else
  {
    [(WFCompactPlatterPresentationAnimator *)self _animateDismissalWithTransitionContext:v4];
  }
}

- (id)initForPresenting:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WFCompactPlatterPresentationAnimator;
  v4 = [(WFCompactPlatterPresentationAnimator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_presenting = a3;
    v6 = v4;
  }

  return v5;
}

@end