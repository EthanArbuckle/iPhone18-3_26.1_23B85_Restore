@interface VUIRemoveFromPlayHistoryRequestManager
+ (id)sharedInstance;
- (VUIRemoveFromPlayHistoryRequestManager)init;
- (id)_init;
- (void)sendRequestForDeleteID:(id)a3 isContinueWatching:(BOOL)a4;
@end

@implementation VUIRemoveFromPlayHistoryRequestManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_2 != -1)
  {
    +[VUIRemoveFromPlayHistoryRequestManager sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

void __56__VUIRemoveFromPlayHistoryRequestManager_sharedInstance__block_invoke()
{
  v0 = [[VUIRemoveFromPlayHistoryRequestManager alloc] _init];
  v1 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = VUIRemoveFromPlayHistoryRequestManager;
  v2 = [(VUIRemoveFromPlayHistoryRequestManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    ongoingDeleteIDOperationDictionary = v2->_ongoingDeleteIDOperationDictionary;
    v2->_ongoingDeleteIDOperationDictionary = v3;
  }

  return v2;
}

- (VUIRemoveFromPlayHistoryRequestManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented" reason:@"-[VUIRemoveFromPlayHistoryRequestManager init] not supported userInfo:{use +sharedInstance instead", 0}];
  objc_exception_throw(v2);
}

- (void)sendRequestForDeleteID:(id)a3 isContinueWatching:(BOOL)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_ongoingDeleteIDOperationDictionary objectForKey:v6];
  v8 = v7;
  if (!v7 || [v7 isCancelled])
  {
    v9 = [objc_alloc(MEMORY[0x1E69E15B8]) initWithItemID:v6];
    if (v9)
    {
      objc_initWeak(&location, v9);
      objc_initWeak(&from, self);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __84__VUIRemoveFromPlayHistoryRequestManager_sendRequestForDeleteID_isContinueWatching___block_invoke;
      v15 = &unk_1E872F3C8;
      objc_copyWeak(&v17, &location);
      v10 = v6;
      v16 = v10;
      objc_copyWeak(&v18, &from);
      v19 = a4;
      [v9 setCompletionBlock:&v12];
      [(NSMutableDictionary *)self->_ongoingDeleteIDOperationDictionary setValue:v9 forKey:v10, v12, v13, v14, v15];
      v11 = [MEMORY[0x1E696ADC8] wlkDefaultQueue];
      [v11 addOperation:v9];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __84__VUIRemoveFromPlayHistoryRequestManager_sendRequestForDeleteID_isContinueWatching___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 vui_setObjectIfNotNil:*(a1 + 32) forKey:@"CanonicalID"];
  v4 = [WeakRetained error];
  [v3 vui_setObjectIfNotNil:v4 forKey:@"Error"];

  v5 = +[VUIFeaturesConfiguration sharedInstance];
  v6 = [v5 upNextConfig];
  v7 = [v6 upNextRefreshCallDelayAfterRemoveFromUpNext];

  v8 = dispatch_time(0, 1000000 * v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__VUIRemoveFromPlayHistoryRequestManager_sendRequestForDeleteID_isContinueWatching___block_invoke_2;
  v11[3] = &unk_1E872F3A0;
  objc_copyWeak(&v14, (a1 + 48));
  v9 = *(a1 + 32);
  v15 = *(a1 + 56);
  v12 = v9;
  v13 = v3;
  v10 = v3;
  dispatch_after(v8, MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v14);
}

void __84__VUIRemoveFromPlayHistoryRequestManager_sendRequestForDeleteID_isContinueWatching___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ongoingDeleteIDOperationDictionary];
  [v3 removeObjectForKey:*(a1 + 32)];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = v4;
  if (*(a1 + 56))
  {
    v5 = @"VUIClearFromPlayHistoryRequestDidFinishNotification";
  }

  else
  {
    v5 = @"VUIRemoveFromPlayHistoryRequestDidFinishNotification";
  }

  [v4 postNotificationName:v5 object:*(a1 + 32) userInfo:*(a1 + 40)];
}

@end