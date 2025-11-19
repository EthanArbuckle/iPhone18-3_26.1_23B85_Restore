@interface UITextFormattingDeferredFontPickingDelegate
@end

@implementation UITextFormattingDeferredFontPickingDelegate

void __84___UITextFormattingDeferredFontPickingDelegate_fontPickerViewControllerDidPickFont___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

@end