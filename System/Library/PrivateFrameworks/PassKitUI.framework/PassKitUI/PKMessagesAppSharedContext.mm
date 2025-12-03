@interface PKMessagesAppSharedContext
+ (id)sharedContext;
- (NSString)description;
- (PKMessagesAppControllerInterface)primaryAppController;
- (PKMessagesAppSharedContext)init;
- (id)_urlForMessageIdentifier:(id)identifier planningToWrite:(BOOL)write;
- (id)externalizedControllerStateForMessageIdentifier:(id)identifier;
- (void)_purgeOldCacheEntries;
- (void)_registerAppViewController:(id)controller;
- (void)_revealPrimaryAppController:(id)controller;
- (void)_unregisterAppViewController:(id)controller;
- (void)_withPrimaryAppController:(id)controller;
- (void)dealloc;
- (void)handlePaymentRequestMessage:(id)message sender:(id)sender completion:(id)completion;
- (void)persistExternalizedControllerState:(id)state forMessageIdentifier:(id)identifier;
- (void)removeExternalizedControllerStateDataForMessageIdentifier:(id)identifier;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
@end

@implementation PKMessagesAppSharedContext

+ (id)sharedContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKMessagesAppSharedContext_sharedContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_592 != -1)
  {
    dispatch_once(&_MergedGlobals_592, block);
  }

  v2 = qword_1EBD6AC30;

  return v2;
}

void __43__PKMessagesAppSharedContext_sharedContext__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1EBD6AC30;
  qword_1EBD6AC30 = v1;
}

- (PKMessagesAppSharedContext)init
{
  v15.receiver = self;
  v15.super_class = PKMessagesAppSharedContext;
  v2 = [(PKMessagesAppSharedContext *)&v15 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    weakBubbleAppControllers = v2->_weakBubbleAppControllers;
    v2->_weakBubbleAppControllers = weakObjectsPointerArray;

    array = [MEMORY[0x1E695DF70] array];
    pendingPrimaryHandlers = v2->_pendingPrimaryHandlers;
    v2->_pendingPrimaryHandlers = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    externalizedControllerStateStore = v2->_externalizedControllerStateStore;
    v2->_externalizedControllerStateStore = dictionary;

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentServiceDataProvider = v2->_paymentServiceDataProvider;
    v2->_paymentServiceDataProvider = defaultDataProvider;

    [(PKPaymentDefaultDataProvider *)v2->_paymentServiceDataProvider addDelegate:v2];
    v11 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PKMessagesAppSharedContext_init__block_invoke;
    block[3] = &unk_1E8010970;
    v14 = v2;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);
  }

  return v2;
}

- (void)dealloc
{
  [(PKPaymentDefaultDataProvider *)self->_paymentServiceDataProvider removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKMessagesAppSharedContext;
  [(PKMessagesAppSharedContext *)&v3 dealloc];
}

- (void)_registerAppViewController:(id)controller
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  transactionSource = [controllerCopy transactionSource];
  transactionSource = self->_transactionSource;
  self->_transactionSource = transactionSource;

  presentationStyle = [controllerCopy presentationStyle];
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (presentationStyle == 2)
  {
    if (v9)
    {
      *buf = 138543362;
      v16 = controllerCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Registering Bubble App Controller : %{public}@", buf, 0xCu);
    }

    [(NSPointerArray *)self->_weakBubbleAppControllers addPointer:controllerCopy];
  }

  else
  {
    if (v9)
    {
      *buf = 138543362;
      v16 = controllerCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Registering Primary App Controller : %{public}@", buf, 0xCu);
    }

    objc_storeWeak(&self->_primaryAppController, controllerCopy);
    if ([(NSMutableArray *)self->_pendingPrimaryHandlers count])
    {
      v10 = [(NSMutableArray *)self->_pendingPrimaryHandlers copy];
      [(NSMutableArray *)self->_pendingPrimaryHandlers removeAllObjects];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PKMessagesAppSharedContext__registerAppViewController___block_invoke;
      v12[3] = &unk_1E8010A10;
      v13 = controllerCopy;
      v14 = v10;
      v11 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }
  }
}

void __57__PKMessagesAppSharedContext__registerAppViewController___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) count];
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Processing %lu Primary App Controller Handlers after register.", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_unregisterAppViewController:(id)controller
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_primaryAppController);

  if (WeakRetained == controllerCopy)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = controllerCopy;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Unregistering Primary App Controller : %{public}@", buf, 0xCu);
    }

    objc_storeWeak(&self->_primaryAppController, 0);
    if ([(NSMutableArray *)self->_pendingPrimaryHandlers count])
    {
      v7 = [(NSMutableArray *)self->_pendingPrimaryHandlers copy];
      [(NSMutableArray *)self->_pendingPrimaryHandlers removeAllObjects];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__PKMessagesAppSharedContext__unregisterAppViewController___block_invoke;
      block[3] = &unk_1E8010970;
      v10 = v7;
      v8 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __59__PKMessagesAppSharedContext__unregisterAppViewController___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Processing %lu Primary App Controller Handlers after unregister.", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_revealPrimaryAppController:(id)controller
{
  controllerCopy = controller;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Attempting to reveal primary app controller.", buf, 2u);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Requesting presentation on sending controller.", v5, 2u);
  }

  [controllerCopy requestPresentationStyle:0];
}

- (void)handlePaymentRequestMessage:(id)message sender:(id)sender completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  [(PKMessagesAppSharedContext *)self _revealPrimaryAppController:sender];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PKMessagesAppSharedContext_handlePaymentRequestMessage_sender_completion___block_invoke;
  v12[3] = &unk_1E80156B0;
  v13 = messageCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = messageCopy;
  [(PKMessagesAppSharedContext *)self _withPrimaryAppController:v12];
}

uint64_t __76__PKMessagesAppSharedContext_handlePaymentRequestMessage_sender_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 _handlePaymentRequestMessage:*(a1 + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_withPrimaryAppController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    aBlock = controllerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_primaryAppController);
    if (WeakRetained)
    {
      aBlock[2](aBlock, WeakRetained);
    }

    else
    {
      pendingPrimaryHandlers = self->_pendingPrimaryHandlers;
      v7 = _Block_copy(aBlock);
      [(NSMutableArray *)pendingPrimaryHandlers addObject:v7];
    }

    controllerCopy = aBlock;
  }
}

- (void)persistExternalizedControllerState:(id)state forMessageIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    externalizedControllerStateStore = self->_externalizedControllerStateStore;
    identifierCopy = identifier;
    stateCopy = state;
    [(NSMutableDictionary *)externalizedControllerStateStore setObject:stateCopy forKeyedSubscript:identifierCopy];
    v9 = [(PKMessagesAppSharedContext *)self _urlForMessageIdentifier:identifierCopy planningToWrite:1];

    LOBYTE(externalizedControllerStateStore) = [stateCopy writeToURL:v9 atomically:1];
    if ((externalizedControllerStateStore & 1) == 0)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Failed to write externalized controller state archive to url: %@", &v11, 0xCu);
      }
    }
  }
}

- (id)externalizedControllerStateForMessageIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMutableDictionary *)self->_externalizedControllerStateStore objectForKeyedSubscript:identifierCopy];
    if (!v5)
    {
      v6 = [(PKMessagesAppSharedContext *)self _urlForMessageIdentifier:identifierCopy planningToWrite:0];
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
      if (!v5)
      {
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = v6;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Failed to read externalized controller state archive with url: %@", &v9, 0xCu);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeExternalizedControllerStateDataForMessageIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    externalizedControllerStateStore = self->_externalizedControllerStateStore;
    identifierCopy = identifier;
    [(NSMutableDictionary *)externalizedControllerStateStore setObject:0 forKeyedSubscript:identifierCopy];
    v6 = [(PKMessagesAppSharedContext *)self _urlForMessageIdentifier:identifierCopy planningToWrite:1];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    LOBYTE(identifierCopy) = [defaultManager removeItemAtURL:v6 error:0];

    v8 = PKLogFacilityTypeGetObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (identifierCopy)
    {
      if (v9)
      {
        v11 = 138412290;
        v12 = v6;
        v10 = "PKMessagesAppSharedContext: Removed externalized controller state archive at url: %@";
LABEL_7:
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, v10, &v11, 0xCu);
      }
    }

    else if (v9)
    {
      v11 = 138412290;
      v12 = v6;
      v10 = "PKMessagesAppSharedContext: Failed to remove externalized controller state archive with url: %@";
      goto LABEL_7;
    }
  }
}

- (id)_urlForMessageIdentifier:(id)identifier planningToWrite:(BOOL)write
{
  writeCopy = write;
  v17[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17[0] = @"PeerPaymentControllerState";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  PKSharedCacheCreateDirectory();

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  uUIDString = [identifierCopy UUIDString];
  v8 = [uUIDString stringByAppendingPathExtension:@"archive"];

  if (writeCopy)
  {
    PKSharedCacheCreateFileURLForWriting();
  }

  else
  {
    PKSharedCacheCreateFileURLReadOnly();
  }

  v9 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v9;
}

void __71__PKMessagesAppSharedContext__urlForMessageIdentifier_planningToWrite___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((a2 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Failed to create externalized controller state directory with error: %@", &v9, 0xCu);
    }
  }
}

- (void)_purgeOldCacheEntries
{
  v2 = dispatch_get_global_queue(-2, 0);
  dispatch_async(v2, &__block_literal_global_51);
}

void __51__PKMessagesAppSharedContext__purgeOldCacheEntries__block_invoke()
{
  v60[1] = *MEMORY[0x1E69E9840];
  v29 = [MEMORY[0x1E696AC08] defaultManager];
  v52 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__8;
  v50 = __Block_byref_object_dispose__8;
  v51 = 0;
  v60[0] = @"PeerPaymentControllerState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v41 = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __51__PKMessagesAppSharedContext__purgeOldCacheEntries__block_invoke_2;
  v44 = &unk_1E80156F8;
  v45 = &v46;
  PKSharedCacheCreateDirectoryURL();

  v1 = [v47[5] path];
  v2 = [v29 fileExistsAtPath:v1 isDirectory:&v52];
  v3 = v52;

  if (v2 & v3)
  {
    v4 = v47[5];
    v5 = *MEMORY[0x1E695DB78];
    v6 = *MEMORY[0x1E695DAA8];
    v59[0] = *MEMORY[0x1E695DB78];
    v59[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v8 = [v29 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:0 errorHandler:&__block_literal_global_54_0];

    v28 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v58 count:16];
    if (v11)
    {
      v12 = *v38;
      do
      {
        v13 = 0;
        do
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v36 = 0;
          [v14 getResourceValue:&v36 forKey:v5 error:0];
          v15 = v36;
          v35 = 0;
          [v14 getResourceValue:&v35 forKey:v6 error:0];
          v16 = v35;
          if (([v15 BOOLValue] & 1) == 0 && objc_msgSend(v16, "compare:", v9) == -1)
          {
            [v28 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v58 count:16];
      }

      while (v11);
    }

    if ([v28 count])
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v28 count];
        *buf = 134217984;
        v54 = v18;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Purging %lu entries from the externalized controller state cache.", buf, 0xCu);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = v28;
      v20 = [v19 countByEnumeratingWithState:&v31 objects:v57 count:16];
      if (v20)
      {
        v22 = *v32;
        *&v21 = 138412546;
        v27 = v21;
        do
        {
          v23 = 0;
          do
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v31 + 1) + 8 * v23);
            v30 = 0;
            v25 = [v29 removeItemAtURL:v24 error:{&v30, v27}];
            v26 = v30;
            if ((v25 & 1) == 0)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v27;
                v54 = v24;
                v55 = 2112;
                v56 = v26;
                _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Failed to remove externalized controller state archive at url: %@ with error: %@", buf, 0x16u);
              }
            }

            ++v23;
          }

          while (v20 != v23);
          v20 = [v19 countByEnumeratingWithState:&v31 objects:v57 count:16];
        }

        while (v20);
      }
    }
  }

  _Block_object_dispose(&v46, 8);
}

uint64_t __51__PKMessagesAppSharedContext__purgeOldCacheEntries__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 description];
      v8 = [v4 absoluteString];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Error: Failed to read directory contents: %@ at url: %@", &v10, 0x16u);
    }
  }

  return 1;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  WeakRetained = objc_loadWeakRetained(&self->_primaryAppController);
  [v3 appendFormat:@"primaryAppController: %@ ", WeakRetained];

  bubbleAppControllers = [(PKMessagesAppSharedContext *)self bubbleAppControllers];
  [v3 appendFormat:@"bubbleAppControllers: %@ ", bubbleAppControllers];

  [v3 appendFormat:@"pendingPrimaryHandlers: %@", self->_pendingPrimaryHandlers];
  [v3 appendFormat:@"externalizedControllerStateStore: %@", self->_externalizedControllerStateStore];
  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  transactionCopy = transaction;
  transactionSource = self->_transactionSource;
  if (transactionSource && (-[PKTransactionSource transactionSourceIdentifiers](transactionSource, "transactionSourceIdentifiers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:identifierCopy], v9, (v10 & 1) != 0))
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = transactionCopy;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Received updated transaction %@.", buf, 0xCu);
    }

    bubbleAppControllers = [(PKMessagesAppSharedContext *)self bubbleAppControllers];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [bubbleAppControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(bubbleAppControllers);
          }

          [*(*(&v17 + 1) + 8 * i) _handleUpdatedTransaction:transactionCopy forTransactionSourceIdentifier:identifierCopy];
        }

        v14 = [bubbleAppControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }

  else
  {
    bubbleAppControllers = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(bubbleAppControllers, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, bubbleAppControllers, OS_LOG_TYPE_DEFAULT, "PKMessagesAppSharedContext: Received updated transaction for non peer payment pass. Ignoring.", buf, 2u);
    }
  }
}

- (PKMessagesAppControllerInterface)primaryAppController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryAppController);

  return WeakRetained;
}

@end