@interface PHMemory(PXSelectionAssetContainer)
- (id)px_fetchContainedAssets;
@end

@implementation PHMemory(PXSelectionAssetContainer)

- (id)px_fetchContainedAssets
{
  v2 = +[PXMemoriesFeedSettings sharedInstance];
  v3 = [v2 sharingBehavior];

  if (v3 == 2)
  {
    v7 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:a1 options:0];
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v7 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:a1];
LABEL_7:
    v6 = v7;
    goto LABEL_9;
  }

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E69788E0];
    v5 = [a1 photoLibrary];
    v6 = [v4 emptyFetchResultWithPhotoLibrary:v5];
  }

LABEL_9:

  return v6;
}

@end