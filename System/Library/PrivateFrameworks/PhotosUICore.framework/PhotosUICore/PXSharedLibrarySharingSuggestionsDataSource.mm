@interface PXSharedLibrarySharingSuggestionsDataSource
- (PXSharedLibrarySharingSuggestionsDataSource)initWithSharingSuggestions:(id)a3 aggregateBeforeDate:(id)a4;
- (PXSharedLibrarySharingSuggestionsDataSourceDelegate)delegate;
- (id)_promiseForContainer:(id)a3;
- (id)itemIndexesForSharingSuggestions:(id)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXSharedLibrarySharingSuggestionsDataSource

- (PXSharedLibrarySharingSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)itemIndexesForSharingSuggestions:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [a3 valueForKeyPath:@"objectID"];
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

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSharedLibrarySharingSuggestionsDataSource *)self identifier])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsDataSourceManager.m" lineNumber:597 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_14:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  item = a3->item;
  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
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

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v9 = [(NSArray *)self->_containers objectAtIndexedSubscript:?];
  v8 = [(PXSharedLibrarySharingSuggestionsDataSource *)self _promiseForContainer:v9];

LABEL_11:

  return v8;
}

- (id)_promiseForContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_promiseByContainer objectForKeyedSubscript:v4];
  if (!v6)
  {
    v7 = [(PXSharedLibrarySharingSuggestionsDataSource *)v5 delegate];
    v6 = [v7 dataSource:v5 promiseForContainer:v4];

    if (!v6)
    {
      v8 = [PXSharedLibrarySharingSuggestionPromise alloc];
      v9 = [MEMORY[0x1E695DF00] distantFuture];
      v6 = [(PXSharedLibrarySharingSuggestionPromise *)v8 initWithContainer:v4 considerNewAfterDate:v9 lightweightPlaceholder:1];
    }

    [(NSMutableDictionary *)v5->_promiseByContainer setObject:v6 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (PXSharedLibrarySharingSuggestionsDataSource)initWithSharingSuggestions:(id)a3 aggregateBeforeDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PXSharedLibrarySharingSuggestionsDataSource;
  v9 = [(PXSharedLibrarySharingSuggestionsDataSource *)&v22 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [[PXSharedLibraryAggregateSharingSuggestionContainer alloc] initWithSharingSuggestions:v7 aggregateBeforeDate:v8];
    v12 = v11;
    if (v11)
    {
      v13 = [(PXSharedLibraryAggregateSharingSuggestionContainer *)v11 aggregationRange];
      v14 = [v7 fetchedObjects];
      v15 = [v14 subarrayWithRange:{0, v13}];
      [v10 addObjectsFromArray:v15];

      [v10 addObject:v12];
    }

    else
    {
      v16 = [v7 fetchedObjects];
      [v10 addObjectsFromArray:v16];
    }

    v17 = [v10 copy];
    containers = v9->_containers;
    v9->_containers = v17;

    objc_storeStrong(&v9->_sharingSuggestions, a3);
    objc_storeStrong(&v9->_aggregateBeforeDate, a4);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    promiseByContainer = v9->_promiseByContainer;
    v9->_promiseByContainer = v19;
  }

  return v9;
}

@end