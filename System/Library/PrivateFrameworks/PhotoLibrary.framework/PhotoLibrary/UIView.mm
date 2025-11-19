@interface UIView
@end

@implementation UIView

uint64_t __61__UIView_PhotoLibraryAdditions__pl_setHidden_delay_animated___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) alpha];
  if (v3 == *(a1 + 40))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    return [v4 setHidden:v5];
  }

  return result;
}

@end