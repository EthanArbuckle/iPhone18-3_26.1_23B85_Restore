@interface SRHDataCollectionController
+ (BOOL)isMessagingApp:(id)a3;
+ (BOOL)isSocialMediaApp;
+ (void)initialize;
+ (void)isMediaEventsCollectionEnabledFor:(id)a3 completionHandler:(id)a4;
+ (void)isMediaEventsStreamAuthorizedWithCompletionHandler:(id)a3;
@end

@implementation SRHDataCollectionController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_280AC73C0 = os_log_create("com.apple.SensorKit", "SRHDataCollectionController");
  }
}

+ (BOOL)isSocialMediaApp
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 containsObject:@"Social Networking"])
  {
    return 1;
  }

  v4 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];

  return [v4 sr_isSocialNetworking];
}

+ (BOOL)isMessagingApp:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [objc_msgSend(v3 "infoDictionary")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 containsObject:@"INSendMessageIntent"] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v3 builtInPlugInsURL];
    v8 = [v6 enumeratorAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:1 errorHandler:0];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v5)
    {
      return v5;
    }

    v9 = v5;
    v10 = *v17;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleWithURL:{*(*(&v16 + 1) + 8 * v11)), "infoDictionary"), "objectForKeyedSubscript:", @"NSExtension"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 objectForKeyedSubscript:@"NSExtensionAttributes"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 objectForKeyedSubscript:@"IntentsSupported"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v14 containsObject:@"INSendMessageIntent"])
          {
            break;
          }
        }
      }

      if (v9 == ++v11)
      {
        v5 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v9 = v5;
        if (v5)
        {
          goto LABEL_6;
        }

        return v5;
      }
    }
  }

  LOBYTE(v5) = 1;
  return v5;
}

+ (void)isMediaEventsStreamAuthorizedWithCompletionHandler:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SensorKit.SKMediaEventsHelper"];
  [v4 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x277CCAE90], "interfaceWithProtocol:", &unk_2876FCEE0)}];
  [v4 resume];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SRHDataCollectionController_isMediaEventsStreamAuthorizedWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B97730;
  v7[4] = v4;
  v7[5] = a3;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SRHDataCollectionController_isMediaEventsStreamAuthorizedWithCompletionHandler___block_invoke_36;
  v6[3] = &unk_279B97758;
  v6[4] = v4;
  v6[5] = a3;
  [v5 authorizationRequestStatusForMediaEventsStreamWithReply:v6];
}

uint64_t __82__SRHDataCollectionController_isMediaEventsStreamAuthorizedWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = qword_280AC73C0;
  if (os_log_type_enabled(qword_280AC73C0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138477827;
    v7 = a2;
    _os_log_error_impl(&dword_2655E8000, v4, OS_LOG_TYPE_ERROR, "Failed to set up connection with mediaEventsHelper sevice because of %{private}@", &v6, 0xCu);
  }

  [*(a1 + 32) invalidate];

  return (*(*(a1 + 40) + 16))();
}

uint64_t __82__SRHDataCollectionController_isMediaEventsStreamAuthorizedWithCompletionHandler___block_invoke_36(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = qword_280AC73C0;
    if (os_log_type_enabled(qword_280AC73C0, OS_LOG_TYPE_ERROR))
    {
      v7 = 138477827;
      v8 = a3;
      _os_log_error_impl(&dword_2655E8000, v5, OS_LOG_TYPE_ERROR, "Failed to get media events stream authorization status because of %{private}@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) invalidate];

  return (*(*(a1 + 40) + 16))();
}

+ (void)isMediaEventsCollectionEnabledFor:(id)a3 completionHandler:(id)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__SRHDataCollectionController_isMediaEventsCollectionEnabledFor_completionHandler___block_invoke;
  v7[3] = &unk_279B977A8;
  v7[4] = a3;
  v7[5] = a4;
  if (qword_280AC73C8 != -1)
  {
    dispatch_once(&qword_280AC73C8, v7);
  }

  v5 = atomic_load(&_MergedGlobals_0);
  if (a4)
  {
    if (v5)
    {
      v6 = atomic_load(&_MergedGlobals_0);
      (*(a4 + 2))(a4, (v6 >> 1) & 1);
    }
  }
}

void __83__SRHDataCollectionController_isMediaEventsCollectionEnabledFor_completionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  isMediaEventsCollectionEnabledFor_completionHandler__workQueue = dispatch_queue_create("com.apple.SensorKit.workQueue", v2);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__SRHDataCollectionController_isMediaEventsCollectionEnabledFor_completionHandler___block_invoke_2;
  v3[3] = &unk_279B977A8;
  v4 = *(a1 + 32);
  dispatch_async(isMediaEventsCollectionEnabledFor_completionHandler__workQueue, v3);
}

uint64_t __83__SRHDataCollectionController_isMediaEventsCollectionEnabledFor_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (+[SRHDataCollectionController isMessagingApp:](SRHDataCollectionController, "isMessagingApp:", *(a1 + 32)) && +[SRHDataCollectionController isSocialMediaApp])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__SRHDataCollectionController_isMediaEventsCollectionEnabledFor_completionHandler___block_invoke_3;
    v6[3] = &unk_279B97780;
    v7 = *(a1 + 32);
    return [SRHDataCollectionController isMediaEventsStreamAuthorizedWithCompletionHandler:v6];
  }

  else
  {
    atomic_store(1u, &_MergedGlobals_0);
    v3 = qword_280AC73C0;
    if (os_log_type_enabled(qword_280AC73C0, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = atomic_load(&_MergedGlobals_0);
      *buf = 138478083;
      v9 = v4;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_2655E8000, v3, OS_LOG_TYPE_INFO, "Media events collection is false for %{private}@, status: 0X%X", buf, 0x12u);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

uint64_t __83__SRHDataCollectionController_isMediaEventsCollectionEnabledFor_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  atomic_store(v4, &_MergedGlobals_0);
  v5 = qword_280AC73C0;
  if (os_log_type_enabled(qword_280AC73C0, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = atomic_load(&_MergedGlobals_0);
    v10[0] = 67240707;
    v10[1] = a2;
    v11 = 2113;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_2655E8000, v5, OS_LOG_TYPE_INFO, "Media events collection is %{public, BOOL}i for %{private}@, status:0X%X", v10, 0x18u);
  }

  result = *(a1 + 40);
  if (result)
  {
    v9 = atomic_load(&_MergedGlobals_0);
    return (*(result + 16))(result, (v9 >> 1) & 1);
  }

  return result;
}

@end