@interface UIPreviewActionSheetView
@end

@implementation UIPreviewActionSheetView

void __48___UIPreviewActionSheetView__setupViewHierarchy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performActionForPreviewAction:*(a1 + 32) interfaceAction:v3];
}

@end