@interface PXSuggestionsDataSource
- (PXSuggestionsDataSource)init;
- (PXSuggestionsDataSource)initWithSuggestionsFetchResult:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXSuggestionsDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  item = a3->item;
  if (a3->dataSourceIdentifier == *off_1E7721F68 || item == 0x7FFFFFFFFFFFFFFFLL || a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(indexPath)"}];

    item = a3->item;
  }

  if (item >= [(PXDisplaySuggestionFetchResult *)self->_suggestions count])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"indexPath.item < _suggestions.count"}];
  }

  suggestions = self->_suggestions;
  v10 = a3->item;

  return [(PXDisplaySuggestionFetchResult *)suggestions objectAtIndex:v10];
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if (a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"section == 0"}];
  }

  suggestions = self->_suggestions;

  return [(PXDisplaySuggestionFetchResult *)suggestions count];
}

- (PXSuggestionsDataSource)initWithSuggestionsFetchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXSuggestionsDataSource;
  v6 = [(PXSuggestionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, a3);
  }

  return v7;
}

- (PXSuggestionsDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSource.m" lineNumber:14 description:{@"%s is not available as initializer", "-[PXSuggestionsDataSource init]"}];

  abort();
}

@end