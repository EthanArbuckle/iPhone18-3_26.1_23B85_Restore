@interface PXFileBackedAsset(PhotosUI)
- (__n128)photoIrisStillDisplayTime;
- (__n128)photoIrisVideoDuration;
@end

@implementation PXFileBackedAsset(PhotosUI)

- (__n128)photoIrisVideoDuration
{
  v1 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *self = *MEMORY[0x1E6960CC0];
  *(self + 16) = *(v1 + 16);
  return result;
}

- (__n128)photoIrisStillDisplayTime
{
  v1 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *self = *MEMORY[0x1E6960CC0];
  *(self + 16) = *(v1 + 16);
  return result;
}

@end