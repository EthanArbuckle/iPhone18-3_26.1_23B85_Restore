@interface UITraitCollectionFromThemeKey
@end

@implementation UITraitCollectionFromThemeKey

uint64_t ___UITraitCollectionFromThemeKey_block_invoke(uint64_t a1, void *a2)
{
  [a2 setUserInterfaceStyle:*(a1 + 32)];
  [a2 setUserInterfaceIdiom:*(a1 + 40)];
  [a2 setAccessibilityContrast:*(a1 + 56)];
  [a2 setDisplayGamut:*(a1 + 57)];
  v4 = *(a1 + 48) == 1;

  return [a2 setUserInterfaceLevel:v4];
}

@end