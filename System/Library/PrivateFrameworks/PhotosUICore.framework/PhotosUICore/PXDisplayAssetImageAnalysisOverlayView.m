@interface PXDisplayAssetImageAnalysisOverlayView
+ (BOOL)isImageAnalysisOverlayNeededForViewModel:(id)a3;
- (PXDisplayAssetImageAnalysisOverlayView)initWithViewModel:(id)a3;
@end

@implementation PXDisplayAssetImageAnalysisOverlayView

- (PXDisplayAssetImageAnalysisOverlayView)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXDisplayAssetImageAnalysisOverlayView;
  v6 = [(PXDisplayAssetImageAnalysisOverlayView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

+ (BOOL)isImageAnalysisOverlayNeededForViewModel:(id)a3
{
  if (isImageAnalysisOverlayNeededForViewModel__onceToken != -1)
  {
    dispatch_once(&isImageAnalysisOverlayNeededForViewModel__onceToken, &__block_literal_global_158414);
  }

  return 0;
}

void __83__PXDisplayAssetImageAnalysisOverlayView_isImageAnalysisOverlayNeededForViewModel___block_invoke()
{
  v0 = PLOneUpGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3C1C000, v0, OS_LOG_TYPE_ERROR, "image analysis overlay isn't available yet on the current platform", v1, 2u);
  }
}

@end