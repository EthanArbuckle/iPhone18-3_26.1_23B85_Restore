@interface CUINamedVectorGlyph
@end

@implementation CUINamedVectorGlyph

void __52__CUINamedVectorGlyph_UIKitAdditions__configuration__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 scale];
  [v4 setDisplayScale:?];
  [v4 setDisplayGamut:{objc_msgSend(*(a1 + 32), "displayGamut")}];
  [v4 setLayoutDirection:{__UITraitEnvironmentLayoutDirectionFromCUILayoutDirection(objc_msgSend(*(a1 + 32), "layoutDirection"))}];
}

@end