@interface SBIconListFlowExtendedLayout
- (CGSize)iconSpacingForOrientation:(int64_t)a3;
@end

@implementation SBIconListFlowExtendedLayout

- (CGSize)iconSpacingForOrientation:(int64_t)a3
{
  v5 = [(SBIconListGridLayout *)self layoutConfiguration];
  [v5 listSizeForIconSpacingCalculation];
  if ((a3 - 3) >= 2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if ((a3 - 3) < 2)
  {
    v7 = v6;
  }

  v9 = SBHIconListLayoutListIconSpacingForListSize(self, a3, v8, v7);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end