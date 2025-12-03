@interface VUIFavoritesRequestManager
+ (id)sharedInstance;
+ (void)getFavoriteTeamsIgnoringCache:(BOOL)cache completion:(id)completion;
- (VUIFavoritesRequestManager)init;
- (id)_init;
- (void)sendRequestForEntityID:(id)d teamName:(id)name action:(unint64_t)action fireBackgroundEvent:(BOOL)event;
@end

@implementation VUIFavoritesRequestManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken != -1)
  {
    +[VUIFavoritesRequestManager sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __44__VUIFavoritesRequestManager_sharedInstance__block_invoke()
{
  v0 = [[VUIFavoritesRequestManager alloc] _init];
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = VUIFavoritesRequestManager;
  v2 = [(VUIFavoritesRequestManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    ongoingEntityIDOperationDictionary = v2->_ongoingEntityIDOperationDictionary;
    v2->_ongoingEntityIDOperationDictionary = dictionary;
  }

  return v2;
}

- (VUIFavoritesRequestManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented" reason:@"-[VUIFavoritesRequestManager init] not supported userInfo:{use +sharedInstance instead", 0}];
  objc_exception_throw(v2);
}

- (void)sendRequestForEntityID:(id)d teamName:(id)name action:(unint64_t)action fireBackgroundEvent:(BOOL)event
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  v12 = [(NSMutableDictionary *)self->_ongoingEntityIDOperationDictionary objectForKey:dCopy];
  v13 = v12;
  if (v12 && ([v12 isCancelled] & 1) == 0)
  {
    action = [v13 action];
    v22 = 1;
    if (action == 1)
    {
      v22 = 2;
    }

    if (action == 2)
    {
      v22 = 0;
    }

    if (action != v22)
    {
      [v13 cancel];
      [(NSMutableDictionary *)self->_ongoingEntityIDOperationDictionary removeObjectForKey:dCopy];
    }
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E69E15E0]);
    v30[0] = dCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v16 = 1;
    if (action == 1)
    {
      v16 = 2;
    }

    if (action == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v14 initWithAction:v17 ids:v15];

    if (v18)
    {
      objc_initWeak(&location, v18);
      objc_initWeak(&from, self);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __89__VUIFavoritesRequestManager_sendRequestForEntityID_teamName_action_fireBackgroundEvent___block_invoke;
      v23[3] = &unk_1E872DBE8;
      objc_copyWeak(&v25, &location);
      v26[1] = action;
      eventCopy = event;
      objc_copyWeak(v26, &from);
      v19 = dCopy;
      v24 = v19;
      [v18 setCompletionBlock:v23];
      [(NSMutableDictionary *)self->_ongoingEntityIDOperationDictionary setValue:v18 forKey:v19];
      wlkDefaultQueue = [MEMORY[0x1E696ADC8] wlkDefaultQueue];
      [wlkDefaultQueue addOperation:v18];

      objc_destroyWeak(v26);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __89__VUIFavoritesRequestManager_sendRequestForEntityID_teamName_action_fireBackgroundEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [WeakRetained error];
  [v3 vui_setObjectIfNotNil:v4 forKey:@"Error"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  [v3 vui_setObjectIfNotNil:v5 forKey:@"Action"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  [v3 vui_setObjectIfNotNil:v6 forKey:@"FireBackgroundEvent"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VUIFavoritesRequestManager_sendRequestForEntityID_teamName_action_fireBackgroundEvent___block_invoke_2;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v11, (a1 + 48));
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __89__VUIFavoritesRequestManager_sendRequestForEntityID_teamName_action_fireBackgroundEvent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ongoingEntityIDOperationDictionary];
  [v3 removeObjectForKey:*(a1 + 32)];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"VUIFavoritesRequestDidFinishNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

+ (void)getFavoriteTeamsIgnoringCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  if (completionCopy)
  {
    defaultManager = [MEMORY[0x1E69E15D8] defaultManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__VUIFavoritesRequestManager_getFavoriteTeamsIgnoringCache_completion___block_invoke;
    v7[3] = &unk_1E872DC38;
    v8 = completionCopy;
    [defaultManager getFavoritesIgnoringCache:cacheCopy completion:v7];
  }
}

void __71__VUIFavoritesRequestManager_getFavoriteTeamsIgnoringCache_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 ID];

          if (v14)
          {
            v15 = [v13 ID];
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v20 = __71__VUIFavoritesRequestManager_getFavoriteTeamsIgnoringCache_completion___block_invoke_2;
    v21 = &unk_1E872DC10;
    v16 = *(a1 + 32);
    v22 = v7;
    v23 = v16;
    v17 = MEMORY[0x1E696AF00];
    v18 = v7;
    if ([v17 isMainThread])
    {
      v20(v19);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v19);
    }
  }
}

void __71__VUIFavoritesRequestManager_getFavoriteTeamsIgnoringCache_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

@end