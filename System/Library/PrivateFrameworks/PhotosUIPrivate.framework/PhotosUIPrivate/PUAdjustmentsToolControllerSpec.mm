@interface PUAdjustmentsToolControllerSpec
- (double)sliderLength;
- (double)standardBottomBarHeight;
@end

@implementation PUAdjustmentsToolControllerSpec

- (double)sliderLength
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 294.0;
  if (currentLayoutStyle >= 5)
  {
    return 0.0;
  }

  return result;
}

- (double)standardBottomBarHeight
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 141.0;
  if (currentLayoutStyle >= 5)
  {
    return 0.0;
  }

  return result;
}

@end