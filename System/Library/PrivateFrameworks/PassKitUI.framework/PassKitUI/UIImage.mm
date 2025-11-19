@interface UIImage
@end

@implementation UIImage

void __52__UIImage_PKUIUtilities__pkui_imageWithColor_scale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  CGContextSetFillColorWithColor(v3, [*(a1 + 32) CGColor]);
  CGContextFillRect(v3, *(a1 + 40));

  CGContextRestoreGState(v3);
}

@end