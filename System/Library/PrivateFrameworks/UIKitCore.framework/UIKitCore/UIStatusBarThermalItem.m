@interface UIStatusBarThermalItem
@end

@implementation UIStatusBarThermalItem

void __42___UIStatusBarThermalItem_imageForUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 set];
  if ([*(a1 + 40) sunlightMode])
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSetLineWidth(v6, 3.0);
    v7 = [v4 format];
    [v7 bounds];
    [v4 strokeRect:?];
  }

  else
  {
    v7 = [v4 format];
    [v7 bounds];
    [v4 fillRect:?];
  }
}

@end