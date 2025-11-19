@interface UIPreviewInteractionViewControllerHelper
@end

@implementation UIPreviewInteractionViewControllerHelper

void __140___UIPreviewInteractionViewControllerHelper_presentViewControllerFromViewController_highlighter_presentationCompletion_dismissalCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performPresentViewControllerFromViewController:*(a1 + 32)];
}

id __140___UIPreviewInteractionViewControllerHelper_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) interactiveHighlightEffect];
  v2 = [v1 environment];
  v3 = [v2 contentView];

  return v3;
}

void __140___UIPreviewInteractionViewControllerHelper_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (!*(WeakRetained + 9))
    {
      v5 = WeakRetained;
      [*(a1 + 32) _animateAlongsideViewControllerPresentationDismiss];
      [*(a1 + 32) _viewControllerPresentationDidEnd];
      [v5 _finalizeAfterViewControllerPresentation];
      [v5 _performDismissalCompletionIfNeeded];
      v3 = v5;
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 _delayedViewControllerPresentationDidCancel];
        v3 = v5;
      }
    }
  }
}

uint64_t __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    [*(*(a1 + 32) + 8) _animateAlongsideViewControllerPresentationDismiss];
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  return [v2 performTransitionFromView:v3 toView:v4 containerView:v5];
}

void __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (WeakRetained[9] == v3)
    {
      v5 = WeakRetained;
      [v3 completeTransition:{objc_msgSend(v3, "transitionWasCancelled") ^ 1}];
      [*(a1 + 40) transitionDidEnd:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
      if ((*(a1 + 56) & 1) == 0)
      {
        [v5[1] _viewControllerPresentationDidEnd];
        [v5 _finalizeAfterViewControllerPresentation];
        [v5 _performDismissalCompletionIfNeeded];
      }

      v4 = v5[9];
      v5[9] = 0;

      WeakRetained = v5;
    }
  }
}

uint64_t __93___UIPreviewInteractionViewControllerHelper__performPresentViewControllerFromViewController___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _finalizeAfterViewControllerPresentation];
  }

  result = *(*(a1 + 32) + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id __147___UIPreviewInteractionViewControllerHelper_defaultPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained presentedViewController];
  v4 = [v3 isBeingPresented];

  if (v4)
  {
    v5 = [*(a1 + 32) effectView];
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = [v6 contentPlatterView];
  }

  return v5;
}

id __147___UIPreviewInteractionViewControllerHelper_defaultPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained presentedViewController];
  v4 = [v3 isBeingPresented];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 contentPlatterView];
  }

  else
  {
    v6 = [*(a1 + 32) effectView];
  }

  return v6;
}

id __146___UIPreviewInteractionViewControllerHelper_customPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) != 1 || ([*(a1 + 32) portalView], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "setHidesSourceView:", 0), objc_msgSend(v2, "setHidden:", 1), v2, (*(a1 + 56) & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained presentedViewController];
    if ([v4 isBeingPresented])
    {

LABEL_6:
      v6 = [*(a1 + 32) effectView];
      goto LABEL_8;
    }

    v5 = *(a1 + 57);

    if (v5 == 1)
    {
      goto LABEL_6;
    }
  }

  v6 = *(a1 + 40);
LABEL_8:

  return v6;
}

id __146___UIPreviewInteractionViewControllerHelper_customPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained presentedViewController];
  if ([v3 isBeingPresented])
  {

LABEL_5:
    v5 = *(a1 + 32);
    goto LABEL_6;
  }

  v4 = *(a1 + 57);

  if (v4 == 1)
  {
    goto LABEL_5;
  }

  v5 = [*(a1 + 40) effectView];
LABEL_6:

  return v5;
}

@end