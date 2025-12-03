@interface PURedeyeToolControllerSpec
- (double)tooltipLandscapeMargin;
- (double)tooltipPortraitMargin;
@end

@implementation PURedeyeToolControllerSpec

- (double)tooltipLandscapeMargin
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (currentLayoutStyle <= 4)
  {
    return dbl_1B3D0D630[currentLayoutStyle];
  }

  return result;
}

- (double)tooltipPortraitMargin
{
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (currentLayoutStyle <= 4)
  {
    return dbl_1B3D0D608[currentLayoutStyle];
  }

  return result;
}

@end