@interface SuggestionsDataSource
- (STSSearchModelUpdateDelegate)updateDelgate;
- (STSSuggestionSelectionDelegate)selectionDelegate;
- (SuggestionsDataSource)initWithSearchModel:(id)a3;
- (id)stringValueForRowAtIndex:(int64_t)a3;
- (int64_t)numberOfRows;
- (void)didSelectItemAtIndex:(int64_t)a3;
- (void)updateQuerySuggestions:(id)a3;
@end

@implementation SuggestionsDataSource

- (SuggestionsDataSource)initWithSearchModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SuggestionsDataSource;
  v6 = [(SuggestionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchModel, a3);
  }

  return v7;
}

- (void)updateQuerySuggestions:(id)a3
{
  [(STSSearchModel *)self->_searchModel setQuerySuggestions:a3];
  WeakRetained = objc_loadWeakRetained(&self->_updateDelgate);
  [WeakRetained searchModelUpdated];
}

- (int64_t)numberOfRows
{
  v2 = [(STSSearchModel *)self->_searchModel querySuggestions];
  v3 = [v2 count];

  return v3;
}

- (id)stringValueForRowAtIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = &stru_2876AE098;
  }

  else
  {
    v4 = [(STSSearchModel *)self->_searchModel querySuggestions];
    v5 = [v4 objectAtIndex:a3];
    v6 = [v5 suggestion];
  }

  return v6;
}

- (void)didSelectItemAtIndex:(int64_t)a3
{
  v5 = [(STSSearchModel *)self->_searchModel querySuggestions];
  v7 = [v5 objectAtIndex:a3];

  v6 = [(SuggestionsDataSource *)self selectionDelegate];
  [v6 suggestionViewController:self didSelectSuggestion:v7 suggested:0];
}

- (STSSearchModelUpdateDelegate)updateDelgate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelgate);

  return WeakRetained;
}

- (STSSuggestionSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end