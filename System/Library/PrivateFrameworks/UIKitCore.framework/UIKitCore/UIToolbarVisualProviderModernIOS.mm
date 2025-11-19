@interface UIToolbarVisualProviderModernIOS
@end

@implementation UIToolbarVisualProviderModernIOS

void __81___UIToolbarVisualProviderModernIOS_traitCollectionForChild_baseTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    [v3 setUserInterfaceStyle:?];
    v3 = v4;
  }

  if (*(a1 + 32))
  {
    [v4 setPreferredContentSizeCategory:?];
    v3 = v4;
  }
}

@end