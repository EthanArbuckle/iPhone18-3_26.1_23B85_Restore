@interface _UISceneOpenItemProvidersDataTransferSession
- (_UISceneOpenItemProvidersDataTransferSession)initWithItemProviders:(id)providers itemCollection:(id)collection continuation:(id)continuation;
- (_UISceneOpenItemProvidersDataTransferSessionDelegate)delegate;
- (void)dataTransferMonitorBeganTransfers:(id)transfers;
- (void)dataTransferMonitorFinishedTransfers:(id)transfers;
- (void)didFinishSendingRequests;
@end

@implementation _UISceneOpenItemProvidersDataTransferSession

- (_UISceneOpenItemProvidersDataTransferSession)initWithItemProviders:(id)providers itemCollection:(id)collection continuation:(id)continuation
{
  v28 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  collectionCopy = collection;
  continuationCopy = continuation;
  v26.receiver = self;
  v26.super_class = _UISceneOpenItemProvidersDataTransferSession;
  v12 = [(_UISceneOpenItemProvidersDataTransferSession *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemProviders, providers);
    objc_storeStrong(&v13->_itemCollection, collection);
    v14 = objc_alloc_init(_UIDataTransferMonitor);
    monitor = v13->_monitor;
    v13->_monitor = v14;

    [(_UIDataTransferMonitor *)v13->_monitor setDelegate:v13];
    objc_storeStrong(&v13->_continuation, continuation);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v13->_itemProviders;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v22 + 1) + 8 * v20++) setDataTransferDelegate:{v13->_monitor, v22}];
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }
  }

  return v13;
}

- (void)didFinishSendingRequests
{
  itemCollection = [(_UISceneOpenItemProvidersDataTransferSession *)self itemCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72___UISceneOpenItemProvidersDataTransferSession_didFinishSendingRequests__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [itemCollection waitForItemRequestsDeliveryCompletion:v4];
}

- (void)dataTransferMonitorBeganTransfers:(id)transfers
{
  delegate = [(_UISceneOpenItemProvidersDataTransferSession *)self delegate];
  [delegate dataTransferSessionBeganTransfers:self];
}

- (void)dataTransferMonitorFinishedTransfers:(id)transfers
{
  delegate = [(_UISceneOpenItemProvidersDataTransferSession *)self delegate];
  [delegate dataTransferSessionFinishedTransfers:self];
}

- (_UISceneOpenItemProvidersDataTransferSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end