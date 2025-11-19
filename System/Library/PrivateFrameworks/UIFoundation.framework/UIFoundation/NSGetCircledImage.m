@interface NSGetCircledImage
@end

@implementation NSGetCircledImage

void ____NSGetCircledImage_block_invoke(uint64_t a1, CGContext *a2)
{
  CGContextSetFillColorWithColor(a2, [*(a1 + 32) CGColor]);
  v5.size.width = *(a1 + 40);
  v5.size.height = *(a1 + 48);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  CGContextAddEllipseInRect(a2, v5);

  CGContextFillPath(a2);
}

@end