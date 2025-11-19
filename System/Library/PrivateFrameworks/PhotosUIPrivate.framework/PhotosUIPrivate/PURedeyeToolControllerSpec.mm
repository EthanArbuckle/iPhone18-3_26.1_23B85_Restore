@interface PURedeyeToolControllerSpec
- (double)tooltipLandscapeMargin;
- (double)tooltipPortraitMargin;
@end

@implementation PURedeyeToolControllerSpec

- (double)tooltipLandscapeMargin
{
  v2 = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (v2 <= 4)
  {
    return dbl_1B3D0D630[v2];
  }

  return result;
}

- (double)tooltipPortraitMargin
{
  v2 = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (v2 <= 4)
  {
    return dbl_1B3D0D608[v2];
  }

  return result;
}

@end