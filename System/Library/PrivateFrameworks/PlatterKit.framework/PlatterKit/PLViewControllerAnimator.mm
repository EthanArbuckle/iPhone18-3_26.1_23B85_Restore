@interface PLViewControllerAnimator
- (UIViewPropertyAnimator)propertyAnimator;
- (id)_newPropertyAnimator;
- (id)_presentedExpandedPlatterForPresentedView:(id)a3;
- (id)_presentedViewControllerForPresentation:(BOOL)a3 withTransitionContext:(id)a4;
- (id)_presentedViewForPresentation:(BOOL)a3 withTransitionContext:(id)a4;
- (id)_presentingViewControllerForPresentation:(BOOL)a3 withTransitionContext:(id)a4;
- (id)_presentingViewForPresentation:(BOOL)a3 withTransitionContext:(id)a4;
- (id)_previewInteractionPresentableViewControllerForPresentation:(BOOL)a3 withTransitionContext:(id)a4;
- (id)_sourceViewForPresentation:(BOOL)a3 withTransitionContext:(id)a4;
- (id)initForPresentation:(BOOL)a3 withSourceView:(id)a4;
- (void)_animateTransitionWithContext:(id)a3 completion:(id)a4;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_performTransitionWithContext:(id)a3;
- (void)addObserver:(id)a3;
- (void)animateTransition:(id)a3;
- (void)performTransitionWithContext:(id)a3;
- (void)prepareForTransitionWithContext:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation PLViewControllerAnimator

- (id)initForPresentation:(BOOL)a3 withSourceView:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLViewControllerAnimator;
  v8 = [(PLViewControllerAnimator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_presenting = a3;
    objc_storeStrong(&v8->_sourceView, a4);
  }

  return v9;
}

- (UIViewPropertyAnimator)propertyAnimator
{
  propertyAnimator = self->_propertyAnimator;
  if (!propertyAnimator)
  {
    v4 = [(PLViewControllerAnimator *)self _newPropertyAnimator];
    v5 = self->_propertyAnimator;
    self->_propertyAnimator = v4;

    propertyAnimator = self->_propertyAnimator;
  }

  return propertyAnimator;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:5];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSPointerArray *)observers addPointer:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  if (v6)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_observers pointerAtIndex:v5]!= v6)
        {
          if (++v5 >= [(NSPointerArray *)self->_observers count])
          {
            goto LABEL_9;
          }
        }

        [(NSPointerArray *)self->_observers removePointerAtIndex:v5];
      }
    }
  }

LABEL_9:
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v6 = 0;
        do
        {
          objc_initWeak(&location, self);
          v7 = [(NSPointerArray *)self->_observers pointerAtIndex:v6];
          v8 = objc_loadWeakRetained(&location);
          v4[2](v4, v8, v7);

          objc_destroyWeak(&location);
          ++v6;
        }

        while (v6 < [(NSPointerArray *)self->_observers count]);
      }
    }
  }
}

- (id)_newPropertyAnimator
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v3 = [objc_alloc(MEMORY[0x277D75A60]) initWithDampingRatio:1.0];
  v4 = [v2 initWithDuration:v3 timingParameters:0.3];

  return v4;
}

- (id)_presentingViewForPresentation:(BOOL)a3 withTransitionContext:(id)a4
{
  v4 = MEMORY[0x277D77238];
  if (!a3)
  {
    v4 = MEMORY[0x277D77248];
  }

  return [a4 viewForKey:*v4];
}

- (id)_presentedViewForPresentation:(BOOL)a3 withTransitionContext:(id)a4
{
  v4 = MEMORY[0x277D77248];
  if (!a3)
  {
    v4 = MEMORY[0x277D77238];
  }

  return [a4 viewForKey:*v4];
}

- (id)_sourceViewForPresentation:(BOOL)a3 withTransitionContext:(id)a4
{
  sourceView = self->_sourceView;
  if (sourceView)
  {
    v5 = sourceView;
  }

  else
  {
    v5 = [(PLViewControllerAnimator *)self _presentingViewForPresentation:a3 withTransitionContext:a4];
  }

  return v5;
}

- (id)_presentingViewControllerForPresentation:(BOOL)a3 withTransitionContext:(id)a4
{
  v4 = MEMORY[0x277D77230];
  if (!a3)
  {
    v4 = MEMORY[0x277D77240];
  }

  return [a4 viewControllerForKey:*v4];
}

- (id)_presentedViewControllerForPresentation:(BOOL)a3 withTransitionContext:(id)a4
{
  v4 = MEMORY[0x277D77240];
  if (!a3)
  {
    v4 = MEMORY[0x277D77230];
  }

  return [a4 viewControllerForKey:*v4];
}

- (id)_previewInteractionPresentableViewControllerForPresentation:(BOOL)a3 withTransitionContext:(id)a4
{
  v4 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:a3 withTransitionContext:a4];
  if ([v4 conformsToProtocol:&unk_2833BFFE8])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_presentedExpandedPlatterForPresentedView:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_2833AE9C0])
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 expandedPlatterView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)prepareForTransitionWithContext:(id)a3
{
  v4 = a3;
  self->_didPrepareForTransition = 1;
  if (self->_presenting)
  {
    v5 = [(PLViewControllerAnimator *)self _presentedViewForPresentation:1 withTransitionContext:v4];
    v6 = [(PLViewControllerAnimator *)self _presentedExpandedPlatterForPresentedView:v5];
    [v6 setClipsVisibleContentToBounds:1];
    v7 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:v4];
    v8 = [v7 expandedPlatterPresentationController];
    v9 = [v5 superview];
    [v8 initialFrameOfPresentedViewInContainerView];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v8 containerView];
    [v9 convertRect:v18 fromView:{v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v5 setFrame:{v20, v22, v24, v26}];
    [v5 layoutIfNeeded];
    if ([(PLViewControllerAnimator *)self includePresentingViewInAnimation])
    {
      memset(&v48, 0, sizeof(v48));
      if (v4)
      {
        [v4 targetTransform];
      }

      v47 = v48;
      if (CGAffineTransformIsIdentity(&v47))
      {
        v27 = *(MEMORY[0x277CBF2C0] + 16);
        *&v47.a = *MEMORY[0x277CBF2C0];
        *&v47.c = v27;
        v28 = *(MEMORY[0x277CBF2C0] + 32);
      }

      else
      {
        *&v47.a = *&v48.a;
        *&v47.c = *&v48.c;
        v28 = *&v48.tx;
      }

      *&v47.tx = v28;
      v46[0] = *&v47.a;
      v46[1] = *&v47.c;
      v46[2] = v28;
      [v5 setTransform:v46];
    }

    [v5 setAlpha:0.1];
    [v6 setActionsHidden:1];
LABEL_15:

    goto LABEL_16;
  }

  if ([(PLViewControllerAnimator *)self includePresentingViewInAnimation])
  {
    v5 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:v4];
    v6 = [v5 expandedPlatterPresentationController];
    [v6 finalPresentationFrameOfPresentingViewInContainerView];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(PLViewControllerAnimator *)self _previewInteractionPresentableViewControllerForPresentation:self->_presenting withTransitionContext:v4];
    v38 = [v37 presenter];
    v7 = [v38 viewForPreview];

    v39 = [v7 superview];
    v40 = [v6 containerView];
    [v39 convertRect:v40 fromView:{v30, v32, v34, v36}];
    [v7 setFrame:?];

    [v7 layoutIfNeeded];
    v8 = [v4 viewForKey:*MEMORY[0x277D77248]];
    v41 = [v8 superview];
    v42 = [v6 containerView];
    [v41 convertRect:v42 fromView:{v30, v32, v34, v36}];
    [v8 setFrame:?];

    memset(&v48, 0, sizeof(v48));
    if (v4)
    {
      [v4 targetTransform];
    }

    v47 = v48;
    if (!CGAffineTransformIsIdentity(&v47))
    {
      v47 = v48;
      [v8 setTransform:&v47];
    }

    goto LABEL_15;
  }

LABEL_16:
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __60__PLViewControllerAnimator_prepareForTransitionWithContext___block_invoke;
  v44[3] = &unk_2784254B8;
  v45 = v4;
  v43 = v4;
  [(PLViewControllerAnimator *)self _notifyObserversWithBlock:v44];
}

void __60__PLViewControllerAnimator_prepareForTransitionWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isPresenting] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 viewControllerAnimator:v6 willBeginPresentationAnimationWithTransitionContext:*(a1 + 32)];
  }

  else if ([v6 isPresenting] & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [v5 viewControllerAnimator:v6 willBeginDismissalAnimationWithTransitionContext:*(a1 + 32)];
  }
}

- (void)performTransitionWithContext:(id)a3
{
  v6 = a3;
  [(PLViewControllerAnimator *)self _performTransitionWithContext:?];
  if (self->_runAlongsideAnimationsManually && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 __runAlongsideAnimations];
  }

  v4 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:v6];
  v5 = [v4 expandedPlatterPresentationController];
  [v5 completeDismissal];
}

- (void)_performTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 viewForKey:*MEMORY[0x277D77248]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
    v7 = [v8 view];
  }

  v9 = [v4 viewForKey:*MEMORY[0x277D77238]];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
    v11 = [v12 view];
  }

  [v7 _removeAllAnimations:1];
  v13 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:v4];
  v14 = [v13 expandedPlatterPresentationController];
  v15 = v14;
  if (self->_presenting)
  {
    [v14 finalPresentationFrameOfPresentingViewInContainerView];
  }

  else
  {
    [v14 finalDismissalFrameOfPresentingViewInContainerView];
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  if (self->_presenting)
  {
    [v15 frameOfPresentedViewInContainerView];
  }

  else
  {
    [v15 initialFrameOfPresentedViewInContainerView];
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v58 = v11;
  v59 = v7;
  if (self->_presenting)
  {
    v32 = v11;
  }

  else
  {
    v32 = v7;
  }

  v33 = v32;
  v34 = [(PLViewControllerAnimator *)self _previewInteractionPresentableViewControllerForPresentation:self->_presenting withTransitionContext:v4];
  v35 = [v34 presenter];
  v36 = [v35 viewForPreview];

  v37 = [v13 view];
  v38 = [v37 superview];
  v39 = [v15 containerView];
  [v38 convertRect:v39 fromView:{v28, v29, v30, v31}];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = [(PLViewControllerAnimator *)self _presentedExpandedPlatterForPresentedView:v37];
  v49 = [(PLViewControllerAnimator *)self includePresentingViewInAnimation];
  v50 = MEMORY[0x277CBF2C0];
  if (v49)
  {
    v57 = v13;
    v51 = [v36 superview];
    v52 = [v15 containerView];
    [v51 convertRect:v52 fromView:{v20, v21, v22, v23}];
    [v36 setFrame:?];

    [v36 layoutIfNeeded];
    if (self->_presenting)
    {
      v53 = v50[1];
      v60 = *v50;
      v61 = v53;
      v62 = v50[2];
      [v33 setTransform:&v60];
    }

    v54 = [v33 superview];
    v55 = [v15 containerView];
    [v54 convertRect:v55 fromView:{v20, v21, v22, v23}];
    [v33 setFrame:?];

    [v33 layoutIfNeeded];
    v13 = v57;
  }

  [v48 setClipsVisibleContentToBounds:!self->_presenting];
  v56 = v50[1];
  v60 = *v50;
  v61 = v56;
  v62 = v50[2];
  [v37 setTransform:&v60];
  [v37 setFrame:{v41, v43, v45, v47}];
  [v37 layoutIfNeeded];
  [v48 setActionsHidden:!self->_presenting];
  [v59 setAlpha:1.0];
  [v58 setAlpha:0.0];
}

- (void)_animateTransitionWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLViewControllerAnimator *)self propertyAnimator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__PLViewControllerAnimator__animateTransitionWithContext_completion___block_invoke;
  v12[3] = &unk_2784254E0;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  [v8 addAnimations:v12];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__PLViewControllerAnimator__animateTransitionWithContext_completion___block_invoke_2;
    v10[3] = &unk_278425508;
    v11 = v7;
    [v8 addCompletion:v10];
  }

  [v8 startAnimation];
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  if (!self->_didPrepareForTransition)
  {
    [(PLViewControllerAnimator *)self prepareForTransitionWithContext:v4];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PLViewControllerAnimator_animateTransition___block_invoke;
  v6[3] = &unk_278425150;
  v7 = v4;
  v5 = v4;
  [(PLViewControllerAnimator *)self _animateTransitionWithContext:v5 completion:v6];
}

@end