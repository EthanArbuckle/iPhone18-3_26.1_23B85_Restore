@interface WBSCloudHistoryMergeOperation
- (WBSCloudHistoryMergeOperation)initWithDatabase:(id)a3 fetchResult:(id)a4 profileServerIdentifier:(id)a5;
- (void)_buildRedirectChains;
- (void)_buildVisitsByVisitIdentifiersMap;
- (void)_filterVisitsByTombstones;
- (void)_loadTombstonesWithCompletion:(id)a3;
- (void)_lookUpExistingItemsWithCompletion:(id)a3;
- (void)_mergeVisitsWithCompletion:(id)a3;
- (void)_removeDuplicateVisits;
- (void)_replayAndAddTombstones:(id)a3;
- (void)_updateClientVersions;
- (void)mergeWithCompletion:(id)a3;
@end

@implementation WBSCloudHistoryMergeOperation

- (WBSCloudHistoryMergeOperation)initWithDatabase:(id)a3 fetchResult:(id)a4 profileServerIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = WBSCloudHistoryMergeOperation;
  v12 = [(WBSCloudHistoryMergeOperation *)&v17 init];
  if (v12)
  {
    v13 = dispatch_queue_create("com.apple.SafariShared.WBSCloudHistoryMergeOperation", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    objc_storeStrong(&v12->_fetchResult, a4);
    objc_storeStrong(&v12->_database, a3);
    objc_storeStrong(&v12->_profileServerIdentifier, a5);
    v15 = v12;
  }

  return v12;
}

- (void)mergeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 1;
  [*(a1 + 32) _updateClientVersions];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke_2;
  v3[3] = &unk_1E7FB81B8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _replayAndAddTombstones:v3];
}

void __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _buildVisitsByVisitIdentifiersMap];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke_3;
  v3[3] = &unk_1E7FB81B8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _loadTombstonesWithCompletion:v3];
}

void __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _buildRedirectChains];
  [*(a1 + 32) _filterVisitsByTombstones];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke_4;
  v3[3] = &unk_1E7FB81B8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _lookUpExistingItemsWithCompletion:v3];
}

uint64_t __53__WBSCloudHistoryMergeOperation_mergeWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _removeDuplicateVisits];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _mergeVisitsWithCompletion:v3];
}

- (void)_updateClientVersions
{
  v3 = [(WBSCloudHistoryFetchResult *)self->_fetchResult clientVersions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__WBSCloudHistoryMergeOperation__updateClientVersions__block_invoke;
  v4[3] = &unk_1E7FB81E0;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __54__WBSCloudHistoryMergeOperation__updateClientVersions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = a3;
  [v4 setLastSeenDate:v5 forCloudClientVersion:objc_msgSend(a2 completionHandler:{"unsignedIntegerValue"), &__block_literal_global_16}];
}

void __54__WBSCloudHistoryMergeOperation__updateClientVersions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__WBSCloudHistoryMergeOperation__updateClientVersions__block_invoke_2_cold_1(v3);
    }
  }
}

- (void)_replayAndAddTombstones:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [(WBSCloudHistoryFetchResult *)self->_fetchResult tombstonesForProfileWithServerIdentifier:self->_profileServerIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__WBSCloudHistoryMergeOperation__replayAndAddTombstones___block_invoke;
  v8[3] = &unk_1E7FB8208;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(WBSHistoryServiceDatabaseProtocol *)database replayAndAddTombstones:v6 completionHandler:v8];
}

- (void)_buildVisitsByVisitIdentifiersMap
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  visitsByVisitIdentifiers = self->_visitsByVisitIdentifiers;
  self->_visitsByVisitIdentifiers = v3;

  v5 = [MEMORY[0x1E696AB50] set];
  v25 = self;
  v6 = [(WBSCloudHistoryFetchResult *)self->_fetchResult visitsForProfileWithServerIdentifier:self->_profileServerIdentifier];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MEMORY[0x1E696AD98];
        v12 = [*(*(&v30 + 1) + 8 * i) visitIdentifier];
        [v12 visitTime];
        v14 = [v11 numberWithUnsignedInteger:(v13 / 10.0)];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [v20 visitIdentifier];
        [v21 visitTime];
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v22 / 10.0)];
        v24 = [v5 countForObject:v23];

        if (v24 <= 0x63)
        {
          [(NSMutableDictionary *)v25->_visitsByVisitIdentifiers setObject:v20 forKeyedSubscript:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }
}

- (void)_loadTombstonesWithCompletion:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__WBSCloudHistoryMergeOperation__loadTombstonesWithCompletion___block_invoke;
  v7[3] = &unk_1E7FB8230;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(WBSHistoryServiceDatabaseProtocol *)database fetchAllTombstonesWithCompletionHandler:v7];
}

void __63__WBSCloudHistoryMergeOperation__loadTombstonesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__WBSCloudHistoryMergeOperation__loadTombstonesWithCompletion___block_invoke_cold_1(v7);
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSCloudHistoryMergeOperation__loadTombstonesWithCompletion___block_invoke_6;
  block[3] = &unk_1E7FB6E08;
  block[4] = v9;
  v13 = v5;
  v14 = v8;
  v11 = v5;
  dispatch_async(v10, block);
}

uint64_t __63__WBSCloudHistoryMergeOperation__loadTombstonesWithCompletion___block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_buildRedirectChains
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_visitsByVisitIdentifiers allValues];
  v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  redirectChainEarliestVisits = self->_redirectChainEarliestVisits;
  self->_redirectChainEarliestVisits = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 redirectSourceVisitIdentifier];
        if (v12)
        {
          v13 = [(NSMutableDictionary *)self->_visitsByVisitIdentifiers objectForKeyedSubscript:v12];
          [v11 setRedirectSourceVisit:v13];
          [v13 setRedirectDestinationVisit:v11];
          if (v13)
          {
            [(NSMutableSet *)self->_redirectChainEarliestVisits removeObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_filterVisitsByTombstones
{
  v56 = *MEMORY[0x1E69E9840];
  v40 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = self;
  v4 = self->_tombstones;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v50;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        v10 = [v9 urlString];
        if ([v10 length])
        {
          v11 = [v3 objectForKeyedSubscript:v10];
          if (!v11)
          {
            v11 = [MEMORY[0x1E695DF70] array];
            [v3 setObject:v11 forKeyedSubscript:v10];
          }

          [v11 addObject:v9];
        }

        else
        {
          [v40 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v37->_visitsByVisitIdentifiers;
  v39 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v39)
  {
    v38 = *v46;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * j);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v15 = [v14 urlString];
        v16 = [v3 objectForKeyedSubscript:v15];
        v17 = [v40 arrayByAddingObjectsFromArray:v16];

        v18 = [v17 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v42;
          while (2)
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v42 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v41 + 1) + 8 * k);
              [v14 visitTime];
              v24 = v23;
              v25 = [v14 urlString];
              LODWORD(v22) = [v22 matchesVisitTime:v25 urlString:v24];

              if (v22)
              {
                v26 = [(NSMutableDictionary *)v37->_visitsByVisitIdentifiers objectForKeyedSubscript:v14];
                v27 = v26;
                if (v26)
                {
                  v28 = [v26 visitIdentifier];
                  [v12 addObject:v28];

                  v29 = [v27 redirectSourceVisit];
                  v30 = v27;
                  if (v29)
                  {
                    v31 = v27;
                    do
                    {
                      v30 = v29;

                      v32 = [v30 visitIdentifier];
                      [v12 addObject:v32];

                      v29 = [v30 redirectSourceVisit];
                      v31 = v30;
                    }

                    while (v29);
                  }

                  [(NSMutableSet *)v37->_redirectChainEarliestVisits removeObject:v30];
                }

                v33 = [v27 redirectDestinationVisit];
                if (v33)
                {
                  do
                  {
                    v34 = [v33 visitIdentifier];
                    [v12 addObject:v34];

                    v35 = [v33 redirectDestinationVisit];

                    v33 = v35;
                  }

                  while (v35);
                }

                goto LABEL_35;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v41 objects:v53 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_35:
      }

      v39 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v39);
  }

  [(NSMutableDictionary *)v37->_visitsByVisitIdentifiers removeObjectsForKeys:v12];
}

- (void)_lookUpExistingItemsWithCompletion:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = MEMORY[0x1E695DFD8];
  v7 = [(NSMutableDictionary *)self->_visitsByVisitIdentifiers allKeys];
  v8 = [v6 setWithArray:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__WBSCloudHistoryMergeOperation__lookUpExistingItemsWithCompletion___block_invoke;
  v10[3] = &unk_1E7FB8230;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(WBSHistoryServiceDatabaseProtocol *)database visitIdentifiersMatchingExistingVisits:v8 desiredVisitTimePrecision:0 completionHandler:v10];
}

void __68__WBSCloudHistoryMergeOperation__lookUpExistingItemsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__WBSCloudHistoryMergeOperation__lookUpExistingItemsWithCompletion___block_invoke_cold_1(v7);
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSCloudHistoryMergeOperation__lookUpExistingItemsWithCompletion___block_invoke_11;
  block[3] = &unk_1E7FB6E08;
  block[4] = v9;
  v13 = v5;
  v14 = v8;
  v11 = v5;
  dispatch_async(v10, block);
}

uint64_t __68__WBSCloudHistoryMergeOperation__lookUpExistingItemsWithCompletion___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)_removeDuplicateVisits
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSMutableSet *)self->_redirectChainEarliestVisits copy];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          while (1)
          {
            existingVisits = self->_existingVisits;
            v12 = [v10 visitIdentifier];
            v13 = [(NSSet *)existingVisits containsObject:v12];

            v14 = [v10 redirectDestinationVisit];
            v15 = v14;
            if (!v13)
            {
              break;
            }

            v10 = v15;
            if (!v15)
            {
              goto LABEL_10;
            }
          }

          if (v14)
          {
            while (1)
            {
              v16 = self->_existingVisits;
              v17 = [v15 visitIdentifier];
              LOBYTE(v16) = [(NSSet *)v16 containsObject:v17];

              if (v16)
              {
                break;
              }

              v18 = [v15 redirectDestinationVisit];

              v15 = v18;
              if (!v18)
              {
                goto LABEL_14;
              }
            }

            [(NSMutableSet *)self->_redirectChainEarliestVisits removeObject:v9];
          }

          else
          {
LABEL_14:
            if (v10 != v9)
            {
              [(NSMutableSet *)self->_redirectChainEarliestVisits removeObject:v9];
              [(NSMutableSet *)self->_redirectChainEarliestVisits addObject:v10];
            }
          }
        }

        else
        {
LABEL_10:
          [(NSMutableSet *)self->_redirectChainEarliestVisits removeObject:v9];
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (void)_mergeVisitsWithCompletion:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  block = a3;
  v4 = [(NSMutableSet *)self->_redirectChainEarliestVisits allObjects];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_14];

  v6 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v19 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v18 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v7;
        v8 = *(*(&v23 + 1) + 8 * v7);
        if (v8)
        {
          do
          {
            v9 = [v8 visitIdentifier];
            dispatch_group_enter(v6);
            database = self->_database;
            v11 = [v8 redirectSourceVisitIdentifier];
            v12 = [v8 title];
            v13 = [v8 wasHTTPNonGet];
            v14 = [v8 loadWasSuccessful];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __60__WBSCloudHistoryMergeOperation__mergeVisitsWithCompletion___block_invoke_2;
            v21[3] = &unk_1E7FB8278;
            v22 = v6;
            [(WBSHistoryServiceDatabaseProtocol *)database recordVisitWithIdentifier:v9 sourceVisit:v11 title:v12 wasHTTPNonGet:v13 loadSuccessful:v14 origin:1 attributes:0 statusCode:0 completionHandler:v21];

            v15 = [v8 redirectDestinationVisit];

            v8 = v15;
          }

          while (v15);
        }

        v7 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  dispatch_group_notify(v6, self->_queue, block);
}

uint64_t __60__WBSCloudHistoryMergeOperation__mergeVisitsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 visitIdentifier];
  [v5 visitTime];
  v7 = v6;

  v8 = [v4 visitIdentifier];

  [v8 visitTime];
  v10 = v9;

  v11 = -1;
  if (v7 >= v10)
  {
    v11 = 1;
  }

  if (v7 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

void __60__WBSCloudHistoryMergeOperation__mergeVisitsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__WBSCloudHistoryMergeOperation__mergeVisitsWithCompletion___block_invoke_2_cold_1(v4);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__WBSCloudHistoryMergeOperation__updateClientVersions__block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to update cloud client version table: %{public}@", v6, v7, v8, v9, v10);
}

void __63__WBSCloudHistoryMergeOperation__loadTombstonesWithCompletion___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to fetch all tombstones: %{private}@", v6, v7, v8, v9, v10);
}

void __68__WBSCloudHistoryMergeOperation__lookUpExistingItemsWithCompletion___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to find matching existing visits: %{private}@", v6, v7, v8, v9, v10);
}

void __60__WBSCloudHistoryMergeOperation__mergeVisitsWithCompletion___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to record visit: %{public}@", v6, v7, v8, v9, v10);
}

@end