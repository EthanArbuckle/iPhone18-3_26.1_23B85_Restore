@interface SBXXSetInterceptsMenuButton
@end

@implementation SBXXSetInterceptsMenuButton

uint64_t ___SBXXSetInterceptsMenuButton_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return [SBApp setMenuButtonInterceptApp:v1 forever:*(a1 + 41) != 0];
}

@end