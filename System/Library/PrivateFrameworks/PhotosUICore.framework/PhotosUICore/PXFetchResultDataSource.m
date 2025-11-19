@interface PXFetchResultDataSource
- (PXFetchResultDataSource)init;
- (PXFetchResultDataSource)initWithFetchResult:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXFetchResultDataSource

- (id)objectsInIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];

    dataSourceIdentifier = a3->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXFetchResultDataSource *)self identifier])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->section)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  return [(PXFetchResultDataSource *)self fetchResult];
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];

    dataSourceIdentifier = a3->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXFetchResultDataSource *)self identifier])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->section)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == 0"}];
  }

  item = a3->item;
  v10 = [(PXFetchResultDataSource *)self fetchResult];
  v11 = [v10 objectAtIndexedSubscript:item];

  return v11;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if (a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  v4 = [(PXFetchResultDataSource *)self fetchResult];
  v5 = [v4 count];

  return v5;
}

- (PXFetchResultDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFetchResultDataSource.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXFetchResultDataSource init]"}];

  abort();
}

- (PXFetchResultDataSource)initWithFetchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXFetchResultDataSource;
  v6 = [(PXFetchResultDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResult, a3);
  }

  return v7;
}

@end