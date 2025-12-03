@interface PXCNRecipientSearchDataSource
- (PXCNRecipientSearchDataSource)initWithSearchResults:(id)results;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXCNRecipientSearchDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXCNRecipientSearchDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCNRecipientSearchDataSourceManager.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == [self identifier]"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68 || path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  searchResults = self->_searchResults;

  return [(NSArray *)searchResults objectAtIndexedSubscript:?];
}

- (PXCNRecipientSearchDataSource)initWithSearchResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = PXCNRecipientSearchDataSource;
  v5 = [(PXCNRecipientSearchDataSource *)&v9 init];
  if (v5)
  {
    v6 = [resultsCopy copy];
    searchResults = v5->_searchResults;
    v5->_searchResults = v6;
  }

  return v5;
}

@end