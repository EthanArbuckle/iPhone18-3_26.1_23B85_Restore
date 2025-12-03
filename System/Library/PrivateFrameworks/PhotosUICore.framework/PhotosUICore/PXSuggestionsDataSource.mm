@interface PXSuggestionsDataSource
- (PXSuggestionsDataSource)init;
- (PXSuggestionsDataSource)initWithSuggestionsFetchResult:(id)result;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXSuggestionsDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  item = path->item;
  if (path->dataSourceIdentifier == *off_1E7721F68 || item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];

    item = path->item;
  }

  if (item >= [(PXDisplaySuggestionFetchResult *)self->_suggestions count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"indexPath.item < _suggestions.count"}];
  }

  suggestions = self->_suggestions;
  v10 = path->item;

  return [(PXDisplaySuggestionFetchResult *)suggestions objectAtIndex:v10];
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  suggestions = self->_suggestions;

  return [(PXDisplaySuggestionFetchResult *)suggestions count];
}

- (PXSuggestionsDataSource)initWithSuggestionsFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PXSuggestionsDataSource;
  v6 = [(PXSuggestionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, result);
  }

  return v7;
}

- (PXSuggestionsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:14 description:{@"%s is not available as initializer", "-[PXSuggestionsDataSource init]"}];

  abort();
}

@end