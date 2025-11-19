@interface UIControlMenuUpdateVisibleMenu
@end

@implementation UIControlMenuUpdateVisibleMenu

id ___UIControlMenuUpdateVisibleMenu_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    v2 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
  }

  else
  {
    *(v1 + 24) = 1;
    v2 = *(a1 + 32);
  }

  return v2;
}

@end