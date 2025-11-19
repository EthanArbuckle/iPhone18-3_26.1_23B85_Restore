@interface SBFluidSwitcherTitledButtonContentImageWithTitle
@end

@implementation SBFluidSwitcherTitledButtonContentImageWithTitle

uint64_t ___SBFluidSwitcherTitledButtonContentImageWithTitle_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 scale];
  UIRectIntegralWithScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);

  return [v12 drawWithRect:1 options:v13 attributes:0 context:{v5, v7, v9, v11}];
}

@end