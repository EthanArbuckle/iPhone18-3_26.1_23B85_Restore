@interface PXChangeAssetDateAction
- (PXChangeAssetDateAction)initWithAssets:(id)assets date:(id)date timeZone:(id)zone;
- (PXChangeAssetDateAction)initWithAssets:(id)assets dateOffset:(double)offset timeZone:(id)zone;
- (id)_timeZoneForAsset:(id)asset;
- (void)_setDate:(id)date timeZone:(id)zone forAsset:(id)asset;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXChangeAssetDateAction

- (void)_setDate:(id)date timeZone:(id)zone forAsset:(id)asset
{
  dateCopy = date;
  zoneCopy = zone;
  assetCopy = asset;
  v9 = [MEMORY[0x1E6978648] changeRequestForAsset:assetCopy];
  v10 = v9;
  if (dateCopy)
  {
    [v9 setCreationDate:?];
    if (!zoneCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dateCopy = [assetCopy creationDate];
  if (zoneCopy)
  {
LABEL_3:
    [v10 setTimeZone:zoneCopy withDate:dateCopy];
  }

LABEL_4:
}

- (id)_timeZoneForAsset:(id)asset
{
  assetCopy = asset;
  [assetCopy fetchPropertySetsIfNeeded];
  originalMetadataProperties = [assetCopy originalMetadataProperties];

  timeZone = [originalMetadataProperties timeZone];

  return timeZone;
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  originalDateByLocalIdentifier = [(PXChangeAssetDateAction *)self originalDateByLocalIdentifier];
  originalTimeZoneByLocalIdentifier = [(PXChangeAssetDateAction *)self originalTimeZoneByLocalIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PXChangeAssetDateAction_performUndo___block_invoke;
  v9[3] = &unk_1E774A1B8;
  v9[4] = self;
  v10 = originalDateByLocalIdentifier;
  v11 = originalTimeZoneByLocalIdentifier;
  v7 = originalTimeZoneByLocalIdentifier;
  v8 = originalDateByLocalIdentifier;
  [(PXPhotosAction *)self performChanges:v9 completionHandler:undoCopy];
}

uint64_t __39__PXChangeAssetDateAction_performUndo___block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [a1[4] assets];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 localIdentifier];
        v9 = [a1[5] objectForKeyedSubscript:v8];
        v10 = [a1[6] objectForKeyedSubscript:v8];
        [a1[4] _setDate:v9 timeZone:v10 forAsset:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [a1[4] setOriginalDateByLocalIdentifier:0];
  return [a1[4] setOriginalTimeZoneByLocalIdentifier:0];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  assets = [(PXAssetsAction *)self assets];
  v6 = [assets count];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__PXChangeAssetDateAction_performAction___block_invoke;
  v12[3] = &unk_1E7744F50;
  v13 = assets;
  v14 = v7;
  v15 = v8;
  selfCopy = self;
  v9 = v8;
  v10 = v7;
  v11 = assets;
  [(PXPhotosAction *)self performChanges:v12 completionHandler:actionCopy];
}

uint64_t __41__PXChangeAssetDateAction_performAction___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  obj = *(a1 + 32);
  if ([obj countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    v2 = **(&v5[0] + 1);
    [**(&v5[0] + 1) localIdentifier];
    objc_claimAutoreleasedReturnValue();
    [v2 creationDate];
    objc_claimAutoreleasedReturnValue();
    PXDateClampedToGregorianCalendar();
  }

  [*(a1 + 56) setOriginalDateByLocalIdentifier:*(a1 + 40)];
  return [*(a1 + 56) setOriginalTimeZoneByLocalIdentifier:*(a1 + 48)];
}

- (PXChangeAssetDateAction)initWithAssets:(id)assets dateOffset:(double)offset timeZone:(id)zone
{
  zoneCopy = zone;
  v13.receiver = self;
  v13.super_class = PXChangeAssetDateAction;
  v10 = [(PXAssetsAction *)&v13 initWithAssets:assets];
  v11 = v10;
  if (v10)
  {
    v10->_dateOffset = offset;
    objc_storeStrong(&v10->_timeZone, zone);
  }

  return v11;
}

- (PXChangeAssetDateAction)initWithAssets:(id)assets date:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = PXChangeAssetDateAction;
  v11 = [(PXAssetsAction *)&v14 initWithAssets:assets];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changeDate, date);
    objc_storeStrong(&v12->_timeZone, zone);
  }

  return v12;
}

@end