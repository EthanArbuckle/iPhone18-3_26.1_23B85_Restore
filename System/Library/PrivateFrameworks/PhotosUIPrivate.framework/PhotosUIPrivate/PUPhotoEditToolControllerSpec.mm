@interface PUPhotoEditToolControllerSpec
- (double)standardBottomBarHeight;
- (double)standardSideBarWidth;
@end

@implementation PUPhotoEditToolControllerSpec

- (double)standardSideBarWidth
{
  if (![(PUViewControllerSpec *)self currentLayoutStyle])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolControllerSpec.m" lineNumber:45 description:@"Invalid layout style"];
  }

  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (currentLayoutStyle <= 4)
  {
    return dbl_1B3D0D2F8[currentLayoutStyle];
  }

  return result;
}

- (double)standardBottomBarHeight
{
  if (![(PUViewControllerSpec *)self currentLayoutStyle])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolControllerSpec.m" lineNumber:27 description:@"Invalid layout style"];
  }

  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 141.0;
  if (currentLayoutStyle >= 5)
  {
    return 0.0;
  }

  return result;
}

@end