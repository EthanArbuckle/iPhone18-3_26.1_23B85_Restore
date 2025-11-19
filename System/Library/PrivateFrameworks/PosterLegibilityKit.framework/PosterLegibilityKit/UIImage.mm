@interface UIImage
@end

@implementation UIImage

uint64_t __43__UIImage_PLKUtilities__plk_alphaMaskImage__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D75348] whiteColor];
  [v2 setFill];

  v3 = a1[5];
  v4 = a1[6];
  BSRectWithSize();
  UIRectFill(v10);
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  BSRectWithSize();

  return [v5 drawInRect:22 blendMode:? alpha:?];
}

@end