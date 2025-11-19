@interface _SUIKSearchResultsUpdateOperation
- (NSArray)results;
- (SUIKSearchResultsCollectionViewControllerDelegate)delegate;
- (UICollectionViewDiffableDataSource)diffableDataSource;
- (_SUIKSearchResultsUpdateOperation)initWithResults:(id)a3 diffableDataSource:(id)a4 delegate:(id)a5;
- (void)main;
@end

@implementation _SUIKSearchResultsUpdateOperation

- (_SUIKSearchResultsUpdateOperation)initWithResults:(id)a3 diffableDataSource:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _SUIKSearchResultsUpdateOperation;
  v11 = [(_SUIKSearchResultsUpdateOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_results, v8);
    objc_storeWeak(&v12->_diffableDataSource, v9);
    objc_storeWeak(&v12->_delegate, v10);
  }

  return v12;
}

- (void)main
{
  v36 = *MEMORY[0x1E69E9840];
  if (([(_SUIKSearchResultsUpdateOperation *)self isCancelled]& 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
    objc_initWeak(&location, self);
    v4 = [(_SUIKSearchResultsUpdateOperation *)self results];
    v5 = [v4 count] == 0;

    v6 = &off_18B103000;
    if (!v5)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = [(_SUIKSearchResultsUpdateOperation *)self results];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __41___SUIKSearchResultsUpdateOperation_main__block_invoke;
      v32[3] = &unk_1E71DEB20;
      v32[4] = self;
      v9 = [v8 na_dictionaryByBucketingObjectsUsingKeyGenerator:v32];

      if (([(_SUIKSearchResultsUpdateOperation *)self isCancelled]& 1) != 0)
      {

LABEL_21:
        objc_destroyWeak(&location);

        return;
      }

      v10 = [v9 allKeys];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __41___SUIKSearchResultsUpdateOperation_main__block_invoke_2;
      v31[3] = &unk_1E71DEB48;
      v31[4] = self;
      v20 = [v10 sortedArrayUsingComparator:v31];

      if (([(_SUIKSearchResultsUpdateOperation *)self isCancelled]& 1) != 0)
      {
LABEL_20:

        goto LABEL_21;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v20;
      v11 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v11)
      {
        v12 = *v28;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            if (([(_SUIKSearchResultsUpdateOperation *)self isCancelled]& 1) != 0)
            {
              goto LABEL_19;
            }

            v34 = v14;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
            [v3 appendSectionsWithIdentifiers:v15];

            if (([(_SUIKSearchResultsUpdateOperation *)self isCancelled]& 1) != 0)
            {
              goto LABEL_19;
            }

            v16 = [v9 objectForKeyedSubscript:v14];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __41___SUIKSearchResultsUpdateOperation_main__block_invoke_3;
            v25[3] = &unk_1E71DEB70;
            v26 = v7;
            v17 = [v16 na_filter:v25];

            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __41___SUIKSearchResultsUpdateOperation_main__block_invoke_4;
            v24[3] = &unk_1E71DEB98;
            v24[4] = self;
            v18 = [v17 sortedArrayUsingComparator:v24];
            if (([(_SUIKSearchResultsUpdateOperation *)self isCancelled]& 1) != 0)
            {

LABEL_19:
              goto LABEL_20;
            }

            [v3 appendItemsWithIdentifiers:v18 intoSectionWithIdentifier:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v19 = [(_SUIKSearchResultsUpdateOperation *)self isCancelled];
      v6 = &off_18B103000;
      if (v19)
      {
        goto LABEL_21;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = *(v6 + 363);
    block[2] = __41___SUIKSearchResultsUpdateOperation_main__block_invoke_5;
    block[3] = &unk_1E71DC570;
    block[4] = self;
    v23 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_21;
  }
}

- (NSArray)results
{
  WeakRetained = objc_loadWeakRetained(&self->_results);

  return WeakRetained;
}

- (UICollectionViewDiffableDataSource)diffableDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_diffableDataSource);

  return WeakRetained;
}

- (SUIKSearchResultsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end