@interface SSNetworkQualityInquiry
+ (BOOL)isEntitled;
+ (id)sharedInstance;
- (BOOL)areKnownNetworksReady;
- (SSNetworkQualityInquiry)init;
- (id)investigateNetworks;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)drainKnownNetworksReadyHandlers;
- (void)performWhenKnownNetworksReady:(id)a3;
@end

@implementation SSNetworkQualityInquiry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSNetworkQualityInquiry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedSelf;

  return v2;
}

void __41__SSNetworkQualityInquiry_sharedInstance__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(SSNetworkQualityInquiry);
  v1 = sharedInstance_sharedSelf;
  sharedInstance_sharedSelf = v0;

  if (!sharedInstance_sharedSelf)
  {
    v2 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      LODWORD(v15) = 138412290;
      *(&v15 + 4) = objc_opt_class();
      v6 = *(&v15 + 4);
      LODWORD(v14) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_13:

        return;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v15, v14, v15}];
      free(v7);
      SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
    }

    goto LABEL_13;
  }
}

- (SSNetworkQualityInquiry)init
{
  v29 = *MEMORY[0x1E69E9840];
  if (([objc_opt_class() isEntitled] & 1) == 0)
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v27 = 138412290;
      v28 = objc_opt_class();
      v15 = v28;
      LODWORD(v25) = 12;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_16:

        v3 = 0;
        goto LABEL_17;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v27, v25}];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, v14);
    }

    goto LABEL_16;
  }

  v26.receiver = self;
  v26.super_class = SSNetworkQualityInquiry;
  v3 = [(SSNetworkQualityInquiry *)&v26 init];
  if (v3)
  {
    v4 = SSVSymptomPresentationFeed();
    v5 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Nwnetworkofint.isa, v4));
    manager = v3->_manager;
    v3->_manager = v5;

    if (!v3->_manager)
    {
      v23 = 0;
      goto LABEL_18;
    }

    v7 = dispatch_queue_create("com.apple.StoreServices.NetworkQualityInquiry.queue", 0);
    queue = v3->_queue;
    v3->_queue = v7;

    [(NWNetworkOfInterestManager *)v3->_manager setQueue:v3->_queue];
    [(NWNetworkOfInterestManager *)v3->_manager setDelegate:v3];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownNetworks = v3->_knownNetworks;
    v3->_knownNetworks = v9;

    [(NWNetworkOfInterestManager *)v3->_manager trackNOIAnyForInterfaceType:2 options:0];
    [(NWNetworkOfInterestManager *)v3->_manager trackNOIAnyForInterfaceType:1 options:0];
    [(NWNetworkOfInterestManager *)v3->_manager trackNOIAnyForInterfaceType:3 options:0];
  }

LABEL_17:
  v3 = v3;
  v23 = v3;
LABEL_18:

  return v23;
}

- (void)dealloc
{
  [(NWNetworkOfInterestManager *)self->_manager setDelegate:0];
  [(NWNetworkOfInterestManager *)self->_manager destroy];
  v3.receiver = self;
  v3.super_class = SSNetworkQualityInquiry;
  [(SSNetworkQualityInquiry *)&v3 dealloc];
}

- (BOOL)areKnownNetworksReady
{
  v3 = [(SSNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SSNetworkQualityInquiry *)self knownNetworks];
  LOBYTE(v3) = [v4 count] == 3;

  return v3;
}

- (void)performWhenKnownNetworksReady:(id)a3
{
  v4 = a3;
  v5 = [(SSNetworkQualityInquiry *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__SSNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) areKnownNetworksReady])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) knownNetworksReadyHandlers];

    if (!v3)
    {
      v4 = *(a1 + 32);
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      [v4 setKnownNetworksReadyHandlers:v5];
    }

    v8 = [*(a1 + 32) knownNetworksReadyHandlers];
    v6 = [*(a1 + 40) copy];
    v7 = MEMORY[0x1DA6DFBB0]();
    [v8 addObject:v7];
  }
}

- (void)drainKnownNetworksReadyHandlers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(SSNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(SSNetworkQualityInquiry *)self knownNetworksReadyHandlers];
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

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(SSNetworkQualityInquiry *)self setKnownNetworksReadyHandlers:0];
}

- (void)didStartTrackingNOI:(id)a3
{
  v4 = a3;
  v5 = [(SSNetworkQualityInquiry *)self knownNetworks];
  [v5 addObject:v4];

  if ([(SSNetworkQualityInquiry *)self areKnownNetworksReady])
  {

    [(SSNetworkQualityInquiry *)self drainKnownNetworksReadyHandlers];
  }
}

- (void)didStopTrackingNOI:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSNetworkQualityInquiry *)self knownNetworks];
  [v5 removeObject:v4];

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v20 = 138412546;
  v21 = self;
  v22 = 2112;
  v23 = v4;
  LODWORD(v19) = 22;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v20, v19}];
    free(v11);
    SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v9);
LABEL_12:
  }

  v18 = [(SSNetworkQualityInquiry *)self manager];
  [v18 trackNOIAnyForInterfaceType:objc_msgSend(v4 options:{"interface"), 0}];
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [(SSNetworkQualityInquiry *)self didStopTrackingNOI:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)investigateNetworks
{
  v3 = objc_alloc_init(SSPromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke;
  v8[3] = &unk_1E84AFC30;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(SSNetworkQualityInquiry *)self performWhenKnownNetworksReady:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_2;
    v34[3] = &unk_1E84AFBB8;
    v35 = *(a1 + 40);
    [v3 addFinishBlock:v34];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [v4 timeIntervalSince1970];
    v6 = v5;

    v7 = *(a1 + 32);
    if (*(v7 + 8) && (v6 * 1000.0) - *(v7 + 16) <= 999)
    {
      [*(a1 + 40) finishWithResult:?];
    }

    else
    {
      v22 = a1;
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [v24 knownNetworks];
      v10 = [v9 count];

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = [v24 knownNetworks];
      v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          v15 = 0;
          do
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * v15);
            v17 = objc_alloc_init(SSPromise);
            [v8 addObject:v17];
            v18 = [v24 manager];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_3;
            v27[3] = &unk_1E84AFBE0;
            v27[4] = v16;
            v28 = v11;
            v29 = v17;
            v19 = v17;
            [v18 auditableLinkQualityForNOI:v16 reply:v27];

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v13);
      }

      v20 = [SSPromise promiseWithAll:v8];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_55;
      v25[3] = &unk_1E84AFC08;
      v25[4] = *(v22 + 32);
      v26 = v11;
      v21 = v11;
      [v20 addFinishBlock:v25];
      objc_storeStrong((*(v22 + 32) + 24), *(v22 + 40));
    }
  }
}

void __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  if (v8 && (v9 = [v7 interface], (v9 - 1) <= 2))
  {
    v10 = off_1E84AFC50[v9 - 1];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *v29 = MEMORY[0x1E69E9820];
    *&v29[8] = 3221225472;
    *&v29[16] = __SSNetworkQualityInquiryReportMake_block_invoke;
    v30 = &unk_1E84AE620;
    v12 = v11;
    v31 = v12;
    [v8 enumerateKeysAndObjectsUsingBlock:v29];
    if ([v12 count])
    {
      [v12 setObject:v10 forKeyedSubscript:@"interface"];
      v13 = [v12 copy];
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      [*(a1 + 40) addObject:v13];
    }
  }

  else
  {
  }

  if (v6)
  {
    v14 = +[SSLogConfig sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = *(a1 + 32);
      *v29 = 138412546;
      *&v29[4] = v19;
      *&v29[12] = 2112;
      *&v29[14] = v6;
      LODWORD(v28) = 22;
      v27 = v29;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_20:

        goto LABEL_21;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, v29, v28}];
      free(v20);
      SSFileLog(v14, @"%@", v21, v22, v23, v24, v25, v26, v17);
    }

    goto LABEL_20;
  }

LABEL_21:
  [*(a1 + 48) finishWithResult:{MEMORY[0x1E695E118], v27}];
}

void __46__SSNetworkQualityInquiry_investigateNetworks__block_invoke_55(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v2 timeIntervalSince1970];
  *(*(a1 + 32) + 16) = (v3 * 1000.0);

  [*(*(a1 + 32) + 24) finishWithResult:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

+ (BOOL)isEntitled
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_1F507A2E8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = *v14;
  v5 = 1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v14 != v4)
      {
        objc_enumerationMutation(&unk_1F507A2E8);
      }

      v7 = *(*(&v13 + 1) + 8 * i);
      v8 = SecTaskCreateFromSelf(0);
      if (v8)
      {
        v9 = v8;
        error = 0;
        v10 = SecTaskCopyValueForEntitlement(v8, v7, &error);
        if (error)
        {
          CFRelease(error);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        else
        {
          v5 = 0;
        }

        CFRelease(v9);
      }

      else
      {
        v5 = 0;
      }
    }

    v3 = [&unk_1F507A2E8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v3);
  return v5;
}

@end