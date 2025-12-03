@interface SuggestionsDataSource
- (STSSearchModelUpdateDelegate)updateDelgate;
- (STSSuggestionSelectionDelegate)selectionDelegate;
- (SuggestionsDataSource)initWithSearchModel:(id)model;
- (id)stringValueForRowAtIndex:(int64_t)index;
- (int64_t)numberOfRows;
- (void)didSelectItemAtIndex:(int64_t)index;
- (void)updateQuerySuggestions:(id)suggestions;
@end

@implementation SuggestionsDataSource

- (SuggestionsDataSource)initWithSearchModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = SuggestionsDataSource;
  v6 = [(SuggestionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchModel, model);
  }

  return v7;
}

- (void)updateQuerySuggestions:(id)suggestions
{
  [(STSSearchModel *)self->_searchModel setQuerySuggestions:suggestions];
  WeakRetained = objc_loadWeakRetained(&self->_updateDelgate);
  [WeakRetained searchModelUpdated];
}

- (int64_t)numberOfRows
{
  querySuggestions = [(STSSearchModel *)self->_searchModel querySuggestions];
  v3 = [querySuggestions count];

  return v3;
}

- (id)stringValueForRowAtIndex:(int64_t)index
{
  if (index < 0)
  {
    suggestion = &stru_2876AE098;
  }

  else
  {
    querySuggestions = [(STSSearchModel *)self->_searchModel querySuggestions];
    v5 = [querySuggestions objectAtIndex:index];
    suggestion = [v5 suggestion];
  }

  return suggestion;
}

- (void)didSelectItemAtIndex:(int64_t)index
{
  querySuggestions = [(STSSearchModel *)self->_searchModel querySuggestions];
  v7 = [querySuggestions objectAtIndex:index];

  selectionDelegate = [(SuggestionsDataSource *)self selectionDelegate];
  [selectionDelegate suggestionViewController:self didSelectSuggestion:v7 suggested:0];
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