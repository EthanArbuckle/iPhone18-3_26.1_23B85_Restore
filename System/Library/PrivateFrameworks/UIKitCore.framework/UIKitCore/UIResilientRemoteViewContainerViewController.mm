@interface UIResilientRemoteViewContainerViewController
@end

@implementation UIResilientRemoteViewContainerViewController

void __78___UIResilientRemoteViewContainerViewController_initWithExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      v11 = [WeakRetained waitingController];
      [v11 stopSpinner];

      [v10 _displayError:v8];
    }

    else
    {
      objc_storeStrong(WeakRetained + 124, a3);
      [v10 setExtensionRequestIdentifier:v12];
      if ((v10[125] & 1) == 0)
      {
        [v10 _displayRemoteViewController];
      }
    }
  }

  (*(*(a1 + 32) + 16))();
  [v10 _endDelayingPresentation];
}

void __63___UIResilientRemoteViewContainerViewController__displayError___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

@end