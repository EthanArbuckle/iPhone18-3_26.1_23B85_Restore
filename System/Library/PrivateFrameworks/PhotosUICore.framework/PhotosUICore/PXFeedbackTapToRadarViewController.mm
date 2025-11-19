@interface PXFeedbackTapToRadarViewController
- (PXFeedbackTapToRadarViewController)init;
- (void)didSelectFileRadarButtonWithScreenshotAllowed:(BOOL)a3 attachDiagnose:(BOOL)a4 selectedRoute:(id)a5;
@end

@implementation PXFeedbackTapToRadarViewController

void __54___PXFeedbackTapToRadarViewController_fileRadarButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didSelectFileRadarButton];
}

- (void)didSelectFileRadarButtonWithScreenshotAllowed:(BOOL)a3 attachDiagnose:(BOOL)a4 selectedRoute:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(PXFeedbackTapToRadarViewController *)self fileRadarHandler];
  v9[2](v9, v6, v5, v8);
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