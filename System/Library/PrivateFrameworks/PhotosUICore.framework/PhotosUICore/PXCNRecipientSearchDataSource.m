@interface PXCNRecipientSearchDataSource
- (PXCNRecipientSearchDataSource)initWithSearchResults:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXCNRecipientSearchDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXCNRecipientSearchDataSource *)self identifier])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXCNRecipientSearchDataSourceManager.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == [self identifier]"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  searchResults = self->_searchResults;

  return [(NSArray *)searchResults objectAtIndexedSubscript:?];
}

- (PXCNRecipientSearchDataSource)initWithSearchResults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXCNRecipientSearchDataSource;
  v5 = [(PXCNRecipientSearchDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    searchResults = v5->_searchResults;
    v5->_searchResults = v6;
  }

  return v5;
}

@end