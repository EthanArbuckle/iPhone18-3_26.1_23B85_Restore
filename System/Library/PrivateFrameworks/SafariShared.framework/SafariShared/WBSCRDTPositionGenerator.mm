@interface WBSCRDTPositionGenerator
- (WBSCRDTPositionGenerator)initWithDelegate:(id)delegate;
- (WBSCRDTPositionGeneratorDelegate)delegate;
- (id)_generatePositionBetweenPosition:(id)position andPosition:(id)andPosition;
- (id)_generatePositionsForStrides:(id)strides;
- (id)_positionForRecordName:(id)name;
- (id)_stridesForSiblingRecords:(id)records;
- (void)_enumerateRecordNamesAfterRecordWithName:(id)name usingBlock:(id)block;
- (void)_enumerateRecordNamesBeforeRecordWithName:(id)name usingBlock:(id)block;
- (void)generatePositionsForChildRecordNamesGroupedByParentFolders:(id)folders;
@end

@implementation WBSCRDTPositionGenerator

- (WBSCRDTPositionGenerator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = WBSCRDTPositionGenerator;
  v5 = [(WBSCRDTPositionGenerator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (void)generatePositionsForChildRecordNamesGroupedByParentFolders:(id)folders
{
  v4 = MEMORY[0x1E695DF90];
  foldersCopy = folders;
  dictionary = [v4 dictionary];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __87__WBSCRDTPositionGenerator_generatePositionsForChildRecordNamesGroupedByParentFolders___block_invoke;
  v13 = &unk_1E7FC49A0;
  selfCopy = self;
  v15 = dictionary;
  v7 = dictionary;
  [foldersCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];
  recordNamesToPositions = self->_recordNamesToPositions;
  self->_recordNamesToPositions = v8;
}

void __87__WBSCRDTPositionGenerator_generatePositionsForChildRecordNamesGroupedByParentFolders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) _stridesForSiblingRecords:v6];
  v9 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __87__WBSCRDTPositionGenerator_generatePositionsForChildRecordNamesGroupedByParentFolders___block_invoke_cold_1(v5, v8, v9);
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) _generatePositionsForStrides:v8];
  [v10 addEntriesFromDictionary:v11];

  objc_autoreleasePoolPop(v7);
}

- (id)_stridesForSiblingRecords:(id)records
{
  recordsCopy = records;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [recordsCopy mutableCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  anyObject = [v5 anyObject];
  if (anyObject)
  {
    v7 = anyObject;
    do
    {
      v8 = objc_autoreleasePoolPush();
      [v5 removeObject:v7];
      if (![MEMORY[0x1E695BA58] safari_folderTypeForRecordName:v7])
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v41 = 0;
        v42 = &v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__7;
        v45 = __Block_byref_object_dispose__7;
        v46 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__7;
        v39 = __Block_byref_object_dispose__7;
        v40 = 0;
        [array2 addObject:v7];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __54__WBSCRDTPositionGenerator__stridesForSiblingRecords___block_invoke;
        v28[3] = &unk_1E7FC49C8;
        v10 = recordsCopy;
        v29 = v10;
        v11 = array2;
        v30 = v11;
        v12 = v5;
        v31 = v12;
        v34 = &v41;
        v13 = dictionary;
        v32 = v13;
        selfCopy = self;
        [(WBSCRDTPositionGenerator *)self _enumerateRecordNamesBeforeRecordWithName:v7 usingBlock:v28];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __54__WBSCRDTPositionGenerator__stridesForSiblingRecords___block_invoke_2;
        v21[3] = &unk_1E7FC49C8;
        v22 = v10;
        v14 = v11;
        v23 = v14;
        v24 = v12;
        v27 = &v35;
        v25 = v13;
        selfCopy2 = self;
        [(WBSCRDTPositionGenerator *)self _enumerateRecordNamesAfterRecordWithName:v7 usingBlock:v21];
        v15 = [_WBSCRDTPositionGeneratorStride alloc];
        v16 = [(_WBSCRDTPositionGeneratorStride *)v15 initWithRecordNames:v14 beforePosition:v42[5] afterPosition:v36[5]];
        [array addObject:v16];

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v41, 8);
      }

      objc_autoreleasePoolPop(v8);
      anyObject2 = [v5 anyObject];

      v7 = anyObject2;
    }

    while (anyObject2);
  }

  return array;
}

void __54__WBSCRDTPositionGenerator__stridesForSiblingRecords___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) insertObject:v12 atIndex:0];
    [*(a1 + 48) removeObject:v12];
  }

  else
  {
    *a3 = 1;
    v5 = [*(a1 + 56) objectForKeyedSubscript:v12];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v8 = [*(a1 + 64) _positionForRecordName:v12];
      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(*(a1 + 72) + 8) + 40);
      if (v11)
      {
        [*(a1 + 56) setObject:v11 forKeyedSubscript:v12];
      }
    }
  }
}

void __54__WBSCRDTPositionGenerator__stridesForSiblingRecords___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v12];
    [*(a1 + 48) removeObject:v12];
  }

  else
  {
    *a3 = 1;
    v5 = [*(a1 + 56) objectForKeyedSubscript:v12];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v8 = [*(a1 + 64) _positionForRecordName:v12];
      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(*(a1 + 72) + 8) + 40);
      if (v11)
      {
        [*(a1 + 56) setObject:v11 forKeyedSubscript:v12];
      }
    }
  }
}

- (void)_enumerateRecordNamesBeforeRecordWithName:(id)name usingBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__WBSCRDTPositionGenerator__enumerateRecordNamesBeforeRecordWithName_usingBlock___block_invoke;
  v13[3] = &unk_1E7FC49F0;
  v13[4] = self;
  v8 = MEMORY[0x1BFB13CE0](v13);
  v9 = (v8)[2](v8, nameCopy);
  if (v9)
  {
    v10 = v9;
    do
    {
      if (![MEMORY[0x1E695BA58] safari_folderTypeForRecordName:v10])
      {
        v12 = 0;
        blockCopy[2](blockCopy, v10, &v12);
        if (v12)
        {
          break;
        }
      }

      v11 = (v8)[2](v8, v10);

      v10 = v11;
    }

    while (v11);
  }
}

id __81__WBSCRDTPositionGenerator__enumerateRecordNamesBeforeRecordWithName_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  v6 = [WeakRetained positionGenerator:*(a1 + 32) recordNameOfBookmarksBeforeRecordWithName:v4];

  return v6;
}

- (void)_enumerateRecordNamesAfterRecordWithName:(id)name usingBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__WBSCRDTPositionGenerator__enumerateRecordNamesAfterRecordWithName_usingBlock___block_invoke;
  v13[3] = &unk_1E7FC49F0;
  v13[4] = self;
  v8 = MEMORY[0x1BFB13CE0](v13);
  v9 = (v8)[2](v8, nameCopy);
  if (v9)
  {
    v10 = v9;
    do
    {
      if (![MEMORY[0x1E695BA58] safari_folderTypeForRecordName:v10])
      {
        v12 = 0;
        blockCopy[2](blockCopy, v10, &v12);
        if (v12)
        {
          break;
        }
      }

      v11 = (v8)[2](v8, v10);

      v10 = v11;
    }

    while (v11);
  }
}

id __80__WBSCRDTPositionGenerator__enumerateRecordNamesAfterRecordWithName_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  v6 = [WeakRetained positionGenerator:*(a1 + 32) recordNameOfBookmarksAfterRecordWithName:v4];

  return v6;
}

- (id)_generatePositionsForStrides:(id)strides
{
  v41 = *MEMORY[0x1E69E9840];
  stridesCopy = strides;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = objc_autoreleasePoolPush();
  v25 = [stridesCopy mutableCopy];
  firstObject = [v25 firstObject];
  if (firstObject)
  {
    do
    {
      [v25 removeObjectAtIndex:0];
      recordNames = [firstObject recordNames];
      beforePosition = [firstObject beforePosition];
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__7;
      v38 = __Block_byref_object_dispose__7;
      afterPosition = [firstObject afterPosition];
      if (v35[5])
      {
        if (beforePosition)
        {
          v7 = [(WBSCRDTPositionGenerator *)self _generatePositionBetweenPosition:beforePosition andPosition:?];
          v8 = [recordNames count];
          v9 = [recordNames objectAtIndexedSubscript:v8 >> 1];
          [dictionary setObject:v7 forKeyedSubscript:v9];

          v10 = [recordNames subarrayWithRange:{0, v8 >> 1}];
          if ([v10 count])
          {
            v11 = [[_WBSCRDTPositionGeneratorStride alloc] initWithRecordNames:v10 beforePosition:beforePosition afterPosition:v7];
            [v25 addObject:v11];
          }

          v12 = [recordNames subarrayWithRange:{(v8 >> 1) + 1, v8 + ~(v8 >> 1)}];
          if ([v12 count])
          {
            v13 = [_WBSCRDTPositionGeneratorStride alloc];
            v14 = [(_WBSCRDTPositionGeneratorStride *)v13 initWithRecordNames:v12 beforePosition:v7 afterPosition:v35[5]];
            [v25 addObject:v14];
          }
        }

        else
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __57__WBSCRDTPositionGenerator__generatePositionsForStrides___block_invoke;
          v27[3] = &unk_1E7FC4A18;
          v29 = &v34;
          v27[4] = self;
          v28 = dictionary;
          [recordNames enumerateObjectsWithOptions:2 usingBlock:v27];
        }
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = recordNames;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v16)
        {
          v17 = *v31;
          do
          {
            v18 = 0;
            v19 = beforePosition;
            do
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v30 + 1) + 8 * v18);
              beforePosition = [(WBSCRDTPositionGenerator *)self _generatePositionBetweenPosition:v19 andPosition:0];

              [dictionary setObject:beforePosition forKeyedSubscript:v20];
              ++v18;
              v19 = beforePosition;
            }

            while (v16 != v18);
            v16 = [v15 countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v16);
        }
      }

      _Block_object_dispose(&v34, 8);

      firstObject2 = [v25 firstObject];

      firstObject = firstObject2;
    }

    while (firstObject2);
  }

  objc_autoreleasePoolPop(context);

  return dictionary;
}

void __57__WBSCRDTPositionGenerator__generatePositionsForStrides___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v8 = a2;
  v5 = [v3 _generatePositionBetweenPosition:0 andPosition:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 40) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:v8];
}

- (id)_generatePositionBetweenPosition:(id)position andPosition:(id)andPosition
{
  andPositionCopy = andPosition;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained deviceIdentifierForPositionGenerator:self];
  v10 = +[WBSCRDTPosition positionBetweenPosition:andPosition:withDeviceIdentifier:changeID:](WBSCRDTPosition, "positionBetweenPosition:andPosition:withDeviceIdentifier:changeID:", positionCopy, andPositionCopy, v9, [WeakRetained nextChangeIDForPositionInPositionGenerator:self]);

  return v10;
}

- (id)_positionForRecordName:(id)name
{
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained positionGenerator:self positionForRecordName:nameCopy];

  if (!v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSCRDTPositionGenerator *)nameCopy _positionForRecordName:v7];
    }
  }

  return v6;
}

- (WBSCRDTPositionGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __87__WBSCRDTPositionGenerator_generatePositionsForChildRecordNamesGroupedByParentFolders___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Generate positions for children of record %{public}@, strides: %{public}@", &v3, 0x16u);
}

- (void)_positionForRecordName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Delegate returned nil position for record with name: %{public}@, we should never ask for the position of a record known to not have one!", &v2, 0xCu);
}

@end