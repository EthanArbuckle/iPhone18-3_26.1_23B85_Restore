@interface UISheetDetentBlockMedium
@end

@implementation UISheetDetentBlockMedium

double _UISheetDetentBlockMedium_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 containerTraitCollection];
  v4 = [v3 verticalSizeClass];

  if (v4 == 1)
  {
    v5 = 1.79769313e308;
  }

  else
  {
    [v2 maximumDetentValue];
    v7 = v6;
    [v2 _containerBounds];
    v5 = v7 * dbl_18A682B20[CGRectGetHeight(v9) > 568.0];
  }

  return v5;
}

@end