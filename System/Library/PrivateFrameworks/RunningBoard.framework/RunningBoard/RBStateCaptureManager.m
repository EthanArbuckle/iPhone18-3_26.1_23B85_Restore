@interface RBStateCaptureManager
- (RBStateCaptureManager)init;
- (id)identifiers;
- (id)stateForSubsystem:(id)a3;
- (void)addItem:(id)a3;
- (void)addItem:(id)a3 withIdentifier:(id)a4;
- (void)addItemWithTitle:(id)a3 identifier:(id)a4 block:(id)a5;
- (void)removeItem:(id)a3;
- (void)removeItemWithIdentifier:(id)a3;
@end

@implementation RBStateCaptureManager

- (RBStateCaptureManager)init
{
  v10.receiver = self;
  v10.super_class = RBStateCaptureManager;
  v2 = [(RBStateCaptureManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(RBSStateCaptureSet);
    itemsWithoutIdentifiers = v2->_itemsWithoutIdentifiers;
    v2->_itemsWithoutIdentifiers = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    itemsByIdentifier = v2->_itemsByIdentifier;
    v2->_itemsByIdentifier = v5;

    v7 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBStateCaptureManager"];
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (id)stateForSubsystem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  os_unfair_lock_lock(&_stateCaptureLock);
  itemsByIdentifier = self->_itemsByIdentifier;
  if (v4)
  {
    v7 = [(NSMutableDictionary *)itemsByIdentifier objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&_stateCaptureLock);
    if (v7)
    {
      v8 = [v7 block];
      v9 = v8[2]();

      [v5 appendString:v9];
    }
  }

  else
  {
    v7 = [(NSMutableDictionary *)itemsByIdentifier copy];
    v10 = [(RBSStateCaptureSet *)self->_itemsWithoutIdentifiers itemsCopy];
    os_unfair_lock_unlock(&_stateCaptureLock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__RBStateCaptureManager_stateForSubsystem___block_invoke;
    v15[3] = &unk_279B33B00;
    v11 = v5;
    v16 = v11;
    [v7 enumerateKeysAndObjectsUsingBlock:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__RBStateCaptureManager_stateForSubsystem___block_invoke_2;
    v13[3] = &unk_279B33B28;
    v14 = v11;
    [v10 enumerateObjectsUsingBlock:v13];
  }

  return v5;
}

void __43__RBStateCaptureManager_stateForSubsystem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 block];
  v5 = v4[2]();

  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", \n"}];
  }

  [*(a1 + 32) appendString:v5];
}

void __43__RBStateCaptureManager_stateForSubsystem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 captureState];
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", \n"}];
  }

  [*(a1 + 32) appendString:v3];
}

- (void)addItem:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stateCaptureTitle];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__RBStateCaptureManager_addItem_withIdentifier___block_invoke;
  v10[3] = &unk_279B33B50;
  v11 = v6;
  v9 = v6;
  [(RBStateCaptureManager *)self addItemWithTitle:v8 identifier:v7 block:v10];
}

- (void)addItem:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__RBStateCaptureManager_addItem___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __33__RBStateCaptureManager_addItem___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&_stateCaptureLock);
  [*(*(a1 + 32) + 16) addItem:*(a1 + 40)];

  os_unfair_lock_unlock(&_stateCaptureLock);
}

- (void)addItemWithTitle:(id)a3 identifier:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  os_unfair_lock_lock(&_stateCaptureLock);
  v11 = [(NSMutableDictionary *)self->_itemsByIdentifier objectForKeyedSubscript:v8];

  if (v11)
  {
    v12 = rbs_state_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(RBStateCaptureManager *)v8 addItemWithTitle:v12 identifier:v13 block:v14, v15, v16, v17, v18];
    }
  }

  v19 = [[RBStateCaptureItem alloc] initWithTitle:v10 identifier:v8 block:v9];

  [(NSMutableDictionary *)self->_itemsByIdentifier setObject:v19 forKeyedSubscript:v8];
  os_unfair_lock_unlock(&_stateCaptureLock);
}

- (void)removeItemWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&_stateCaptureLock);
  [(NSMutableDictionary *)self->_itemsByIdentifier setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&_stateCaptureLock);
}

- (void)removeItem:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__RBStateCaptureManager_removeItem___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __36__RBStateCaptureManager_removeItem___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&_stateCaptureLock);
  [*(*(a1 + 32) + 16) removeItem:*(a1 + 40)];

  os_unfair_lock_unlock(&_stateCaptureLock);
}

- (id)identifiers
{
  os_unfair_lock_lock(&_stateCaptureLock);
  v3 = MEMORY[0x277CBEB98];
  v4 = [(NSMutableDictionary *)self->_itemsByIdentifier allKeys];
  v5 = [v3 setWithArray:v4];

  os_unfair_lock_unlock(&_stateCaptureLock);

  return v5;
}

- (void)addItemWithTitle:(uint64_t)a3 identifier:(uint64_t)a4 block:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_262485000, a2, a3, "Duplicate identifier detected: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end