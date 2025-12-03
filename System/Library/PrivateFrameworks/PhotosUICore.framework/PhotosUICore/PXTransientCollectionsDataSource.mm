@interface PXTransientCollectionsDataSource
- (PXTransientCollectionsDataSource)init;
- (PXTransientCollectionsDataSource)initWithFetchResult:(id)result;
- (id)collectionAtIndexPath:(id)path;
- (id)collectionListForSection:(int64_t)section;
- (id)indexPathForCollection:(id)collection;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXTransientCollectionsDataSource

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  section = path->section;
  if (path->dataSourceIdentifier == *off_1E7721F68 || section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL || section != 0)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  return [(PXTransientCollectionsDataSource *)self fetchResult];
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  fetchResult = [(PXTransientCollectionsDataSource *)self fetchResult];
  v4 = [fetchResult count];

  return v4;
}

- (id)collectionListForSection:(int64_t)section
{
  if (section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTransientCollectionsDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  v4 = MEMORY[0x1E6978760];
  fetchResult = [(PXTransientCollectionsDataSource *)self fetchResult];
  fetchedObjects = [fetchResult fetchedObjects];
  v7 = [v4 transientCollectionListWithCollections:fetchedObjects title:0];

  return v7;
}

- (id)collectionAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTransientCollectionsDataSource.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  fetchResult = [(PXTransientCollectionsDataSource *)self fetchResult];
  item = [pathCopy item];

  v8 = [fetchResult objectAtIndex:item];

  return v8;
}

- (id)indexPathForCollection:(id)collection
{
  collectionCopy = collection;
  fetchResult = [(PXTransientCollectionsDataSource *)self fetchResult];
  v6 = [fetchResult indexOfObject:collectionCopy];

  v7 = MEMORY[0x1E696AC88];

  return [v7 indexPathForItem:v6 inSection:0];
}

- (PXTransientCollectionsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTransientCollectionsDataSource.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXTransientCollectionsDataSource init]"}];

  abort();
}

- (PXTransientCollectionsDataSource)initWithFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PXTransientCollectionsDataSource;
  v6 = [(PXTransientCollectionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, result);
  }

  return v7;
}

@end