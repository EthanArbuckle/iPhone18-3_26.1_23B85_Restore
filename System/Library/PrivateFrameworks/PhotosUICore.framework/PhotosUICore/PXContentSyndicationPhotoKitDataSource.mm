@interface PXContentSyndicationPhotoKitDataSource
- (PXContentSyndicationPhotoKitDataSource)initWithFetchResult:(id)result;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)collectionAtIndexPath:(id)path;
- (id)collectionListForSection:(int64_t)section;
- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)dataSourceUpdatedWithChange:(id)change underlyingArrayChangeDetails:(id *)details;
- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)path;
- (id)indexPathForCollection:(id)collection;
- (id)mostRecentlyAddedDate;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)countForCollection:(id)collection;
@end

@implementation PXContentSyndicationPhotoKitDataSource

- (id)mostRecentlyAddedDate
{
  firstObject = [(PHFetchResult *)self->_fetchResult firstObject];
  startDate = [firstObject startDate];

  return startDate;
}

- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXContentSyndicationPhotoKitDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  fetchResult = self->_fetchResult;

  return [(PHFetchResult *)fetchResult objectAtIndexedSubscript:?];
}

- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = [(PHFetchResult *)self->_fetchResult objectAtIndexedSubscript:path->item];
  v4 = [[PXContentSyndicationItem alloc] initWithAssetCollection:v3];

  return v4;
}

- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:118 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (int64_t)countForCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v10}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [collectionCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v10, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  estimatedAssetCount = [collectionCopy estimatedAssetCount];

  return estimatedAssetCount;
}

- (id)collectionListForSection:(int64_t)section
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)collectionAtIndexPath:(id)path
{
  pathCopy = path;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:104 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)indexPathForCollection:(id)collection
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:100 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = identifier;
    v10 = v27 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:reference object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

    v10 = 0;
    v9 = 0;
    identifier = 0u;
    v27 = 0u;
  }

  v11 = *off_1E7721F68;
  v12 = v9 != *off_1E7721F68 && !v10;
  if (!v12 || *(&v27 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:reference object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  identifier = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXContentSyndicationPhotoKitDataSource;
  [(PXSimpleIndexPath *)&v25 indexPathForObjectReference:v8];
  if (identifier == v11)
  {
    itemObject = [v8 itemObject];
    if (itemObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v14 = [(PHFetchResult *)self->_fetchResult indexOfObject:itemObject];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v14;
          identifier = [(PXContentSyndicationPhotoKitDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:88 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:88 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
    }

    goto LABEL_12;
  }

LABEL_15:
  v16 = v27;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v16;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXContentSyndicationPhotoKitDataSource *)self assetCollectionAtItemIndexPath:v6];

  return v4;
}

- (id)dataSourceUpdatedWithChange:(id)change underlyingArrayChangeDetails:(id *)details
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [change changeDetailsForFetchResult:self->_fetchResult];
  if (v6)
  {
    v7 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "ContentSyndicationPhotoKitDataSourceManager: We have received changes to our fetch result: %@", &v13, 0xCu);
    }

    fetchResultAfterChanges = [v6 fetchResultAfterChanges];
    fetchResult = fetchResultAfterChanges;
    if (!fetchResultAfterChanges)
    {
      fetchResult = self->_fetchResult;
    }

    v10 = fetchResult;

    selfCopy = [[PXContentSyndicationPhotoKitDataSource alloc] initWithFetchResult:v10];
    if (details)
    {
      goto LABEL_7;
    }
  }

  else
  {
    selfCopy = self;
    if (details)
    {
LABEL_7:
      *details = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v6];
    }
  }

  return selfCopy;
}

- (PXContentSyndicationPhotoKitDataSource)initWithFetchResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationPhotoKitDataSource.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v11.receiver = self;
  v11.super_class = PXContentSyndicationPhotoKitDataSource;
  v7 = [(PXContentSyndicationPhotoKitDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fetchResult, result);
  }

  return v8;
}

@end