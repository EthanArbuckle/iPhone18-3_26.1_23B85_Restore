@interface PXFeatureSpec(PXMonthCardSectionBodyLayoutSpec)
- (double)spacingBetweenMonthCards;
@end

@implementation PXFeatureSpec(PXMonthCardSectionBodyLayoutSpec)

- (double)spacingBetweenMonthCards
{
  sizeClass = [self sizeClass];
  result = 24.0;
  if (sizeClass != 2)
  {
    sizeSubclass = [self sizeSubclass];
    layoutOrientation = [self layoutOrientation];
    result = 12.0;
    if (sizeSubclass == 1)
    {
      result = 8.0;
    }

    v6 = 24.0;
    if (sizeSubclass == 1)
    {
      v6 = 20.0;
    }

    if (layoutOrientation != 2)
    {
      return v6;
    }
  }

  return result;
}

@end