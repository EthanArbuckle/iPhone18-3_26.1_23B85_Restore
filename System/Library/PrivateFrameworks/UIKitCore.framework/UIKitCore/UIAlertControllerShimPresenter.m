@interface UIAlertControllerShimPresenter
@end

@implementation UIAlertControllerShimPresenter

uint64_t __91___UIAlertControllerShimPresenter__presentAlertControllerAnimated_hostingScene_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __104___UIAlertControllerShimPresenter__presentAlertControllerFromRect_inView_direction_animated_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _popoverController];
  [v3 presentPopoverFromRect:*(a1 + 40) inView:*(a1 + 88) permittedArrowDirections:*(a1 + 96) animated:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

uint64_t __78___UIAlertControllerShimPresenter__dismissAlertControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alertController];
  [v2 _flipFrameForShimDismissalIfNecessary];

  [_UIAlertControllerShimPresenter _removePresenter:*(a1 + 32)];
  [*(a1 + 32) _tearDownInPopoverViewController];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __78___UIAlertControllerShimPresenter__dismissAlertControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) alertController];
  [v2 _flipFrameForShimDismissalIfNecessary];

  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v4 dismissViewControllerAnimated:v3 completion:v5];
}

@end