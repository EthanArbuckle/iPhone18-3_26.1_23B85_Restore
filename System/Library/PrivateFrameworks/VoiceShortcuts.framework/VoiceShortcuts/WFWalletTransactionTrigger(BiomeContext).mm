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
  selectedPassUniqueIDs = [self selectedPassUniqueIDs];
  v6 = [selectedPassUniqueIDs containsObject:v4];

  return v6;
}

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v34 = a4;
  v8 = a5;
  eventBody = [v7 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }
  }

  eventBody2 = [v7 eventBody];
  if (eventBody2)
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
      passUniqueID = [eventBody2 passUniqueID];
      passLocalizedDescription = [eventBody2 passLocalizedDescription];
      transactionType = [eventBody2 transactionType];
      transactionID = [eventBody2 transactionID];
      merchantType = [eventBody2 merchantType];
      poiCategory = [eventBody2 poiCategory];
      eventBody = [v12 initWithPassUniqueID:passUniqueID passLocalizedDescription:passLocalizedDescription transactionType:transactionType transactionID:transactionID merchantType:merchantType poiCategory:poiCategory];

LABEL_8:
      v19 = getWFTriggersLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        passUniqueID2 = [eventBody passUniqueID];
        transactionType2 = [eventBody transactionType];
        *buf = 136315906;
        *&buf[4] = "[WFWalletTransactionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = eventBody;
        *&buf[22] = 2112;
        v48 = passUniqueID2;
        v49 = 2048;
        v50 = transactionType2;
        _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s Received wallet transaction event %@ for trigger. pass unique id: %@; transactionType: %lu", buf, 0x2Au);
      }

      passUniqueID3 = [eventBody passUniqueID];
      v23 = [self isPassIdentifierValid:passUniqueID3];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v48) = 1;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 1;
      if ([eventBody transactionType] == 1)
      {
        selectedMerchantTypes = [self selectedMerchantTypes];
        v25 = [selectedMerchantTypes count];
        v26 = WFAllWalletTransactionMerchantTypes();
        if (v25 >= [v26 count])
        {
          v28 = 0;
        }

        else
        {
          selectedMerchantTypes2 = [self selectedMerchantTypes];
          v28 = [selectedMerchantTypes2 count] != 0;
        }
      }

      else
      {
        v28 = 0;
      }

      if ([eventBody transactionType] == 1)
      {
        selectedMerchants = [self selectedMerchants];
        v31 = [selectedMerchants count] != 0;

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
      v36[4] = self;
      v42 = v31;
      v39 = &v43;
      [self eventInfoForEvent:v7 completion:v36];

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
  eventBody = [v3 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = eventBody;
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
  stringValue = [v8 stringValue];

  if (v6)
  {
    transactionID = [v6 transactionID];
  }

  else
  {
    eventBody2 = [v3 eventBody];
    if (eventBody2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = eventBody2;
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

    transactionID = [v13 transactionID];
  }

  if (transactionID)
  {
    v14 = transactionID;
  }

  else
  {
    v14 = stringValue;
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
    contextSync = [v4 ContextSync];
    walletTransaction = [contextSync WalletTransaction];
    dSLPublisher = [walletTransaction DSLPublisher];

    if (dSLPublisher)
    {
      v8 = [dSLPublisher subscribeOn:v3];
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
  wallet = [v4 Wallet];
  transaction = [wallet Transaction];

  dSLPublisher = [transaction DSLPublisher];
  v8 = [dSLPublisher subscribeOn:v3];

  return v8;
}

+ (uint64_t)unregisterContextSyncClient
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = BiomeLibrary();
  wallet = [v0 Wallet];
  transaction = [wallet Transaction];

  dSLPublisher = [transaction DSLPublisher];
  v4 = [objc_alloc(MEMORY[0x277CFC748]) initWithClientName:@"com.apple.shortcuts"];
  v15 = 0;
  v5 = [v4 unregisterForUpdates:dSLPublisher withIdentifier:@"com.apple.shortcuts" forDeviceTypes:4 withError:&v15];
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
  wallet = [v0 Wallet];
  transaction = [wallet Transaction];

  dSLPublisher = [transaction DSLPublisher];
  v4 = [objc_alloc(MEMORY[0x277CFC748]) initWithClientName:@"com.apple.shortcuts"];
  v15 = 0;
  v5 = [v4 registerForUpdates:dSLPublisher withIdentifier:@"com.apple.shortcuts" shouldWake:1 forDeviceTypes:4 withError:&v15];
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