@interface PXContentSyndicationPhotoKitDataSource
- (PXContentSyndicationPhotoKitDataSource)initWithFetchResult:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)collectionAtIndexPath:(id)a3;
- (id)collectionListForSection:(int64_t)a3;
- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)a3;
- (id)dataSourceUpdatedWithChange:(id)a3 underlyingArrayChangeDetails:(id *)a4;
- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)indexPathForCollection:(id)a3;
- (id)mostRecentlyAddedDate;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)countForCollection:(id)a3;
@end

@implementation PXContentSyndicationPhotoKitDataSource

- (id)mostRecentlyAddedDate
{
  v2 = [(PHFetchResult *)self->_fetchResult firstObject];
  v3 = [v2 startDate];

  return v3;
}

- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXContentSyndicationPhotoKitDataSource *)self identifier])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  fetchResult = self->_fetchResult;

  return [(PHFetchResult *)fetchResult objectAtIndexedSubscript:?];
}

- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = [(PHFetchResult *)self->_fetchResult objectAtIndexedSubscript:a3->item];
  v4 = [[PXContentSyndicationItem alloc] initWithAssetCollection:v3];

  return v4;
}

- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:118 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (int64_t)countForCollection:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v10}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v5 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v10, v12}];

    goto LABEL_6;
  }

LABEL_3:
  v6 = [v5 estimatedAssetCount];

  return v6;
}

- (id)collectionListForSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)collectionAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:104 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)indexPathForCollection:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:100 description:@"Code which should be unreachable has been reached"];

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
    [v19 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

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
    [v18 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  v26 = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXContentSyndicationPhotoKitDataSource;
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
          v26 = [(PXContentSyndicationPhotoKitDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      v24 = [v13 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:88 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, v24}];
    }

    else
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v20 handleFailureInMethod:a3 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:88 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
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
  v4 = [(PXContentSyndicationPhotoKitDataSource *)self assetCollectionAtItemIndexPath:v6];

  return v4;
}

- (id)dataSourceUpdatedWithChange:(id)a3 underlyingArrayChangeDetails:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a3 changeDetailsForFetchResult:self->_fetchResult];
  if (v6)
  {
    v7 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: We have received changes to our fetch result: %@", &v13, 0xCu);
    }

    v8 = [v6 fetchResultAfterChanges];
    fetchResult = v8;
    if (!v8)
    {
      fetchResult = self->_fetchResult;
    }

    v10 = fetchResult;

    v11 = [[PXContentSyndicationPhotoKitDataSource alloc] initWithFetchResult:v10];
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = self;
    if (a4)
    {
LABEL_7:
      *a4 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v6];
    }
  }

  return v11;
}

- (PXContentSyndicationPhotoKitDataSource)initWithFetchResult:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v11.receiver = self;
  v11.super_class = PXContentSyndicationPhotoKitDataSource;
  v7 = [(PXContentSyndicationPhotoKitDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fetchResult, a3);
  }

  return v8;
}

@end