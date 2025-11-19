@interface WFWalletTransactionTrigger(BiomeContext)
+ (uint64_t)registerContextSyncClient;
+ (uint64_t)unregisterContextSyncClient;
- (id)publisherWithScheduler:()BiomeContext;
- (id)remotePublisherWithScheduler:()BiomeContext;
- (uint64_t)isPassIdentifierValid:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
- (void)transactionIdentifierWithEvent:()BiomeContext;
@end

@implementation WFWalletTransactionTrigger(BiomeContext)

- (uint64_t)isPassIdentifierValid:()BiomeContext
{
  v4 = a3;
  v5 = [a1 selectedPassUniqueIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v34 = a4;
  v8 = a5;
  v9 = [v7 eventBody];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }
  }

  v10 = [v7 eventBody];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = getWFTriggersLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[WFWalletTransactionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Found remote event converting to BMWalletTransaction", buf, 0xCu);
      }

      v12 = objc_alloc(MEMORY[0x277CF1720]);
      v13 = [v10 passUniqueID];
      v14 = [v10 passLocalizedDescription];
      v15 = [v10 transactionType];
      v16 = [v10 transactionID];
      v17 = [v10 merchantType];
      v18 = [v10 poiCategory];
      v9 = [v12 initWithPassUniqueID:v13 passLocalizedDescription:v14 transactionType:v15 transactionID:v16 merchantType:v17 poiCategory:v18];

LABEL_8:
      v19 = getWFTriggersLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 passUniqueID];
        v21 = [v9 transactionType];
        *buf = 136315906;
        *&buf[4] = "[WFWalletTransactionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        *&buf[22] = 2112;
        v48 = v20;
        v49 = 2048;
        v50 = v21;
        _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s Received wallet transaction event %@ for trigger. pass unique id: %@; transactionType: %lu", buf, 0x2Au);
      }

      v22 = [v9 passUniqueID];
      v23 = [a1 isPassIdentifierValid:v22];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v48) = 1;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 1;
      if ([v9 transactionType] == 1)
      {
        v24 = [a1 selectedMerchantTypes];
        v25 = [v24 count];
        v26 = WFAllWalletTransactionMerchantTypes();
        if (v25 >= [v26 count])
        {
          v28 = 0;
        }

        else
        {
          v27 = [a1 selectedMerchantTypes];
          v28 = [v27 count] != 0;
        }
      }

      else
      {
        v28 = 0;
      }

      if ([v9 transactionType] == 1)
      {
        v30 = [a1 selectedMerchants];
        v31 = [v30 count] != 0;

        if (v28)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v31 = 0;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      if (!v31)
      {
        if (v23 && *(*&buf[8] + 24) == 1)
        {
          v32 = *(v44 + 24);
        }

        else
        {
          v32 = 0;
        }

        v8[2](v8, v32 & 1);
        goto LABEL_30;
      }

LABEL_27:
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __101__WFWalletTransactionTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke;
      v36[3] = &unk_2788FE590;
      v40 = v23;
      v41 = v28;
      v37 = v8;
      v38 = buf;
      v36[4] = a1;
      v42 = v31;
      v39 = &v43;
      [a1 eventInfoForEvent:v7 completion:v36];

LABEL_30:
      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_31;
    }
  }

  v29 = getWFTriggersLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[WFWalletTransactionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
    _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_DEFAULT, "%s No wallet transaction event received for trigger; not firing.", buf, 0xCu);
  }

  v8[2](v8, 0);
LABEL_31:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)transactionIdentifierWithEvent:()BiomeContext
{
  v3 = a3;
  v4 = [v3 eventBody];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x277CCABB0];
  [v3 timestamp];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 stringValue];

  if (v6)
  {
    v10 = [v6 transactionID];
  }

  else
  {
    v11 = [v3 eventBody];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v10 = [v13 transactionID];
  }

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;

  return v14;
}

- (id)remotePublisherWithScheduler:()BiomeContext
{
  v3 = a3;
  if ([objc_opt_class() registerContextSyncClient])
  {
    v4 = BiomeLibrary();
    v5 = [v4 ContextSync];
    v6 = [v5 WalletTransaction];
    v7 = [v6 DSLPublisher];

    if (v7)
    {
      v8 = [v7 subscribeOn:v3];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 Wallet];
  v6 = [v5 Transaction];

  v7 = [v6 DSLPublisher];
  v8 = [v7 subscribeOn:v3];

  return v8;
}

+ (uint64_t)unregisterContextSyncClient
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = BiomeLibrary();
  v1 = [v0 Wallet];
  v2 = [v1 Transaction];

  v3 = [v2 DSLPublisher];
  v4 = [objc_alloc(MEMORY[0x277CFC748]) initWithClientName:@"com.apple.shortcuts"];
  v15 = 0;
  v5 = [v4 unregisterForUpdates:v3 withIdentifier:@"com.apple.shortcuts" forDeviceTypes:4 withError:&v15];
  v6 = v15;
  v7 = getWFTriggersLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "+[WFWalletTransactionTrigger(BiomeContext) unregisterContextSyncClient]";
      v9 = "%s Successfully unregistered from context sync client";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_23103C000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "+[WFWalletTransactionTrigger(BiomeContext) unregisterContextSyncClient]";
    v18 = 2112;
    v19 = v6;
    v9 = "%s Failed to unregister client with error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (uint64_t)registerContextSyncClient
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = BiomeLibrary();
  v1 = [v0 Wallet];
  v2 = [v1 Transaction];

  v3 = [v2 DSLPublisher];
  v4 = [objc_alloc(MEMORY[0x277CFC748]) initWithClientName:@"com.apple.shortcuts"];
  v15 = 0;
  v5 = [v4 registerForUpdates:v3 withIdentifier:@"com.apple.shortcuts" shouldWake:1 forDeviceTypes:4 withError:&v15];
  v6 = v15;
  v7 = getWFTriggersLogObject();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "+[WFWalletTransactionTrigger(BiomeContext) registerContextSyncClient]";
      v9 = "%s Successfully registered for updates with context sync client";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_23103C000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "+[WFWalletTransactionTrigger(BiomeContext) registerContextSyncClient]";
    v18 = 2112;
    v19 = v6;
    v9 = "%s Failed register for updates from context sync client with error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end