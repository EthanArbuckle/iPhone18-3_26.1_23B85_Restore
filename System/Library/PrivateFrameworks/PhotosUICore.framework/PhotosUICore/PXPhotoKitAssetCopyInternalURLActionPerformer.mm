@interface PXPhotoKitAssetCopyInternalURLActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCopyInternalURLActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  if (a3 == 2)
  {
    return @"(Internal) Copy URL";
  }

  else
  {
    return @"Copy URL";
  }
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = [PXRootSettings sharedInstance:a3];
  v8 = [v7 canShowInternalUI];
  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v4 = [v3 allKeys];
  v28 = [v4 firstObject];

  v5 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [v5 objectForKeyedSubscript:v28];
  v7 = [v6 firstObject];

  if (!v7)
  {
    v13 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"No asset available in %@", self}];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v13];
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v9 = [v28 transientIdentifier];
  v10 = [v9 componentsSeparatedByString:@":"];
  v11 = [v10 firstObject];

  if ([v28 px_isSuggestion])
  {
    v12 = [v28 localIdentifier];
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_8:
    v13 = [MEMORY[0x1E696AF20] componentsWithString:@"photos://featuredPhoto"];
    v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"identifier" value:v12];
    [v8 addObject:v16];

    v17 = MEMORY[0x1E696AF60];
    v18 = @"source";
    v19 = @"widget";
LABEL_11:
    v25 = [v17 queryItemWithName:v18 value:v19];
    [v8 addObject:v25];

    goto LABEL_12;
  }

  if ([v11 isEqualToString:@"PXFeaturedPhotosVirtualCollection"])
  {
    v14 = [(PXPhotoKitAssetActionPerformer *)self dataSourceUserInfo];
    v15 = [v7 uuid];
    v12 = [v14 objectForKeyedSubscript:v15];

    if (v12)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v13 = [MEMORY[0x1E696AF20] componentsWithString:@"photos://asset"];
  v20 = MEMORY[0x1E696AF60];
  v21 = [v7 uuid];
  v22 = [v20 queryItemWithName:@"uuid" value:v21];
  [v8 addObject:v22];

  v23 = [v28 uuid];

  if (v23)
  {
    v24 = MEMORY[0x1E696AF60];
    v12 = [v28 uuid];
    v18 = @"albumuuid";
    v17 = v24;
    v19 = v12;
    goto LABEL_11;
  }

LABEL_12:
  [v13 setQueryItems:v8];
  v26 = [v13 URL];
  v27 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v27 setURL:v26];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
LABEL_13:
}

@end