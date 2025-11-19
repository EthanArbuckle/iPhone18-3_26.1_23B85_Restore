@interface UISearchFormSheetPresentationController
@end

@implementation UISearchFormSheetPresentationController

uint64_t __75___UISearchFormSheetPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 384) dimmingView];

  return [v1 display:1];
}

uint64_t __75___UISearchFormSheetPresentationController_presentationTransitionWillBegin__block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "presentingViewController")];
  v3 = *(a1 + 32);

  return [v2 _beginOcclusion:v3];
}

uint64_t __72___UISearchFormSheetPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 384) dimmingView];

  return [v1 display:0];
}

uint64_t __72___UISearchFormSheetPresentationController_dismissalTransitionWillBegin__block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "presentingViewController")];
  v3 = *(a1 + 32);

  return [v2 _endOcclusion:v3];
}

uint64_t __98___UISearchFormSheetPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];

  return [v1 layoutIfNeeded];
}

@end