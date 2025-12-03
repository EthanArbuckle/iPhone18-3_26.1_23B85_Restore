@interface PXFeedTestAssetsSectionInfo
- (PXFeedTestAssetsSectionInfo)initWithPhotoLibrary:(id)library;
- (id)_fetchPhotoAssets:(int64_t)assets;
- (id)assetForItemAtIndex:(int64_t)index;
- (id)countsByAssetDisplayType;
@end

@implementation PXFeedTestAssetsSectionInfo

- (id)_fetchPhotoAssets:(int64_t)assets
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE540] entityName];
  v7 = [v5 fetchRequestWithEntityName:entityName];

  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 0];
  v22[0] = v9;
  v10 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v7 setPredicate:v12];

  [v7 setFetchLimit:assets];
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v21 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [v7 setSortDescriptors:v14];

  photoLibrary = [(PXFeedTestSectionInfo *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  v17 = [managedObjectContext executeFetchRequest:v7 error:0];
  if (![v17 count])
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind = %d)", 0];
    [v7 setPredicate:v18];

    v19 = [managedObjectContext executeFetchRequest:v7 error:0];

    v17 = v19;
  }

  return v17;
}

- (id)countsByAssetDisplayType
{
  v17 = *MEMORY[0x1E69E9840];
  plAssets = [(PXFeedTestAssetsSectionInfo *)self plAssets];
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = plAssets;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        px_displayType = [*(*(&v12 + 1) + 8 * i) px_displayType];
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:px_displayType];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)assetForItemAtIndex:(int64_t)index
{
  plAssets = [(PXFeedTestAssetsSectionInfo *)self plAssets];
  v5 = [plAssets objectAtIndexedSubscript:index];

  return v5;
}

- (PXFeedTestAssetsSectionInfo)initWithPhotoLibrary:(id)library
{
  v8.receiver = self;
  v8.super_class = PXFeedTestAssetsSectionInfo;
  v3 = [(PXFeedTestSectionInfo *)&v8 initWithPhotoLibrary:library];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXFeedTestAssetsSectionInfo *)v3 _fetchPhotoAssets:[(PXFeedTestSectionInfo *)v3 countOfItems]];
    plAssets = v4->_plAssets;
    v4->_plAssets = v5;
  }

  return v4;
}

@end