@interface PXPhotoKitAssetCopyInternalURLActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCopyInternalURLActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  if (case == 2)
  {
    return @"(Internal) Copy URL";
  }

  else
  {
    return @"Copy URL";
  }
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v7 = [PXRootSettings sharedInstance:asset];
  canShowInternalUI = [v7 canShowInternalUI];
  if (asset)
  {
    v9 = canShowInternalUI;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject = [allKeys firstObject];

  assetsByAssetCollection2 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [assetsByAssetCollection2 objectForKeyedSubscript:firstObject];
  firstObject2 = [v6 firstObject];

  if (!firstObject2)
  {
    v13 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"No asset available in %@", self}];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v13];
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  transientIdentifier = [firstObject transientIdentifier];
  v10 = [transientIdentifier componentsSeparatedByString:@":"];
  firstObject3 = [v10 firstObject];

  if ([firstObject px_isSuggestion])
  {
    localIdentifier = [firstObject localIdentifier];
    if (!localIdentifier)
    {
      goto LABEL_9;
    }

LABEL_8:
    v13 = [MEMORY[0x1E696AF20] componentsWithString:@"photos://featuredPhoto"];
    v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"identifier" value:localIdentifier];
    [v8 addObject:v16];

    v17 = MEMORY[0x1E696AF60];
    v18 = @"source";
    v19 = @"widget";
LABEL_11:
    v25 = [v17 queryItemWithName:v18 value:v19];
    [v8 addObject:v25];

    goto LABEL_12;
  }

  if ([firstObject3 isEqualToString:@"PXFeaturedPhotosVirtualCollection"])
  {
    dataSourceUserInfo = [(PXPhotoKitAssetActionPerformer *)self dataSourceUserInfo];
    uuid = [firstObject2 uuid];
    localIdentifier = [dataSourceUserInfo objectForKeyedSubscript:uuid];

    if (localIdentifier)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v13 = [MEMORY[0x1E696AF20] componentsWithString:@"photos://asset"];
  v20 = MEMORY[0x1E696AF60];
  uuid2 = [firstObject2 uuid];
  v22 = [v20 queryItemWithName:@"uuid" value:uuid2];
  [v8 addObject:v22];

  uuid3 = [firstObject uuid];

  if (uuid3)
  {
    v24 = MEMORY[0x1E696AF60];
    localIdentifier = [firstObject uuid];
    v18 = @"albumuuid";
    v17 = v24;
    v19 = localIdentifier;
    goto LABEL_11;
  }

LABEL_12:
  [v13 setQueryItems:v8];
  v26 = [v13 URL];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setURL:v26];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
LABEL_13:
}

@end