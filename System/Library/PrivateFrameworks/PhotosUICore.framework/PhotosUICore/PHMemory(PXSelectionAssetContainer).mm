@interface PHMemory(PXSelectionAssetContainer)
- (id)px_fetchContainedAssets;
@end

@implementation PHMemory(PXSelectionAssetContainer)

- (id)px_fetchContainedAssets
{
  v2 = +[PXMemoriesFeedSettings sharedInstance];
  sharingBehavior = [v2 sharingBehavior];

  if (sharingBehavior == 2)
  {
    v7 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self options:0];
    goto LABEL_7;
  }

  if (sharingBehavior == 1)
  {
    v7 = [MEMORY[0x1E6978630] fetchCuratedAssetsInAssetCollection:self];
LABEL_7:
    v6 = v7;
    goto LABEL_9;
  }

  if (sharingBehavior)
  {
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E69788E0];
    photoLibrary = [self photoLibrary];
    v6 = [v4 emptyFetchResultWithPhotoLibrary:photoLibrary];
  }

LABEL_9:

  return v6;
}

@end