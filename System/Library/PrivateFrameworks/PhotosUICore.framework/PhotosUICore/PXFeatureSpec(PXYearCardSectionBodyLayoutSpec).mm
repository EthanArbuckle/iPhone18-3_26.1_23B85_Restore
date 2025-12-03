@interface PXFeatureSpec(PXYearCardSectionBodyLayoutSpec)
- (double)spacingBetweenYearCards;
@end

@implementation PXFeatureSpec(PXYearCardSectionBodyLayoutSpec)

- (double)spacingBetweenYearCards
{
  if ([self sizeClass] == 2)
  {
    return 36.0;
  }

  sizeSubclass = [self sizeSubclass];
  layoutOrientation = [self layoutOrientation];
  result = 0.0;
  v5 = 30.0;
  if (sizeSubclass == 1)
  {
    v5 = 24.0;
  }

  v6 = 20.0;
  if (sizeSubclass == 1)
  {
    v6 = 10.0;
  }

  if (layoutOrientation == 2)
  {
    result = v6;
  }

  if (layoutOrientation < 2)
  {
    return v5;
  }

  return result;
}

@end