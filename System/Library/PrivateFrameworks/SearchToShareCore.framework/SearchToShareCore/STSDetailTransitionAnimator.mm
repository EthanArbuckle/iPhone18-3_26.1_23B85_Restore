@interface STSDetailTransitionAnimator
- (CGRect)presentedFrame;
- (CGRect)sourceFrame;
- (UIEdgeInsets)sourceInsets;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation STSDetailTransitionAnimator

- (double)transitionDuration:(id)duration
{
  presenting = [(STSDetailTransitionAnimator *)self presenting];
  result = 0.4;
  if (!presenting)
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  view = [v6 view];
  [view setUserInteractionEnabled:0];

  v8 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view2 = [v8 view];
  [view2 setUserInteractionEnabled:0];

  if ([(STSDetailTransitionAnimator *)self presenting])
  {
    view3 = [v6 view];
    v11 = [view3 snapshotViewAfterScreenUpdates:1];

    v12 = [MEMORY[0x277D75210] effectWithStyle:2];
    v13 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v12];
    [v11 frame];
    [v13 setFrame:?];
    [v11 addSubview:v13];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    [transitionCopy finalFrameForViewController:v8];
    v11 = [v14 initWithFrame:?];
  }

  [containerView addSubview:v11];
  snapshotView = [(STSDetailTransitionAnimator *)self snapshotView];
  [containerView addSubview:snapshotView];

  presenting = [(STSDetailTransitionAnimator *)self presenting];
  snapshotView2 = [(STSDetailTransitionAnimator *)self snapshotView];
  if (presenting)
  {
    [(STSDetailTransitionAnimator *)self sourceFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(STSDetailTransitionAnimator *)self sourceInsets];
    [snapshotView2 setFrame:{v19 + v29, v21 + v26, v23 - (v29 + v27), v25 - (v26 + v28)}];

    v30 = MEMORY[0x277D75D18];
    [(STSDetailTransitionAnimator *)self transitionDuration:transitionCopy];
    v32 = v31;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __49__STSDetailTransitionAnimator_animateTransition___block_invoke;
    v62[3] = &unk_279B8A988;
    v62[4] = self;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __49__STSDetailTransitionAnimator_animateTransition___block_invoke_2;
    v55[3] = &unk_279B8ACB8;
    v56 = v6;
    v57 = v8;
    v58 = transitionCopy;
    v59 = containerView;
    selfCopy = self;
    v61 = v11;
    v33 = transitionCopy;
    v34 = v8;
    v35 = v6;
    [v30 animateWithDuration:0 delay:v62 usingSpringWithDamping:v55 initialSpringVelocity:v32 options:0.0 animations:0.7 completion:0.0];

    v36 = v56;
  }

  else
  {
    [(STSDetailTransitionAnimator *)self presentedFrame];
    [snapshotView2 setFrame:?];

    v37 = MEMORY[0x277D75D18];
    [(STSDetailTransitionAnimator *)self transitionDuration:transitionCopy];
    v39 = v38;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __49__STSDetailTransitionAnimator_animateTransition___block_invoke_3;
    v53[3] = &unk_279B8A988;
    v40 = v6;
    v54 = v40;
    [v37 animateWithDuration:v53 animations:v39];
    v41 = MEMORY[0x277D75D18];
    [(STSDetailTransitionAnimator *)self transitionDuration:transitionCopy];
    v43 = v42;
    selfCopy2 = self;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __49__STSDetailTransitionAnimator_animateTransition___block_invoke_4;
    v52[3] = &unk_279B8A988;
    v52[4] = self;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __49__STSDetailTransitionAnimator_animateTransition___block_invoke_5;
    v47[3] = &unk_279B8ACE0;
    v48 = v40;
    v49 = v8;
    v50 = transitionCopy;
    v44 = transitionCopy;
    v45 = v8;
    v46 = v40;
    [v41 animateWithDuration:v52 animations:v47 completion:v43];

    v36 = v54;
  }
}

void __49__STSDetailTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotView];
  [*(a1 + 32) presentedFrame];
  [v2 setFrame:?];
}

uint64_t __49__STSDetailTransitionAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  v3 = [*(a1 + 40) view];
  [v3 setUserInteractionEnabled:1];

  v4 = [*(a1 + 40) view];
  [*(a1 + 48) finalFrameForViewController:*(a1 + 40)];
  [v4 setFrame:?];

  v5 = *(a1 + 56);
  v6 = [*(a1 + 40) view];
  [v5 addSubview:v6];

  v7 = [*(a1 + 64) snapshotView];
  [v7 removeFromSuperview];

  [*(a1 + 72) removeFromSuperview];
  v8 = *(a1 + 48);

  return [v8 completeTransition:1];
}

void __49__STSDetailTransitionAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __49__STSDetailTransitionAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  v14 = [*(a1 + 32) snapshotView];
  [*(a1 + 32) sourceFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) sourceInsets];
  [v14 setFrame:{v3 + v13, v5 + v10, v7 - (v13 + v11), v9 - (v10 + v12)}];
}

uint64_t __49__STSDetailTransitionAnimator_animateTransition___block_invoke_5(id *a1)
{
  v2 = [a1[4] view];
  [v2 setUserInteractionEnabled:1];

  v3 = [a1[5] view];
  [v3 setUserInteractionEnabled:1];

  v4 = [a1[4] view];
  [a1[6] finalFrameForViewController:a1[4]];
  [v4 setFrame:?];

  v5 = [a1[7] snapshotView];
  [v5 removeFromSuperview];

  v6 = a1[6];

  return [v6 completeTransition:1];
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)sourceInsets
{
  top = self->_sourceInsets.top;
  left = self->_sourceInsets.left;
  bottom = self->_sourceInsets.bottom;
  right = self->_sourceInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)presentedFrame
{
  x = self->_presentedFrame.origin.x;
  y = self->_presentedFrame.origin.y;
  width = self->_presentedFrame.size.width;
  height = self->_presentedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end