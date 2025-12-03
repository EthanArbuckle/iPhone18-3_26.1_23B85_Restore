@interface SpotlightSender
+ (BOOL)enabledForClient:(int64_t)client;
+ (BOOL)jobForTextUnderstanding:(int64_t)understanding;
+ (id)clientConnection:(int64_t)connection;
+ (id)clientConnection:(int64_t)connection jobType:(int)type;
+ (id)connectionForClient:(int64_t)client jobType:(int64_t)type;
+ (id)copyDiagnosticInfo;
+ (id)supportedConfigs;
+ (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class client:(int64_t)client;
+ (void)addOrUpdateSearchableItems:(id)items itemsContent:(id)content bundleID:(id)d protectionClass:(id)class client:(int64_t)client;
+ (void)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class client:(int64_t)client;
+ (void)clearCache;
+ (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class client:(int64_t)client;
+ (void)deleteAllSearchableItemsWithBundleID:(id)d client:(int64_t)client;
+ (void)deleteAllUserActivities:(id)activities client:(int64_t)client;
+ (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class client:(int64_t)client;
+ (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class client:(int64_t)client;
+ (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d client:(int64_t)client;
+ (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client;
+ (void)deleteSearchableItemsWithEncodedIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client;
+ (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d contentType:(id)type client:(int64_t)client;
+ (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client retainedData:(id)data;
+ (void)dispatchWithOptions:(int64_t)options block:(id)block;
+ (void)donateRelevantActions:(id)actions bundleID:(id)d client:(int64_t)client;
+ (void)purgeSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client;
+ (void)reset;
+ (void)setupInstantSender;
+ (void)setupScheduledSender;
+ (void)suspend;
@end

@implementation SpotlightSender

+ (id)copyDiagnosticInfo
{
  v2 = objc_opt_new();
  if (MDInstantSenderQueue_sInstantSenderOnce != -1)
  {
    +[SpotlightSender copyDiagnosticInfo];
  }

  v3 = MDInstantSenderQueue_sMDInstantSenderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SpotlightSender_copyDiagnosticInfo__block_invoke;
  block[3] = &unk_278934050;
  v4 = v2;
  v7 = v4;
  dispatch_sync(v3, block);

  return v4;
}

void __37__SpotlightSender_copyDiagnosticInfo__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = NSHomeDirectory();
  if ([v1 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v18[0] = @"com.apple.corespotlight.receiver.coreduet";
    v18[1] = @"com.apple.corespotlight.receiver.suggestions";
    v18[2] = @"com.apple.corespotlight.receiver.textunderstandingd";
    v18[3] = @"com.apple.corespotlight.scheduled.receiver.textunderstandingd";
    v18[4] = @"com.apple.corespotlight.receiver.photos";
    v18[5] = @"com.apple.corespotlight.receiver.images";
    v18[6] = @"com.apple.corespotlight.receiver.corespotlight";
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
    v2 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v15;
      do
      {
        v5 = 0;
        do
        {
          if (*v15 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v14 + 1) + 8 * v5);
          v7 = objc_alloc(MEMORY[0x277CBEBC0]);
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%s/%@.plist", v1, "Library/Spotlight/CoreSpotlight", v6];
          v9 = [v7 initFileURLWithPath:v8];

          if (v9)
          {
            v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9 error:0];
            if ([v10 count])
            {
              [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];
            }
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v3);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)clearCache
{
  v2 = NSHomeDirectory();
  if ([v2 length])
  {
    if (MDInstantSenderQueue_sInstantSenderOnce != -1)
    {
      +[SpotlightSender copyDiagnosticInfo];
    }

    v3 = MDInstantSenderQueue_sMDInstantSenderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__SpotlightSender_clearCache__block_invoke;
    block[3] = &unk_278934050;
    v5 = v2;
    dispatch_sync(v3, block);
  }
}

void __29__SpotlightSender_clearCache__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [sConnectionManager connectionIdentifiers];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%s/%@.plist", *(a1 + 32), "Library/Spotlight/CoreSpotlight", *(*(&v15 + 1) + 8 * i)];
        v14 = 0;
        v7 = [MEMORY[0x277CCAA00] defaultManager];
        v8 = [v7 fileExistsAtPath:v6 isDirectory:&v14];
        v9 = v14;

        if (v8 && (v9 & 1) == 0)
        {
          v10 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v6;
            _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "SpotlightSender: Removing cache file  %@", buf, 0xCu);
          }

          v11 = [MEMORY[0x277CCAA00] defaultManager];
          [v11 removeItemAtPath:v6 error:0];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)setupInstantSender
{
  if (setupInstantSender_onceToken != -1)
  {
    +[SpotlightSender setupInstantSender];
  }
}

void __37__SpotlightSender_setupInstantSender__block_invoke()
{
  if (MDInstantSenderQueue_sInstantSenderOnce != -1)
  {
    +[SpotlightSender copyDiagnosticInfo];
  }

  v1 = MDInstantSenderQueue_sMDInstantSenderQueue;

  dispatch_async(v1, &__block_literal_global_478);
}

uint64_t __37__SpotlightSender_setupInstantSender__block_invoke_2()
{
  sConnectionManager = +[SpotlightReceiverConnectionManager sharedInstantManager];

  return MEMORY[0x2821F96F8]();
}

+ (id)clientConnection:(int64_t)connection jobType:(int)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  if (MDInstantSenderQueue_sInstantSenderOnce != -1)
  {
    +[SpotlightSender clientConnection:jobType:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SpotlightSender_clientConnection_jobType___block_invoke;
  v7[3] = &unk_278934360;
  v7[4] = &v8;
  v7[5] = connection;
  dispatch_sync(MDInstantSenderQueue_sMDInstantSenderQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __44__SpotlightSender_clientConnection_jobType___block_invoke(uint64_t a1)
{
  v2 = [sConnectionManager clientConnection:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (([*(*(*(a1 + 32) + 8) + 40) canRun] & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

+ (id)clientConnection:(int64_t)connection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if (MDInstantSenderQueue_sInstantSenderOnce != -1)
  {
    +[SpotlightSender clientConnection:jobType:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SpotlightSender_clientConnection___block_invoke;
  v6[3] = &unk_278934360;
  v6[4] = &v7;
  v6[5] = connection;
  dispatch_sync(MDInstantSenderQueue_sMDInstantSenderQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__SpotlightSender_clientConnection___block_invoke(uint64_t a1)
{
  v2 = [sConnectionManager clientConnection:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (([*(*(*(a1 + 32) + 8) + 40) canRun] & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

+ (BOOL)enabledForClient:(int64_t)client
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if (MDInstantSenderQueue_sInstantSenderOnce != -1)
  {
    +[SpotlightSender clientConnection:jobType:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SpotlightSender_enabledForClient___block_invoke;
  v6[3] = &unk_278934360;
  v6[4] = &v7;
  v6[5] = client;
  dispatch_sync(MDInstantSenderQueue_sMDInstantSenderQueue, v6);
  v4 = v8[5] != 0;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__SpotlightSender_enabledForClient___block_invoke(uint64_t a1)
{
  v2 = [sConnectionManager clientConnection:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)jobForTextUnderstanding:(int64_t)understanding
{
  if ((understanding & 0x1024F) != 0)
  {
    return BYTE2(understanding) & 1;
  }

  else
  {
    return 1;
  }
}

+ (void)dispatchWithOptions:(int64_t)options block:(id)block
{
  v6 = 0;
  blockCopy = block;
  do
  {
    v7 = sAllReceiverClientIDs[v6];
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (([self jobForImages:options] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v7 == 4)
      {
        if (([self jobForAssets:options] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v7 != 5 || ([self jobForTextUnderstanding:options] & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (([self jobForDuet:options] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v7 != 2 || ([self jobForSuggestions:options] & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (![self jobForTest:options])
    {
      goto LABEL_22;
    }

    v8 = [SpotlightSender clientConnection:v7];

    if (v8)
    {
      blockCopy[2](blockCopy, v7);
    }

LABEL_22:
    ++v6;
  }

  while (v6 != 6);
}

+ (void)addOrUpdateSearchableItems:(id)items itemsContent:(id)content bundleID:(id)d protectionClass:(id)class client:(int64_t)client
{
  classCopy = class;
  dCopy = d;
  contentCopy = content;
  itemsCopy = items;
  v15 = [SpotlightSender clientConnection:client jobType:1];
  [v15 indexFromBundle:dCopy protectionClass:classCopy items:itemsCopy itemsContent:contentCopy];
}

+ (void)deleteSearchableItemsWithEncodedIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client
{
  dCopy = d;
  identifiersCopy = identifiers;
  v9 = [SpotlightSender clientConnection:client jobType:2];
  [v9 deleteFromBundle:dCopy encodedIdentifiers:identifiersCopy];
}

+ (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d contentType:(id)type client:(int64_t)client
{
  typeCopy = type;
  dCopy = d;
  identifiersCopy = identifiers;
  v12 = [SpotlightSender clientConnection:client jobType:2];
  [v12 deleteFromBundle:dCopy contentType:typeCopy identifiers:identifiersCopy];
}

+ (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client
{
  dCopy = d;
  identifiersCopy = identifiers;
  v9 = [SpotlightSender clientConnection:client jobType:4];
  [v9 deleteFromBundle:dCopy domainIdentifiers:identifiersCopy];
}

+ (void)deleteAllSearchableItemsWithBundleID:(id)d client:(int64_t)client
{
  dCopy = d;
  v6 = [SpotlightSender clientConnection:client jobType:8];
  [v6 deleteFromBundle:dCopy];
}

+ (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d client:(int64_t)client
{
  dCopy = d;
  dateCopy = date;
  v9 = [SpotlightSender clientConnection:client jobType:16];
  [v9 deleteFromBundle:dCopy sinceDate:dateCopy];
}

+ (void)purgeSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client
{
  dCopy = d;
  identifiersCopy = identifiers;
  v9 = [SpotlightSender clientConnection:client jobType:32];
  [v9 purgeFromBundle:dCopy identifiers:identifiersCopy];
}

+ (void)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class client:(int64_t)client
{
  classCopy = class;
  dCopy = d;
  actionsCopy = actions;
  v12 = [SpotlightSender clientConnection:client jobType:64];
  [v12 addUserActions:actionsCopy bundleID:dCopy protectionClass:classCopy];
}

+ (void)deleteAllUserActivities:(id)activities client:(int64_t)client
{
  activitiesCopy = activities;
  v6 = [SpotlightSender clientConnection:client jobType:4096];
  [v6 deleteAllUserActivities:activitiesCopy];
}

+ (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d client:(int64_t)client retainedData:(id)data
{
  dataCopy = data;
  dCopy = d;
  identifiersCopy = identifiers;
  v12 = [SpotlightSender clientConnection:client jobType:0x2000];
  [v12 deleteUserActivitiesWithPersistentIdentifiers:identifiersCopy bundleID:dCopy retainedData:dataCopy];
}

+ (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class client:(int64_t)client
{
  classCopy = class;
  dCopy = d;
  nameCopy = name;
  interactionCopy = interaction;
  v15 = [SpotlightSender clientConnection:client jobType:128];
  [v15 addInteraction:interactionCopy intentClassName:nameCopy bundleID:dCopy protectionClass:classCopy];
}

+ (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class client:(int64_t)client
{
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  v12 = [SpotlightSender clientConnection:client jobType:256];
  [v12 deleteInteractionsWithIdentifiers:identifiersCopy bundleID:dCopy protectionClass:classCopy];
}

+ (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class client:(int64_t)client
{
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  v12 = [SpotlightSender clientConnection:client jobType:512];
  [v12 deleteInteractionsWithGroupIdentifiers:identifiersCopy bundleID:dCopy protectionClass:classCopy];
}

+ (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class client:(int64_t)client
{
  classCopy = class;
  dCopy = d;
  v9 = [SpotlightSender clientConnection:client jobType:1024];
  [v9 deleteAllInteractionsWithBundleID:dCopy protectionClass:classCopy];
}

+ (void)donateRelevantActions:(id)actions bundleID:(id)d client:(int64_t)client
{
  dCopy = d;
  actionsCopy = actions;
  v9 = [SpotlightSender clientConnection:client jobType:18432];
  [v9 donateRelevantActions:actionsCopy bundleID:dCopy];
}

+ (id)connectionForClient:(int64_t)client jobType:(int64_t)type
{
  v5 = [SpotlightSender clientConnection:client];
  v6 = v5;
  if (type && v5 && (type > 0xF || ((1 << type) & 0xC1CE) == 0 || ![v5 canRun] || (objc_msgSend(v6, "supportedJobs") & 0x100000) == 0))
  {

    v6 = 0;
  }

  return v6;
}

+ (void)setupScheduledSender
{
  if (setupScheduledSender_onceToken != -1)
  {
    +[SpotlightSender(SpotlightScheduledSender) setupScheduledSender];
  }
}

uint64_t __65__SpotlightSender_SpotlightScheduledSender__setupScheduledSender__block_invoke()
{
  sConnectionManager = +[SpotlightReceiverConnectionManager sharedScheduledManager];

  return MEMORY[0x2821F96F8]();
}

+ (id)supportedConfigs
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clients = [sConnectionManager clients];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [clients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(clients);
        }

        v8 = [sConnectionManager clientConnection:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "intValue")}];
        v9 = v8;
        if (v8)
        {
          configs = [v8 configs];
          [v2 addObjectsFromArray:configs];
        }
      }

      v5 = [clients countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)suspend
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = [sConnectionManager clients];
  v3 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(clients);
        }

        intValue = [*(*(&v10 + 1) + 8 * v6) intValue];
        v8 = [sConnectionManager clientConnection:intValue];
        [v8 suspend];

        ++v6;
      }

      while (v4 != v6);
      v4 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)reset
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = [sConnectionManager clients];
  v3 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(clients);
        }

        intValue = [*(*(&v10 + 1) + 8 * v6) intValue];
        v8 = [sConnectionManager clientConnection:intValue];
        [v8 reset];

        ++v6;
      }

      while (v4 != v6);
      v4 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end