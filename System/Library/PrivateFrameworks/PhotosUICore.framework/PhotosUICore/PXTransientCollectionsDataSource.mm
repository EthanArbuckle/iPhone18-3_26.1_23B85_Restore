@interface PXTransientCollectionsDataSource
- (PXTransientCollectionsDataSource)init;
- (PXTransientCollectionsDataSource)initWithFetchResult:(id)a3;
- (id)collectionAtIndexPath:(id)a3;
- (id)collectionListForSection:(int64_t)a3;
- (id)indexPathForCollection:(id)a3;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXTransientCollectionsDataSource

- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3
{
  section = a3->section;
  if (a3->dataSourceIdentifier == *off_1E7721F68 || section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL || section != 0)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  return [(PXTransientCollectionsDataSource *)self fetchResult];
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXTransientCollectionsDataSource *)self fetchResult];
  v4 = [v3 count];

  return v4;
}

- (id)collectionListForSection:(int64_t)a3
{
  if (a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXTransientCollectionsDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  v4 = MEMORY[0x1E6978760];
  v5 = [(PXTransientCollectionsDataSource *)self fetchResult];
  v6 = [v5 fetchedObjects];
  v7 = [v4 transientCollectionListWithCollections:v6 title:0];

  return v7;
}

- (id)collectionAtIndexPath:(id)a3
{
  v5 = a3;
  if ([v5 section])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXTransientCollectionsDataSource.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  v6 = [(PXTransientCollectionsDataSource *)self fetchResult];
  v7 = [v5 item];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (id)indexPathForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXTransientCollectionsDataSource *)self fetchResult];
  v6 = [v5 indexOfObject:v4];

  v7 = MEMORY[0x1E696AC88];

  return [v7 indexPathForItem:v6 inSection:0];
}

- (PXTransientCollectionsDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXTransientCollectionsDataSource.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXTransientCollectionsDataSource init]"}];

  abort();
}

- (PXTransientCollectionsDataSource)initWithFetchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXTransientCollectionsDataSource;
  v6 = [(PXTransientCollectionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, a3);
  }

  return v7;
}

@end