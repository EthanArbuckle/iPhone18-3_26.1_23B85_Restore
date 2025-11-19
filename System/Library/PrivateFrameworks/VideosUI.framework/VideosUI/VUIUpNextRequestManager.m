@interface VUIUpNextRequestManager
+ (id)sharedInstance;
- (VUIUpNextRequestManager)init;
- (id)_init;
- (void)_postUpNextRequestFinishedNotificationForCanonicalId:(id)a3 userInfo:(id)a4;
- (void)sendRequestForCanonicalID:(id)a3 action:(unint64_t)a4 confirmationShouldWaitCompletion:(BOOL)a5;
@end

@implementation VUIUpNextRequestManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_5 != -1)
  {
    +[VUIUpNextRequestManager sharedInstance];
  }

  v3 = sharedInstance___instance_3;

  return v3;
}

void __41__VUIUpNextRequestManager_sharedInstance__block_invoke()
{
  v0 = [[VUIUpNextRequestManager alloc] _init];
  v1 = sharedInstance___instance_3;
  sharedInstance___instance_3 = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = VUIUpNextRequestManager;
  v2 = [(VUIUpNextRequestManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    ongoingCanonicalIDOperationDictionary = v2->_ongoingCanonicalIDOperationDictionary;
    v2->_ongoingCanonicalIDOperationDictionary = v3;
  }

  return v2;
}

- (VUIUpNextRequestManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented" reason:@"-[VUIUpNextRequestManager init] not supported userInfo:{use +sharedInstance instead", 0}];
  objc_exception_throw(v2);
}

- (void)sendRequestForCanonicalID:(id)a3 action:(unint64_t)a4 confirmationShouldWaitCompletion:(BOOL)a5
{
  v7 = a3;
  v8 = [(NSMutableDictionary *)self->_ongoingCanonicalIDOperationDictionary objectForKey:v7];
  v9 = v8;
  if (v8 && ([v8 isCancelled] & 1) == 0)
  {
    if ([v9 action] != a4)
    {
      [v9 cancel];
      [(NSMutableDictionary *)self->_ongoingCanonicalIDOperationDictionary removeObjectForKey:v7];
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69E1628]) initWithAction:a4 canonicalID:v7 caller:0];
    if (v10)
    {
      objc_initWeak(&location, v10);
      objc_initWeak(&from, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __93__VUIUpNextRequestManager_sendRequestForCanonicalID_action_confirmationShouldWaitCompletion___block_invoke;
      v13[3] = &unk_1E8730290;
      objc_copyWeak(&v15, &location);
      objc_copyWeak(&v16, &from);
      v11 = v7;
      v14 = v11;
      [v10 setCompletionBlock:v13];
      [(NSMutableDictionary *)self->_ongoingCanonicalIDOperationDictionary setValue:v10 forKey:v11];
      v12 = [MEMORY[0x1E696ADC8] wlkDefaultQueue];
      [v12 addOperation:v10];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __93__VUIUpNextRequestManager_sendRequestForCanonicalID_action_confirmationShouldWaitCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [WeakRetained error];
  [v3 vui_setObjectIfNotNil:v4 forKey:@"Error"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "action")}];
  [v3 vui_setObjectIfNotNil:v5 forKey:@"Action"];

  v6 = objc_loadWeakRetained(a1 + 6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__VUIUpNextRequestManager_sendRequestForCanonicalID_action_confirmationShouldWaitCompletion___block_invoke_2;
  block[3] = &unk_1E8730400;
  block[4] = v6;
  v10 = a1[4];
  v11 = WeakRetained;
  v7 = WeakRetained;
  objc_copyWeak(&v13, a1 + 6);
  v12 = v3;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __93__VUIUpNextRequestManager_sendRequestForCanonicalID_action_confirmationShouldWaitCompletion___block_invoke_2(id *a1)
{
  v2 = [a1[4] ongoingCanonicalIDOperationDictionary];
  [v2 removeObjectForKey:a1[5]];

  if ([a1[6] action] == 1 && (+[VUIFeaturesConfiguration sharedInstance](VUIFeaturesConfiguration, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "upNextConfig"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "upNextRefreshCallDelayAfterRemoveFromUpNext"), v4, v3, v5 >= 1))
  {
    v6 = dispatch_time(0, 1000000 * v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__VUIUpNextRequestManager_sendRequestForCanonicalID_action_confirmationShouldWaitCompletion___block_invoke_3;
    block[3] = &unk_1E872D9B8;
    objc_copyWeak(&v13, a1 + 8);
    v11 = a1[5];
    v12 = a1[7];
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[7];

    [v7 _postUpNextRequestFinishedNotificationForCanonicalId:v8 userInfo:v9];
  }
}

void __93__VUIUpNextRequestManager_sendRequestForCanonicalID_action_confirmationShouldWaitCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _postUpNextRequestFinishedNotificationForCanonicalId:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)_postUpNextRequestFinishedNotificationForCanonicalId:(id)a3 userInfo:(id)a4
{
  v5 = MEMORY[0x1E696AD88];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultCenter];
  [v8 postNotificationName:@"VUIUpNextRequestDidFinishNotification" object:v7 userInfo:v6];

  v9 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v9 vui_postNotificationName:@"com.apple.VideosUI.UpNextRequestDidFinishNotification" object:v7 userInfo:v6];
}

@end