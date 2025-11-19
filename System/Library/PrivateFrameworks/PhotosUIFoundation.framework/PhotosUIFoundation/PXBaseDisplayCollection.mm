@interface PXBaseDisplayCollection
- (BOOL)px_isSharedAlbum;
@end

@implementation PXBaseDisplayCollection

- (BOOL)px_isSharedAlbum
{
  if ([(PXBaseDisplayCollection *)self px_isStreamSharedAlbum])
  {
    return 1;
  }

  return [(PXBaseDisplayCollection *)self px_isCloudKitSharedAlbum];
}

@end