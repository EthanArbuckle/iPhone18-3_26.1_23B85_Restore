@interface UIImage
@end

@implementation UIImage

uint64_t __70__UIImage_WKAdditions__wk_overlayForegroundImage_overBackgroundImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) size];
  v4 = (v2 - v3) * 0.5;
  v5 = *(a1 + 56);
  [*(a1 + 32) size];
  v7 = (v5 - v6) * 0.5;
  v8 = *(a1 + 48);
  [*(a1 + 40) size];
  v10 = (v8 - v9) * 0.5;
  v11 = *(a1 + 56);
  [*(a1 + 40) size];
  v13 = (v11 - v12) * 0.5;
  [*(a1 + 32) drawAtPoint:{v4, v7}];
  v14 = *(a1 + 40);

  return [v14 drawAtPoint:{v10, v13}];
}

uint64_t __86__UIImage_WKAdditions__wk_splitThumbnailWithLightAppearanceImage_darkAppearanceImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 80);
  v4 = (v2 - *(a1 + 88)) * 0.5;
  [*(a1 + 32) drawAtPoint:{0.0, (v2 - *(a1 + 72)) * 0.5}];
  v5 = *(a1 + 40);

  return [v5 drawAtPoint:{v3, v4}];
}

@end