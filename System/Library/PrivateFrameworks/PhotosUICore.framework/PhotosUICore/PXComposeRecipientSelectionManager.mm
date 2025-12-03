@interface PXComposeRecipientSelectionManager
- (PXComposeRecipientSelectionManager)init;
- (PXComposeRecipientSelectionManager)initWithDataSource:(id)source;
- (PXComposeRecipientSelectionManagerDelegate)delegate;
- (id)_createComposeRecipientSelectionSnapshotFromCurrentState;
- (id)_setSelectedState:(BOOL)state forComposeRecipients:(id)recipients;
- (void)_invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:(id)recipients;
- (void)selectAll;
- (void)setDataSource:(id)source changeDetails:(id)details;
- (void)setSelectedState:(BOOL)state atIndex:(int64_t)index;
@end

@implementation PXComposeRecipientSelectionManager

- (PXComposeRecipientSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:(id)recipients
{
  recipientsCopy = recipients;
  selectionSnapshot = [(PXComposeRecipientSelectionManager *)self selectionSnapshot];
  selectedComposeRecipients = [selectionSnapshot selectedComposeRecipients];

  _createComposeRecipientSelectionSnapshotFromCurrentState = [(PXComposeRecipientSelectionManager *)self _createComposeRecipientSelectionSnapshotFromCurrentState];
  [(PXComposeRecipientSelectionManager *)self setSelectionSnapshot:_createComposeRecipientSelectionSnapshotFromCurrentState];
  selectionSnapshot2 = [(PXComposeRecipientSelectionManager *)self selectionSnapshot];
  selectedComposeRecipients2 = [selectionSnapshot2 selectedComposeRecipients];

  if (recipientsCopy)
  {
    v9 = recipientsCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [off_1E7721450 changeDetailsFromArray:selectedComposeRecipients toArray:selectedComposeRecipients2 changedObjects:v9];

  delegate = [(PXComposeRecipientSelectionManager *)self delegate];
  [delegate composeRecipientSelectionManager:self didUpdateSelectionSnapshotWithChangeDetails:v10];
}

- (id)_createComposeRecipientSelectionSnapshotFromCurrentState
{
  v3 = [PXComposeRecipientSelectionSnapshot alloc];
  array = [(NSMutableOrderedSet *)self->_selectedComposeRecipients array];
  array2 = [(NSMutableOrderedSet *)self->_selectedRecipients array];
  v6 = [(PXComposeRecipientSelectionSnapshot *)v3 initWithSelectedComposeRecipients:array selectedRecipients:array2];

  return v6;
}

- (id)_setSelectedState:(BOOL)state forComposeRecipients:(id)recipients
{
  v6 = MEMORY[0x1E695DF70];
  recipientsCopy = recipients;
  v8 = [v6 arrayWithCapacity:{objc_msgSend(recipientsCopy, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PXComposeRecipientSelectionManager__setSelectedState_forComposeRecipients___block_invoke;
  v13[3] = &unk_1E7742500;
  stateCopy = state;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [recipientsCopy enumerateObjectsUsingBlock:v13];

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

- (void)setSelectedState:(BOOL)state atIndex:(int64_t)index
{
  stateCopy = state;
  v14[1] = *MEMORY[0x1E69E9840];
  dataSource = [(PXComposeRecipientSelectionManager *)self dataSource];
  composeRecipients = [dataSource composeRecipients];

  v10 = [composeRecipients objectAtIndexedSubscript:index];
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient"}];
  }

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(PXComposeRecipientSelectionManager *)self _setSelectedState:stateCopy forComposeRecipients:v11];

  if ([v12 count])
  {
    [(PXComposeRecipientSelectionManager *)self _invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:v12];
  }
}

- (void)selectAll
{
  dataSource = [(PXComposeRecipientSelectionManager *)self dataSource];
  composeRecipients = [dataSource composeRecipients];

  v4 = [composeRecipients count];
  v5 = composeRecipients;
  if (v4)
  {
    v6 = [(PXComposeRecipientSelectionManager *)self _setSelectedState:1 forComposeRecipients:composeRecipients];
    if ([v6 count])
    {
      [(PXComposeRecipientSelectionManager *)self _invalidateCurrentSelectionSnapshotWithChangedComposeRecipients:v6];
    }

    v5 = composeRecipients;
  }
}

- (void)setDataSource:(id)source changeDetails:(id)details
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v9 = dataSource;
    objc_storeStrong(&self->_dataSource, source);
    detailsCopy = details;
    removedIndexes = [detailsCopy removedIndexes];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__PXComposeRecipientSelectionManager_setDataSource_changeDetails___block_invoke;
    v21[3] = &unk_1E774C1B0;
    v13 = v9;
    v22 = v13;
    selfCopy = self;
    v14 = indexSet;
    v24 = v14;
    [removedIndexes enumerateIndexesUsingBlock:v21];
    changedIndexes = [detailsCopy changedIndexes];

    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(changedIndexes, "count")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__PXComposeRecipientSelectionManager_setDataSource_changeDetails___block_invoke_2;
    v19[3] = &unk_1E774A7B8;
    v19[4] = self;
    v17 = v16;
    v20 = v17;
    [changedIndexes enumerateIndexesUsingBlock:v19];
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

- (PXComposeRecipientSelectionManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
  }

  v15.receiver = self;
  v15.super_class = PXComposeRecipientSelectionManager;
  v7 = [(PXComposeRecipientSelectionManager *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, source);
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    selectedComposeRecipients = v8->_selectedComposeRecipients;
    v8->_selectedComposeRecipients = orderedSet;

    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    selectedRecipients = v8->_selectedRecipients;
    v8->_selectedRecipients = orderedSet2;
  }

  return v8;
}

- (PXComposeRecipientSelectionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientSelectionManager.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXComposeRecipientSelectionManager init]"}];

  abort();
}

@end