@interface PXContentSyndicationMockSingleAssetsDataSource
- (PXContentSyndicationMockSingleAssetsDataSource)initWithFetchResult:(id)result;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)collectionAtIndexPath:(id)path;
- (id)collectionListForSection:(int64_t)section;
- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)dataSourceUpdatedWithChange:(id)change changeDetails:(id *)details;
- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)path;
- (id)indexPathForCollection:(id)collection;
- (id)mostRecentlyAddedDate;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXContentSyndicationMockSingleAssetsDataSource

- (id)mostRecentlyAddedDate
{
  firstObject = [(PHFetchResult *)self->_fetchResult firstObject];
  [firstObject fetchPropertySetsIfNeeded];
  curationProperties = [firstObject curationProperties];
  addedDate = [curationProperties addedDate];

  return addedDate;
}

- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v20[1] = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXContentSyndicationMockSingleAssetsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];
  }

  v9 = [(PHFetchResult *)self->_fetchResult objectAtIndexedSubscript:?];
  v10 = objc_alloc(MEMORY[0x1E69788E0]);
  v20[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  photoLibrary = [(PHFetchResult *)self->_fetchResult photoLibrary];
  fetchType = [(PHFetchResult *)self->_fetchResult fetchType];
  fetchPropertySets = [(PHFetchResult *)self->_fetchResult fetchPropertySets];
  v15 = [v10 initWithObjects:v11 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

  v16 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v15 subtype:1000000501];

  return v16;
}

- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v7[0] = *&path->dataSourceIdentifier;
  v7[1] = v3;
  v4 = [(PXContentSyndicationMockSingleAssetsDataSource *)self assetCollectionAtItemIndexPath:v7];
  v5 = [[PXContentSyndicationItem alloc] initWithAssetCollection:v4];

  return v5;
}

- (id)existingAssetsFetchResultAtIndexPath:(PXSimpleIndexPath *)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:114 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)collectionListForSection:(int64_t)section
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:106 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)collectionAtIndexPath:(id)path
{
  pathCopy = path;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:102 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (id)indexPathForCollection:(id)collection
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:98 description:@"Code which should be unreachable has been reached"];

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
    [currentHandler handleFailureInMethod:reference object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"objectReference"}];

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
    [currentHandler2 handleFailureInMethod:reference object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(objectReference.indexPath)"}];
  }

  identifier = 0u;
  v27 = 0u;
  v25.receiver = self;
  v25.super_class = PXContentSyndicationMockSingleAssetsDataSource;
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
          identifier = [(PXContentSyndicationMockSingleAssetsDataSource *)self identifier];
          *&v27 = v15;
          *(&v27 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_15;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v22, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [currentHandler3 handleFailureInMethod:reference object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:86 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v22}];
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
  v4 = [(PXContentSyndicationMockSingleAssetsDataSource *)self assetCollectionAtItemIndexPath:v6];

  return v4;
}

- (id)dataSourceUpdatedWithChange:(id)change changeDetails:(id *)details
{
  v6 = [change changeDetailsForFetchResult:self->_fetchResult];
  v7 = v6;
  if (v6)
  {
    fetchResultAfterChanges = [v6 fetchResultAfterChanges];
    fetchResult = fetchResultAfterChanges;
    if (!fetchResultAfterChanges)
    {
      fetchResult = self->_fetchResult;
    }

    v10 = fetchResult;

    selfCopy = [[PXContentSyndicationMockSingleAssetsDataSource alloc] initWithFetchResult:v10];
    if (details)
    {
      goto LABEL_5;
    }
  }

  else
  {
    selfCopy = self;
    if (details)
    {
LABEL_5:
      *details = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v7];
    }
  }

  return selfCopy;
}

- (PXContentSyndicationMockSingleAssetsDataSource)initWithFetchResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockSingleAssetsDataSource.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v11.receiver = self;
  v11.super_class = PXContentSyndicationMockSingleAssetsDataSource;
  v7 = [(PXContentSyndicationMockSingleAssetsDataSource *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fetchResult, result);
  }

  return v8;
}

@end