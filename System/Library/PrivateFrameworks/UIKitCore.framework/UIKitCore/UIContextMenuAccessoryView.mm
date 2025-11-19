@interface UIContextMenuAccessoryView
@end

@implementation UIContextMenuAccessoryView

uint64_t __51___UIContextMenuAccessoryView_setVisible_animated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  [*(a1 + 32) setAlpha:v2];
  if (*(a1 + 40) == 1)
  {
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7.a = *MEMORY[0x1E695EFD0];
    *&v7.c = v3;
    *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v7, 0.1, 0.1);
  }

  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

@end