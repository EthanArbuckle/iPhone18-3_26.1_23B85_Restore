@interface PXNetworkStatusMonitor
+ (PXNetworkStatusMonitor)sharedInstance;
- ($CE86B1AE65D1A4A4B278E4ED99C18EFC)bestAvailableNetworkType;
- (PXNetworkStatusMonitor)init;
- (void)_queue_handlePathUpdate:(id)a3;
- (void)_queue_notifyObserversOfBestAvailableNetworkType:(id)a3;
- (void)registerObserver:(id)a3 queue:(id)a4;
@end

@implementation PXNetworkStatusMonitor

- (void)registerObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PXNetworkStatusMonitor_registerObserver_queue___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)_queue_notifyObserversOfBestAvailableNetworkType:(id)a3
{
  v3 = *&a3.var1;
  var0 = a3.var0;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMapTable *)self->_queue_observers keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (v11)
        {
          v12 = [(NSMapTable *)self->_queue_observers objectForKey:*(*(&v15 + 1) + 8 * v10)];
          v13 = v12;
          if (v12)
          {
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __75__PXNetworkStatusMonitor__queue_notifyObserversOfBestAvailableNetworkType___block_invoke;
            v14[3] = &unk_1E7749A50;
            v14[4] = v11;
            v14[5] = self;
            v14[6] = var0;
            v14[7] = v3;
            dispatch_async(v12, v14);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_queue_handlePathUpdate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  status = nw_path_get_status(v4);
  if (MEMORY[0x1A590E0D0](v4, 3))
  {
    v6 = 4;
  }

  else if (MEMORY[0x1A590E0D0](v4, 1))
  {
    v6 = 2;
  }

  else if (MEMORY[0x1A590E0D0](v4, 2))
  {
    v6 = 3;
  }

  else if (MEMORY[0x1A590E0D0](v4, 0))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (status <= nw_path_status_satisfied)
  {
    if (status == nw_path_status_invalid)
    {
      v7 = @"invalid";
      goto LABEL_19;
    }

    if (status == nw_path_status_satisfied)
    {
      v7 = @"satisfied";
LABEL_19:
      v8 = &stru_1F1741150;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (status != nw_path_status_unsatisfied)
  {
    if (status == nw_path_status_satisfiable)
    {
      v7 = @"satisfiable";
      goto LABEL_19;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_19;
  }

  v8 = @" reason:notAvailable";
  v7 = @"unsatisfied";
LABEL_20:
  v9 = MEMORY[0x1A590E070](v4);
  v10 = MEMORY[0x1A590E080](v4);
  v11 = 256;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = v11 | v9;
  v13 = PLUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PXNetworkDetailsDescription(v6, v12);
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "PXNetworkStatusMonitor %@ status:%@%@", &v16, 0x20u);
  }

  if ((status & 0xFFFFFFFD) == 1)
  {
    v15 = v6;
  }

  else
  {
    v15 = 1;
  }

  self->queue_bestAvailableNetworkType.type = v15;
  *&self->queue_bestAvailableNetworkType.isConstrained = v12;
  [(PXNetworkStatusMonitor *)self _queue_notifyObserversOfBestAvailableNetworkType:?];
}

- ($CE86B1AE65D1A4A4B278E4ED99C18EFC)bestAvailableNetworkType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A561E057;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PXNetworkStatusMonitor_bestAvailableNetworkType__block_invoke;
  v7[3] = &unk_1E7749A28;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var2 = BYTE1(v6);
  result.var0 = v5;
  return result;
}

__n128 __50__PXNetworkStatusMonitor_bestAvailableNetworkType__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (PXNetworkStatusMonitor)init
{
  if (self)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.photos.PXNetworkStatusMonitor", v3);
    queue = self->_queue;
    self->_queue = v4;

    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    queue_observers = self->_queue_observers;
    self->_queue_observers = v6;

    v8 = nw_path_monitor_create();
    defaultPathMonitor = self->_defaultPathMonitor;
    self->_defaultPathMonitor = v8;

    if (self->_defaultPathMonitor)
    {
      v10 = self;
      v11 = self->_defaultPathMonitor;
      update_handler[0] = MEMORY[0x1E69E9820];
      update_handler[1] = 3221225472;
      update_handler[2] = __30__PXNetworkStatusMonitor_init__block_invoke;
      update_handler[3] = &unk_1E7749A00;
      v16 = v10;
      nw_path_monitor_set_update_handler(v11, update_handler);
      nw_path_monitor_set_queue(self->_defaultPathMonitor, self->_queue);
      nw_path_monitor_start(self->_defaultPathMonitor);
      dispatch_sync(self->_queue, &__block_literal_global_28_239356);
      p_super = &v16->super;
    }

    else
    {
      p_super = PLUIGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A3C1C000, p_super, OS_LOG_TYPE_ERROR, "nw_path_monitor_create() failed", v14, 2u);
      }
    }
  }

  return self;
}

+ (PXNetworkStatusMonitor)sharedInstance
{
  if (sharedInstance_onceToken_239365 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_239365, &__block_literal_global_239366);
  }

  v3 = sharedInstance_sharedInstance_239367;

  return v3;
}

void __40__PXNetworkStatusMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXNetworkStatusMonitor);
  v1 = sharedInstance_sharedInstance_239367;
  sharedInstance_sharedInstance_239367 = v0;
}

@end