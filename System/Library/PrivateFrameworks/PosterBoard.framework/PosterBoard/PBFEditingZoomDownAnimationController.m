@interface PBFEditingZoomDownAnimationController
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation PBFEditingZoomDownAnimationController

- (double)transitionDuration:(id)a3
{
  v3 = [a3 isAnimated];
  result = 0.0;
  if (v3)
  {
    return 0.5;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v43 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v5 = [v43 view];
  v6 = [v5 window];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v5 traitCollection];
  [v15 displayCornerRadius];
  v17 = v16;

  v18 = [(PBFEditingZoomAnimationController *)self previewView];
  v19 = [(PBFEditingZoomAnimationController *)self buildDimmingView];
  v20 = [(PBFEditingZoomAnimationController *)self complicationsView];
  rect_8 = v12;
  v21 = [(PBFEditingZoomAnimationController *)self buildZoomingViewWithPreviewView:v18 previewFrame:v5 editingView:v20 complicationsView:v8, v10, v12, v14];
  [v21 _setContinuousCornerRadius:v17];
  v22 = [v4 containerView];
  [v22 addSubview:v19];
  [v22 addSubview:v21];
  [v22 bounds];
  [v19 setFrame:?];
  v23 = v10;
  [v21 setFrame:{v8, v10, v12, v14}];
  [v21 bounds];
  [v5 setFrame:?];
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
  [(PBFEditingZoomDownAnimationController *)self transitionDuration:v4];
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
  v50 = v19;
  v51 = v5;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __59__PBFEditingZoomDownAnimationController_animateTransition___block_invoke_2;
  v44[3] = &unk_2782C8AF0;
  v45 = v50;
  v46 = v49;
  v47 = v4;
  v36 = v4;
  v37 = v49;
  v38 = v50;
  v39 = v5;
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