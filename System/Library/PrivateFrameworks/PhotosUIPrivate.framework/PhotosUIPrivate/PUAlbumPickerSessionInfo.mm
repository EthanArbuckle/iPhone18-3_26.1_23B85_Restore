@interface PUAlbumPickerSessionInfo
- (PUAlbumPickerSessionInfo)initWithSourceAlbum:(id)a3 transferredAssets:(id)a4;
@end

@implementation PUAlbumPickerSessionInfo

- (PUAlbumPickerSessionInfo)initWithSourceAlbum:(id)a3 transferredAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PUAlbumPickerSessionInfo;
  v8 = [(PUSessionInfo *)&v11 init];
  if (v8)
  {
    PLAssetCountsByType();
    v9 = PLLocalizedCountDescription();
    [(PUSessionInfo *)v8 setSourceAlbum:v6, 0, 0, 0, 0];
    [(PUSessionInfo *)v8 setTransferredAssets:v7];
    [(PUSessionInfo *)v8 setLocalizedPrompt:v9];
  }

  return v8;
}

@end