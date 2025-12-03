@interface NCLongLookTransitioningDelegate
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)viewControllerAnimator:(id)animator willBeginDismissalAnimationWithTransitionContext:(id)context;
- (void)viewControllerAnimator:(id)animator willBeginPresentationAnimationWithTransitionContext:(id)context;
@end

@implementation NCLongLookTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  _presentationController = [(PLExpandedPlatterTransitioningDelegate *)self _presentationController];

  if (!_presentationController)
  {
    pl_containingClickPresentationInteractionPresentingViewController = [sourceViewControllerCopy pl_containingClickPresentationInteractionPresentingViewController];
    viewForPreview = [pl_containingClickPresentationInteractionPresentingViewController viewForPreview];
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        presenter = [controllerCopy presenter];
      }

      else
      {
        presenter = 0;
      }

      v15 = objc_opt_respondsToSelector();
      v16 = presenter;
      if (v15 & 1) != 0 || (v17 = objc_opt_respondsToSelector(), v16 = controllerCopy, (v17))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      [controllerCopy setDismisser:v18];
    }

    v19 = [[NCLongLookDefaultPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy sourceViewController:sourceViewControllerCopy sourceView:viewForPreview];
    [(PLExpandedPlatterTransitioningDelegate *)self _setPresentationController:v19];
  }

  _presentationController2 = [(PLExpandedPlatterTransitioningDelegate *)self _presentationController];

  return _presentationController2;
}

- (void)viewControllerAnimator:(id)animator willBeginPresentationAnimationWithTransitionContext:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  if ([+[NCLongLookTransitioningDelegate superclass](NCLongLookTransitioningDelegate "superclass")])
  {
    v12.receiver = self;
    v12.super_class = NCLongLookTransitioningDelegate;
    [(PLExpandedPlatterTransitioningDelegate *)&v12 viewControllerAnimator:animatorCopy willBeginPresentationAnimationWithTransitionContext:contextCopy];
  }

  v8 = [contextCopy viewControllerForKey:*MEMORY[0x277D77240]];
  transitionCoordinator = [v8 transitionCoordinator];
  [transitionCoordinator animateAlongsideTransition:0 completion:&__block_literal_global_39];

  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
  v10 = *MEMORY[0x277D77DB0];
  if (os_signpost_enabled(*MEMORY[0x277D77DB0]))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NC_LONG_LOOK_PRESENTATION_BEGIN", " enableTelemetry=YES ", v11, 2u);
  }

  kdebug_trace();
}

uint64_t __110__NCLongLookTransitioningDelegate_viewControllerAnimator_willBeginPresentationAnimationWithTransitionContext___block_invoke()
{
  v0 = *MEMORY[0x277D77DB0];
  if (os_signpost_enabled(*MEMORY[0x277D77DB0]))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NC_LONG_LOOK_PRESENTATION_END", " enableTelemetry=YES ", v2, 2u);
  }

  return kdebug_trace();
}

- (void)viewControllerAnimator:(id)animator willBeginDismissalAnimationWithTransitionContext:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  if ([+[NCLongLookTransitioningDelegate superclass](NCLongLookTransitioningDelegate "superclass")])
  {
    v12.receiver = self;
    v12.super_class = NCLongLookTransitioningDelegate;
    [(PLExpandedPlatterTransitioningDelegate *)&v12 viewControllerAnimator:animatorCopy willBeginDismissalAnimationWithTransitionContext:contextCopy];
  }

  v8 = [contextCopy viewControllerForKey:*MEMORY[0x277D77240]];
  transitionCoordinator = [v8 transitionCoordinator];
  [transitionCoordinator animateAlongsideTransition:0 completion:&__block_literal_global_12_1];

  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
  v10 = *MEMORY[0x277D77DB0];
  if (os_signpost_enabled(*MEMORY[0x277D77DB0]))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NC_LONG_LOOK_DISMISSAL_BEGIN", " enableTelemetry=YES ", v11, 2u);
  }

  kdebug_trace();
}

uint64_t __107__NCLongLookTransitioningDelegate_viewControllerAnimator_willBeginDismissalAnimationWithTransitionContext___block_invoke()
{
  v0 = *MEMORY[0x277D77DB0];
  if (os_signpost_enabled(*MEMORY[0x277D77DB0]))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_21E77E000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NC_LONG_LOOK_DISMISSAL_END", " enableTelemetry=YES ", v2, 2u);
  }

  return kdebug_trace();
}

@end