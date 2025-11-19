@interface UIModernBarButton
@end

@implementation UIModernBarButton

void __47___UIModernBarButton__setupForUseAsImageButton__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
  v4 = [v6 traitCollection];
  v5 = [v3 configurationWithTraitCollection:v4];
  [*(a1 + 32) _setOverridingSymbolConfiguration:v5];

  [v6 setNeedsLayout];
}

@end