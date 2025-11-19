@interface PUAdjustmentsToolControllerSpec
- (double)sliderLength;
- (double)standardBottomBarHeight;
@end

@implementation PUAdjustmentsToolControllerSpec

- (double)sliderLength
{
  v2 = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 294.0;
  if (v2 >= 5)
  {
    return 0.0;
  }

  return result;
}

- (double)standardBottomBarHeight
{
  v2 = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 141.0;
  if (v2 >= 5)
  {
    return 0.0;
  }

  return result;
}

@end