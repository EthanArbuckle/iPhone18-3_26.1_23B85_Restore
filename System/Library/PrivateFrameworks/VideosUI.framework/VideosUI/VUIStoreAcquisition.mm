@interface VUIStoreAcquisition
+ (id)sharedInstance;
- (VUIStoreAcquisition)init;
- (id)acquireWithProperties:(id)a3 completionBlock:(id)a4;
- (void)_handleRequest:(id)a3;
- (void)_handleResponse:(id)a3 responseDict:(id)a4 forRequest:(id)a5 error:(id)a6 cancelled:(BOOL)a7;
- (void)_processFirstRequest;
- (void)_processRequest:(id)a3;
- (void)postCrossProcessNotificationWithBuyParams:(id)a3 error:(id)a4;
@end

@implementation VUIStoreAcquisition

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[VUIStoreAcquisition sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_1;

  return v3;
}

void __37__VUIStoreAcquisition_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIStoreAcquisition);
  v1 = sharedInstance_sSharedInstance_1;
  sharedInstance_sSharedInstance_1 = v0;
}

- (VUIStoreAcquisition)init
{
  v6.receiver = self;
  v6.super_class = VUIStoreAcquisition;
  v2 = [(VUIStoreAcquisition *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingQueue = v2->_pendingQueue;
    v2->_pendingQueue = v3;

    v2->_concurrentCount = 1;
  }

  return v2;
}

- (id)acquireWithProperties:(id)a3 completionBlock:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 buyParams];
  if (![v8 length])
  {

    goto LABEL_16;
  }

  v9 = [v6 buyParams];
  v10 = [(VUIAcquisitionRequest *)self->_activeRequest properties];
  v11 = [v10 buyParams];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v25 = v7;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_pendingQueue;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v6 buyParams];
        v20 = [v18 properties];
        v21 = [v20 buyParams];
        if ([v19 isEqualToString:v21])
        {
          v22 = [v18 isCancelled];

          if ((v22 & 1) == 0)
          {

            v23 = 0;
            v7 = v25;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v23 = objc_alloc_init(VUIAcquisitionRequest);
  v7 = v25;
  [(VUIAcquisitionRequest *)v23 setCompletionBlock:v25];
  [(VUIAcquisitionRequest *)v23 setProperties:v6];
  [(NSMutableArray *)self->_pendingQueue addObject:v23];
  [(VUIStoreAcquisition *)self _processFirstRequest];
LABEL_17:

  return v23;
}

- (void)_processFirstRequest
{
  if ([(NSMutableArray *)self->_pendingQueue count]&& self->_concurrentCount)
  {
    obj = [(NSMutableArray *)self->_pendingQueue objectAtIndex:0];
    if ([obj isCancelled])
    {
      [(NSMutableArray *)self->_pendingQueue removeObjectAtIndex:0];
      [(VUIStoreAcquisition *)self _processFirstRequest];
    }

    else
    {
      --self->_concurrentCount;
      objc_storeStrong(&self->_activeRequest, obj);
      [(VUIStoreAcquisition *)self _processRequest:obj];
      [(NSMutableArray *)self->_pendingQueue removeObjectAtIndex:0];
    }
  }
}

- (void)_processRequest:(id)a3
{
  v7 = a3;
  v4 = [v7 properties];
  v5 = [v4 userAgent];
  if (v5 || ([v4 dsid], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    [(VUIStoreAcquisition *)self _handleCustomRequest:v7];
    goto LABEL_5;
  }

  v6 = [v4 strongToken];

  if (v6)
  {
    goto LABEL_4;
  }

  [(VUIStoreAcquisition *)self _handleRequest:v7];
LABEL_5:
}

- (void)_handleRequest:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 properties];
  v6 = [v5 urlBagKey];
  v7 = [v5 buyParams];
  if ([v7 length])
  {
    v8 = [MEMORY[0x1E69D4998] purchaseWithBuyParameters:v7];
    if ([v6 isEqualToString:@"redownloadProduct"])
    {
      v9 = objc_opt_new();
      [v9 setURLBagKey:v6];
      [v9 setShouldProcessProtocol:0];
      [v8 setRequestProperties:v9];
    }

    if (!v6 || [v6 isEqualToString:@"buyProduct"])
    {
      v10 = [v8 requestProperties];
      v11 = [v10 mutableCopy];

      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x1E69D4970]);
      }

      [v8 setRequestProperties:v11];
    }

    [v8 setIgnoresForcedPasswordRestriction:{objc_msgSend(v5, "ignoresForcedPasswordRestriction")}];
    v12 = objc_alloc(MEMORY[0x1E69D49A0]);
    v29[0] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v14 = [v12 initWithPurchases:v13];

    [v14 setCreatesDownloads:0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __38__VUIStoreAcquisition__handleRequest___block_invoke_58;
    v21[3] = &unk_1E8732090;
    v15 = &v22;
    v21[4] = self;
    v22 = v4;
    v16 = v4;
    [v14 startWithPurchaseResponseBlock:v21 completionBlock:&__block_literal_global_64];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:@"Error making purchase: no buy params specified in request" forKey:*MEMORY[0x1E696A578]];
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TVCKCloudDataClientError" code:0 userInfo:v8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v24 = __38__VUIStoreAcquisition__handleRequest___block_invoke;
    v25 = &unk_1E872E008;
    v26 = self;
    v27 = v4;
    v28 = v17;
    v18 = MEMORY[0x1E696AF00];
    v19 = v4;
    v14 = v17;
    if ([v18 isMainThread])
    {
      v24(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v15 = &v27;
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreAcquisition _handleRequest:v20];
    }
  }
}

void __38__VUIStoreAcquisition__handleRequest___block_invoke_58(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 URLResponse];
  v5 = [v4 bodyData];

  if (v5)
  {
    v31 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v31];
    v7 = v31;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [v3 error];
  v9 = v8;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v11 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E69E46D0]])
  {
    v13 = [v11 code];

    if (v13 == 16)
    {
      v14 = 1;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v15 = [v6 objectForKey:*MEMORY[0x1E69E4830]];
  v14 = v15 != 0;

  if (!v7 && !v11 && !v15 && v6)
  {
    LOBYTE(v14) = 0;
    v7 = 0;
    goto LABEL_21;
  }

LABEL_18:
  v16 = VUIDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v33 = v11;
    v34 = 2112;
    v35 = v7;
    v36 = 1024;
    v37 = v14;
    _os_log_error_impl(&dword_1E323F000, v16, OS_LOG_TYPE_ERROR, "Error making purchse: [%@] plist error [%@] Was cancelled [%d]", buf, 0x1Cu);
  }

LABEL_21:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v23 = __38__VUIStoreAcquisition__handleRequest___block_invoke_60;
  v24 = &unk_1E872FB50;
  v17 = *(a1 + 40);
  v25 = *(a1 + 32);
  v26 = v3;
  v27 = v6;
  v28 = v17;
  v29 = v11;
  v30 = v14;
  v18 = MEMORY[0x1E696AF00];
  v19 = v11;
  v20 = v6;
  v21 = v3;
  if ([v18 isMainThread])
  {
    v23(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __38__VUIStoreAcquisition__handleRequest___block_invoke_60(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(a1 + 32) _processFirstRequest];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);

  return [v4 _handleResponse:v5 responseDict:v6 forRequest:v7 error:v8 cancelled:v9];
}

- (void)_handleResponse:(id)a3 responseDict:(id)a4 forRequest:(id)a5 error:(id)a6 cancelled:(BOOL)a7
{
  v7 = a7;
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12 == 0;
  }

  v16 = 2;
  if (v15)
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v13 properties];
  v19 = [v18 urlBagKey];

  v20 = [v13 completionBlock];

  if (v20)
  {
    v21 = [v13 completionBlock];
    (v21)[2](v21, v17, v12, v14);
  }

  v22 = [v11 URLResponse];
  v23 = [v22 allHeaderFields];
  v24 = [v23 vui_appleTimingAppHeaderValue];

  v25 = VUIDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v28 = 134217984;
    v29 = v24;
    _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_INFO, "Time to process buy in ms [%ld]", &v28, 0xCu);
  }

  if (v17 == 2 && (!v19 || [v19 isEqualToString:@"buyProduct"]))
  {
    v26 = +[VUIMediaLibraryManager defaultManager];
    v27 = [v26 deviceMediaLibrary];
    [v27 updateFromCloudWithReason:1];
  }
}

- (void)postCrossProcessNotificationWithBuyParams:(id)a3 error:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyError"];
  }

  if ([v5 length])
  {
    [v8 setObject:v5 forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyBuyParams"];
  }

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "Posting VUIStoreAcquisitionCrossProcessNotification with buy params: %@, error: %@", &v11, 0x16u);
  }

  v10 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v10 vui_postNotificationName:@"com.apple.VideosUI.StoreAcquisitionCrossProcessNotification" object:0 userInfo:v8];
}

@end