@interface PXSharedLibrarySharingSuggestionsDataSource
- (PXSharedLibrarySharingSuggestionsDataSource)initWithSharingSuggestions:(id)suggestions aggregateBeforeDate:(id)date;
- (PXSharedLibrarySharingSuggestionsDataSourceDelegate)delegate;
- (id)_promiseForContainer:(id)container;
- (id)itemIndexesForSharingSuggestions:(id)suggestions;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXSharedLibrarySharingSuggestionsDataSource

- (PXSharedLibrarySharingSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)itemIndexesForSharingSuggestions:(id)suggestions
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [suggestions valueForKeyPath:@"objectID"];
  v6 = [v4 setWithArray:v5];

  containers = self->_containers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PXSharedLibrarySharingSuggestionsDataSource_itemIndexesForSharingSuggestions___block_invoke;
  v11[3] = &unk_1E7736EA8;
  v12 = v6;
  v8 = v6;
  v9 = [(NSArray *)containers indexesOfObjectsPassingTest:v11];

  return v9;
}

uint64_t __80__PXSharedLibrarySharingSuggestionsDataSource_itemIndexesForSharingSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 px_sl_containedSharingSuggestionObjectIDs];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibrarySharingSuggestionsDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsDataSourceManager.m" lineNumber:597 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  item = path->item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = @"PXSharedLibrarySuggestionDataSourceSection";
    goto LABEL_11;
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v9 = [(NSArray *)self->_containers objectAtIndexedSubscript:?];
  v8 = [(PXSharedLibrarySharingSuggestionsDataSource *)self _promiseForContainer:v9];

LABEL_11:

  return v8;
}

- (id)_promiseForContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_promiseByContainer objectForKeyedSubscript:containerCopy];
  if (!v6)
  {
    delegate = [(PXSharedLibrarySharingSuggestionsDataSource *)selfCopy delegate];
    v6 = [delegate dataSource:selfCopy promiseForContainer:containerCopy];

    if (!v6)
    {
      v8 = [PXSharedLibrarySharingSuggestionPromise alloc];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v6 = [(PXSharedLibrarySharingSuggestionPromise *)v8 initWithContainer:containerCopy considerNewAfterDate:distantFuture lightweightPlaceholder:1];
    }

    [(NSMutableDictionary *)selfCopy->_promiseByContainer setObject:v6 forKeyedSubscript:containerCopy];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (PXSharedLibrarySharingSuggestionsDataSource)initWithSharingSuggestions:(id)suggestions aggregateBeforeDate:(id)date
{
  suggestionsCopy = suggestions;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = PXSharedLibrarySharingSuggestionsDataSource;
  v9 = [(PXSharedLibrarySharingSuggestionsDataSource *)&v22 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [[PXSharedLibraryAggregateSharingSuggestionContainer alloc] initWithSharingSuggestions:suggestionsCopy aggregateBeforeDate:dateCopy];
    v12 = v11;
    if (v11)
    {
      aggregationRange = [(PXSharedLibraryAggregateSharingSuggestionContainer *)v11 aggregationRange];
      fetchedObjects = [suggestionsCopy fetchedObjects];
      v15 = [fetchedObjects subarrayWithRange:{0, aggregationRange}];
      [v10 addObjectsFromArray:v15];

      [v10 addObject:v12];
    }

    else
    {
      fetchedObjects2 = [suggestionsCopy fetchedObjects];
      [v10 addObjectsFromArray:fetchedObjects2];
    }

    v17 = [v10 copy];
    containers = v9->_containers;
    v9->_containers = v17;

    objc_storeStrong(&v9->_sharingSuggestions, suggestions);
    objc_storeStrong(&v9->_aggregateBeforeDate, date);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    promiseByContainer = v9->_promiseByContainer;
    v9->_promiseByContainer = v19;
  }

  return v9;
}

@end