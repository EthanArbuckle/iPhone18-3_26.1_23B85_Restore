@interface UIDocumentUnavailableBrowserPresentationController
@end

@implementation UIDocumentUnavailableBrowserPresentationController

double __112___UIDocumentUnavailableBrowserPresentationController_initWithPresentedViewController_presentingViewController___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [a2 _fullDetentValue];
  if (WeakRetained)
  {
    v5 = WeakRetained[81];
  }

  else
  {
    v5 = 0.0;
  }

  v6 = v4 * v5;

  return v6;
}

@end