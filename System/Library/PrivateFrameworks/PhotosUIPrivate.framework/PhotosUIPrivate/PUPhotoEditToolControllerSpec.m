@interface PUPhotoEditToolControllerSpec
- (double)standardBottomBarHeight;
- (double)standardSideBarWidth;
@end

@implementation PUPhotoEditToolControllerSpec

- (double)standardSideBarWidth
{
  if (![(PUViewControllerSpec *)self currentLayoutStyle])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolControllerSpec.m" lineNumber:45 description:@"Invalid layout style"];
  }

  v4 = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 0.0;
  if (v4 <= 4)
  {
    return dbl_1B3D0D2F8[v4];
  }

  return result;
}

- (double)standardBottomBarHeight
{
  if (![(PUViewControllerSpec *)self currentLayoutStyle])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolControllerSpec.m" lineNumber:27 description:@"Invalid layout style"];
  }

  v4 = [(PUViewControllerSpec *)self currentLayoutStyle];
  result = 141.0;
  if (v4 >= 5)
  {
    return 0.0;
  }

  return result;
}

@end