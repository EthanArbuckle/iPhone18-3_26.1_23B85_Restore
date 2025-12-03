@interface PXFetchResultDataSource
- (PXFetchResultDataSource)init;
- (PXFetchResultDataSource)initWithFetchResult:(id)result;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXFetchResultDataSource

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (path->dataSourceIdentifier == *off_1E7721F68 || path->section == 0x7FFFFFFFFFFFFFFFLL || path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];

    dataSourceIdentifier = path->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXFetchResultDataSource *)self identifier])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->section)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  return [(PXFetchResultDataSource *)self fetchResult];
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];

    dataSourceIdentifier = path->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXFetchResultDataSource *)self identifier])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->section)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  item = path->item;
  fetchResult = [(PXFetchResultDataSource *)self fetchResult];
  v11 = [fetchResult objectAtIndexedSubscript:item];

  return v11;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  fetchResult = [(PXFetchResultDataSource *)self fetchResult];
  v5 = [fetchResult count];

  return v5;
}

- (PXFetchResultDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXFetchResultDataSource init]"}];

  abort();
}

- (PXFetchResultDataSource)initWithFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PXFetchResultDataSource;
  v6 = [(PXFetchResultDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, result);
  }

  return v7;
}

@end