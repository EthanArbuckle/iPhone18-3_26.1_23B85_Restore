@interface PXFeatureSpec(PXMonthCardSectionBodyLayoutSpec)
- (double)spacingBetweenMonthCards;
@end

@implementation PXFeatureSpec(PXMonthCardSectionBodyLayoutSpec)

- (double)spacingBetweenMonthCards
{
  v2 = [a1 sizeClass];
  result = 24.0;
  if (v2 != 2)
  {
    v4 = [a1 sizeSubclass];
    v5 = [a1 layoutOrientation];
    result = 12.0;
    if (v4 == 1)
    {
      result = 8.0;
    }

    v6 = 24.0;
    if (v4 == 1)
    {
      v6 = 20.0;
    }

    if (v5 != 2)
    {
      return v6;
    }
  }

  return result;
}

@end