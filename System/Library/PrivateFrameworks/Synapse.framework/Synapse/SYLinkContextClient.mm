@interface SYLinkContextClient
- (SYLinkContextClientDelegate)delegate;
- (id)_linkContextDictionariesFromDataArray:(id)array error:(id *)error;
- (id)initForTesting:(BOOL)testing;
- (void)_configureConnectionAndResume;
- (void)_createConnectionIfNeeded;
- (void)_invalidateConnection;
- (void)_processFetchLinkContextsRequestForUserActivity:(id)activity serviceProxy:(id)proxy completion:(id)completion;
- (void)_sendInitialMessage;
- (void)_updateObserverAndCreateConnectionIfNeeded;
- (void)createAndShowContextualLinkWithUserActivity:(id)activity linkPreviewMetadata:(id)metadata preferNewDocument:(BOOL)document completion:(id)completion;
- (void)createConnectionWithEndpoint:(id)endpoint;
- (void)dealloc;
- (void)fetchLinkContextsForUserActivity:(id)activity completion:(id)completion;
- (void)insertImagesData:(id)data completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)userDidRemoveContentItemDatas:(id)datas;
- (void)userEditDidAddContentItemDatas:(id)datas;
- (void)userWillAddLinkWithActivityData:(id)data completion:(id)completion;
@end

@implementation SYLinkContextClient

- (void)_updateObserverAndCreateConnectionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  _notesObserver = [(SYLinkContextClient *)self _notesObserver];
  v5 = _notesObserver;
  if (WeakRetained)
  {
    if (_notesObserver)
    {
    }

    else if (![(SYLinkContextClient *)self _forTesting])
    {
      objc_initWeak(&location, self);
      v6 = [SYNotesActivationObserver alloc];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __65__SYLinkContextClient__updateObserverAndCreateConnectionIfNeeded__block_invoke;
      v18 = &unk_27856BA48;
      objc_copyWeak(&v19, &location);
      v7 = [(SYNotesActivationObserver *)v6 initWithHandler:&v15];
      [(SYLinkContextClient *)self set_notesObserver:v7, v15, v16, v17, v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    if (-[SYLinkContextClient _forTesting](self, "_forTesting") || (-[SYLinkContextClient _notesObserver](self, "_notesObserver"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isVisible], v8, v9))
    {
      _connection = [(SYLinkContextClient *)self _connection];

      if (!_connection)
      {
        [(SYLinkContextClient *)self _createConnectionIfNeeded];
      }

      _connection2 = [(SYLinkContextClient *)self _connection];

      if (_connection2)
      {
        [(SYLinkContextClient *)self _sendInitialMessage];
      }

      _connection3 = [(SYLinkContextClient *)self _connection];
      if (_connection3)
      {
        v13 = _connection3;
        _notesObserver2 = [(SYLinkContextClient *)self _notesObserver];

        if (_notesObserver2)
        {
          [(SYLinkContextClient *)self set_notesObserver:0];
        }
      }
    }
  }

  else
  {

    if (v5)
    {

      [(SYLinkContextClient *)self set_notesObserver:0];
    }
  }
}

void __65__SYLinkContextClient__updateObserverAndCreateConnectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SYLinkContextClient__updateObserverAndCreateConnectionIfNeeded__block_invoke_2;
  block[3] = &unk_27856B880;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

- (id)initForTesting:(BOOL)testing
{
  v13.receiver = self;
  v13.super_class = SYLinkContextClient;
  v4 = [(SYLinkContextClient *)&v13 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    pendingCreateLinkCompletionBlocks = v4->__pendingCreateLinkCompletionBlocks;
    v4->__pendingCreateLinkCompletionBlocks = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    pendingFetchLinkCompletionBlocks = v4->__pendingFetchLinkCompletionBlocks;
    v4->__pendingFetchLinkCompletionBlocks = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.synapse.LinkContextClient", v9);
    clientQueue = v4->__clientQueue;
    v4->__clientQueue = v10;

    v4->__forTesting = testing;
  }

  return v4;
}

- (void)dealloc
{
  _connection = [(SYLinkContextClient *)self _connection];
  [_connection invalidate];

  [(SYLinkContextClient *)self set_connection:0];
  v4.receiver = self;
  v4.super_class = SYLinkContextClient;
  [(SYLinkContextClient *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  _clientQueue = [(SYLinkContextClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SYLinkContextClient_setDelegate___block_invoke;
  block[3] = &unk_27856B880;
  block[4] = self;
  dispatch_sync(_clientQueue, block);
}

- (void)_sendInitialMessage
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __42__SYLinkContextClient__sendInitialMessage__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__SYLinkContextClient__sendInitialMessage__block_invoke_cold_1();
  }
}

- (void)createAndShowContextualLinkWithUserActivity:(id)activity linkPreviewMetadata:(id)metadata preferNewDocument:(BOOL)document completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  metadataCopy = metadata;
  completionCopy = completion;
  v13 = completionCopy;
  if (activityCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SYLinkContextClient createAndShowContextualLinkWithUserActivity:linkPreviewMetadata:preferNewDocument:completion:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [SYLinkContextClient createAndShowContextualLinkWithUserActivity:linkPreviewMetadata:preferNewDocument:completion:];
LABEL_3:
  LODWORD(v14) = SYIsLinkableUserActivity(activityCopy);
  _uniqueIdentifier = [activityCopy _uniqueIdentifier];
  v16 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (v14)
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    [activityCopy _linkContextInfo];
    v14 = v26 = v14;
    *buf = 138413058;
    if (v14)
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    v37 = _uniqueIdentifier;
    if (metadataCopy)
    {
      v19 = @"Y";
    }

    else
    {
      v19 = @"N";
    }

    v38 = 2112;
    v39 = v17;
    self = selfCopy;
    v40 = 2112;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "LinkContextClient: Create contextual link with user activity %@, is linkable: %@, has link context: %@, has link preview: %@", buf, 0x2Au);

    LOBYTE(v14) = v26;
  }

  _clientQueue = [(SYLinkContextClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__SYLinkContextClient_createAndShowContextualLinkWithUserActivity_linkPreviewMetadata_preferNewDocument_completion___block_invoke;
  block[3] = &unk_27856BDD8;
  v34 = v14;
  v29 = activityCopy;
  v30 = metadataCopy;
  v32 = _uniqueIdentifier;
  v33 = v13;
  documentCopy = document;
  selfCopy2 = self;
  v21 = _uniqueIdentifier;
  v22 = v13;
  v23 = metadataCopy;
  v24 = activityCopy;
  dispatch_async(_clientQueue, block);

  v25 = *MEMORY[0x277D85DE8];
}

void __116__SYLinkContextClient_createAndShowContextualLinkWithUserActivity_linkPreviewMetadata_preferNewDocument_completion___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    v2 = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = [v2 bundleIdentifier];
    v4 = v3;
    v5 = &stru_2838DFF18;
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;

    v7 = [[SYContentItem alloc] initWithUserActivity:*(a1 + 32) sourceAppID:v6 sourceAppName:0 identifier:0];
    [(SYContentItem *)v7 setLinkPreviewMetadata:*(a1 + 40)];
    v26 = 0;
    v8 = [(SYContentItem *)v7 dataRepresentationWithError:&v26];
    v9 = v26;

    if (v8)
    {
      v10 = [*(a1 + 64) copy];
      v11 = [*(a1 + 48) _pendingCreateLinkCompletionBlocks];
      v12 = MEMORY[0x22AA6A360](v10);
      [v11 addObject:v12];

      v13 = *(a1 + 73);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __116__SYLinkContextClient_createAndShowContextualLinkWithUserActivity_linkPreviewMetadata_preferNewDocument_completion___block_invoke_2;
      v22[3] = &unk_27856BDB0;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 48);
      v23 = v15;
      v24 = v16;
      v25 = v10;
      v17 = v10;
      [v14 _sendRequestToCreateLinkWithContentItemData:v8 preferNewDocument:v13 completion:v22];

      goto LABEL_10;
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"User activity is not linkable.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v9 = [v18 errorWithDomain:@"com.apple.synapse" code:-126 userInfo:v19];
  }

  v20 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __116__SYLinkContextClient_createAndShowContextualLinkWithUserActivity_linkPreviewMetadata_preferNewDocument_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 64) + 16))();
LABEL_10:

  v21 = *MEMORY[0x277D85DE8];
}

void __116__SYLinkContextClient_createAndShowContextualLinkWithUserActivity_linkPreviewMetadata_preferNewDocument_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"N";
    v15 = 138412802;
    if (a2)
    {
      v8 = @"Y";
    }

    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "LinkContextClient: Finished request to create contextual link for activity %@, success: %@, error: %@", &v15, 0x20u);
  }

  v9 = [*(a1 + 40) _pendingCreateLinkCompletionBlocks];
  v10 = MEMORY[0x22AA6A360](*(a1 + 48));
  v11 = [v9 containsObject:v10];

  if (v11)
  {
    v12 = [*(a1 + 40) _pendingCreateLinkCompletionBlocks];
    v13 = MEMORY[0x22AA6A360](*(a1 + 48));
    [v12 removeObject:v13];

    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  v14 = *MEMORY[0x277D85DE8];
}

id __96__SYLinkContextClient__sendRequestToCreateLinkWithContentItemData_preferNewDocument_completion___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*v1 delegate];
    v5 = [v4 presentingViewControllerForLinkContextClient:*v1];

    if (!v5)
    {
      __96__SYLinkContextClient__sendRequestToCreateLinkWithContentItemData_preferNewDocument_completion___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __96__SYLinkContextClient__sendRequestToCreateLinkWithContentItemData_preferNewDocument_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) _clientQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __96__SYLinkContextClient__sendRequestToCreateLinkWithContentItemData_preferNewDocument_completion___block_invoke_3;
    v5[3] = &unk_27856B978;
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

- (void)fetchLinkContextsForUserActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  v8 = completionCopy;
  if (!activityCopy)
  {
    [SYLinkContextClient fetchLinkContextsForUserActivity:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SYLinkContextClient fetchLinkContextsForUserActivity:completion:];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _clientQueue = [(SYLinkContextClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SYLinkContextClient_fetchLinkContextsForUserActivity_completion___block_invoke;
  block[3] = &unk_27856B510;
  block[4] = self;
  v13 = activityCopy;
  v14 = v8;
  v10 = v8;
  v11 = activityCopy;
  dispatch_async(_clientQueue, block);
}

void __67__SYLinkContextClient_fetchLinkContextsForUserActivity_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _createConnectionIfNeeded];
  v2 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) _uniqueIdentifier];
    v4 = [*(a1 + 32) _connection];
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "LinkContextClient: fetchLinkContexts started for activity: %@, connection: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v5 = [*(a1 + 32) _connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SYLinkContextClient_fetchLinkContextsForUserActivity_completion___block_invoke_56;
  v9[3] = &unk_27856B6C0;
  v9[4] = *(a1 + 32);
  v9[5] = buf;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v9];

  if (v6)
  {
    [*(a1 + 32) _processFetchLinkContextsRequestForUserActivity:*(a1 + 40) serviceProxy:v6 completion:*(a1 + 48)];
  }

  else
  {
    v7 = *(*&buf[8] + 40);
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(buf, 8);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__SYLinkContextClient_fetchLinkContextsForUserActivity_completion___block_invoke_56(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __67__SYLinkContextClient_fetchLinkContextsForUserActivity_completion___block_invoke_56_cold_1(v4, a1);
  }
}

- (void)_processFetchLinkContextsRequestForUserActivity:(id)activity serviceProxy:(id)proxy completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  proxyCopy = proxy;
  completionCopy = completion;
  if (activityCopy)
  {
    if (proxyCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    [SYLinkContextClient _processFetchLinkContextsRequestForUserActivity:serviceProxy:completion:];
    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [SYLinkContextClient _processFetchLinkContextsRequestForUserActivity:serviceProxy:completion:];
  if (!proxyCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  [SYLinkContextClient _processFetchLinkContextsRequestForUserActivity:serviceProxy:completion:];
LABEL_4:
  _clientQueue = [(SYLinkContextClient *)self _clientQueue];
  dispatch_assert_queue_V2(_clientQueue);

  if (objc_opt_respondsToSelector())
  {
    v12 = [completionCopy copy];
    _pendingFetchLinkCompletionBlocks = [(SYLinkContextClient *)self _pendingFetchLinkCompletionBlocks];
    v14 = MEMORY[0x22AA6A360](v12);
    [_pendingFetchLinkCompletionBlocks addObject:v14];

    v15 = [[SYUserActivityIdentifierInfo alloc] initWithUserActivity:activityCopy];
    _uniqueIdentifier = [activityCopy _uniqueIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __95__SYLinkContextClient__processFetchLinkContextsRequestForUserActivity_serviceProxy_completion___block_invoke;
    v23[3] = &unk_27856BE50;
    v23[4] = self;
    v24 = _uniqueIdentifier;
    v25 = v12;
    v17 = v12;
    v18 = _uniqueIdentifier;
    [proxyCopy fetchLinkContextsDataForUserActivityInfo:v15 completion:v23];
  }

  else
  {
    v19 = os_log_create("com.apple.synapse", "LinkContext");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SYLinkContextClient _processFetchLinkContextsRequestForUserActivity:proxyCopy serviceProxy:sel_fetchLinkContextsDataForUserActivityInfo_completion_ completion:?];
    }

    v20 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"Error communicating with remote service. The service doesn't have the expected interface.";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v15 = [v20 errorWithDomain:@"com.apple.synapse" code:-124 userInfo:v21];

    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __95__SYLinkContextClient__processFetchLinkContextsRequestForUserActivity_serviceProxy_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SYLinkContextClient__processFetchLinkContextsRequestForUserActivity_serviceProxy_completion___block_invoke_2;
  block[3] = &unk_27856BE28;
  v11 = v5;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[4];
  v15 = a1[6];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __95__SYLinkContextClient__processFetchLinkContextsRequestForUserActivity_serviceProxy_completion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.synapse", "LinkContext");
  v4 = v3;
  if (v2)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) count];
      *buf = 138412546;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextClient: fetchLinkContexts finished for activity: %@, found contexts: %ld", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __95__SYLinkContextClient__processFetchLinkContextsRequestForUserActivity_serviceProxy_completion___block_invoke_2_cold_1(a1, v4);
  }

  v8 = [*(a1 + 56) _pendingFetchLinkCompletionBlocks];
  v9 = MEMORY[0x22AA6A360](*(a1 + 64));
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(a1 + 56);
      v19 = v11;
      v14 = [v13 _linkContextDictionariesFromDataArray:v12 error:&v19];
      v15 = v19;

      v11 = v15;
    }

    else
    {
      v14 = 0;
    }

    v16 = [*(a1 + 56) _pendingFetchLinkCompletionBlocks];
    v17 = MEMORY[0x22AA6A360](*(a1 + 64));
    [v16 removeObject:v17];

    (*(*(a1 + 64) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_linkContextDictionariesFromDataArray:(id)array error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v7 = SYSupportedLinkContextInfoClasses();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = arrayCopy;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = 0;
    v11 = *v27;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v12);
        v25 = v13;
        v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v14 error:&v25];
        v10 = v25;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v16 = MEMORY[0x277CCA9B8];
          v30 = *MEMORY[0x277CCA450];
          v31 = @"Invalid link context data, not a dictionary.";
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v18 = [v16 errorWithDomain:@"com.apple.synapse" code:-125 userInfo:v17];

          v19 = os_log_create("com.apple.synapse", "LinkContext");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [SYLinkContextClient _linkContextDictionariesFromDataArray:error:];
          }

          v10 = v18;
LABEL_15:

          v6 = 0;
          goto LABEL_16;
        }

        [v6 addObject:v15];
        if (!v15)
        {
          goto LABEL_15;
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_16:
    error = errorCopy;
  }

  else
  {
    v10 = 0;
  }

  if (error)
  {
    v20 = v10;
    *error = v10;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)userWillAddLinkWithActivityData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  delegate = [(SYLinkContextClient *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:dataCopy];
    v11 = v10;
    if (v10)
    {
      _linkContextInfo = [v10 _linkContextInfo];
      delegate2 = [(SYLinkContextClient *)self delegate];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__SYLinkContextClient_userWillAddLinkWithActivityData_completion___block_invoke;
      v15[3] = &unk_27856BE78;
      v16 = _linkContextInfo;
      v17 = completionCopy;
      v14 = _linkContextInfo;
      [delegate2 userWillAddLinkWithActivity:v11 completion:v15];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __66__SYLinkContextClient_userWillAddLinkWithActivityData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    if (SYIsLinkableUserActivity(v5))
    {
      v7 = [v5 _linkContextInfo];
      if (!v7 || [*(a1 + 32) isEqualToDictionary:v7])
      {
        v8 = os_log_create("com.apple.synapse", "LinkContext");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __66__SYLinkContextClient_userWillAddLinkWithActivityData_completion___block_invoke_cold_1(v5, v8);
        }
      }

      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 bundleIdentifier];
      v11 = v10;
      v12 = &stru_2838DFF18;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = [[SYContentItem alloc] initWithUserActivity:v5 sourceAppID:v13 sourceAppName:0 identifier:0];
      [(SYContentItem *)v14 setLinkPreviewMetadata:v6];
      v19 = 0;
      v15 = [(SYContentItem *)v14 dataRepresentationWithError:&v19];
      v16 = v19;
      if (v16)
      {
        v17 = os_log_create("com.apple.synapse", "LinkContext");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __66__SYLinkContextClient_userWillAddLinkWithActivityData_completion___block_invoke_cold_2();
        }
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v18 = *(a1 + 40);
      if (v18)
      {
        (*(v18 + 16))(v18, 0);
      }
    }
  }
}

- (void)userDidRemoveContentItemDatas:(id)datas
{
  v23 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  delegate = [(SYLinkContextClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(datasCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = datasCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [SYContentItem alloc];
          v15 = [(SYContentItem *)v14 initWithData:v13 error:0, v18];
          if (v15)
          {
            [v7 addObject:v15];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    delegate2 = [(SYLinkContextClient *)self delegate];
    [delegate2 userDidRemoveContentItems:v7];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)userEditDidAddContentItemDatas:(id)datas
{
  v23 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  delegate = [(SYLinkContextClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(datasCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = datasCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [SYContentItem alloc];
          v15 = [(SYContentItem *)v14 initWithData:v13 error:0, v18];
          if (v15)
          {
            [v7 addObject:v15];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    delegate2 = [(SYLinkContextClient *)self delegate];
    [delegate2 userEditDidAddContentItems:v7];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)insertImagesData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = completionCopy;
  if (!dataCopy)
  {
    [SYLinkContextClient insertImagesData:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SYLinkContextClient insertImagesData:completion:];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  _clientQueue = [(SYLinkContextClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SYLinkContextClient_insertImagesData_completion___block_invoke;
  block[3] = &unk_27856BEA0;
  selfCopy = self;
  v15 = v8;
  v13 = dataCopy;
  v10 = v8;
  v11 = dataCopy;
  dispatch_async(_clientQueue, block);
}

void __51__SYLinkContextClient_insertImagesData_completion___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.notes.activity.insert-image"];
  v3 = *(a1 + 32);
  v13 = @"SYContentItemData";
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v2 setUserInfo:v4];

  v5 = os_log_create("com.apple.synapse", "LinkContext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) count];
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "LinkContextClient: Sending request to insert %lu images.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SYLinkContextClient_insertImagesData_completion___block_invoke_85;
  v9[3] = &unk_27856BCB0;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  [SYNotesActivationCommand activateWithMetaActivity:v2 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SYLinkContextClient_insertImagesData_completion___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) _clientQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__SYLinkContextClient_insertImagesData_completion___block_invoke_2;
    v5[3] = &unk_27856B978;
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

- (void)_createConnectionIfNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  _connection = [self _connection];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "LinkContextClient: Create new connection if needed: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_configureConnectionAndResume
{
  OUTLINED_FUNCTION_0_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __52__SYLinkContextClient__configureConnectionAndResume__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "LinkContextClient: Connection was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __52__SYLinkContextClient__configureConnectionAndResume__block_invoke_94(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "LinkContextClient: Connection was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (void)_invalidateConnection
{
  v15 = *MEMORY[0x277D85DE8];
  _connection = [self _connection];
  _pendingCreateLinkCompletionBlocks = [self _pendingCreateLinkCompletionBlocks];
  v6 = [_pendingCreateLinkCompletionBlocks count];
  _pendingFetchLinkCompletionBlocks = [self _pendingFetchLinkCompletionBlocks];
  v9 = 138412802;
  v10 = _connection;
  v11 = 2048;
  v12 = v6;
  v13 = 2048;
  v14 = [_pendingFetchLinkCompletionBlocks count];
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "LinkContextClient: Invalidating connection: %@, pending createLink blocks: %ld, fetchLink blocks: %ld", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __44__SYLinkContextClient__invalidateConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateObserverAndCreateConnectionIfNeeded];
}

- (void)createConnectionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  _clientQueue = [(SYLinkContextClient *)self _clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SYLinkContextClient_createConnectionWithEndpoint___block_invoke;
  v7[3] = &unk_27856B5C8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(_clientQueue, v7);
}

uint64_t __52__SYLinkContextClient_createConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  [v2 invalidate];

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:*(a1 + 40)];
  [*(a1 + 32) set_connection:v3];

  v4 = [*(a1 + 32) _connection];
  v5 = [*(a1 + 32) _clientQueue];
  [v4 _setQueue:v5];

  v6 = *(a1 + 32);

  return [v6 _configureConnectionAndResume];
}

- (SYLinkContextClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __42__SYLinkContextClient__sendInitialMessage__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "LinkContextClient: Error creating remote service proxy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAndShowContextualLinkWithUserActivity:linkPreviewMetadata:preferNewDocument:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"userActivity" object:? file:? lineNumber:? description:?];
}

- (void)createAndShowContextualLinkWithUserActivity:linkPreviewMetadata:preferNewDocument:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __116__SYLinkContextClient_createAndShowContextualLinkWithUserActivity_linkPreviewMetadata_preferNewDocument_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "LinkContextClient: Request to create link failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequestToCreateLinkWithContentItemData:preferNewDocument:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"contentItemData" object:? file:? lineNumber:? description:?];
}

void __96__SYLinkContextClient__sendRequestToCreateLinkWithContentItemData_preferNewDocument_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"SYLinkContextClient.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"presentingViewController != nil"}];
}

- (void)fetchLinkContextsForUserActivity:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"queryActivity" object:? file:? lineNumber:? description:?];
}

- (void)fetchLinkContextsForUserActivity:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __67__SYLinkContextClient_fetchLinkContextsForUserActivity_completion___block_invoke_56_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a2 + 32) _connection];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchLinkContextsRequestForUserActivity:serviceProxy:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"queryActivity" object:? file:? lineNumber:? description:?];
}

- (void)_processFetchLinkContextsRequestForUserActivity:serviceProxy:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"serviceProxy" object:? file:? lineNumber:? description:?];
}

- (void)_processFetchLinkContextsRequestForUserActivity:serviceProxy:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"originalCompletion" object:? file:? lineNumber:? description:?];
}

- (void)_processFetchLinkContextsRequestForUserActivity:(int)a1 serviceProxy:(SEL)aSelector completion:.cold.4(int a1, SEL aSelector)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(aSelector);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __95__SYLinkContextClient__processFetchLinkContextsRequestForUserActivity_serviceProxy_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "LinkContextClient: fetchLinkContexts FAILED for activity: %@, error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_linkContextDictionariesFromDataArray:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__SYLinkContextClient_userWillAddLinkWithActivityData_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 activityType];
  v5 = [a1 title];
  v6 = [a1 _linkContextInfo];
  v7 = [v6 allKeys];
  v9 = 138413058;
  v10 = a1;
  v11 = 2112;
  v12 = v4;
  v13 = 2112;
  v14 = v5;
  v15 = 2112;
  v16 = v7;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "LinkContextClient: link context info wasn't added or updated for userActivity: %@, type: %@, title: %@, contextInfo keys: %@", &v9, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

void __66__SYLinkContextClient_userWillAddLinkWithActivityData_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_225901000, v0, v1, "LinkContextClient: error creating data for contentItem %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)insertImagesData:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"imagesData" object:? file:? lineNumber:? description:?];
}

- (void)insertImagesData:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end