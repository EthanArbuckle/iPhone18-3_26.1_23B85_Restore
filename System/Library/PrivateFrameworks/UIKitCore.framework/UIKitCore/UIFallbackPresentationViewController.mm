@interface UIFallbackPresentationViewController
@end

@implementation UIFallbackPresentationViewController

void __85___UIFallbackPresentationViewController__presentViewController_sendingView_animated___block_invoke(void *a1)
{
  v2 = *(a1[4] + 1000);
  v3 = [v2 rootViewController];
  v4 = [v3 presentedViewController];

  if (!v4)
  {
    [*(*(a1[6] + 8) + 40) setRotationDecider:0];
    v5 = *(*(a1[6] + 8) + 40);
    if (v5)
    {
      *(v5 + 256) = 0;
      v6 = *(*(a1[6] + 8) + 40);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 view];
    [v7 removeFromSuperview];

    [v2 setHidden:1];
    [v2 setRootViewController:0];
    v8 = a1[4];
    v9 = *(v8 + 1000);
    *(v8 + 1000) = 0;

    _RestoreKeyWindow();
    [*(*(a1[6] + 8) + 40) _restoreInputViewsAnimated:1];
    v10 = a1[5];
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }
}

void __94___UIFallbackPresentationViewController__dismissViewControllerWithTransition_from_completion___block_invoke(uint64_t a1)
{
  v5 = VisibleViewController(*(a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v2 = [v5 dismissCompletionHandler];
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

@end