@interface _UISceneOpenItemProvidersDataTransferSessionManager
+ (id)sharedInstance;
- (_UISceneOpenItemProvidersDataTransferSessionManager)init;
- (void)addSession:(id)session;
- (void)dataTransferSessionBeganTransfers:(id)transfers;
- (void)dataTransferSessionFinishedTransfers:(id)transfers;
@end

@implementation _UISceneOpenItemProvidersDataTransferSessionManager

+ (id)sharedInstance
{
  if (_MergedGlobals_1206 != -1)
  {
    dispatch_once(&_MergedGlobals_1206, &__block_literal_global_179_0);
  }

  v3 = qword_1ED49F5C8;

  return v3;
}

- (_UISceneOpenItemProvidersDataTransferSessionManager)init
{
  v8.receiver = self;
  v8.super_class = _UISceneOpenItemProvidersDataTransferSessionManager;
  v2 = [(_UISceneOpenItemProvidersDataTransferSessionManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    sessions = v2->_sessions;
    v2->_sessions = v3;

    v5 = dispatch_queue_create("com.apple.UIKit.OpenItemProvidersActionHandler.TransferSessionWorkQueue", MEMORY[0x1E69E96A8]);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

- (void)addSession:(id)session
{
  sessionCopy = session;
  workQueue = [(_UISceneOpenItemProvidersDataTransferSessionManager *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___UISceneOpenItemProvidersDataTransferSessionManager_addSession___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v8 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  dispatch_sync(workQueue, v7);
}

- (void)dataTransferSessionBeganTransfers:(id)transfers
{
  v12 = *MEMORY[0x1E69E9840];
  transfersCopy = transfers;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OpenItemProviders", &dataTransferSessionBeganTransfers____s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      itemCollection = [transfersCopy itemCollection];
      uUID = [itemCollection UUID];
      uUIDString = [uUID UUIDString];
      v10 = 138412290;
      v11 = uUIDString;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "data transfer began for item collection uuid: %@", &v10, 0xCu);
    }
  }
}

- (void)dataTransferSessionFinishedTransfers:(id)transfers
{
  transfersCopy = transfers;
  workQueue = [(_UISceneOpenItemProvidersDataTransferSessionManager *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92___UISceneOpenItemProvidersDataTransferSessionManager_dataTransferSessionFinishedTransfers___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = transfersCopy;
  v6 = transfersCopy;
  dispatch_sync(workQueue, v7);
}

@end