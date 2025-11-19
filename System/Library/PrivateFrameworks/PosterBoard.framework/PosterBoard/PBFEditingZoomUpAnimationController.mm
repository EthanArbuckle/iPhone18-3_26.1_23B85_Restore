@interface PBFEditingZoomUpAnimationController
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
- (void)editingSceneViewControllerDidFinishShowingContent:(id)a3;
- (void)finishTransitionIfPossible;
@end

@implementation PBFEditingZoomUpAnimationController

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
  v5 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = v8;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v15 bottomViewController];

    v17 = objc_opt_class();
    v18 = v16;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v11 = v19;
  }

  v59 = v11;

  v20 = [v5 view];
  v21 = [v8 view];
  v61 = [v20 window];
  v22 = [v20 traitCollection];
  [v22 displayCornerRadius];
  v57 = v23;

  [v61 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  rect = v30;
  [v11 setShowsContentWhenReady:1];
  [v11 addObserver:self];
  v58 = [(PBFEditingZoomAnimationController *)self previewView];
  [(PBFEditingZoomAnimationController *)self buildDimmingView];
  v32 = v60 = v5;
  v33 = [(PBFEditingZoomAnimationController *)self complicationsView];
  v34 = [(PBFEditingZoomAnimationController *)self buildZoomingViewWithPreviewView:v58 previewFrame:v21 editingView:v33 complicationsView:v25, v27, v29, v31];
  v35 = [v4 containerView];
  [v35 addSubview:v32];
  [v35 addSubview:v34];
  [v35 bounds];
  [v32 setFrame:?];
  [v32 setAlpha:0.0];
  [(PBFEditingZoomAnimationController *)self previewFrame];
  x = v73.origin.x;
  y = v73.origin.y;
  width = v73.size.width;
  height = v73.size.height;
  v40 = CGRectGetWidth(v73);
  v74.origin.x = v25;
  v74.origin.y = v27;
  v74.size.width = v29;
  v74.size.height = rect;
  sx = v40 / CGRectGetWidth(v74);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  v41 = CGRectGetHeight(v75);
  v76.origin.x = v25;
  v76.origin.y = v27;
  v56 = v29;
  v76.size.width = v29;
  v76.size.height = rect;
  v42 = v41 / CGRectGetHeight(v76);
  [v34 setBounds:{0.0, 0.0, v29, rect}];
  UIRectGetCenter();
  [v34 setCenter:?];
  CGAffineTransformMakeScale(&v72, sx, v42);
  [v34 setTransform:&v72];
  [v34 bounds];
  [v21 setFrame:?];
  [(PBFEditingZoomAnimationController *)self previewCornerRadius];
  [v34 _setContinuousCornerRadius:v43 / v42];
  [v33 bounds];
  v45 = v44;
  v47 = v46;
  v77.origin.x = v25;
  v77.origin.y = v27;
  v77.size.width = v56;
  v77.size.height = rect;
  v48 = CGRectGetWidth(v77) / v45;
  v78.origin.x = v25;
  v78.origin.y = v27;
  v78.size.width = v56;
  v78.size.height = rect;
  v49 = CGRectGetHeight(v78);
  CGAffineTransformMakeScale(&v72, v48, v49 / v47);
  [v33 setTransform:&v72];
  [v34 bounds];
  UIRectGetCenter();
  [v33 setCenter:?];
  [(PBFEditingZoomUpAnimationController *)self setTransitionContext:v4];
  [(PBFEditingZoomUpAnimationController *)self setDimmingView:v32];
  [(PBFEditingZoomUpAnimationController *)self setZoomingView:v34];
  [(PBFEditingZoomUpAnimationController *)self transitionDuration:v4];
  v51 = v50;
  v52 = MEMORY[0x277D75D18];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __57__PBFEditingZoomUpAnimationController_animateTransition___block_invoke;
  v64[3] = &unk_2782C8A78;
  v67 = v25;
  v68 = v27;
  v69 = v56;
  v70 = rect;
  v71 = v57;
  v65 = v34;
  v66 = v32;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __57__PBFEditingZoomUpAnimationController_animateTransition___block_invoke_2;
  v63[3] = &unk_2782C8AA0;
  v63[4] = self;
  v53 = v32;
  v54 = v34;
  [v52 animateWithDuration:0 delay:v64 usingSpringWithDamping:v63 initialSpringVelocity:v51 options:0.0 animations:1.0 completion:0.0];
}

uint64_t __57__PBFEditingZoomUpAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v6];
  v4 = *(a1 + 32);
  UIRectGetCenter();
  [v4 setCenter:?];
  [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 80)];
  return [*(a1 + 40) setAlpha:1.0];
}

uint64_t __57__PBFEditingZoomUpAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimationFinished:1];
  v2 = *(a1 + 32);

  return [v2 finishTransitionIfPossible];
}

- (void)finishTransitionIfPossible
{
  if ([(PBFEditingZoomUpAnimationController *)self isAnimationFinished]&& [(PBFEditingZoomUpAnimationController *)self isContentReady])
  {
    v8 = [(PBFEditingZoomUpAnimationController *)self transitionContext];
    v3 = [v8 viewControllerForKey:*MEMORY[0x277D77240]];
    v4 = [v3 view];
    v5 = [v8 containerView];
    v6 = [(PBFEditingZoomUpAnimationController *)self dimmingView];
    v7 = [(PBFEditingZoomUpAnimationController *)self zoomingView];
    [v6 removeFromSuperview];
    [v7 removeFromSuperview];
    [v5 addSubview:v4];
    [v8 finalFrameForViewController:v3];
    [v4 setFrame:?];
    [v8 completeTransition:{objc_msgSend(v8, "transitionWasCancelled") ^ 1}];
  }
}

- (void)editingSceneViewControllerDidFinishShowingContent:(id)a3
{
  [(PBFEditingZoomUpAnimationController *)self setContentReady:1];

  [(PBFEditingZoomUpAnimationController *)self finishTransitionIfPossible];
}

@end