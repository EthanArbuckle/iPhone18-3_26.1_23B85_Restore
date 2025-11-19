@interface SpotlightSender
+ (BOOL)enabledForClient:(int64_t)a3;
+ (BOOL)jobForTextUnderstanding:(int64_t)a3;
+ (id)clientConnection:(int64_t)a3;
+ (id)clientConnection:(int64_t)a3 jobType:(int)a4;
+ (id)connectionForClient:(int64_t)a3 jobType:(int64_t)a4;
+ (id)copyDiagnosticInfo;
+ (id)supportedConfigs;
+ (void)addInteraction:(id)a3 intentClassName:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 client:(int64_t)a7;
+ (void)addOrUpdateSearchableItems:(id)a3 itemsContent:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 client:(int64_t)a7;
+ (void)addUserActions:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 client:(int64_t)a6;
+ (void)clearCache;
+ (void)deleteAllInteractionsWithBundleID:(id)a3 protectionClass:(id)a4 client:(int64_t)a5;
+ (void)deleteAllSearchableItemsWithBundleID:(id)a3 client:(int64_t)a4;
+ (void)deleteAllUserActivities:(id)a3 client:(int64_t)a4;
+ (void)deleteInteractionsWithGroupIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 client:(int64_t)a6;
+ (void)deleteInteractionsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 client:(int64_t)a6;
+ (void)deleteSearchableItemsSinceDate:(id)a3 bundleID:(id)a4 client:(int64_t)a5;
+ (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5;
+ (void)deleteSearchableItemsWithEncodedIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5;
+ (void)deleteSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4 contentType:(id)a5 client:(int64_t)a6;
+ (void)deleteUserActivitiesWithPersistentIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5 retainedData:(id)a6;
+ (void)dispatchWithOptions:(int64_t)a3 block:(id)a4;
+ (void)donateRelevantActions:(id)a3 bundleID:(id)a4 client:(int64_t)a5;
+ (void)purgeSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5;
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

+ (id)clientConnection:(int64_t)a3 jobType:(int)a4
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
  v7[5] = a3;
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

+ (id)clientConnection:(int64_t)a3
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
  v6[5] = a3;
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

+ (BOOL)enabledForClient:(int64_t)a3
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
  v6[5] = a3;
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

+ (BOOL)jobForTextUnderstanding:(int64_t)a3
{
  if ((a3 & 0x1024F) != 0)
  {
    return BYTE2(a3) & 1;
  }

  else
  {
    return 1;
  }
}

+ (void)dispatchWithOptions:(int64_t)a3 block:(id)a4
{
  v6 = 0;
  v9 = a4;
  do
  {
    v7 = sAllReceiverClientIDs[v6];
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (([a1 jobForImages:a3] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v7 == 4)
      {
        if (([a1 jobForAssets:a3] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v7 != 5 || ([a1 jobForTextUnderstanding:a3] & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (([a1 jobForDuet:a3] & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v7 != 2 || ([a1 jobForSuggestions:a3] & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (![a1 jobForTest:a3])
    {
      goto LABEL_22;
    }

    v8 = [SpotlightSender clientConnection:v7];

    if (v8)
    {
      v9[2](v9, v7);
    }

LABEL_22:
    ++v6;
  }

  while (v6 != 6);
}

+ (void)addOrUpdateSearchableItems:(id)a3 itemsContent:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 client:(int64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [SpotlightSender clientConnection:a7 jobType:1];
  [v15 indexFromBundle:v12 protectionClass:v11 items:v14 itemsContent:v13];
}

+ (void)deleteSearchableItemsWithEncodedIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SpotlightSender clientConnection:a5 jobType:2];
  [v9 deleteFromBundle:v7 encodedIdentifiers:v8];
}

+ (void)deleteSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4 contentType:(id)a5 client:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [SpotlightSender clientConnection:a6 jobType:2];
  [v12 deleteFromBundle:v10 contentType:v9 identifiers:v11];
}

+ (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SpotlightSender clientConnection:a5 jobType:4];
  [v9 deleteFromBundle:v7 domainIdentifiers:v8];
}

+ (void)deleteAllSearchableItemsWithBundleID:(id)a3 client:(int64_t)a4
{
  v5 = a3;
  v6 = [SpotlightSender clientConnection:a4 jobType:8];
  [v6 deleteFromBundle:v5];
}

+ (void)deleteSearchableItemsSinceDate:(id)a3 bundleID:(id)a4 client:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SpotlightSender clientConnection:a5 jobType:16];
  [v9 deleteFromBundle:v7 sinceDate:v8];
}

+ (void)purgeSearchableItemsWithIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SpotlightSender clientConnection:a5 jobType:32];
  [v9 purgeFromBundle:v7 identifiers:v8];
}

+ (void)addUserActions:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 client:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [SpotlightSender clientConnection:a6 jobType:64];
  [v12 addUserActions:v11 bundleID:v10 protectionClass:v9];
}

+ (void)deleteAllUserActivities:(id)a3 client:(int64_t)a4
{
  v5 = a3;
  v6 = [SpotlightSender clientConnection:a4 jobType:4096];
  [v6 deleteAllUserActivities:v5];
}

+ (void)deleteUserActivitiesWithPersistentIdentifiers:(id)a3 bundleID:(id)a4 client:(int64_t)a5 retainedData:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [SpotlightSender clientConnection:a5 jobType:0x2000];
  [v12 deleteUserActivitiesWithPersistentIdentifiers:v11 bundleID:v10 retainedData:v9];
}

+ (void)addInteraction:(id)a3 intentClassName:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 client:(int64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [SpotlightSender clientConnection:a7 jobType:128];
  [v15 addInteraction:v14 intentClassName:v13 bundleID:v12 protectionClass:v11];
}

+ (void)deleteInteractionsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 client:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [SpotlightSender clientConnection:a6 jobType:256];
  [v12 deleteInteractionsWithIdentifiers:v11 bundleID:v10 protectionClass:v9];
}

+ (void)deleteInteractionsWithGroupIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 client:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [SpotlightSender clientConnection:a6 jobType:512];
  [v12 deleteInteractionsWithGroupIdentifiers:v11 bundleID:v10 protectionClass:v9];
}

+ (void)deleteAllInteractionsWithBundleID:(id)a3 protectionClass:(id)a4 client:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SpotlightSender clientConnection:a5 jobType:1024];
  [v9 deleteAllInteractionsWithBundleID:v8 protectionClass:v7];
}

+ (void)donateRelevantActions:(id)a3 bundleID:(id)a4 client:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [SpotlightSender clientConnection:a5 jobType:18432];
  [v9 donateRelevantActions:v8 bundleID:v7];
}

+ (id)connectionForClient:(int64_t)a3 jobType:(int64_t)a4
{
  v5 = [SpotlightSender clientConnection:a3];
  v6 = v5;
  if (a4 && v5 && (a4 > 0xF || ((1 << a4) & 0xC1CE) == 0 || ![v5 canRun] || (objc_msgSend(v6, "supportedJobs") & 0x100000) == 0))
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
  v3 = [sConnectionManager clients];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [sConnectionManager clientConnection:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "intValue")}];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 configs];
          [v2 addObjectsFromArray:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [sConnectionManager clients];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) intValue];
        v8 = [sConnectionManager clientConnection:v7];
        [v8 suspend];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [sConnectionManager clients];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) intValue];
        v8 = [sConnectionManager clientConnection:v7];
        [v8 reset];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end