@interface PLClientChangePublisher
- (PLClientChangePublisher)initWithAssetsdClient:(id)client;
- (id)publishChangeEvent:(id)event delayedSaveActionsDetail:(id)detail debugEvent:(id)debugEvent transaction:(id)transaction;
- (void)pauseLaunchEventNotifications;
- (void)unpauseLaunchEventNotifications;
@end

@implementation PLClientChangePublisher

- (void)unpauseLaunchEventNotifications
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_FAULT, "Trying to unpause launch event notifications from the client", v3, 2u);
  }
}

- (void)pauseLaunchEventNotifications
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_FAULT, "Trying to pause launch event notifications from the client", v3, 2u);
  }
}

- (id)publishChangeEvent:(id)event delayedSaveActionsDetail:(id)detail debugEvent:(id)debugEvent transaction:(id)transaction
{
  v23 = *MEMORY[0x1E69E9840];
  detailCopy = detail;
  transactionCopy = transaction;
  v11 = MEMORY[0x1E69BF338];
  eventCopy = event;
  v13 = [[v11 alloc] initWithXPCObject:eventCopy];

  libraryClient = [(PLAssetsdClient *)self->_assetsdClient libraryClient];
  if (!libraryClient)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      assetsdClient = self->_assetsdClient;
      *buf = 138412290;
      v22 = assetsdClient;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Assetsd client %@ has nil library client, unable to publish remote change event", buf, 0xCu);
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__PLClientChangePublisher_publishChangeEvent_delayedSaveActionsDetail_debugEvent_transaction___block_invoke;
  v19[3] = &unk_1E7575FA8;
  v17 = transactionCopy;
  v20 = v17;
  [libraryClient publishRemoteChangeEvent:v13 delayedSaveActionsDetail:detailCopy completionHandler:v19];

  return v17;
}

void __94__PLClientChangePublisher_publishChangeEvent_delayedSaveActionsDetail_debugEvent_transaction___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Unable to publish remote change event: %@", &v5, 0xCu);
    }
  }

  [*(a1 + 32) completeTransaction];
}

- (PLClientChangePublisher)initWithAssetsdClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = PLClientChangePublisher;
  v6 = [(PLClientChangePublisher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetsdClient, client);
    v8 = v7;
  }

  return v7;
}

@end