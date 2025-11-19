@interface NCLongLookTransitioningDelegate
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)viewControllerAnimator:(id)a3 willBeginDismissalAnimationWithTransitionContext:(id)a4;
- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4;
@end

@implementation NCLongLookTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLExpandedPlatterTransitioningDelegate *)self _presentationController];

  if (!v11)
  {
    v12 = [v10 pl_containingClickPresentationInteractionPresentingViewController];
    v13 = [v12 viewForPreview];
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [v8 presenter];
      }

      else
      {
        v14 = 0;
      }

      v15 = objc_opt_respondsToSelector();
      v16 = v14;
      if (v15 & 1) != 0 || (v17 = objc_opt_respondsToSelector(), v16 = v8, (v17))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      [v8 setDismisser:v18];
    }

    v19 = [[NCLongLookDefaultPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9 sourceViewController:v10 sourceView:v13];
    [(PLExpandedPlatterTransitioningDelegate *)self _setPresentationController:v19];
  }

  v20 = [(PLExpandedPlatterTransitioningDelegate *)self _presentationController];

  return v20;
}

- (void)viewControllerAnimator:(id)a3 willBeginPresentationAnimationWithTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([+[NCLongLookTransitioningDelegate superclass](NCLongLookTransitioningDelegate "superclass")])
  {
    v12.receiver = self;
    v12.super_class = NCLongLookTransitioningDelegate;
    [(PLExpandedPlatterTransitioningDelegate *)&v12 viewControllerAnimator:v6 willBeginPresentationAnimationWithTransitionContext:v7];
  }

  v8 = [v7 viewControllerForKey:*MEMORY[0x277D77240]];
  v9 = [v8 transitionCoordinator];
  [v9 animateAlongsideTransition:0 completion:&__block_literal_global_39];

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

- (void)viewControllerAnimator:(id)a3 willBeginDismissalAnimationWithTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([+[NCLongLookTransitioningDelegate superclass](NCLongLookTransitioningDelegate "superclass")])
  {
    v12.receiver = self;
    v12.super_class = NCLongLookTransitioningDelegate;
    [(PLExpandedPlatterTransitioningDelegate *)&v12 viewControllerAnimator:v6 willBeginDismissalAnimationWithTransitionContext:v7];
  }

  v8 = [v7 viewControllerForKey:*MEMORY[0x277D77240]];
  v9 = [v8 transitionCoordinator];
  [v9 animateAlongsideTransition:0 completion:&__block_literal_global_12_1];

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