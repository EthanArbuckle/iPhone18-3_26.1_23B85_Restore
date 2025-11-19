@interface UIPreviewPresentationPlatterView
@end

@implementation UIPreviewPresentationPlatterView

void __51___UIPreviewPresentationPlatterView_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentTransformView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

@end