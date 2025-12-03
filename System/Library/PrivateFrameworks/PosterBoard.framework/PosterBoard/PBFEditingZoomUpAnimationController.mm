@interface PBFEditingZoomUpAnimationController
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
- (void)editingSceneViewControllerDidFinishShowingContent:(id)content;
- (void)finishTransitionIfPossible;
@end

@implementation PBFEditingZoomUpAnimationController

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
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
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

    bottomViewController = [v15 bottomViewController];

    v17 = objc_opt_class();
    v18 = bottomViewController;
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

  view = [v5 view];
  view2 = [v8 view];
  window = [view window];
  traitCollection = [view traitCollection];
  [traitCollection displayCornerRadius];
  v57 = v23;

  [window bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  rect = v30;
  [v11 setShowsContentWhenReady:1];
  [v11 addObserver:self];
  previewView = [(PBFEditingZoomAnimationController *)self previewView];
  [(PBFEditingZoomAnimationController *)self buildDimmingView];
  v32 = v60 = v5;
  complicationsView = [(PBFEditingZoomAnimationController *)self complicationsView];
  v34 = [(PBFEditingZoomAnimationController *)self buildZoomingViewWithPreviewView:previewView previewFrame:view2 editingView:complicationsView complicationsView:v25, v27, v29, v31];
  containerView = [transitionCopy containerView];
  [containerView addSubview:v32];
  [containerView addSubview:v34];
  [containerView bounds];
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
  [view2 setFrame:?];
  [(PBFEditingZoomAnimationController *)self previewCornerRadius];
  [v34 _setContinuousCornerRadius:v43 / v42];
  [complicationsView bounds];
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
  [complicationsView setTransform:&v72];
  [v34 bounds];
  UIRectGetCenter();
  [complicationsView setCenter:?];
  [(PBFEditingZoomUpAnimationController *)self setTransitionContext:transitionCopy];
  [(PBFEditingZoomUpAnimationController *)self setDimmingView:v32];
  [(PBFEditingZoomUpAnimationController *)self setZoomingView:v34];
  [(PBFEditingZoomUpAnimationController *)self transitionDuration:transitionCopy];
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
    transitionContext = [(PBFEditingZoomUpAnimationController *)self transitionContext];
    v3 = [transitionContext viewControllerForKey:*MEMORY[0x277D77240]];
    view = [v3 view];
    containerView = [transitionContext containerView];
    dimmingView = [(PBFEditingZoomUpAnimationController *)self dimmingView];
    zoomingView = [(PBFEditingZoomUpAnimationController *)self zoomingView];
    [dimmingView removeFromSuperview];
    [zoomingView removeFromSuperview];
    [containerView addSubview:view];
    [transitionContext finalFrameForViewController:v3];
    [view setFrame:?];
    [transitionContext completeTransition:{objc_msgSend(transitionContext, "transitionWasCancelled") ^ 1}];
  }
}

- (void)editingSceneViewControllerDidFinishShowingContent:(id)content
{
  [(PBFEditingZoomUpAnimationController *)self setContentReady:1];

  [(PBFEditingZoomUpAnimationController *)self finishTransitionIfPossible];
}

@end