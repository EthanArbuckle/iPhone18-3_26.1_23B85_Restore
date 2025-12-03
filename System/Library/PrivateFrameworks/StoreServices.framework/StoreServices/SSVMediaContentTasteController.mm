@interface SSVMediaContentTasteController
- (BOOL)_isRetryableError:(id)error;
- (SSVMediaContentTasteController)init;
- (unint64_t)contentTasteTypeForPlaylistGlobalID:(id)d;
- (unint64_t)contentTasteTypeForStoreAdamID:(int64_t)d;
- (void)_contentTasteForItemUpdate:(id)update finishedWithError:(id)error;
- (void)_handleContentTasteItemsUpdateResponse:(id)response allowNotifications:(BOOL)notifications;
- (void)_refreshContentTasteItems;
- (void)_retryOperationForItemUpdates:(id)updates finishedWithError:(id)error;
- (void)_scheduleContentTasteUpdateOperationForFailedItems;
- (void)_sendUpdateWithItemUpdates:(id)updates completionHandler:(id)handler;
- (void)dealloc;
- (void)setContentTasteType:(unint64_t)type forPlaylistGlobalID:(id)d withCompletionHandler:(id)handler;
- (void)setContentTasteType:(unint64_t)type forStoreAdamID:(int64_t)d withContentType:(unint64_t)contentType completionHandler:(id)handler;
@end

@implementation SSVMediaContentTasteController

- (SSVMediaContentTasteController)init
{
  v22.receiver = self;
  v22.super_class = SSVMediaContentTasteController;
  v2 = [(SSVMediaContentTasteController *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVMediaContentTasteController.accessSerialQueue", 0);
    accessSerialQueue = v2->_accessSerialQueue;
    v2->_accessSerialQueue = v3;

    v5 = dispatch_queue_create("com.apple.StoreServices.SSVMediaContentTasteController.calloutSerialQueue", 0);
    calloutSerialQueue = v2->_calloutSerialQueue;
    v2->_calloutSerialQueue = v5;

    objc_initWeak(&location, v2);
    v7 = _SSVMediaContentTasteControllerItemsDidChangeGlobalNotificationName;
    v8 = v2->_accessSerialQueue;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __38__SSVMediaContentTasteController_init__block_invoke;
    v19 = &unk_1E84AD8C8;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(v7, &v2->_itemsDidChangeNotifyToken, v8, &v16);
    v2->_havePendingRetryOperation = 0;
    v2->_exponentialBackOffSeconds = 120;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    contentTasteItemsToRetry = v2->_contentTasteItemsToRetry;
    v2->_contentTasteItemsToRetry = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    storeAdamIDToContentTasteItem = v2->_storeAdamIDToContentTasteItem;
    v2->_storeAdamIDToContentTasteItem = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    storeAdamIDToPendingContentTasteItem = v2->_storeAdamIDToPendingContentTasteItem;
    v2->_storeAdamIDToPendingContentTasteItem = dictionary3;

    [(SSVMediaContentTasteController *)v2 _refreshContentTasteItems];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__SSVMediaContentTasteController_init__block_invoke(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_27;
  }

  state64 = 0;
  notify_get_state(a2, &state64);
  WeakRetained[4] = state64;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  v6 = [v4 shouldLogToDisk];
  v7 = [v4 OSLogObject];
  v8 = v7;
  if (v6)
  {
    v5 |= 2u;
  }

  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = WeakRetained[3];
  v37 = 138412802;
  v38 = v10;
  v39 = 2048;
  v40 = state64;
  v41 = 2048;
  v42 = v11;
  LODWORD(v35) = 32;
  v34 = &v37;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v37, v35}];
    free(v12);
    SSFileLog(v4, @"%@", v13, v14, v15, v16, v17, v18, v8);
LABEL_11:
  }

  if (WeakRetained[7])
  {
    v19 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    v21 = [v19 shouldLogToDisk];
    v22 = [v19 OSLogObject];
    v23 = v22;
    if (v21)
    {
      v20 |= 2u;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = WeakRetained[7];
      v37 = 138412546;
      v38 = v25;
      v39 = 2048;
      v40 = v26;
      LODWORD(v35) = 22;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
LABEL_23:

        goto LABEL_27;
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v37, v35}];
      free(v27);
      SSFileLog(v19, @"%@", v28, v29, v30, v31, v32, v33, v23);
    }

    goto LABEL_23;
  }

  if (WeakRetained[3] < state64 || state64 == 0xFFFFFFFF)
  {
    [WeakRetained _refreshContentTasteItems];
  }

LABEL_27:
}

- (void)dealloc
{
  notify_cancel(self->_itemsDidChangeNotifyToken);
  v3.receiver = self;
  v3.super_class = SSVMediaContentTasteController;
  [(SSVMediaContentTasteController *)&v3 dealloc];
}

- (unint64_t)contentTasteTypeForPlaylistGlobalID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SSVMediaContentTasteController_contentTasteTypeForPlaylistGlobalID___block_invoke;
  block[3] = &unk_1E84AD8F0;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  v10 = v6;
  dispatch_sync(accessSerialQueue, block);
  tasteType = [v13[5] tasteType];

  _Block_object_dispose(&v12, 8);
  return tasteType;
}

void __70__SSVMediaContentTasteController_contentTasteTypeForPlaylistGlobalID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 64) objectForKey:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (unint64_t)contentTasteTypeForStoreAdamID:(int64_t)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SSVMediaContentTasteController_contentTasteTypeForStoreAdamID___block_invoke;
  block[3] = &unk_1E84AD918;
  block[4] = self;
  block[5] = &v7;
  block[6] = d;
  dispatch_sync(accessSerialQueue, block);
  tasteType = [v8[5] tasteType];
  _Block_object_dispose(&v7, 8);

  return tasteType;
}

void __65__SSVMediaContentTasteController_contentTasteTypeForStoreAdamID___block_invoke(void *a1)
{
  v2 = *(a1[4] + 96);
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v3 = [v2 objectForKey:?];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = *(a1[4] + 88);
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
    v7 = [v6 objectForKey:?];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)setContentTasteType:(unint64_t)type forPlaylistGlobalID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (dCopy)
  {
    accessSerialQueue = self->_accessSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_2;
    block[3] = &unk_1E84AD9E0;
    block[4] = self;
    v15 = dCopy;
    typeCopy = type;
    v16 = v10;
    dispatch_async(accessSerialQueue, block);

    v12 = v15;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    calloutSerialQueue = self->_calloutSerialQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E84AD940;
    v19 = handlerCopy;
    dispatch_async(calloutSerialQueue, v18);
    v12 = v19;
    goto LABEL_5;
  }

LABEL_6:
}

void __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 72))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;
  }

  v5 = objc_alloc_init(SSVMediaContentTasteItemUpdate);
  v6 = objc_alloc_init(SSVMutableMediaContentTasteItem);
  [(SSVMutableMediaContentTasteItem *)v6 setPlaylistGlobalID:*(a1 + 40)];
  [(SSVMutableMediaContentTasteItem *)v6 setContentType:4];
  [(SSVMutableMediaContentTasteItem *)v6 setTasteType:*(a1 + 56)];
  [(SSVMediaContentTasteItemUpdate *)v5 setItem:v6];
  v7 = [MEMORY[0x1E695DF00] date];
  [(SSVMediaContentTasteItemUpdate *)v5 setUpdateDate:v7];

  [*(*(a1 + 32) + 72) setObject:v6 forKey:*(a1 + 40)];
  [*(*(a1 + 32) + 80) removeObjectForKey:*(a1 + 40)];
  v8 = *(a1 + 32);
  v16[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_3;
  v12[3] = &unk_1E84AD9B8;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v10;
  v11 = v5;
  v14 = v11;
  v15 = *(a1 + 48);
  [v8 _sendUpdateWithItemUpdates:v9 completionHandler:v12];
}

void __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E84AD968;
  block[4] = v5;
  v16 = v4;
  v17 = *(a1 + 48);
  v7 = v3;
  v18 = v7;
  dispatch_async(v6, block);
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_5;
  v12[3] = &unk_1E84AD990;
  v12[4] = v8;
  v10 = *(a1 + 56);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  dispatch_async(v9, v12);
}

uint64_t __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_4(void *a1)
{
  [*(a1[4] + 72) removeObjectForKey:a1[5]];
  if (![*(a1[4] + 72) count])
  {
    v2 = a1[4];
    v3 = *(v2 + 72);
    *(v2 + 72) = 0;
  }

  v4 = a1[4];
  v5 = a1[6];
  v6 = a1[7];

  return [v4 _contentTasteForItemUpdate:v5 finishedWithError:v6];
}

uint64_t __96__SSVMediaContentTasteController_setContentTasteType_forPlaylistGlobalID_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVMediaContentTasteControllerItemsDidChangeNotification" object:*(a1 + 32)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setContentTasteType:(unint64_t)type forStoreAdamID:(int64_t)d withContentType:(unint64_t)contentType completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = handlerCopy;
  if (d)
  {
    accessSerialQueue = self->_accessSerialQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_2;
    v15[3] = &unk_1E84ADA58;
    contentTypeCopy = contentType;
    typeCopy = type;
    dCopy = d;
    v15[4] = self;
    v16 = handlerCopy;
    dispatch_async(accessSerialQueue, v15);
    v13 = v16;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    calloutSerialQueue = self->_calloutSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke;
    block[3] = &unk_1E84AD940;
    v21 = handlerCopy;
    dispatch_async(calloutSerialQueue, block);
    v13 = v21;
    goto LABEL_5;
  }

LABEL_6:
}

void __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(SSVMediaContentTasteItemUpdate);
  v3 = objc_alloc_init(SSVMutableMediaContentTasteItem);
  [(SSVMutableMediaContentTasteItem *)v3 setStoreAdamID:*(a1 + 48)];
  [(SSVMutableMediaContentTasteItem *)v3 setContentType:*(a1 + 56)];
  [(SSVMutableMediaContentTasteItem *)v3 setTasteType:*(a1 + 64)];
  [(SSVMediaContentTasteItemUpdate *)v2 setItem:v3];
  v4 = [MEMORY[0x1E695DF00] date];
  [(SSVMediaContentTasteItemUpdate *)v2 setUpdateDate:v4];

  v5 = *(*(a1 + 32) + 96);
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  [v5 setObject:v3 forKey:v6];

  v7 = *(*(a1 + 32) + 80);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  [v7 removeObjectForKey:v8];

  v9 = *(a1 + 32);
  v17[0] = v2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_3;
  v13[3] = &unk_1E84ADA30;
  v11 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v16 = v11;
  v12 = v2;
  v14 = v12;
  v15 = *(a1 + 40);
  [v9 _sendUpdateWithItemUpdates:v10 completionHandler:v13];
}

void __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_4;
  block[3] = &unk_1E84ADA08;
  v7 = *(a1 + 56);
  block[4] = v5;
  v19 = v7;
  v17 = v4;
  v8 = v3;
  v18 = v8;
  dispatch_async(v6, block);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_5;
  v13[3] = &unk_1E84AD990;
  v13[4] = v9;
  v11 = *(a1 + 48);
  v14 = v8;
  v15 = v11;
  v12 = v8;
  dispatch_async(v10, v13);
}

uint64_t __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_4(void *a1)
{
  v2 = *(a1[4] + 96);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[7]];
  [v2 removeObjectForKey:v3];

  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];

  return [v4 _contentTasteForItemUpdate:v5 finishedWithError:v6];
}

uint64_t __103__SSVMediaContentTasteController_setContentTasteType_forStoreAdamID_withContentType_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVMediaContentTasteControllerItemsDidChangeNotification" object:*(a1 + 32)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_handleContentTasteItemsUpdateResponse:(id)response allowNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v29 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  responseRevisionID = [responseCopy responseRevisionID];
  if (self->_currentResponseRevisionID < responseRevisionID)
  {
    self->_currentResponseRevisionID = responseRevisionID;
    [(NSMutableDictionary *)self->_storeAdamIDToContentTasteItem removeAllObjects];
    [(NSMutableDictionary *)self->_playlistGlobalIDToContentTasteItem removeAllObjects];
    v22 = notificationsCopy;
    [responseCopy contentTasteItems];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v8 = v25 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          playlistGlobalID = [v12 playlistGlobalID];
          if ([playlistGlobalID length])
          {
            playlistGlobalIDToContentTasteItem = self->_playlistGlobalIDToContentTasteItem;
            if (!playlistGlobalIDToContentTasteItem)
            {
              v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
              v16 = self->_playlistGlobalIDToContentTasteItem;
              self->_playlistGlobalIDToContentTasteItem = v15;

              playlistGlobalIDToContentTasteItem = self->_playlistGlobalIDToContentTasteItem;
            }

            [(NSMutableDictionary *)playlistGlobalIDToContentTasteItem setObject:v12 forKey:playlistGlobalID];
          }

          else
          {
            storeAdamID = [v12 storeAdamID];
            if (storeAdamID)
            {
              storeAdamIDToContentTasteItem = self->_storeAdamIDToContentTasteItem;
              v19 = [MEMORY[0x1E696AD98] numberWithLongLong:storeAdamID];
              [(NSMutableDictionary *)storeAdamIDToContentTasteItem setObject:v12 forKey:v19];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    if (![(NSMutableDictionary *)self->_playlistGlobalIDToContentTasteItem count])
    {
      v20 = self->_playlistGlobalIDToContentTasteItem;
      self->_playlistGlobalIDToContentTasteItem = 0;
    }

    if (v22)
    {
      calloutSerialQueue = self->_calloutSerialQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__SSVMediaContentTasteController__handleContentTasteItemsUpdateResponse_allowNotifications___block_invoke;
      block[3] = &unk_1E84ADA80;
      block[4] = self;
      dispatch_async(calloutSerialQueue, block);
    }
  }
}

void __92__SSVMediaContentTasteController__handleContentTasteItemsUpdateResponse_allowNotifications___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVMediaContentTasteControllerItemsDidChangeNotification" object:*(a1 + 32)];
}

- (void)_refreshContentTasteItems
{
  v3 = objc_alloc_init(SSVMediaContentTasteUpdateRequest);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SSVMediaContentTasteController__refreshContentTasteItems__block_invoke;
  v4[3] = &unk_1E84ADAD0;
  v4[4] = self;
  [(SSVMediaContentTasteUpdateRequest *)v3 startWithResponseBlock:v4];
}

void __59__SSVMediaContentTasteController__refreshContentTasteItems__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && !a3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__SSVMediaContentTasteController__refreshContentTasteItems__block_invoke_2;
    v9[3] = &unk_1E84ADAA8;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

- (void)_contentTasteForItemUpdate:(id)update finishedWithError:(id)error
{
  updateCopy = update;
  errorCopy = error;
  if (!errorCopy || ![(SSVMediaContentTasteController *)self _isRetryableError:errorCopy])
  {
    goto LABEL_18;
  }

  item = [updateCopy item];
  storeAdamID = [item storeAdamID];

  if (storeAdamID)
  {
    v9 = MEMORY[0x1E696AD98];
    item2 = [updateCopy item];
    playlistGlobalID2 = [v9 numberWithLongLong:{objc_msgSend(item2, "storeAdamID")}];
  }

  else
  {
    item3 = [updateCopy item];
    playlistGlobalID = [item3 playlistGlobalID];

    if (!playlistGlobalID)
    {
      v14 = 0;
      goto LABEL_11;
    }

    item2 = [updateCopy item];
    playlistGlobalID2 = [item2 playlistGlobalID];
  }

  v14 = playlistGlobalID2;

  if (v14)
  {
    playlistGlobalID = [(NSMutableDictionary *)self->_contentTasteItemsToRetry objectForKey:v14];
    v15 = 0;
    goto LABEL_12;
  }

  playlistGlobalID = 0;
LABEL_11:
  v15 = 1;
LABEL_12:
  updateDate = [updateCopy updateDate];
  if (!playlistGlobalID || ([playlistGlobalID updateDate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(updateDate, "compare:", v17), v17, v18 == 1))
  {
    if ((v15 & 1) == 0)
    {
      [(NSMutableDictionary *)self->_contentTasteItemsToRetry setObject:updateCopy forKey:v14];
    }

    [(SSVMediaContentTasteController *)self _scheduleContentTasteUpdateOperationForFailedItems];
  }

LABEL_18:
}

- (void)_retryOperationForItemUpdates:(id)updates finishedWithError:(id)error
{
  updatesCopy = updates;
  errorCopy = error;
  if (errorCopy)
  {
    if ([(SSVMediaContentTasteController *)self _isRetryableError:errorCopy])
    {
      exponentialBackOffSeconds = self->_exponentialBackOffSeconds;
      if (exponentialBackOffSeconds <= 1799)
      {
        v9 = 2 * exponentialBackOffSeconds;
      }

      else
      {
        v9 = 3600;
      }

      self->_exponentialBackOffSeconds = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      self->_exponentialBackOffSeconds = 0;
    }
  }

  else
  {
    v10 = 0;
    self->_exponentialBackOffSeconds = 120;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__SSVMediaContentTasteController__retryOperationForItemUpdates_finishedWithError___block_invoke;
  v11[3] = &unk_1E84ADAF8;
  v11[4] = self;
  v11[5] = v10;
  [updatesCopy enumerateObjectsUsingBlock:v11];
}

void __82__SSVMediaContentTasteController__retryOperationForItemUpdates_finishedWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 item];
  v4 = [v12 updateDate];
  if ([v3 storeAdamID])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "storeAdamID")}];
  }

  else
  {
    v6 = [v3 playlistGlobalID];

    if (!v6)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    v5 = [v3 playlistGlobalID];
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = [*(*(a1 + 32) + 80) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 updateDate];
    v10 = [v4 compare:v9];

    if (v10 == 1)
    {
      v11 = *(*(a1 + 32) + 80);
      if (*(a1 + 40))
      {
        [v11 setObject:v12 forKey:v6];
      }

      else
      {
        [v11 removeObjectForKey:v6];
      }
    }
  }

LABEL_11:
}

- (BOOL)_isRetryableError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (!v5)
  {
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"SSErrorDomain"])
    {
      code = [errorCopy code];

      if (code == 109)
      {
        userInfo = [errorCopy userInfo];
        v10 = [userInfo valueForKey:@"SSErrorHTTPStatusCodeKey"];
        v6 = [v10 integerValue] == 500;

        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = 0;
    goto LABEL_8;
  }

  v6 = (([errorCopy code] + 1009) & 0xFFFFFFFFFFFFFFF7) == 0;
LABEL_8:

  return v6;
}

- (void)_scheduleContentTasteUpdateOperationForFailedItems
{
  if (!self->_havePendingRetryOperation)
  {
    self->_havePendingRetryOperation = 1;
    v3 = dispatch_time(0, 1000000000 * self->_exponentialBackOffSeconds);
    accessSerialQueue = self->_accessSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke;
    block[3] = &unk_1E84ADA80;
    block[4] = self;
    dispatch_after(v3, accessSerialQueue, block);
  }
}

void __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) count];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 80) allValues];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 80), "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke_2;
    v11[3] = &unk_1E84ADB20;
    v6 = v5;
    v12 = v6;
    [v4 enumerateObjectsUsingBlock:v11];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke_3;
    v9[3] = &unk_1E84ADB70;
    v9[4] = v7;
    v8 = v6;
    v10 = v8;
    [v7 _sendUpdateWithItemUpdates:v8 completionHandler:v9];
  }

  else
  {
    *(v3 + 40) = 0;
  }
}

void __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_alloc_init(SSVMediaContentTasteItemUpdate);
  v4 = [v7 item];
  v5 = [v4 copy];
  [(SSVMediaContentTasteItemUpdate *)v3 setItem:v5];

  v6 = [MEMORY[0x1E695DF00] date];
  [(SSVMediaContentTasteItemUpdate *)v3 setUpdateDate:v6];

  [*(a1 + 32) addObject:v3];
}

void __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke_4;
  block[3] = &unk_1E84ADB48;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __84__SSVMediaContentTasteController__scheduleContentTasteUpdateOperationForFailedItems__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _retryOperationForItemUpdates:*(a1 + 40) finishedWithError:*(a1 + 48)];
  *(*(a1 + 32) + 40) = 0;
  result = [*(*(a1 + 32) + 80) count];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _scheduleContentTasteUpdateOperationForFailedItems];
  }

  return result;
}

- (void)_sendUpdateWithItemUpdates:(id)updates completionHandler:(id)handler
{
  updatesCopy = updates;
  handlerCopy = handler;
  ++self->_pendingMutateRequestCount;
  v8 = objc_alloc_init(SSVMediaContentTasteUpdateRequest);
  [(SSVMediaContentTasteUpdateRequest *)v8 setContentTasteItemUpdates:updatesCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SSVMediaContentTasteController__sendUpdateWithItemUpdates_completionHandler___block_invoke;
  v10[3] = &unk_1E84ADBC0;
  v10[4] = self;
  v9 = handlerCopy;
  v11 = v9;
  [(SSVMediaContentTasteUpdateRequest *)v8 startWithResponseBlock:v10];
}

void __79__SSVMediaContentTasteController__sendUpdateWithItemUpdates_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__SSVMediaContentTasteController__sendUpdateWithItemUpdates_completionHandler___block_invoke_2;
  block[3] = &unk_1E84ADB48;
  v8 = v6;
  v17 = v8;
  v9 = v5;
  v10 = *(a1 + 32);
  v18 = v9;
  v19 = v10;
  dispatch_async(v7, block);
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__SSVMediaContentTasteController__sendUpdateWithItemUpdates_completionHandler___block_invoke_3;
    v13[3] = &unk_1E84ADB98;
    v15 = v11;
    v14 = v8;
    dispatch_async(v12, v13);
  }
}

uint64_t __79__SSVMediaContentTasteController__sendUpdateWithItemUpdates_completionHandler___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (!*(result + 32))
  {
    v2 = *(result + 40);
    if (v2)
    {
      result = [*(result + 48) _handleContentTasteItemsUpdateResponse:v2 allowNotifications:0];
    }
  }

  v3 = *(v1 + 48);
  v4 = *(v3 + 56);
  v5 = v4 < 1;
  v6 = v4 - 1;
  if (!v5)
  {
    *(v3 + 56) = v6;
    result = *(v1 + 48);
    if (!*(result + 56) && *(result + 32) > *(result + 24))
    {

      return [result _refreshContentTasteItems];
    }
  }

  return result;
}

@end