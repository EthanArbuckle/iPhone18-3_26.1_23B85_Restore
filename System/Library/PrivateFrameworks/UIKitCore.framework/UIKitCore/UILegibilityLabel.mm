@interface UILegibilityLabel
@end

@implementation UILegibilityLabel

uint64_t __33___UILegibilityLabel_updateImage__block_invoke(uint64_t a1)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [*(a1 + 32) bounds];
  MinX = CGRectGetMinX(v11);
  v5 = MinX - CGRectGetMinX(*(a1 + 48));
  [*(a1 + 32) bounds];
  MinY = CGRectGetMinY(v12);
  v7 = CGRectGetMinY(*(a1 + 48));
  CGContextTranslateCTM(v3, v5, MinY - v7);
  v8 = *(a1 + 40);
  [*(a1 + 32) bounds];

  return [v8 drawInRect:?];
}

@end