@interface PXComposeRecipientSelectionManager
- (PXComposeRecipientSelectionManager)init;
- (PXComposeRecipientSelectionManager)initWithDataSource:(id)a3;
- (PXComposeRecipientSelectionManagerDelegate)delegate;
- (id)_createComposeRecipientSelectionSnapshotFromCurrentState;
- (id)_setSelectedState:(BOOL)a3 forComposeRecipients:(id)a4;
- (void)_invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:(id)a3;
- (void)selectAll;
- (void)setDataSource:(id)a3 changeDetails:(id)a4;
- (void)setSelectedState:(BOOL)a3 atIndex:(int64_t)a4;
@end

@implementation PXComposeRecipientSelectionManager

- (PXComposeRecipientSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:(id)a3
{
  v4 = a3;
  v5 = [(PXComposeRecipientSelectionManager *)self selectionSnapshot];
  v12 = [v5 selectedComposeRecipients];

  v6 = [(PXComposeRecipientSelectionManager *)self _createComposeRecipientSelectionSnapshotFromCurrentState];
  [(PXComposeRecipientSelectionManager *)self setSelectionSnapshot:v6];
  v7 = [(PXComposeRecipientSelectionManager *)self selectionSnapshot];
  v8 = [v7 selectedComposeRecipients];

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [off_1E7721450 changeDetailsFromArray:v12 toArray:v8 changedObjects:v9];

  v11 = [(PXComposeRecipientSelectionManager *)self delegate];
  [v11 composeRecipientSelectionManager:self didUpdateSelectionSnapshotWithChangeDetails:v10];
}

- (id)_createComposeRecipientSelectionSnapshotFromCurrentState
{
  v3 = [PXComposeRecipientSelectionSnapshot alloc];
  v4 = [(NSMutableOrderedSet *)self->_selectedComposeRecipients array];
  v5 = [(NSMutableOrderedSet *)self->_selectedRecipients array];
  v6 = [(PXComposeRecipientSelectionSnapshot *)v3 initWithSelectedComposeRecipients:v4 selectedRecipients:v5];

  return v6;
}

- (id)_setSelectedState:(BOOL)a3 forComposeRecipients:(id)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PXComposeRecipientSelectionManager__setSelectedState_forComposeRecipients___block_invoke;
  v13[3] = &unk_1E7742500;
  v15 = a3;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [v7 enumerateObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __77__PXComposeRecipientSelectionManager__setSelectedState_forComposeRecipients___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 recipient];
  v4 = *(a1 + 48);
  v5 = [*(*(a1 + 32) + 8) containsObject:v7];
  if (v4 != 1 || v3 == 0)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    [*(*(a1 + 32) + 8) removeObject:v7];
    if (v3)
    {
      [*(*(a1 + 32) + 16) removeObject:v3];
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_12;
    }

    [*(*(a1 + 32) + 8) addObject:v7];
    [*(*(a1 + 32) + 16) addObject:v3];
  }

  [*(a1 + 40) addObject:v7];
LABEL_12:
}

- (void)setSelectedState:(BOOL)a3 atIndex:(int64_t)a4
{
  v5 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = [(PXComposeRecipientSelectionManager *)self dataSource];
  v9 = [v8 composeRecipients];

  v10 = [v9 objectAtIndexedSubscript:a4];
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient"}];
  }

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(PXComposeRecipientSelectionManager *)self _setSelectedState:v5 forComposeRecipients:v11];

  if ([v12 count])
  {
    [(PXComposeRecipientSelectionManager *)self _invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:v12];
  }
}

- (void)selectAll
{
  v3 = [(PXComposeRecipientSelectionManager *)self dataSource];
  v7 = [v3 composeRecipients];

  v4 = [v7 count];
  v5 = v7;
  if (v4)
  {
    v6 = [(PXComposeRecipientSelectionManager *)self _setSelectedState:1 forComposeRecipients:v7];
    if ([v6 count])
    {
      [(PXComposeRecipientSelectionManager *)self _invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:v6];
    }

    v5 = v7;
  }
}

- (void)setDataSource:(id)a3 changeDetails:(id)a4
{
  v7 = a3;
  dataSource = self->_dataSource;
  if (dataSource != v7)
  {
    v9 = dataSource;
    objc_storeStrong(&self->_dataSource, a3);
    v10 = a4;
    v11 = [v10 removedIndexes];
    v12 = [MEMORY[0x1E696AD50] indexSet];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__PXComposeRecipientSelectionManager_setDataSource_changeDetails___block_invoke;
    v21[3] = &unk_1E774C1B0;
    v13 = v9;
    v22 = v13;
    v23 = self;
    v14 = v12;
    v24 = v14;
    [v11 enumerateIndexesUsingBlock:v21];
    v15 = [v10 changedIndexes];

    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__PXComposeRecipientSelectionManager_setDataSource_changeDetails___block_invoke_2;
    v19[3] = &unk_1E774A7B8;
    v19[4] = self;
    v17 = v16;
    v20 = v17;
    [v15 enumerateIndexesUsingBlock:v19];
    if ([v17 count])
    {
      v18 = [(PXComposeRecipientSelectionManager *)self _setSelectedState:0 forComposeRecipients:v17];
    }

    else
    {
      v18 = 0;
    }

    if ([v14 count] || objc_msgSend(v18, "count"))
    {
      [(PXComposeRecipientSelectionManager *)self _invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:v18];
    }
  }
}

void __66__PXComposeRecipientSelectionManager_setDataSource_changeDetails___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) composeRecipients];
  v8 = [v4 objectAtIndexedSubscript:a2];

  v5 = [*(*(a1 + 40) + 8) containsObject:v8];
  v6 = v8;
  if (v5)
  {
    [*(*(a1 + 40) + 8) removeObject:v8];
    [*(a1 + 48) addIndex:a2];
    v7 = [v8 recipient];
    if (v7)
    {
      [*(*(a1 + 40) + 16) removeObject:v7];
    }

    v6 = v8;
  }
}

void __66__PXComposeRecipientSelectionManager_setDataSource_changeDetails___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 24) composeRecipients];
  v8 = [v4 objectAtIndexedSubscript:a2];

  v5 = [*(*(a1 + 32) + 8) containsObject:v8];
  v6 = v8;
  if (v5)
  {
    v7 = [v8 recipient];
    if (!v7)
    {
      [*(a1 + 40) addObject:v8];
    }

    v6 = v8;
  }
}

- (PXComposeRecipientSelectionManager)initWithDataSource:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
  }

  v15.receiver = self;
  v15.super_class = PXComposeRecipientSelectionManager;
  v7 = [(PXComposeRecipientSelectionManager *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, a3);
    v9 = [MEMORY[0x1E695DFA0] orderedSet];
    selectedComposeRecipients = v8->_selectedComposeRecipients;
    v8->_selectedComposeRecipients = v9;

    v11 = [MEMORY[0x1E695DFA0] orderedSet];
    selectedRecipients = v8->_selectedRecipients;
    v8->_selectedRecipients = v11;
  }

  return v8;
}

- (PXComposeRecipientSelectionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXComposeRecipientSelectionManager init]"}];

  abort();
}

@end