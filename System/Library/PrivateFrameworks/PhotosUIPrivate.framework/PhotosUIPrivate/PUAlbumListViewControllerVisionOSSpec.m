@interface PUAlbumListViewControllerVisionOSSpec
- (CGSize)imageSize;
- (CGSize)stackSize;
@end

@implementation PUAlbumListViewControllerVisionOSSpec

- (CGSize)stackSize
{
  v2 = 224.0;
  v3 = 224.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)imageSize
{
  v2 = PUPixelSizeFromPointSize(224.0);
  result.height = v3;
  result.width = v2;
  return result;
}

@end