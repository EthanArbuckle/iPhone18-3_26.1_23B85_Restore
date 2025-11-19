@interface PXFeatureSpec(PXYearCardSectionBodyLayoutSpec)
- (double)spacingBetweenYearCards;
@end

@implementation PXFeatureSpec(PXYearCardSectionBodyLayoutSpec)

- (double)spacingBetweenYearCards
{
  if ([a1 sizeClass] == 2)
  {
    return 36.0;
  }

  v3 = [a1 sizeSubclass];
  v4 = [a1 layoutOrientation];
  result = 0.0;
  v5 = 30.0;
  if (v3 == 1)
  {
    v5 = 24.0;
  }

  v6 = 20.0;
  if (v3 == 1)
  {
    v6 = 10.0;
  }

  if (v4 == 2)
  {
    result = v6;
  }

  if (v4 < 2)
  {
    return v5;
  }

  return result;
}

@end