@interface PBFEditingZoomDownAnimationController
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation PBFEditingZoomDownAnimationController

- (double)transitionDuration:(id)duration
{
  isAnimated = [duration isAnimated];
  result = 0.0;
  if (isAnimated)
  {
    return 0.5;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v43 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  view = [v43 view];
  window = [view window];
  [window bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  traitCollection = [view traitCollection];
  [traitCollection displayCornerRadius];
  v17 = v16;

  previewView = [(PBFEditingZoomAnimationController *)self previewView];
  buildDimmingView = [(PBFEditingZoomAnimationController *)self buildDimmingView];
  complicationsView = [(PBFEditingZoomAnimationController *)self complicationsView];
  rect_8 = v12;
  v21 = [(PBFEditingZoomAnimationController *)self buildZoomingViewWithPreviewView:previewView previewFrame:view editingView:complicationsView complicationsView:v8, v10, v12, v14];
  [v21 _setContinuousCornerRadius:v17];
  containerView = [transitionCopy containerView];
  [containerView addSubview:buildDimmingView];
  [containerView addSubview:v21];
  [containerView bounds];
  [buildDimmingView setFrame:?];
  v23 = v10;
  [v21 setFrame:{v8, v10, v12, v14}];
  [v21 bounds];
  [view setFrame:?];
  [(PBFEditingZoomAnimationController *)self previewFrame];
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  rect_16 = v59.size.height;
  v28 = CGRectGetWidth(v59);
  v60.origin.x = v8;
  v60.origin.y = v23;
  v60.size.width = rect_8;
  v60.size.height = v14;
  rect_24 = v28 / CGRectGetWidth(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v29 = CGRectGetHeight(v61);
  v62.origin.x = v8;
  v62.origin.y = v23;
  v62.size.width = rect_8;
  v62.size.height = v14;
  v30 = v29 / CGRectGetHeight(v62);
  [(PBFEditingZoomAnimationController *)self previewCornerRadius];
  v32 = v31;
  [(PBFEditingZoomDownAnimationController *)self transitionDuration:transitionCopy];
  v34 = v33;
  v35 = MEMORY[0x277D75D18];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __59__PBFEditingZoomDownAnimationController_animateTransition___block_invoke;
  v48[3] = &unk_2782C8AC8;
  v49 = v21;
  v52 = x;
  v53 = y;
  v54 = width;
  v55 = rect_16;
  v56 = rect_24;
  v57 = v30;
  v58 = v32;
  v50 = buildDimmingView;
  v51 = view;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __59__PBFEditingZoomDownAnimationController_animateTransition___block_invoke_2;
  v44[3] = &unk_2782C8AF0;
  v45 = v50;
  v46 = v49;
  v47 = transitionCopy;
  v36 = transitionCopy;
  v37 = v49;
  v38 = v50;
  v39 = view;
  [v35 animateWithDuration:0 delay:v48 usingSpringWithDamping:v44 initialSpringVelocity:v34 options:0.0 animations:1.0 completion:0.0];
}

uint64_t __59__PBFEditingZoomDownAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  UIRectGetCenter();
  [v2 setCenter:?];
  v3 = *(a1 + 32);
  CGAffineTransformMakeScale(&v5, *(a1 + 88), *(a1 + 96));
  [v3 setTransform:&v5];
  [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 104) / *(a1 + 96)];
  [*(a1 + 40) setAlpha:0.0];
  return [*(a1 + 48) setAlpha:0.0];
}

uint64_t __59__PBFEditingZoomDownAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 48);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

@end