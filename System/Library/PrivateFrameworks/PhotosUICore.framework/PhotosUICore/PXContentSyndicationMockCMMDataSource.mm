@interface PXContentSyndicationMockCMMDataSource
- (PXContentSyndicationMockCMMDataSource)initWithCMMDataSource:(id)source;
- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)collectionAtIndexPath:(id)path;
- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)mostRecentlyAddedDate;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)countForCollection:(id)collection;
- (int64_t)identifier;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section;
@end

@implementation PXContentSyndicationMockCMMDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  v5 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v5;
  v6 = [cmmDataSource invitationAtItemIndexPath:v9];

  assetCollection = [v6 assetCollection];

  return assetCollection;
}

- (int64_t)numberOfSubitemsInItem:(int64_t)item section:(int64_t)section
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  v7 = [cmmDataSource numberOfSubitemsInItem:item section:section];

  return v7;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  v4 = [cmmDataSource numberOfItemsInSection:0];

  return v4;
}

- (int64_t)numberOfSections
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  numberOfSections = [cmmDataSource numberOfSections];

  return numberOfSections;
}

- (int64_t)countForCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (collectionCopy)
  {
    if (([collectionCopy conformsToProtocol:&unk_1F198AE70] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationMockCMMDataSource.m" lineNumber:95 description:{@"%@ should be nil or conform to protocol %@, but %@ doesn't", @"collection", @"PXDisplayAssetCollection", px_descriptionForAssertionMessage}];
    }

    estimatedAssetCount = [v6 estimatedAssetCount];
  }

  else
  {
    estimatedAssetCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return estimatedAssetCount;
}

- (id)collectionAtIndexPath:(id)path
{
  v6 = 0u;
  v7 = 0u;
  pathCopy = path;
  [(PXContentSyndicationMockCMMDataSource *)self identifier];
  PXSimpleIndexPathFromIndexPath();
}

- (id)mostRecentlyAddedDate
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  v3 = cmmDataSource;
  v9 = 0u;
  v10 = 0u;
  if (cmmDataSource)
  {
    [cmmDataSource firstItemIndexPath];
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == *off_1E7721F68)
  {
    creationDate = 0;
  }

  else
  {
    v8[0] = v9;
    v8[1] = v10;
    v6 = [v3 invitationAtItemIndexPath:v8];
    creationDate = [v6 creationDate];
  }

  return creationDate;
}

- (id)assetCollectionAtItemIndexPath:(PXSimpleIndexPath *)path
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  v5 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v5;
  v6 = [cmmDataSource invitationAtItemIndexPath:v9];

  assetCollection = [v6 assetCollection];

  return assetCollection;
}

- (id)contentSyndicationItemAtItemIndexPath:(PXSimpleIndexPath *)path
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  v5 = *&path->item;
  v10[0] = *&path->dataSourceIdentifier;
  v10[1] = v5;
  v6 = [cmmDataSource invitationAtItemIndexPath:v10];

  assetCollection = [v6 assetCollection];
  v8 = [[PXContentSyndicationItem alloc] initWithAssetCollection:assetCollection];

  return v8;
}

- (int64_t)identifier
{
  cmmDataSource = [(PXContentSyndicationMockCMMDataSource *)self cmmDataSource];
  identifier = [cmmDataSource identifier];

  return identifier;
}

- (PXContentSyndicationMockCMMDataSource)initWithCMMDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = PXContentSyndicationMockCMMDataSource;
  v6 = [(PXContentSyndicationMockCMMDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cmmDataSource, source);
  }

  return v7;
}

@end