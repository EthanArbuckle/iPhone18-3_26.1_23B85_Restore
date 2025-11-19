@interface WBSHistoryController
+ (WBSHistoryController)existingSharedHistoryController;
- (WBSHistoryController)init;
- (id)_createHistorySessionControllerForHistory:(id)a3;
- (id)historyForProfileIdentifier:(id)a3 loadIfNeeded:(BOOL)a4;
- (id)historySessionControllerForProfileIdentifier:(id)a3 loadIfNeeded:(BOOL)a4;
- (id)normalizeProfileIdentifier:(id)a3;
@end

@implementation WBSHistoryController

- (WBSHistoryController)init
{
  v19.receiver = self;
  v19.super_class = WBSHistoryController;
  v2 = [(WBSHistoryController *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __28__WBSHistoryController_init__block_invoke;
    v17[3] = &unk_1E7FB6D90;
    v4 = v2;
    v18 = v4;
    os_unfair_lock_lock(&sharedHistoryControllerLock);
    __28__WBSHistoryController_init__block_invoke(v17);
    os_unfair_lock_unlock(&sharedHistoryControllerLock);
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"com.apple.Safari.%@.%p", v7, v4];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v4->_queue;
    v4->_queue = v9;

    v11 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    historyMap = v4->_historyMap;
    v4->_historyMap = v11;

    v13 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    historySessionControllerMap = v4->_historySessionControllerMap;
    v4->_historySessionControllerMap = v13;

    v15 = v4;
  }

  return v3;
}

void __28__WBSHistoryController_init__block_invoke(uint64_t a1)
{
  if (sharedHistoryController)
  {
    __break(0xC471u);
  }

  else
  {
    objc_storeStrong(&sharedHistoryController, *(a1 + 32));
  }
}

+ (WBSHistoryController)existingSharedHistoryController
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20;
  v13 = __Block_byref_object_dispose__20;
  v14 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __55__WBSHistoryController_existingSharedHistoryController__block_invoke;
  v7 = &unk_1E7FB6EC8;
  v8 = &v9;
  v2 = v5;
  os_unfair_lock_lock(&sharedHistoryControllerLock);
  v6(v2);

  os_unfair_lock_unlock(&sharedHistoryControllerLock);
  v3 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v3;
}

void __55__WBSHistoryController_existingSharedHistoryController__block_invoke(uint64_t a1)
{
  if (sharedHistoryController)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), sharedHistoryController);
  }

  else
  {
    __break(0xC471u);
  }
}

- (id)normalizeProfileIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C8B58]) & 1) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F3A5E418;
  }

  return v4;
}

- (id)historyForProfileIdentifier:(id)a3 loadIfNeeded:(BOOL)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__20;
  v20 = __Block_byref_object_dispose__20;
  v21 = 0;
  v7 = [(WBSHistoryController *)self normalizeProfileIdentifier:v6];

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__WBSHistoryController_historyForProfileIdentifier_loadIfNeeded___block_invoke;
  v12[3] = &unk_1E7FC6F88;
  v13 = v7;
  v14 = &v16;
  v12[4] = self;
  v15 = a4;
  v9 = v7;
  dispatch_sync(queue, v12);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __65__WBSHistoryController_historyForProfileIdentifier_loadIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 56) == 1)
  {
    v5 = [*(a1 + 32) _createHistoryForProfileIdentifier:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 16);
    v10 = *(*(*(a1 + 48) + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

- (id)_createHistorySessionControllerForHistory:(id)a3
{
  v3 = a3;
  v4 = [v3 databaseID];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [[WBSHistorySessionController alloc] initWithHistory:v3];
  }

  else
  {
    v6 = +[WBSHistorySessionController sharedSessionController];
  }

  v7 = v6;

  return v7;
}

- (id)historySessionControllerForProfileIdentifier:(id)a3 loadIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__20;
  v21 = __Block_byref_object_dispose__20;
  v22 = 0;
  v7 = [(WBSHistoryController *)self normalizeProfileIdentifier:v6];

  v8 = [(WBSHistoryController *)self historyForProfileIdentifier:v7 loadIfNeeded:v4];
  if (v8)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WBSHistoryController_historySessionControllerForProfileIdentifier_loadIfNeeded___block_invoke;
    block[3] = &unk_1E7FC6FB0;
    v15 = &v17;
    block[4] = self;
    v13 = v7;
    v16 = v4;
    v14 = v8;
    dispatch_sync(queue, block);
    v10 = v18[5];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __82__WBSHistoryController_historySessionControllerForProfileIdentifier_loadIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 64) == 1)
  {
    v5 = [*(a1 + 32) _createHistorySessionControllerForHistory:*(a1 + 48)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 24);
    v10 = *(*(*(a1 + 56) + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

@end