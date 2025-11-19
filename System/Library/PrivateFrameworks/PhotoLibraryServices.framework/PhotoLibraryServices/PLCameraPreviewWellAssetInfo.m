@interface PLCameraPreviewWellAssetInfo
- (PLCameraPreviewWellAssetInfo)initWithUUID:(id)a3 sortToken:(double)a4 addedDate:(id)a5 hidden:(BOOL)a6 visibilityState:(signed __int16)a7 trashedState:(signed __int16)a8 avalanchePickType:(int)a9 savedAssetType:(signed __int16)a10 thumbnailIdentifier:(id)a11 pathManager:(id)a12;
@end

@implementation PLCameraPreviewWellAssetInfo

- (PLCameraPreviewWellAssetInfo)initWithUUID:(id)a3 sortToken:(double)a4 addedDate:(id)a5 hidden:(BOOL)a6 visibilityState:(signed __int16)a7 trashedState:(signed __int16)a8 avalanchePickType:(int)a9 savedAssetType:(signed __int16)a10 thumbnailIdentifier:(id)a11 pathManager:(id)a12
{
  v19 = a3;
  v20 = a5;
  v26 = a11;
  v25 = a12;
  v27.receiver = self;
  v27.super_class = PLCameraPreviewWellAssetInfo;
  v21 = [(PLCameraPreviewWellAssetInfo *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_uuid, a3);
    v22->_sortToken = a4;
    objc_storeStrong(&v22->_addedDate, a5);
    v22->_hidden = a6;
    v22->_visibilityState = a7;
    v22->_trashedState = a8;
    v22->_avalanchePickType = a9;
    v22->_savedAssetType = a10;
    objc_storeStrong(&v22->_thumbnailIdentifier, a11);
    objc_storeStrong(&v22->_pathManager, a12);
  }

  return v22;
}

@end