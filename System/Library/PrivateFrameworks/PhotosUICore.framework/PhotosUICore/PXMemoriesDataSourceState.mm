@interface PXMemoriesDataSourceState
- (PXMemoriesDataSourceState)initWithMemories:(id)memories infosByMemory:(id)memory;
- (id)stateUpdatedWithChange:(id)change outMemoriesChangeDetails:(id *)details;
@end

@implementation PXMemoriesDataSourceState

- (id)stateUpdatedWithChange:(id)change outMemoriesChangeDetails:(id *)details
{
  v62 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  memories = [(PXMemoriesDataSourceState *)self memories];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [changeCopy changeDetailsForFetchResult:memories];
  v9 = "anager";
  v44 = memories;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PXMemoriesDataSourceState_stateUpdatedWithChange_outMemoriesChangeDetails___block_invoke;
    aBlock[3] = &unk_1E7735290;
    v59 = dictionary;
    v10 = _Block_copy(aBlock);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    insertedObjects = [v8 insertedObjects];
    v12 = [insertedObjects countByEnumeratingWithState:&v54 objects:v61 count:16];
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
            objc_enumerationMutation(insertedObjects);
          }

          v10[2](v10, *(*(&v54 + 1) + 8 * i));
        }

        v13 = [insertedObjects countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v13);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    changedObjects = [v8 changedObjects];
    v17 = [changedObjects countByEnumeratingWithState:&v50 objects:v60 count:16];
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
            objc_enumerationMutation(changedObjects);
          }

          v10[2](v10, *(*(&v50 + 1) + 8 * j));
        }

        v18 = [changedObjects countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v18);
    }

    fetchResultAfterChanges = [v8 fetchResultAfterChanges];
    memories = v44;
    v9 = "MacSyncedAssetsNotificationListManager" + 32;
  }

  else
  {
    fetchResultAfterChanges = memories;
  }

  changedIndexes = [v8 changedIndexes];
  if (changedIndexes)
  {
    changedIndexes2 = [v8 changedIndexes];
    indexSet = [changedIndexes2 mutableCopy];
  }

  else
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
  }

  infosByMemory = [(PXMemoriesDataSourceState *)self infosByMemory];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = *(v9 + 63);
  v45[2] = __77__PXMemoriesDataSourceState_stateUpdatedWithChange_outMemoriesChangeDetails___block_invoke_2;
  v45[3] = &unk_1E77352B8;
  v26 = dictionary;
  v46 = v26;
  v27 = fetchResultAfterChanges;
  v47 = v27;
  v42 = changeCopy;
  v48 = v42;
  v28 = indexSet;
  v49 = v28;
  [infosByMemory enumerateKeysAndObjectsUsingBlock:v45];
  removedObjects = [v8 removedObjects];
  if (removedObjects)
  {
  }

  else if (![v26 count])
  {
    v30 = infosByMemory;
    goto LABEL_27;
  }

  v30 = [infosByMemory mutableCopy];
  removedObjects2 = [v8 removedObjects];

  if (removedObjects2)
  {
    removedObjects3 = [v8 removedObjects];
    [v30 removeObjectsForKeys:removedObjects3];
  }

  [v30 addEntriesFromDictionary:v26];
LABEL_27:
  if (v27 == memories && v30 == infosByMemory)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[PXMemoriesDataSourceState alloc] initWithMemories:v27 infosByMemory:v30];
  }

  v41 = selfCopy;
  v34 = [off_1E7721450 alloc];
  removedIndexes = [v8 removedIndexes];
  insertedIndexes = [v8 insertedIndexes];
  movedIndexes = [v8 movedIndexes];
  v38 = [v34 initWithIncrementalChangeDetailsRemovedIndexes:removedIndexes insertedIndexes:insertedIndexes movesToIndexes:movedIndexes movesFromIndexes:objc_msgSend(v8 changedIndexes:{"movedFromIndexes"), v28}];

  if (details)
  {
    v39 = v38;
    *details = v38;
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

- (PXMemoriesDataSourceState)initWithMemories:(id)memories infosByMemory:(id)memory
{
  memoriesCopy = memories;
  memoryCopy = memory;
  v12.receiver = self;
  v12.super_class = PXMemoriesDataSourceState;
  v9 = [(PXMemoriesDataSourceState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memories, memories);
    objc_storeStrong(&v10->_infosByMemory, memory);
  }

  return v10;
}

@end