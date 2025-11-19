@interface PXChangeAssetDateAction
- (PXChangeAssetDateAction)initWithAssets:(id)a3 date:(id)a4 timeZone:(id)a5;
- (PXChangeAssetDateAction)initWithAssets:(id)a3 dateOffset:(double)a4 timeZone:(id)a5;
- (id)_timeZoneForAsset:(id)a3;
- (void)_setDate:(id)a3 timeZone:(id)a4 forAsset:(id)a5;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXChangeAssetDateAction

- (void)_setDate:(id)a3 timeZone:(id)a4 forAsset:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E6978648] changeRequestForAsset:v8];
  v10 = v9;
  if (v11)
  {
    [v9 setCreationDate:?];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [v8 creationDate];
  if (v7)
  {
LABEL_3:
    [v10 setTimeZone:v7 withDate:v11];
  }

LABEL_4:
}

- (id)_timeZoneForAsset:(id)a3
{
  v3 = a3;
  [v3 fetchPropertySetsIfNeeded];
  v4 = [v3 originalMetadataProperties];

  v5 = [v4 timeZone];

  return v5;
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXChangeAssetDateAction *)self originalDateByLocalIdentifier];
  v6 = [(PXChangeAssetDateAction *)self originalTimeZoneByLocalIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PXChangeAssetDateAction_performUndo___block_invoke;
  v9[3] = &unk_1E774A1B8;
  v9[4] = self;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [(PXPhotosAction *)self performChanges:v9 completionHandler:v4];
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

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__PXChangeAssetDateAction_performAction___block_invoke;
  v12[3] = &unk_1E7744F50;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v16 = self;
  v9 = v8;
  v10 = v7;
  v11 = v5;
  [(PXPhotosAction *)self performChanges:v12 completionHandler:v4];
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

- (PXChangeAssetDateAction)initWithAssets:(id)a3 dateOffset:(double)a4 timeZone:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PXChangeAssetDateAction;
  v10 = [(PXAssetsAction *)&v13 initWithAssets:a3];
  v11 = v10;
  if (v10)
  {
    v10->_dateOffset = a4;
    objc_storeStrong(&v10->_timeZone, a5);
  }

  return v11;
}

- (PXChangeAssetDateAction)initWithAssets:(id)a3 date:(id)a4 timeZone:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PXChangeAssetDateAction;
  v11 = [(PXAssetsAction *)&v14 initWithAssets:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changeDate, a4);
    objc_storeStrong(&v12->_timeZone, a5);
  }

  return v12;
}

@end