@interface CUINamedImage
@end

@implementation CUINamedImage

void __46__CUINamedImage_UIKitAdditions__configuration__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUserInterfaceIdiom:{+[_UIAssetManager _userInterfaceIdiomForDeviceClass:](_UIAssetManager, "_userInterfaceIdiomForDeviceClass:", objc_msgSend(v3, "themeIdiom"))}];
  [*(a1 + 40) scale];
  [v4 setDisplayScale:?];
  [v4 setDisplayGamut:{objc_msgSend(*(a1 + 32), "themeDisplayGamut")}];
  [v4 setHorizontalSizeClass:{objc_msgSend(*(a1 + 32), "themeSizeClassHorizontal")}];
  [v4 setVerticalSizeClass:{objc_msgSend(*(a1 + 32), "themeSizeClassVertical")}];
  [v4 setLayoutDirection:{__UITraitEnvironmentLayoutDirectionFromCUILayoutDirection(objc_msgSend(*(a1 + 40), "layoutDirection"))}];
}

@end