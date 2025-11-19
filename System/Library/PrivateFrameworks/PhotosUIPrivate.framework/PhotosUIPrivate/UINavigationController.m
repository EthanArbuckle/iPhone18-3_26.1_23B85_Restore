@interface UINavigationController
@end

@implementation UINavigationController

BOOL __84__UINavigationController_PhotosUI__pu_popToViewControllerIfAllowed_animated_forced___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 prepareForDismissingForced:*(a1 + 48)] & 1) == 0 && (*(a1 + 48) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 32) != v3;

  return v4;
}

@end