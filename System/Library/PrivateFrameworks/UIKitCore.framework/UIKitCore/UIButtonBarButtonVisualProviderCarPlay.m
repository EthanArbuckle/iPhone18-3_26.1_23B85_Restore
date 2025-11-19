@interface UIButtonBarButtonVisualProviderCarPlay
@end

@implementation UIButtonBarButtonVisualProviderCarPlay

void __77___UIButtonBarButtonVisualProviderCarPlay_configureButton_fromBarButtonItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLabelColorsForStateEnabled:objc_msgSend(*(a1 + 32) focused:"isEnabled") pressed:{objc_msgSend(*(a1 + 32), "isFocused"), 0}];
}

@end