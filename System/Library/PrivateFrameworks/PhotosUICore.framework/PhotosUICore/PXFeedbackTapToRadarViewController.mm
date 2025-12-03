@interface PXFeedbackTapToRadarViewController
- (PXFeedbackTapToRadarViewController)init;
- (void)didSelectFileRadarButtonWithScreenshotAllowed:(BOOL)allowed attachDiagnose:(BOOL)diagnose selectedRoute:(id)route;
@end

@implementation PXFeedbackTapToRadarViewController

void __54___PXFeedbackTapToRadarViewController_fileRadarButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didSelectFileRadarButton];
}

- (void)didSelectFileRadarButtonWithScreenshotAllowed:(BOOL)allowed attachDiagnose:(BOOL)diagnose selectedRoute:(id)route
{
  diagnoseCopy = diagnose;
  allowedCopy = allowed;
  routeCopy = route;
  fileRadarHandler = [(PXFeedbackTapToRadarViewController *)self fileRadarHandler];
  fileRadarHandler[2](fileRadarHandler, allowedCopy, diagnoseCopy, routeCopy);
}

- (PXFeedbackTapToRadarViewController)init
{
  v5.receiver = self;
  v5.super_class = PXFeedbackTapToRadarViewController;
  v2 = [(PXFeedbackTapToRadarViewController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PXFeedbackTapToRadarViewController);
    [(_PXFeedbackTapToRadarViewController *)v3 setDelegate:v2];
    [(PXFeedbackTapToRadarViewController *)v2 pushViewController:v3 animated:0];
  }

  return v2;
}

@end