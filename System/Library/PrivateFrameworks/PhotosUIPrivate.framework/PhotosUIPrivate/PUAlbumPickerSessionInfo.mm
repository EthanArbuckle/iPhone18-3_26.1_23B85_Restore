@interface PUAlbumPickerSessionInfo
- (PUAlbumPickerSessionInfo)initWithSourceAlbum:(id)album transferredAssets:(id)assets;
@end

@implementation PUAlbumPickerSessionInfo

- (PUAlbumPickerSessionInfo)initWithSourceAlbum:(id)album transferredAssets:(id)assets
{
  albumCopy = album;
  assetsCopy = assets;
  v11.receiver = self;
  v11.super_class = PUAlbumPickerSessionInfo;
  v8 = [(PUSessionInfo *)&v11 init];
  if (v8)
  {
    PLAssetCountsByType();
    v9 = PLLocalizedCountDescription();
    [(PUSessionInfo *)v8 setSourceAlbum:albumCopy, 0, 0, 0, 0];
    [(PUSessionInfo *)v8 setTransferredAssets:assetsCopy];
    [(PUSessionInfo *)v8 setLocalizedPrompt:v9];
  }

  return v8;
}

@end