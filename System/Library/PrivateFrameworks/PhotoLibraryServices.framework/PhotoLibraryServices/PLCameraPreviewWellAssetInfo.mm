@interface PLCameraPreviewWellAssetInfo
- (PLCameraPreviewWellAssetInfo)initWithUUID:(id)d sortToken:(double)token addedDate:(id)date hidden:(BOOL)hidden visibilityState:(signed __int16)state trashedState:(signed __int16)trashedState avalanchePickType:(int)type savedAssetType:(signed __int16)self0 thumbnailIdentifier:(id)self1 pathManager:(id)self2;
@end

@implementation PLCameraPreviewWellAssetInfo

- (PLCameraPreviewWellAssetInfo)initWithUUID:(id)d sortToken:(double)token addedDate:(id)date hidden:(BOOL)hidden visibilityState:(signed __int16)state trashedState:(signed __int16)trashedState avalanchePickType:(int)type savedAssetType:(signed __int16)self0 thumbnailIdentifier:(id)self1 pathManager:(id)self2
{
  dCopy = d;
  dateCopy = date;
  identifierCopy = identifier;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = PLCameraPreviewWellAssetInfo;
  v21 = [(PLCameraPreviewWellAssetInfo *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_uuid, d);
    v22->_sortToken = token;
    objc_storeStrong(&v22->_addedDate, date);
    v22->_hidden = hidden;
    v22->_visibilityState = state;
    v22->_trashedState = trashedState;
    v22->_avalanchePickType = type;
    v22->_savedAssetType = assetType;
    objc_storeStrong(&v22->_thumbnailIdentifier, identifier);
    objc_storeStrong(&v22->_pathManager, manager);
  }

  return v22;
}

@end