@interface PLSearchIndexingAccessManager
- (PLSearchIndexingAccessManager)initWithQueue:(id)a3 openBlock:(id)a4 closeBlock:(id)a5 deferCloseSeconds:(unint64_t)a6;
- (void)removeUser;
@end

@implementation PLSearchIndexingAccessManager

uint64_t __50__PLSearchIndexingAccessManager__closeIfZeroUsers__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 40) && *(v1 + 56) == 1)
  {
    *(v1 + 56) = 0;
    return (*(*(*(result + 32) + 32) + 16))();
  }

  return result;
}

void __38__PLSearchIndexingAccessManager_reset__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Access manager reset user count to 0", v4, 2u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 56) == 1)
  {
    *(v3 + 56) = 0;
    (*(*(*(a1 + 32) + 32) + 16))();
  }
}

- (void)removeUser
{
  location[1] = MEMORY[0x1E69E9820];
  location[2] = 3221225472;
  location[3] = __43__PLSearchIndexingAccessManager_removeUser__block_invoke;
  location[4] = &unk_1E75787F8;
  location[5] = self;
  v3 = PLResultWithUnfairLock();
  v4 = [v3 BOOLValue];

  if (v4)
  {
    objc_initWeak(location, self);
    v5 = dispatch_time(0, 1000000000 * self->_deferCloseSeconds);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PLSearchIndexingAccessManager_removeUser__block_invoke_2;
    block[3] = &unk_1E75788C0;
    objc_copyWeak(&v8, location);
    dispatch_after(v5, queue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }
}

id __43__PLSearchIndexingAccessManager_removeUser__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    *(v1 + 40) = v2 - 1;
    v4 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1 + 32) + 40);
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Access manager removed user, current user count: %lu", &v9, 0xCu);
    }

    v6 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 40) == 0];
  }

  else
  {
    v7 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Access manager unable to remove user, user count already at 0", &v9, 2u);
    }

    v6 = MEMORY[0x1E695E110];
  }

  return v6;
}

void __43__PLSearchIndexingAccessManager_removeUser__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _closeIfZeroUsers];
}

void __40__PLSearchIndexingAccessManager_addUser__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 40);
  v2 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "Access manager added user, current user count: %lu", &v5, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 40) == 1 && (*(v4 + 56) & 1) == 0)
  {
    *(v4 + 56) = 1;
    (*(*(*(a1 + 32) + 24) + 16))();
  }
}

- (PLSearchIndexingAccessManager)initWithQueue:(id)a3 openBlock:(id)a4 closeBlock:(id)a5 deferCloseSeconds:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = PLSearchIndexingAccessManager;
  v14 = [(PLSearchIndexingAccessManager *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    v16 = [v12 copy];
    openBlock = v15->_openBlock;
    v15->_openBlock = v16;

    v18 = [v13 copy];
    closeBlock = v15->_closeBlock;
    v15->_closeBlock = v18;

    v15->_deferCloseSeconds = a6;
    objc_storeStrong(&v15->_queue, a3);
  }

  return v15;
}

@end