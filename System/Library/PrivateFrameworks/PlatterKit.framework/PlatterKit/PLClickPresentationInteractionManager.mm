@interface PLClickPresentationInteractionManager
+ (void)initialize;
- (BOOL)_delegateShouldAllowLongPressGesture;
- (BOOL)_delegateShouldBeginInteractionWithTouchAtLocation:(CGPoint)location;
- (BOOL)_dismissIfPossibleWithTrigger:(int64_t)trigger;
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (BOOL)dismissIfPossible:(id)possible;
- (BOOL)hasCommittedToPresentation;
- (BOOL)presentIfPossible:(id)possible;
- (PLClickPresentationInteractionManager)initWithPresentingViewController:(id)controller delegate:(id)delegate;
- (PLClickPresentationInteractionManagerDelegate)delegate;
- (PLClickPresentationInteractionPresentable)presentedViewController;
- (id)_delegateContainerView;
- (id)_delegatePresentedViewController;
- (id)_delegateTransitioningDelegate;
- (id)_presentedViewController;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (unint64_t)activationStyleForClickPresentationInteraction:(id)interaction;
- (void)_clickInteractionDidEnd;
- (void)_clickPresentationTransitionDidDismiss:(BOOL)dismiss;
- (void)_clickPresentationTransitionDidPresent:(BOOL)present;
- (void)_delegateDeclinedDismissingPresentedContentWithTrigger:(int64_t)trigger;
- (void)_delegateDidEndUserInteraction;
- (void)_delegateShouldFinishInteractionThatReachedForceThreshold:(BOOL)threshold withCompletionBlock:(id)block;
- (void)_delegateWillBeginUserInteraction;
- (void)_delegateWillDismissPresentedContentWithTrigger:(int64_t)trigger;
- (void)_setPresentingViewControllerHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)resetForInitialInteraction;
- (void)setDelegate:(id)delegate;
@end

@implementation PLClickPresentationInteractionManager

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    PLRegisterPlatterKitLogging();
  }
}

- (PLClickPresentationInteractionManager)initWithPresentingViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PLClickPresentationInteractionManager;
  v8 = [(PLClickPresentationInteractionManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, controllerCopy);
    [(PLClickPresentationInteractionManager *)v9 setDelegate:delegateCopy];
    v10 = [objc_alloc(MEMORY[0x277D75E40]) initWithDelegate:v9];
    clickPresentationInteraction = v9->_clickPresentationInteraction;
    v9->_clickPresentationInteraction = v10;

    viewForPreview = [controllerCopy viewForPreview];
    [viewForPreview addInteraction:v9->_clickPresentationInteraction];
  }

  return v9;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_clickPresentationInteractionManagerDelegateFlags = *&self->_clickPresentationInteractionManagerDelegateFlags & 0xFEFF | v12;
  }
}

- (BOOL)hasCommittedToPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);
  v4 = WeakRetained;
  if (self->_willPresent)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    presentingViewController = [WeakRetained presentingViewController];
    if (presentingViewController)
    {
      v5 = [v4 isBeingDismissed] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)presentIfPossible:(id)possible
{
  possibleCopy = possible;
  hasCommittedToPresentation = [(PLClickPresentationInteractionManager *)self hasCommittedToPresentation];
  if (!hasCommittedToPresentation)
  {
    self->_didInteractionInitiateWithHint = 0;
    v6 = [possibleCopy copy];
    presentationCompletion = self->_presentationCompletion;
    self->_presentationCompletion = v6;

    [(_UIClickPresentationInteraction *)self->_clickPresentationInteraction present];
  }

  return !hasCommittedToPresentation;
}

- (BOOL)dismissIfPossible:(id)possible
{
  possibleCopy = possible;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  presentedViewController = [WeakRetained presentedViewController];

  v7 = !self->_didPresent || presentedViewController == 0;
  if (v7 || ([presentedViewController isBeingDismissed] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    self->_didPresent = 0;
    v9 = [possibleCopy copy];
    dismissalCompletion = self->_dismissalCompletion;
    self->_dismissalCompletion = v9;

    [(_UIClickPresentationInteraction *)self->_clickPresentationInteraction cancelInteraction];
    objc_storeWeak(&self->_presentedViewController, 0);
    v8 = 1;
  }

  return v8;
}

- (void)_clickPresentationTransitionDidPresent:(BOOL)present
{
  presentCopy = present;
  self->_willPresent = 0;
  *&self->_clickPresentationInteractionManagerDelegateFlags &= ~0x200u;
  [(PLClickPresentationInteractionManager *)self _setPresentingViewControllerHighlighted:0 animated:0];
  if (presentCopy)
  {
    self->_didPresent = 1;
    v7 = MEMORY[0x223D70F60](self->_presentationCompletion);
    presentationCompletion = self->_presentationCompletion;
    self->_presentationCompletion = 0;

    v6 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7);
      v6 = v7;
    }
  }
}

- (void)_clickInteractionDidEnd
{
  self->_didPresent = 0;
  *&self->_didInteractionInitiateWithHint = 0;
  if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 0x20) != 0)
  {
    [(PLClickPresentationInteractionManager *)self _delegateDidEndUserInteraction];
  }

  v5 = MEMORY[0x223D70F60](self->_dismissalCompletion, a2);
  dismissalCompletion = self->_dismissalCompletion;
  self->_dismissalCompletion = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v4 = v5;
  }
}

- (void)_clickPresentationTransitionDidDismiss:(BOOL)dismiss
{
  if (dismiss)
  {
    [(PLClickPresentationInteractionManager *)self _clickInteractionDidEnd];
  }
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  if ([WeakRetained isBeingDismissed])
  {
    goto LABEL_2;
  }

  view = [WeakRetained view];
  window = [view window];
  v5 = window;
  if (!window)
  {
    goto LABEL_15;
  }

  if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 4) == 0)
  {

LABEL_7:
    view = [(PLClickPresentationInteractionManager *)self _presentedViewController];
    if (view)
    {
      if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 0x10) != 0)
      {
        [(PLClickPresentationInteractionManager *)self _delegateWillBeginUserInteraction];
      }

      presentedViewController = [WeakRetained presentedViewController];
      if (!presentedViewController)
      {
        LOBYTE(v5) = 1;
        goto LABEL_15;
      }

      presentedViewController2 = presentedViewController;
      LOBYTE(v5) = [presentedViewController isBeingDismissed];
    }

    else
    {
      presentedViewController2 = [WeakRetained presentedViewController];
      LOBYTE(v5) = 0;
    }

LABEL_15:
    goto LABEL_16;
  }

  clickPresentationInteraction = self->_clickPresentationInteraction;
  viewForPreview = [WeakRetained viewForPreview];
  [(_UIClickPresentationInteraction *)clickPresentationInteraction locationInView:viewForPreview];
  LODWORD(clickPresentationInteraction) = [(PLClickPresentationInteractionManager *)self _delegateShouldBeginInteractionWithTouchAtLocation:?];

  if (clickPresentationInteraction)
  {
    goto LABEL_7;
  }

LABEL_2:
  LOBYTE(v5) = 0;
LABEL_16:
  self->_didInteractionInitiateWithHint = 1;

  return v5;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  v16 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  _presentedViewController = [(PLClickPresentationInteractionManager *)self _presentedViewController];
  if (!_presentedViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    v8 = PLLogTransition;
    if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = WeakRetained;
      _os_log_impl(&dword_21FDE2000, v8, OS_LOG_TYPE_DEFAULT, "No view controller to present from presenting view controller %{public}@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 0x208) == 8)
  {
LABEL_7:
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__PLClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke;
    block[3] = &unk_278425620;
    objc_copyWeak(&v13, buf);
    v11 = presentCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    v6 = 0;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

void __83__PLClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) _reachedForceThreshold];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__PLClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke_2;
  v6[3] = &unk_2784255F8;
  v6[4] = WeakRetained;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [WeakRetained _delegateShouldFinishInteractionThatReachedForceThreshold:v3 withCompletionBlock:v6];
}

uint64_t __83__PLClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke_2(id *a1, int a2)
{
  v4 = [a1[4] presentedViewController];

  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    [a1[5] cancelInteraction];
    [a1[6] _setPresentingViewControllerHighlighted:0 animated:1];
    v6 = a1[6];

    return [v6 _clickInteractionDidEnd];
  }

  else
  {
    *(a1[4] + 28) |= 0x200u;
    v8 = a1[5];

    return [v8 present];
  }
}

- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller
{
  v32 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  controllerCopy = controller;
  self->_willPresent = 1;
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);
  if (!WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_presentingViewController);
    v10 = PLLogTransition;
    if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v9;
      _os_log_impl(&dword_21FDE2000, v10, OS_LOG_TYPE_DEFAULT, "No view controller to present from presenting view controller %{public}@", buf, 0xCu);
    }
  }

  if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 2) != 0)
  {
    _delegateTransitioningDelegate = [(PLClickPresentationInteractionManager *)self _delegateTransitioningDelegate];
  }

  else
  {
    _delegateTransitioningDelegate = objc_alloc_init(PLExpandedPlatterTransitioningDelegate);
  }

  v12 = _delegateTransitioningDelegate;
  v13 = objc_alloc(MEMORY[0x277D75E38]);
  v14 = [(PLExpandedPlatterTransitioningDelegate *)v12 presentationControllerForPresentedViewController:WeakRetained presentingViewController:controllerCopy sourceViewController:controllerCopy];
  v15 = [v13 initWithPresentedViewController:WeakRetained presentationController:v14];

  objc_storeWeak(&self->_clickPresentation, v15);
  if (*&self->_clickPresentationInteractionManagerDelegateFlags)
  {
    _delegateContainerView = [(PLClickPresentationInteractionManager *)self _delegateContainerView];
    if (_delegateContainerView)
    {
      [v15 setCustomContainerView:_delegateContainerView];
    }
  }

  objc_initWeak(buf, self);
  v17 = [PLClickPresentationPresentationTransition alloc];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __110__PLClickPresentationInteractionManager_clickPresentationInteraction_presentationForPresentingViewController___block_invoke;
  v28[3] = &unk_278425268;
  objc_copyWeak(&v29, buf);
  v18 = [(PLClickPresentationPresentationTransition *)v17 initWithTransitionDelegate:v12 presentingViewController:controllerCopy presentedViewController:WeakRetained completion:v28];
  [(PLClickPresentationTransition *)v18 setPropagatesPresentingViewTransform:[(PLClickPresentationInteractionManager *)self didInteractionInitiateWithHint]];
  [v15 setAppearanceTransition:v18];
  v19 = [PLClickPresentationDismissalTransition alloc];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __110__PLClickPresentationInteractionManager_clickPresentationInteraction_presentationForPresentingViewController___block_invoke_2;
  v26 = &unk_278425268;
  objc_copyWeak(&v27, buf);
  v20 = [(PLClickPresentationDismissalTransition *)v19 initWithTransitionDelegate:v12 presentingViewController:controllerCopy presentedViewController:WeakRetained completion:&v23];
  [(PLClickPresentationDismissalTransition *)v20 setPresentationTransition:v18, v23, v24, v25, v26];
  [v15 setDisappearanceTransition:v20];
  [WeakRetained loadViewIfNeeded];
  if (objc_opt_respondsToSelector())
  {
    viewForTouchContinuation = [WeakRetained viewForTouchContinuation];
    [v15 setCustomViewForTouchContinuation:viewForTouchContinuation];
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  return v15;
}

void __110__PLClickPresentationInteractionManager_clickPresentationInteraction_presentationForPresentingViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clickPresentationTransitionDidPresent:a2];
}

void __110__PLClickPresentationInteractionManager_clickPresentationInteraction_presentationForPresentingViewController___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clickPresentationTransitionDidDismiss:a2];
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  viewForPreview = [WeakRetained viewForPreview];

  [(PLClickPresentationInteractionManager *)self _setPresentingViewControllerHighlighted:1 animated:1];
  v7 = [objc_alloc(MEMORY[0x277D76350]) initWithView:viewForPreview];

  return v7;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  [(PLClickPresentationInteractionManager *)self _setPresentingViewControllerHighlighted:0 animated:1];

  [(PLClickPresentationInteractionManager *)self _clickInteractionDidEnd];
}

- (unint64_t)activationStyleForClickPresentationInteraction:(id)interaction
{
  if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 0x100) != 0)
  {
    return [(PLClickPresentationInteractionManager *)self _delegateShouldAllowLongPressGesture:interaction]^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);
  if (!WeakRetained)
  {
    WeakRetained = [(PLClickPresentationInteractionManager *)self _delegatePresentedViewController];
    objc_storeWeak(&self->_presentedViewController, WeakRetained);
  }

  return WeakRetained;
}

- (void)_setPresentingViewControllerHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  if (objc_opt_respondsToSelector())
  {
    if (animatedCopy)
    {
      newDefaultHighlightAnimator = [MEMORY[0x277D26718] newDefaultHighlightAnimator];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __90__PLClickPresentationInteractionManager__setPresentingViewControllerHighlighted_animated___block_invoke;
      v11 = &unk_278425100;
      v12 = WeakRetained;
      v13 = highlightedCopy;
      [newDefaultHighlightAnimator addAnimations:&v8];
      [newDefaultHighlightAnimator startAnimation];
    }

    else
    {
      [WeakRetained setHighlighted:highlightedCopy];
    }
  }
}

- (BOOL)_delegateShouldAllowLongPressGesture
{
  if ((*&self->_clickPresentationInteractionManagerDelegateFlags & 0x100) == 0)
  {
    return 0;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained clickPresentationInteractionManagerShouldAllowLongPressGesture:selfCopy];

  return selfCopy;
}

- (PLClickPresentationInteractionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PLClickPresentationInteractionPresentable)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (id)_delegatePresentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained presentedViewControllerForClickPresentationInteractionManager:self];

  return v4;
}

- (id)_delegateTransitioningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained transitioningDelegateForClickPresentationInteractionManager:self];

  return v4;
}

- (id)_delegateContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained containerViewForClickPresentationInteractionManager:self];

  return v4;
}

- (BOOL)_delegateShouldBeginInteractionWithTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained clickPresentationInteractionManager:selfCopy shouldBeginInteractionWithTouchAtLocation:{x, y}];

  return selfCopy;
}

- (void)_delegateWillBeginUserInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clickPresentationInteractionManagerWillBeginUserInteraction:self];
}

- (void)_delegateDidEndUserInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clickPresentationInteractionManagerDidEndUserInteraction:self];
}

- (void)_delegateShouldFinishInteractionThatReachedForceThreshold:(BOOL)threshold withCompletionBlock:(id)block
{
  thresholdCopy = threshold;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clickPresentationInteractionManager:self shouldFinishInteractionThatReachedForceThreshold:thresholdCopy withCompletionBlock:blockCopy];
}

- (void)_delegateWillDismissPresentedContentWithTrigger:(int64_t)trigger
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clickPresentationInteractionManager:self willDismissPresentedContentWithTrigger:trigger];
}

- (void)_delegateDeclinedDismissingPresentedContentWithTrigger:(int64_t)trigger
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clickPresentationInteractionManager:self declinedDismissingPresentedContentWithTrigger:trigger];
}

- (BOOL)_dismissIfPossibleWithTrigger:(int64_t)trigger
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = PLLogTransition;
  if (os_log_type_enabled(PLLogTransition, OS_LOG_TYPE_DEFAULT))
  {
    if (trigger > 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_278425640[trigger];
    }

    *v11 = 138543362;
    *&v11[4] = v6;
    v7 = v5;
    _os_log_impl(&dword_21FDE2000, v7, OS_LOG_TYPE_DEFAULT, "Asked to dismiss presented content with trigger '%{public}@'", v11, 0xCu);
  }

  v8 = [(PLClickPresentationInteractionManager *)self dismissIfPossible:0, *v11];
  clickPresentationInteractionManagerDelegateFlags = self->_clickPresentationInteractionManagerDelegateFlags;
  if (v8)
  {
    if ((clickPresentationInteractionManagerDelegateFlags & 0x40) != 0)
    {
      [(PLClickPresentationInteractionManager *)self _delegateWillDismissPresentedContentWithTrigger:trigger];
    }
  }

  else if ((clickPresentationInteractionManagerDelegateFlags & 0x80) != 0)
  {
    [(PLClickPresentationInteractionManager *)self _delegateDeclinedDismissingPresentedContentWithTrigger:trigger];
  }

  return v8;
}

- (void)resetForInitialInteraction
{
  self->_didPresent = 0;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [(_UIClickPresentationInteraction *)self->_clickPresentationInteraction cancelInteraction];
    WeakRetained = v7;
    if (!self->_clickPresentationInteraction)
    {
      v4 = [objc_alloc(MEMORY[0x277D75E40]) initWithDelegate:self];
      clickPresentationInteraction = self->_clickPresentationInteraction;
      self->_clickPresentationInteraction = v4;

      viewForPreview = [v7 viewForPreview];
      [viewForPreview addInteraction:self->_clickPresentationInteraction];

      WeakRetained = v7;
    }
  }
}

@end