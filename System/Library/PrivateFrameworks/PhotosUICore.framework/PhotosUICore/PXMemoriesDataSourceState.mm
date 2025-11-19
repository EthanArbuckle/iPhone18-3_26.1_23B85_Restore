@interface PXMemoriesDataSourceState
- (PXMemoriesDataSourceState)initWithMemories:(id)a3 infosByMemory:(id)a4;
- (id)stateUpdatedWithChange:(id)a3 outMemoriesChangeDetails:(id *)a4;
@end

@implementation PXMemoriesDataSourceState

- (id)stateUpdatedWithChange:(id)a3 outMemoriesChangeDetails:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXMemoriesDataSourceState *)self memories];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [v5 changeDetailsForFetchResult:v6];
  v9 = "anager";
  v44 = v6;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PXMemoriesDataSourceState_stateUpdatedWithChange_outMemoriesChangeDetails___block_invoke;
    aBlock[3] = &unk_1E7735290;
    v59 = v7;
    v10 = _Block_copy(aBlock);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = [v8 insertedObjects];
    v12 = [v11 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v10[2](v10, *(*(&v54 + 1) + 8 * i));
        }

        v13 = [v11 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v13);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = [v8 changedObjects];
    v17 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v10[2](v10, *(*(&v50 + 1) + 8 * j));
        }

        v18 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v18);
    }

    v21 = [v8 fetchResultAfterChanges];
    v6 = v44;
    v9 = "MacSyncedAssetsNotificationListManager" + 32;
  }

  else
  {
    v21 = v6;
  }

  v22 = [v8 changedIndexes];
  if (v22)
  {
    v23 = [v8 changedIndexes];
    v24 = [v23 mutableCopy];
  }

  else
  {
    v24 = [MEMORY[0x1E696AD50] indexSet];
  }

  v25 = [(PXMemoriesDataSourceState *)self infosByMemory];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = *(v9 + 63);
  v45[2] = __77__PXMemoriesDataSourceState_stateUpdatedWithChange_outMemoriesChangeDetails___block_invoke_2;
  v45[3] = &unk_1E77352B8;
  v26 = v7;
  v46 = v26;
  v27 = v21;
  v47 = v27;
  v42 = v5;
  v48 = v42;
  v28 = v24;
  v49 = v28;
  [v25 enumerateKeysAndObjectsUsingBlock:v45];
  v29 = [v8 removedObjects];
  if (v29)
  {
  }

  else if (![v26 count])
  {
    v30 = v25;
    goto LABEL_27;
  }

  v30 = [v25 mutableCopy];
  v31 = [v8 removedObjects];

  if (v31)
  {
    v32 = [v8 removedObjects];
    [v30 removeObjectsForKeys:v32];
  }

  [v30 addEntriesFromDictionary:v26];
LABEL_27:
  if (v27 == v6 && v30 == v25)
  {
    v33 = self;
  }

  else
  {
    v33 = [[PXMemoriesDataSourceState alloc] initWithMemories:v27 infosByMemory:v30];
  }

  v41 = v33;
  v34 = [off_1E7721450 alloc];
  v35 = [v8 removedIndexes];
  v36 = [v8 insertedIndexes];
  v37 = [v8 movedIndexes];
  v38 = [v34 initWithIncrementalChangeDetailsRemovedIndexes:v35 insertedIndexes:v36 movesToIndexes:v37 movesFromIndexes:objc_msgSend(v8 changedIndexes:{"movedFromIndexes"), v28}];

  if (a4)
  {
    v39 = v38;
    *a4 = v38;
  }

  return v41;
}

void __77__PXMemoriesDataSourceState_stateUpdatedWithChange_outMemoriesChangeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PXMemoryInfo memoryInfoWithMemory:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

void __77__PXMemoriesDataSourceState_stateUpdatedWithChange_outMemoriesChangeDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 keyAssetFetchResult];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v14];
    if (v8)
    {
      v9 = v8;
      goto LABEL_4;
    }

    v10 = [*(a1 + 40) indexOfObject:v14];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(a1 + 48);
      v12 = [v5 keyAssetFetchResult];
      v7 = [v11 changeDetailsForFetchResult:v12];

      if (!v7)
      {
        goto LABEL_5;
      }

      v13 = [v7 fetchResultAfterChanges];
      v9 = [v5 memoryInfoWithUpdatedKeyAssetFetchResult:v13];

      [*(a1 + 32) setObject:v9 forKeyedSubscript:v14];
      [*(a1 + 56) addIndex:v10];
LABEL_4:

LABEL_5:
    }
  }
}

- (PXMemoriesDataSourceState)initWithMemories:(id)a3 infosByMemory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXMemoriesDataSourceState;
  v9 = [(PXMemoriesDataSourceState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memories, a3);
    objc_storeStrong(&v10->_infosByMemory, a4);
  }

  return v10;
}

@end