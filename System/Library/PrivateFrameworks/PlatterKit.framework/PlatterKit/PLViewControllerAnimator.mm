@interface PLViewControllerAnimator
- (UIViewPropertyAnimator)propertyAnimator;
- (id)_newPropertyAnimator;
- (id)_presentedExpandedPlatterForPresentedView:(id)view;
- (id)_presentedViewControllerForPresentation:(BOOL)presentation withTransitionContext:(id)context;
- (id)_presentedViewForPresentation:(BOOL)presentation withTransitionContext:(id)context;
- (id)_presentingViewControllerForPresentation:(BOOL)presentation withTransitionContext:(id)context;
- (id)_presentingViewForPresentation:(BOOL)presentation withTransitionContext:(id)context;
- (id)_previewInteractionPresentableViewControllerForPresentation:(BOOL)presentation withTransitionContext:(id)context;
- (id)_sourceViewForPresentation:(BOOL)presentation withTransitionContext:(id)context;
- (id)initForPresentation:(BOOL)presentation withSourceView:(id)view;
- (void)_animateTransitionWithContext:(id)context completion:(id)completion;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_performTransitionWithContext:(id)context;
- (void)addObserver:(id)observer;
- (void)animateTransition:(id)transition;
- (void)performTransitionWithContext:(id)context;
- (void)prepareForTransitionWithContext:(id)context;
- (void)removeObserver:(id)observer;
@end

@implementation PLViewControllerAnimator

- (id)initForPresentation:(BOOL)presentation withSourceView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PLViewControllerAnimator;
  v8 = [(PLViewControllerAnimator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_presenting = presentation;
    objc_storeStrong(&v8->_sourceView, view);
  }

  return v9;
}

- (UIViewPropertyAnimator)propertyAnimator
{
  propertyAnimator = self->_propertyAnimator;
  if (!propertyAnimator)
  {
    _newPropertyAnimator = [(PLViewControllerAnimator *)self _newPropertyAnimator];
    v5 = self->_propertyAnimator;
    self->_propertyAnimator = _newPropertyAnimator;

    propertyAnimator = self->_propertyAnimator;
  }

  return propertyAnimator;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
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

    observerCopy = [(NSPointerArray *)observers addPointer:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](observerCopy, v5);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_observers pointerAtIndex:v5]!= observerCopy)
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

- (void)_notifyObserversWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
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
          blockCopy[2](blockCopy, v8, v7);

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

- (id)_presentingViewForPresentation:(BOOL)presentation withTransitionContext:(id)context
{
  v4 = MEMORY[0x277D77238];
  if (!presentation)
  {
    v4 = MEMORY[0x277D77248];
  }

  return [context viewForKey:*v4];
}

- (id)_presentedViewForPresentation:(BOOL)presentation withTransitionContext:(id)context
{
  v4 = MEMORY[0x277D77248];
  if (!presentation)
  {
    v4 = MEMORY[0x277D77238];
  }

  return [context viewForKey:*v4];
}

- (id)_sourceViewForPresentation:(BOOL)presentation withTransitionContext:(id)context
{
  sourceView = self->_sourceView;
  if (sourceView)
  {
    v5 = sourceView;
  }

  else
  {
    v5 = [(PLViewControllerAnimator *)self _presentingViewForPresentation:presentation withTransitionContext:context];
  }

  return v5;
}

- (id)_presentingViewControllerForPresentation:(BOOL)presentation withTransitionContext:(id)context
{
  v4 = MEMORY[0x277D77230];
  if (!presentation)
  {
    v4 = MEMORY[0x277D77240];
  }

  return [context viewControllerForKey:*v4];
}

- (id)_presentedViewControllerForPresentation:(BOOL)presentation withTransitionContext:(id)context
{
  v4 = MEMORY[0x277D77240];
  if (!presentation)
  {
    v4 = MEMORY[0x277D77230];
  }

  return [context viewControllerForKey:*v4];
}

- (id)_previewInteractionPresentableViewControllerForPresentation:(BOOL)presentation withTransitionContext:(id)context
{
  v4 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:presentation withTransitionContext:context];
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

- (id)_presentedExpandedPlatterForPresentedView:(id)view
{
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&unk_2833AE9C0])
  {
    expandedPlatterView = viewCopy;
LABEL_5:
    v5 = expandedPlatterView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    expandedPlatterView = [viewCopy expandedPlatterView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)prepareForTransitionWithContext:(id)context
{
  contextCopy = context;
  self->_didPrepareForTransition = 1;
  if (self->_presenting)
  {
    v5 = [(PLViewControllerAnimator *)self _presentedViewForPresentation:1 withTransitionContext:contextCopy];
    expandedPlatterPresentationController2 = [(PLViewControllerAnimator *)self _presentedExpandedPlatterForPresentedView:v5];
    [expandedPlatterPresentationController2 setClipsVisibleContentToBounds:1];
    viewForPreview = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:contextCopy];
    expandedPlatterPresentationController = [viewForPreview expandedPlatterPresentationController];
    superview = [v5 superview];
    [expandedPlatterPresentationController initialFrameOfPresentedViewInContainerView];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    containerView = [expandedPlatterPresentationController containerView];
    [superview convertRect:containerView fromView:{v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v5 setFrame:{v20, v22, v24, v26}];
    [v5 layoutIfNeeded];
    if ([(PLViewControllerAnimator *)self includePresentingViewInAnimation])
    {
      memset(&v48, 0, sizeof(v48));
      if (contextCopy)
      {
        [contextCopy targetTransform];
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
    [expandedPlatterPresentationController2 setActionsHidden:1];
LABEL_15:

    goto LABEL_16;
  }

  if ([(PLViewControllerAnimator *)self includePresentingViewInAnimation])
  {
    v5 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:contextCopy];
    expandedPlatterPresentationController2 = [v5 expandedPlatterPresentationController];
    [expandedPlatterPresentationController2 finalPresentationFrameOfPresentingViewInContainerView];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(PLViewControllerAnimator *)self _previewInteractionPresentableViewControllerForPresentation:self->_presenting withTransitionContext:contextCopy];
    presenter = [v37 presenter];
    viewForPreview = [presenter viewForPreview];

    superview2 = [viewForPreview superview];
    containerView2 = [expandedPlatterPresentationController2 containerView];
    [superview2 convertRect:containerView2 fromView:{v30, v32, v34, v36}];
    [viewForPreview setFrame:?];

    [viewForPreview layoutIfNeeded];
    expandedPlatterPresentationController = [contextCopy viewForKey:*MEMORY[0x277D77248]];
    superview3 = [expandedPlatterPresentationController superview];
    containerView3 = [expandedPlatterPresentationController2 containerView];
    [superview3 convertRect:containerView3 fromView:{v30, v32, v34, v36}];
    [expandedPlatterPresentationController setFrame:?];

    memset(&v48, 0, sizeof(v48));
    if (contextCopy)
    {
      [contextCopy targetTransform];
    }

    v47 = v48;
    if (!CGAffineTransformIsIdentity(&v47))
    {
      v47 = v48;
      [expandedPlatterPresentationController setTransform:&v47];
    }

    goto LABEL_15;
  }

LABEL_16:
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __60__PLViewControllerAnimator_prepareForTransitionWithContext___block_invoke;
  v44[3] = &unk_2784254B8;
  v45 = contextCopy;
  v43 = contextCopy;
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

- (void)performTransitionWithContext:(id)context
{
  contextCopy = context;
  [(PLViewControllerAnimator *)self _performTransitionWithContext:?];
  if (self->_runAlongsideAnimationsManually && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [contextCopy __runAlongsideAnimations];
  }

  v4 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:contextCopy];
  expandedPlatterPresentationController = [v4 expandedPlatterPresentationController];
  [expandedPlatterPresentationController completeDismissal];
}

- (void)_performTransitionWithContext:(id)context
{
  contextCopy = context;
  v5 = [contextCopy viewForKey:*MEMORY[0x277D77248]];
  v6 = v5;
  if (v5)
  {
    view = v5;
  }

  else
  {
    v8 = [contextCopy viewControllerForKey:*MEMORY[0x277D77240]];
    view = [v8 view];
  }

  v9 = [contextCopy viewForKey:*MEMORY[0x277D77238]];
  v10 = v9;
  if (v9)
  {
    view2 = v9;
  }

  else
  {
    v12 = [contextCopy viewControllerForKey:*MEMORY[0x277D77230]];
    view2 = [v12 view];
  }

  [view _removeAllAnimations:1];
  v13 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:self->_presenting withTransitionContext:contextCopy];
  expandedPlatterPresentationController = [v13 expandedPlatterPresentationController];
  v15 = expandedPlatterPresentationController;
  if (self->_presenting)
  {
    [expandedPlatterPresentationController finalPresentationFrameOfPresentingViewInContainerView];
  }

  else
  {
    [expandedPlatterPresentationController finalDismissalFrameOfPresentingViewInContainerView];
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
  v58 = view2;
  v59 = view;
  if (self->_presenting)
  {
    v32 = view2;
  }

  else
  {
    v32 = view;
  }

  v33 = v32;
  v34 = [(PLViewControllerAnimator *)self _previewInteractionPresentableViewControllerForPresentation:self->_presenting withTransitionContext:contextCopy];
  presenter = [v34 presenter];
  viewForPreview = [presenter viewForPreview];

  view3 = [v13 view];
  superview = [view3 superview];
  containerView = [v15 containerView];
  [superview convertRect:containerView fromView:{v28, v29, v30, v31}];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = [(PLViewControllerAnimator *)self _presentedExpandedPlatterForPresentedView:view3];
  includePresentingViewInAnimation = [(PLViewControllerAnimator *)self includePresentingViewInAnimation];
  v50 = MEMORY[0x277CBF2C0];
  if (includePresentingViewInAnimation)
  {
    v57 = v13;
    superview2 = [viewForPreview superview];
    containerView2 = [v15 containerView];
    [superview2 convertRect:containerView2 fromView:{v20, v21, v22, v23}];
    [viewForPreview setFrame:?];

    [viewForPreview layoutIfNeeded];
    if (self->_presenting)
    {
      v53 = v50[1];
      v60 = *v50;
      v61 = v53;
      v62 = v50[2];
      [v33 setTransform:&v60];
    }

    superview3 = [v33 superview];
    containerView3 = [v15 containerView];
    [superview3 convertRect:containerView3 fromView:{v20, v21, v22, v23}];
    [v33 setFrame:?];

    [v33 layoutIfNeeded];
    v13 = v57;
  }

  [v48 setClipsVisibleContentToBounds:!self->_presenting];
  v56 = v50[1];
  v60 = *v50;
  v61 = v56;
  v62 = v50[2];
  [view3 setTransform:&v60];
  [view3 setFrame:{v41, v43, v45, v47}];
  [view3 layoutIfNeeded];
  [v48 setActionsHidden:!self->_presenting];
  [v59 setAlpha:1.0];
  [v58 setAlpha:0.0];
}

- (void)_animateTransitionWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  propertyAnimator = [(PLViewControllerAnimator *)self propertyAnimator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__PLViewControllerAnimator__animateTransitionWithContext_completion___block_invoke;
  v12[3] = &unk_2784254E0;
  v12[4] = self;
  v9 = contextCopy;
  v13 = v9;
  [propertyAnimator addAnimations:v12];
  if (completionCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__PLViewControllerAnimator__animateTransitionWithContext_completion___block_invoke_2;
    v10[3] = &unk_278425508;
    v11 = completionCopy;
    [propertyAnimator addCompletion:v10];
  }

  [propertyAnimator startAnimation];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if (!self->_didPrepareForTransition)
  {
    [(PLViewControllerAnimator *)self prepareForTransitionWithContext:transitionCopy];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PLViewControllerAnimator_animateTransition___block_invoke;
  v6[3] = &unk_278425150;
  v7 = transitionCopy;
  v5 = transitionCopy;
  [(PLViewControllerAnimator *)self _animateTransitionWithContext:v5 completion:v6];
}

@end