@interface PXContentSyndicationMockSingleAssetsDataSource
- (PXContentSyndicationMockSingleAssetsDataSource)initWithFetchResult:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)collectionAtIndexPath:(id)a3;
- (id)collectionListForSection:(int64_t)a3;
- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)dataSourceUpdatedWithChange:(id)a3 changeDetails:(id *)a4;
- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)indexPathForCollection:(id)a3;
- (id)mostRecentlyAddedDate;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXContentSyndicationMockSingleAssetsDataSource

- (id)mostRecentlyAddedDate
{
  v2 = [(PHFetchResult *)self->_fetchResult firstObject];
  [v2 fetchPropertySetsIfNeeded];
  v3 = [v2 curationProperties];
  v4 = [v3 addedDate];

  return v4;
}

- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXContentSyndicationMockSingleAssetsDataSource *)self identifier])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PHFetchResult *)self->_fetchResult objectAtIndexedSubscript:?];
  v10 = objc_alloc(MEMORY[0x1E69788E0]);
  v20[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v12 = [(PHFetchResult *)self->_fetchResult photoLibrary];
  v13 = [(PHFetchResult *)self->_fetchResult fetchType];
  v14 = [(PHFetchResult *)self->_fetchResult fetchPropertySets];
  v15 = [v10 initWithObjects:v11 photoLibrary:v12 fetchType:v13 fetchPropertySets:v14 identifier:0 registerIfNeeded:0];

  v16 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v15 subtype:1000000501];

  return v16;
}

- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXContentSyndicationMockSingleAssetsDataSource *)self assetCollectionAtItemIndexPath:v7];
  v5 = [[PXContentSyndicationItem alloc] initWithAssetCollection:v4];

  return v5;
}

- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:114 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)collectionListForSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:106 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)collectionAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:102 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)indexPathForCollection:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:98 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = v26;
    v10 = v27 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  v11 = *off_1E7721F68;
  v12 = v9 != *off_1E7721F68 && !v10;
  if (!v12 || *(&v27 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  v26 = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXContentSyndicationMockSingleAssetsDataSource;
  [(PXSimpleIndexPath *)&v25 indexPathForObjectReference:v8];
  if (v26 == v11)
  {
    v13 = [v8 itemObject];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v14 = [(PHFetchResult *)self->_fetchResult indexOfObject:v13];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v14;
          v26 = [(PXContentSyndicationMockSingleAssetsDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      v24 = [v13 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, v24}];
    }

    else
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v20 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
    }

    goto LABEL_12;
  }

LABEL_15:
  v16 = v27;
  *&retstr->dataSourceIdentifier = v26;
  *&retstr->item = v16;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v6[0] = *&a3->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXContentSyndicationMockSingleAssetsDataSource *)self assetCollectionAtItemIndexPath:v6];

  return v4;
}

- (id)dataSourceUpdatedWithChange:(id)a3 changeDetails:(id *)a4
{
  v6 = [a3 changeDetailsForFetchResult:self->_fetchResult];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 fetchResultAfterChanges];
    fetchResult = v8;
    if (!v8)
    {
      fetchResult = self->_fetchResult;
    }

    v10 = fetchResult;

    v11 = [[PXContentSyndicationMockSingleAssetsDataSource alloc] initWithFetchResult:v10];
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = self;
    if (a4)
    {
LABEL_5:
      *a4 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v7];
    }
  }

  return v11;
}

- (PXContentSyndicationMockSingleAssetsDataSource)initWithFetchResult:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v11.receiver = self;
  v11.super_class = PXContentSyndicationMockSingleAssetsDataSource;
  v7 = [(PXContentSyndicationMockSingleAssetsDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fetchResult, a3);
  }

  return v8;
}

@end