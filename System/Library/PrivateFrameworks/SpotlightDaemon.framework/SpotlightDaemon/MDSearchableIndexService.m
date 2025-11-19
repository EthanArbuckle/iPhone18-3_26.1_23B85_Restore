@interface MDSearchableIndexService
- (BOOL)_canProcessIndexDataForBundle:(id)a3 itemsDecoder:(id)a4 deletesDecoder:(id)a5 clientState:(id)a6 clientStateName:(id)a7 outError:(id *)a8;
- (BOOL)_deleteInteractions:(id)a3 forGroup:(BOOL)a4;
- (BOOL)_handleAssetsCommand:(id)a3;
- (BOOL)addInteraction:(id)a3;
- (BOOL)changeState:(id)a3;
- (BOOL)checkIn:(id)a3;
- (BOOL)dataMigration:(id)a3;
- (BOOL)deleteActionsBeforeTime:(id)a3;
- (BOOL)deleteActionsWithIdentifiers:(id)a3;
- (BOOL)deleteAllInteractions:(id)a3;
- (BOOL)deleteAllUserActivities:(id)a3;
- (BOOL)deleteBundle:(id)a3;
- (BOOL)deleteDomains:(id)a3;
- (BOOL)deleteSinceDate:(id)a3;
- (BOOL)deleteUserActivitiesWithPersistentIdentifiers:(id)a3;
- (BOOL)donateRelevantActions:(id)a3;
- (BOOL)fetchAttributes:(id)a3;
- (BOOL)fetchBundleIDs:(id)a3;
- (BOOL)fetchCacheFileDescriptors:(id)a3;
- (BOOL)fetchClientState:(id)a3;
- (BOOL)finishIndexingLocked:(id)a3;
- (BOOL)handleCommand:(const char *)a3 info:(id)a4;
- (BOOL)issueCacheCommand:(id)a3;
- (BOOL)issueCommand:(id)a3;
- (BOOL)openJournalFile:(id)a3;
- (BOOL)photosLibraryDeleted:(id)a3;
- (BOOL)prepareIndexingLocked:(id)a3;
- (BOOL)processActivities:(id)a3;
- (BOOL)processIndexData:(id)a3;
- (BOOL)transferDeleteJournals:(id)a3;
- (BOOL)updateCorrections:(id)a3;
- (BOOL)willModify:(id)a3;
- (CSIndexingQueue)activityQueue;
- (NSString)processDescription;
- (id)_checkBundleIDHelper:(id)a3;
- (id)_checkItems:(id)a3 identifiers:(id)a4 protectionClass:(id)a5 bundleID:(id)a6;
- (id)_checkNonEmptyBundle:(id)a3 protectionClass:(id)a4;
- (void)_deleteAllSearchableItemsWithBundleID:(id)a3 protectionClass:(id)a4 shouldGC:(BOOL)a5 options:(int64_t)a6 deleteAllReason:(int64_t)a7 completionHandler:(id)a8;
- (void)_dispatchActivities:(id)a3;
- (void)_dispatchActivities:(id)a3 bundleID:(id)a4;
- (void)_dispatchToReceiversWithBundleID:(id)a3 protectionClass:(id)a4 options:(int64_t)a5 items:(id)a6 itemsText:(id)a7 itemsHTML:(id)a8 deletes:(id)a9;
- (void)_forceAppWithBundleID:(id)a3 toPerformJob:(id)a4;
- (void)_makeActivityQueueIfNecessary;
- (void)_processIndexDataForBundle:(id)a3 protectionClass:(id)a4 personaID:(id)a5 options:(int64_t)a6 items:(id)a7 itemsText:(id)a8 itemsHTML:(id)a9 clientState:(id)a10 expectedClientState:(id)a11 clientStateName:(id)a12 deletes:(id)a13 completionHandler:(id)a14;
- (void)_runLibraryDeletedCommand:(id)a3;
- (void)addInteraction:(id)a3 intentClassName:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)changeStateOfSearchableItemsWithUIDs:(id)a3 toState:(int64_t)a4 protectionClass:(id)a5 forBundleID:(id)a6 forUTIType:(id)a7 options:(int64_t)a8;
- (void)checkInWithProtectionClass:(id)a3 completionHandler:(id)a4;
- (void)deleteActionsBeforeTime:(double)a3 options:(int64_t)a4 completionHandler:(id)a5;
- (void)deleteActionsWithIdentifiers:(id)a3 options:(int64_t)a4 completionHandler:(id)a5;
- (void)deleteAllInteractionsWithBundleID:(id)a3 protectionClass:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)deleteAllUserActivities:(id)a3 fromClient:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)deleteInteractionsWithGroupIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)deleteInteractionsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)deleteSearchableItemsSinceDate:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 fromClient:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)a3 bundleID:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)donateRelevantActions:(id)a3 bundleID:(id)a4 options:(int64_t)a5 completionHandler:(id)a6;
- (void)fetchAttributes:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 identifiers:(id)a6 userCtx:(id)a7 flags:(unsigned int)a8 qos:(unsigned int)a9 reply:(id)a10 completionHandler:(id)a11;
- (void)fetchLastClientStateWithProtectionClass:(id)a3 forBundleID:(id)a4 clientStateName:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
- (void)finishIndexingWhileLocked:(id)a3 protectionClass:(id)a4 completionHandler:(id)a5;
- (void)flushUserActivities;
- (void)indexFromBundle:(id)a3 protectionClass:(id)a4 options:(int64_t)a5 items:(id)a6 itemsText:(id)a7 itemsHTML:(id)a8 clientState:(id)a9 expectedClientState:(id)a10 clientStateName:(id)a11 deletes:(id)a12 userActivities:(BOOL)a13 completionHandler:(id)a14;
- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 clientStateName:(id)a6 protectionClass:(id)a7 forBundleID:(id)a8 options:(int64_t)a9 completionHandler:(id)a10;
- (void)performDataMigrationWithTimeout:(id)a3 completionHandler:(id)a4;
- (void)performIndexJob:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5;
- (void)prepareIndexingWhileLocked:(id)a3 protectionClass:(id)a4 holdAssertionFor:(double)a5 completionHandler:(id)a6;
- (void)provideDataForBundle:(id)a3 identifier:(id)a4 type:(id)a5 completionHandler:(id)a6;
- (void)provideFileURLForBundle:(id)a3 identifier:(id)a4 type:(id)a5 completionHandler:(id)a6;
- (void)updateCorrectionsWithFilePath:(id)a3 options:(int64_t)a4 completionHandler:(id)a5;
- (void)userPerformedAction:(id)a3 withItem:(id)a4 protectionClass:(id)a5;
- (void)willModifySearchableItemsWithIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
@end

@implementation MDSearchableIndexService

void __57__MDSearchableIndexService__makeActivityQueueIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_INFO, "Flushing UA queue, count:%lu", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchActivities:v3];

  objc_autoreleasePoolPop(v4);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_makeActivityQueueIfNecessary
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_activityQueue && ([MEMORY[0x277CC3518] disabledUserActivities] & 1) == 0)
  {
    objc_initWeak(&location, v2);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __57__MDSearchableIndexService__makeActivityQueueIfNecessary__block_invoke;
    v10 = &unk_278937730;
    objc_copyWeak(&v11, &location);
    v3 = [&v7 copy];
    v4 = objc_alloc(MEMORY[0x277CC3428]);
    v5 = [v4 initWithIdleTime:1 idleTimeLeeway:0 maximumBatchSize:v3 mode:1.0 notifyBlock:{0.25, v7, v8, v9, v10}];
    activityQueue = v2->_activityQueue;
    v2->_activityQueue = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);
}

- (CSIndexingQueue)activityQueue
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activityQueue;
  objc_sync_exit(v2);

  return v3;
}

- (void)flushUserActivities
{
  v2 = [(MDSearchableIndexService *)self activityQueue];
  [v2 flush];
}

- (NSString)processDescription
{
  v2 = [(MDSearchableIndexService *)self clientConnection];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CC3510] processNameForPID:xpc_connection_get_pid(v2)];
  }

  else
  {
    v4 = &stru_2846BD100;
  }

  return v4;
}

- (id)_checkNonEmptyBundle:(id)a3 protectionClass:(id)a4
{
  if (a3)
  {
    v5 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:a4 bundleID:a3];
  }

  else
  {
    v6 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkNonEmptyBundle:? protectionClass:?];
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
  }

  return v5;
}

- (id)_checkItems:(id)a3 identifiers:(id)a4 protectionClass:(id)a5 bundleID:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_isInternal)
  {
    goto LABEL_2;
  }

  v30 = [(MDSearchableIndexService *)self clientBundleID];

  if (!v30)
  {
    v34 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:? identifiers:? protectionClass:? bundleID:?];
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    goto LABEL_44;
  }

  v31 = [(MDSearchableIndexService *)self _checkBundleIDHelper:v13];
  if (v31)
  {
    v32 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
    }

    v33 = v31;
LABEL_43:
    v23 = v33;

    goto LABEL_44;
  }

  v38 = geteuid();
  if (v38 != [(MDSearchableIndexService *)self clientUID])
  {
    v39 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:? identifiers:? protectionClass:? bundleID:?];
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    goto LABEL_43;
  }

LABEL_2:
  v43 = v12;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = *v49;
  v42 = v10;
  while (2)
  {
    v18 = v13;
    v19 = v11;
    for (i = 0; i != v16; ++i)
    {
      if (*v49 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v48 + 1) + 8 * i);
      if (([v21 _isFullyFormed] & 1) == 0)
      {
        v35 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
        }

        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
        goto LABEL_34;
      }

      v22 = [v21 bundleID];
      v23 = [(MDSearchableIndexService *)self _checkBundleIDHelper:v22];

      if (v23)
      {
        v36 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
        }

LABEL_34:
        v12 = v43;

        v11 = v19;
        v13 = v18;
        v10 = v42;
        goto LABEL_44;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    v11 = v19;
    v13 = v18;
    v10 = v42;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_11:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = v11;
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v44 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
          }

          v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];

          goto LABEL_38;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_38:
  v12 = v43;
LABEL_44:

  v40 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_checkBundleIDHelper:(id)a3
{
  v4 = a3;
  if (!v4 || (-[MDSearchableIndexService clientBundleID](self, "clientBundleID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqualToString:v5], v5, (v6 & 1) != 0) || self->_isInternal)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
  }

  return v7;
}

- (BOOL)_canProcessIndexDataForBundle:(id)a3 itemsDecoder:(id)a4 deletesDecoder:(id)a5 clientState:(id)a6 clientStateName:(id)a7 outError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v14)
  {
    v14 = [(MDSearchableIndexService *)self clientBundleID];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:v14];
  if (v19)
  {
    goto LABEL_9;
  }

  if (v17 && !v18)
  {
    v20 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _canProcessIndexDataForBundle:itemsDecoder:deletesDecoder:clientState:clientStateName:outError:];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1002 userInfo:0];
LABEL_9:
    v21 = v19 == 0;
    goto LABEL_10;
  }

  if (v17)
  {
    v19 = 0;
    v21 = 1;
  }

  else
  {
    if (v15 && ([v15 obj], _MDPlistGetPlistObjectType() == 240))
    {
      [v15 obj];
      v21 = _MDPlistArrayGetCount() != 0;
    }

    else
    {
      v21 = 0;
    }

    if (v16 && ([v16 obj], _MDPlistGetPlistObjectType() == 240))
    {
      [v16 obj];
      Count = _MDPlistArrayGetCount();
      v19 = 0;
      v21 |= Count != 0;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_10:
  if (a8)
  {
    v19 = v19;
    *a8 = v19;
  }

  return v21 & 1;
}

- (void)_processIndexDataForBundle:(id)a3 protectionClass:(id)a4 personaID:(id)a5 options:(int64_t)a6 items:(id)a7 itemsText:(id)a8 itemsHTML:(id)a9 clientState:(id)a10 expectedClientState:(id)a11 clientStateName:(id)a12 deletes:(id)a13 completionHandler:(id)a14
{
  v35 = a3;
  v19 = a4;
  v20 = a5;
  v34 = a7;
  v33 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  if ([(MDSearchableIndexService *)self _jobForIndex:a6]&& (v27 = self->_indexer, (objc_opt_respondsToSelector() & 1) != 0))
  {
    indexer = self->_indexer;
    LOBYTE(v31) = 1;
    v29 = v34;
    v30 = v33;
    [(MDIndexer *)indexer indexFromBundle:v35 protectionClass:v19 personaID:v20 options:a6 items:v34 itemsText:v33 itemsHTML:v21 clientState:v22 expectedClientState:v23 clientStateName:v24 deletes:v25 canCreateNewIndex:v31 completionHandler:v26];
  }

  else
  {
    v30 = v33;
    v29 = v34;
    if (!v26)
    {
      goto LABEL_7;
    }

    (*(v26 + 2))(v26, 0, 0);
  }

LABEL_7:
}

- (void)_dispatchToReceiversWithBundleID:(id)a3 protectionClass:(id)a4 options:(int64_t)a5 items:(id)a6 itemsText:(id)a7 itemsHTML:(id)a8 deletes:(id)a9
{
  v51 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = &off_231AED000;
  if (v19)
  {
    v21 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if ([SpotlightSender jobForTest:a5])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v28 = v22;
      v29 = v18;
      if ([SpotlightSender jobForDuet:a5])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if ([SpotlightSender jobForSuggestions:a5])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138413570;
      if ([SpotlightSender jobForTextUnderstanding:a5])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v40 = v14;
      v41 = 2048;
      v42 = a5;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v23;
      v18 = v29;
      v47 = 2112;
      v48 = v24;
      v20 = &off_231AED000;
      v49 = 2112;
      v50 = v25;
      _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "_dispatchToReceivers, deleteSearchableItemsWithEncodedIdentifiers, bundleID:%@, options:0x%lx, test/duet/suggestions/textunderstanding:%@/%@/%@/%@", buf, 0x3Eu);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = *(v20 + 179);
    v36[2] = __119__MDSearchableIndexService__dispatchToReceiversWithBundleID_protectionClass_options_items_itemsText_itemsHTML_deletes___block_invoke;
    v36[3] = &unk_278937758;
    v37 = v19;
    v38 = v14;
    [SpotlightSender dispatchWithOptions:a5 block:v36];
  }

  if (v16)
  {
    v26 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [MDSearchableIndexService _dispatchToReceiversWithBundleID:protectionClass:options:items:itemsText:itemsHTML:deletes:];
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = *(v20 + 179);
    v30[2] = __119__MDSearchableIndexService__dispatchToReceiversWithBundleID_protectionClass_options_items_itemsText_itemsHTML_deletes___block_invoke_52;
    v30[3] = &unk_278937780;
    v31 = v18;
    v32 = v17;
    v33 = v16;
    v34 = v14;
    v35 = v15;
    [SpotlightSender dispatchWithOptions:a5 block:v30];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __119__MDSearchableIndexService__dispatchToReceiversWithBundleID_protectionClass_options_items_itemsText_itemsHTML_deletes___block_invoke_52(void *a1, unint64_t a2)
{
  v4 = 0;
  if (a2 <= 5 && ((1 << a2) & 0x25) != 0)
  {
    v5 = a1[4];
    if (v5 || (v5 = a1[5]) != 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;
  [SpotlightSender addOrUpdateSearchableItems:a1[6] itemsContent:v4 bundleID:a1[7] protectionClass:a1[8] client:a2];
}

- (void)willModifySearchableItemsWithIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v14)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [(MDSearchableIndexService *)self clientBundleID];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v25 = v14;
    v26 = 2048;
    v27 = [v12 count];
    v28 = 2112;
    v29 = v12;
    v30 = 2048;
    v31 = a6;
    _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "(%@) willModifySearchableItemsWithIdentifiers, identifiers/%ld:%@, options:0x%lx", buf, 0x2Au);
  }

  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v12 protectionClass:v13 bundleID:v14];
  if (v18)
  {
    if (v15)
    {
      v15[2](v15, v18);
LABEL_15:
    }
  }

  else
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:a6])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v20 = self->_indexer;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __123__MDSearchableIndexService_willModifySearchableItemsWithIdentifiers_protectionClass_forBundleID_options_completionHandler___block_invoke;
        v22[3] = &unk_278935048;
        v23 = v15;
        [(MDIndexer *)v20 willModifySearchableItemsWithIdentifiers:v12 protectionClass:v13 forBundleID:v14 options:a6 completionHandler:v22];
        v15 = v23;
        goto LABEL_15;
      }
    }

    if (v15)
    {
      v15[2](v15, 0);
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v16);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __123__MDSearchableIndexService_willModifySearchableItemsWithIdentifiers_protectionClass_forBundleID_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 fromClient:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v44 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = objc_autoreleasePoolPush();
  clientBundleID = self->_clientBundleID;
  if (v16)
  {
    if (clientBundleID && ![(NSString *)v16 isEqualToString:?])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = clientBundleID;
  }

  if (!self->_protectionClass)
  {

    v15 = 0;
  }

LABEL_8:
  v21 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v16;
    v40 = 2112;
    v41 = v15;
    v42 = 2048;
    v43 = [v14 count];
    _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "(%@) deleteSearchableItemsWithDomainIdentifiers, protectionClass:%@, domainIdentifier num:%ld", buf, 0x20u);
  }

  v22 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteSearchableItemsWithDomainIdentifiers:protectionClass:forBundleID:fromClient:options:completionHandler:];
  }

  v23 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v14 protectionClass:v15 bundleID:v16];
  if (v23)
  {
    if (v18)
    {
      v18[2](v18, v23);
LABEL_23:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      +[CSRecieverState sharedInstance];
      v32 = v14;
      v24 = v17;
      v25 = v19;
      v27 = v26 = a7;
      v28 = [v27 checkBundleIdentifier:v16];

      a7 = v26;
      v19 = v25;
      v17 = v24;
      v14 = v32;
      if (v28)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke;
        v35[3] = &unk_278937758;
        v36 = v32;
        v37 = v16;
        [SpotlightSender dispatchWithOptions:a7 block:v35];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:a7])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v30 = self->_indexer;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke_2;
        v33[3] = &unk_278935048;
        v34 = v18;
        [(MDIndexer *)v30 deleteSearchableItemsWithDomainIdentifiers:v14 protectionClass:v15 forBundleID:v16 fromClient:v17 options:a7 completionHandler:v33];
        v18 = v34;
        goto LABEL_23;
      }
    }

    if (v18)
    {
      v18[2](v18, 0);
      goto LABEL_23;
    }
  }

  objc_autoreleasePoolPop(v19);
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchLastClientStateWithProtectionClass:(id)a3 forBundleID:(id)a4 clientStateName:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v13)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [(MDSearchableIndexService *)self clientBundleID];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v12 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = [(MDSearchableIndexService *)self protectionClass];
    *buf = 138413314;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v22;
    v33 = 2048;
    v34 = a6;
    _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "(%@) fetchLastClientStateWithProtectionClass, clientStateName:%@, protectionClass:%@/%@, options:0x%lx", buf, 0x34u);
  }

  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v12 bundleID:v13];
  if (v18)
  {
    if (v15)
    {
      v15[2](v15, 0, v18);
LABEL_15:
    }
  }

  else
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:a6])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v20 = self->_indexer;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __122__MDSearchableIndexService_fetchLastClientStateWithProtectionClass_forBundleID_clientStateName_options_completionHandler___block_invoke;
        v23[3] = &unk_2789377A8;
        v24 = v15;
        [(MDIndexer *)v20 fetchLastClientStateWithProtectionClass:v12 forBundleID:v13 clientStateName:v14 options:a6 completionHandler:v23];
        v15 = v24;
        goto LABEL_15;
      }
    }

    if (v15)
    {
      v15[2](v15, 0, 0);
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v16);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __122__MDSearchableIndexService_fetchLastClientStateWithProtectionClass_forBundleID_clientStateName_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateCorrectionsWithFilePath:(id)a3 options:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = objc_autoreleasePoolPush();
  v9 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService updateCorrectionsWithFilePath:options:completionHandler:];
  }

  v10 = +[SPCorrectionHandler sharedHandler];
  [v10 updateWithFilePath:v6];

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)fetchAttributes:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 identifiers:(id)a6 userCtx:(id)a7 flags:(unsigned int)a8 qos:(unsigned int)a9 reply:(id)a10 completionHandler:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = a11;
  v23 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v25 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v24 protectionClass:v17 bundleID:v18];
  if (v25)
  {
    v26 = v25;
    v22[2](v22, v25);
  }

  else
  {
    indexer = self->_indexer;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __123__MDSearchableIndexService_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke;
    v30[3] = &unk_2789377D0;
    v31 = v21;
    v32 = v22;
    LODWORD(v28) = a9;
    [(MDIndexer *)indexer fetchAttributes:v16 protectionClass:v17 bundleID:v18 identifiers:v19 userCtx:v20 flags:a8 qos:v28 completionHandler:v30];

    v22 = v31;
  }

  objc_autoreleasePoolPop(v23);
}

void __123__MDSearchableIndexService_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CC3510] dictionary:*(a1 + 32) setPlistBytes:a2 forKey:"fetch-data-key" sizeKey:"fetch-data-size"];
  }

  (*(*(a1 + 40) + 16))();
}

void __135__MDSearchableIndexService_fetchCacheFileDescriptorsForProtectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CC3510] dictionary:*(a1 + 32) setXPCFdArray:a2 forKey:"file-descriptors"];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteSearchableItemsSinceDate:(id)a3 protectionClass:(id)a4 forBundleID:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v14)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [(MDSearchableIndexService *)self clientBundleID];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = v14;
    v31 = 2112;
    v32 = v12;
    v33 = 2048;
    v34 = a6;
    _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "(%@) deleteSearchableItemsSinceDate, startDate:%@, options:0x%lx", buf, 0x20u);
  }

  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v13 bundleID:v14];
  if (v18)
  {
    if (v15)
    {
      v15[2](v15, v18);
LABEL_18:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v19 = +[CSRecieverState sharedInstance];
      v20 = [v19 checkBundleIdentifier:v14];

      if (v20)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke;
        v26[3] = &unk_278937758;
        v27 = v12;
        v28 = v14;
        [SpotlightSender dispatchWithOptions:a6 block:v26];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:a6])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v22 = self->_indexer;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke_2;
        v24[3] = &unk_278935048;
        v25 = v15;
        [(MDIndexer *)v22 deleteSearchableItemsSinceDate:v12 protectionClass:v13 forBundleID:v14 options:a6 completionHandler:v24];
        v15 = v25;
        goto LABEL_18;
      }
    }

    if (v15)
    {
      v15[2](v15, 0);
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v16);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provideDataForBundle:(id)a3 identifier:(id)a4 type:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!-[MDSearchableIndexService searchInternal](self, "searchInternal") && (!-[MDSearchableIndexService allowMail](self, "allowMail") || ([v10 isEqualToString:@"com.apple.mobilemail"] & 1) == 0) && (!-[MDSearchableIndexService allowMessagesContent](self, "allowMessagesContent") || (objc_msgSend(v10, "isEqualToString:", @"com.apple.MobileSMS") & 1) == 0))
  {
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    v13[2](v13, 0, v16);

    goto LABEL_13;
  }

  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer provideDataForBundle:v10 identifier:v11 type:v12 completionHandler:v13];
LABEL_13:

    goto LABEL_14;
  }

  if (v13)
  {
    v13[2](v13, 0, 0);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)provideFileURLForBundle:(id)a3 identifier:(id)a4 type:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(MDSearchableIndexService *)self searchInternal])
  {
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    v13[2](v13, 0, v16);

    goto LABEL_9;
  }

  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer provideFileURLForBundle:v10 identifier:v11 type:v12 completionHandler:v13];
LABEL_9:

    goto LABEL_10;
  }

  if (v13)
  {
    v13[2](v13, 0, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)prepareIndexingWhileLocked:(id)a3 protectionClass:(id)a4 holdAssertionFor:(double)a5 completionHandler:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a6;
  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer prepareIndexingWhileLocked:v14 protectionClass:v10 holdAssertionFor:v11 completionHandler:a5];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_6;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    v11[2](v11, v13);
  }

LABEL_6:
}

- (void)finishIndexingWhileLocked:(id)a3 protectionClass:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer finishIndexingWhileLocked:v12 protectionClass:v8 completionHandler:v9];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    v9[2](v9, v11);
  }

LABEL_6:
}

- (void)_deleteAllSearchableItemsWithBundleID:(id)a3 protectionClass:(id)a4 shouldGC:(BOOL)a5 options:(int64_t)a6 deleteAllReason:(int64_t)a7 completionHandler:(id)a8
{
  v11 = a5;
  v62 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = objc_autoreleasePoolPush();
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [(MDSearchableIndexService *)self clientBundleID];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v15 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v18 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v41 = a6;
    v19 = "NO";
    if (v11)
    {
      v19 = "YES";
    }

    v36 = v19;
    v37 = qos_class_self();
    v20 = [(MDSearchableIndexService *)self clientConnection];
    v38 = a7;
    if (v20)
    {
      v34 = [(MDSearchableIndexService *)self clientConnection];
      name = xpc_connection_get_name(v34);
    }

    else
    {
      name = "";
    }

    v39 = v17;
    v22 = [(MDSearchableIndexService *)self clientConnection];
    v23 = v22;
    if (v22)
    {
      v17 = [(MDSearchableIndexService *)self clientConnection];
      LODWORD(v22) = xpc_connection_get_pid(v17);
    }

    *buf = 138413826;
    v49 = v14;
    v50 = 2112;
    v51 = v15;
    v52 = 2080;
    v53 = v36;
    v54 = 2048;
    v55 = v41;
    v56 = 2048;
    v57 = v37;
    v58 = 2080;
    v59 = name;
    v60 = 1024;
    v61 = v22;
    _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "(%@) deleteAllSearchableItemsWithBundleID, protectionClass:%@, shouldGC:%s, options:0x%lx, qos:0x%lx conn:%s(%d)", buf, 0x44u);
    if (v23)
    {
    }

    if (v20)
    {
    }

    a7 = v38;
    v17 = v39;
    a6 = v41;
  }

  v24 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:v14 protectionClass:v15];
  if (v24)
  {
    if (v16)
    {
      v16[2](v16, v24);
LABEL_31:
    }
  }

  else
  {
    v40 = v11;
    if (!self->_isPrivate)
    {
      v25 = +[CSRecieverState sharedInstance];
      v26 = [v25 checkBundleIdentifier:v14];

      if (v26)
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke;
        v46[3] = &unk_2789377F8;
        v47 = v14;
        [SpotlightSender dispatchWithOptions:a6 block:v46];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:a6])
    {
      indexer = self->_indexer;
      v28 = objc_opt_respondsToSelector();
      v29 = self->_indexer;
      if (v28)
      {
        v30 = [(MDSearchableIndexService *)self clientBundleID];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_2;
        v44[3] = &unk_278935048;
        v45 = v16;
        [(MDIndexer *)v29 deleteAllSearchableItemsWithBundleID:v14 fromClient:v30 protectionClass:v15 shouldGC:v40 deleteAllReason:a7 completionHandler:v44];

        v16 = v45;
        goto LABEL_31;
      }

      v31 = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v32 = self->_indexer;
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_3;
        v42[3] = &unk_278935048;
        v43 = v16;
        [(MDIndexer *)v32 deleteAllSearchableItemsWithProtectionClass:v15 forBundleID:v14 options:a6 deleteAllReason:a7 completionHandler:v42];
        v16 = v43;
        goto LABEL_31;
      }
    }

    if (v16)
    {
      v16[2](v16, 0);
      goto LABEL_31;
    }
  }

  objc_autoreleasePoolPop(v17);
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)a3 toState:(int64_t)a4 protectionClass:(id)a5 forBundleID:(id)a6 forUTIType:(id)a7 options:(int64_t)a8
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_autoreleasePoolPush();
  if (v16)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [(MDSearchableIndexService *)self clientBundleID];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v15 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v14 protectionClass:v15 bundleID:v16];
  if (!v19)
  {
    v32 = v18;
    v20 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if ([SpotlightSender jobForTest:a8])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v31 = v21;
      if ([SpotlightSender jobForDuet:a8])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v30 = v22;
      if ([SpotlightSender jobForSuggestions:a8])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if ([SpotlightSender jobForTextUnderstanding:a8, v23])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138414594;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      v42 = 2048;
      v43 = a4;
      v44 = 2048;
      v45 = a8;
      v46 = 2112;
      v47 = v31;
      v48 = 2112;
      v49 = v30;
      v50 = 2112;
      v51 = v29;
      v52 = 2112;
      v53 = v24;
      v54 = 2048;
      v55 = [v14 count];
      v56 = 2112;
      v57 = v14;
      _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "(%@) changeStateOfSearchableItemsWithUIDs (delete or purge), uti:%@, state:%ld, options:0x%lx, test/duet/suggestions/textunderstanding:%@/%@/%@/%@, identifiers/%ld:%@", buf, 0x66u);
    }

    if (!self->_isPrivate)
    {
      v25 = +[CSRecieverState sharedInstance];
      v26 = [v25 checkBundleIdentifier:v16];

      if (v26)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __120__MDSearchableIndexService_changeStateOfSearchableItemsWithUIDs_toState_protectionClass_forBundleID_forUTIType_options___block_invoke;
        v33[3] = &unk_278937820;
        v37 = a4;
        v34 = v14;
        v35 = v16;
        v36 = v17;
        [SpotlightSender dispatchWithOptions:a8 block:v33];
      }
    }

    v18 = v32;
    if ([(MDSearchableIndexService *)self _jobForIndex:a8])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        [(MDIndexer *)self->_indexer changeStateOfSearchableItemsWithUIDs:v14 toState:a4 protectionClass:v15 forBundleID:v16 forUTIType:v17 options:a8];
      }
    }
  }

  objc_autoreleasePoolPop(v18);
  v28 = *MEMORY[0x277D85DE8];
}

void *__120__MDSearchableIndexService_changeStateOfSearchableItemsWithUIDs_toState_protectionClass_forBundleID_forUTIType_options___block_invoke(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2 == 1)
  {
    return [SpotlightSender purgeSearchableItemsWithIdentifiers:result[4] bundleID:result[5] client:a2];
  }

  if (v2 == 2)
  {
    return [SpotlightSender deleteSearchableItemsWithIdentifiers:result[4] bundleID:result[5] contentType:result[6] client:a2];
  }

  return result;
}

- (void)userPerformedAction:(id)a3 withItem:(id)a4 protectionClass:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (!v10)
  {
    v10 = [(MDSearchableIndexService *)self protectionClass];
  }

  v12 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(MDSearchableIndexService *)self clientBundleID];
    *buf = 138413058;
    v23 = v19;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_debug_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEBUG, "(%@) userPerformedAction, action:%@, item:%@, protectionClass:%@", buf, 0x2Au);
  }

  if (v8 && v9)
  {
    v21 = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v14 = [(MDSearchableIndexService *)self _checkItems:v13 identifiers:0 protectionClass:v10 bundleID:0];

    if (!v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CC34F8]) initWithAction:v8 item:v9];
      [v15 setProtectionClass:v10];
      [(MDSearchableIndexService *)self _makeActivityQueueIfNecessary];
      v16 = [(MDSearchableIndexService *)self activityQueue];
      v20 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [v16 queueItems:v17];
    }
  }

  else
  {
    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [MDSearchableIndexService userPerformedAction:withItem:protectionClass:];
    }
  }

  objc_autoreleasePoolPop(v11);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchActivities:(id)a3 bundleID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 protectionClass];
        v15 = [v7 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v7 setObject:v15 forKeyedSubscript:v14];
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__MDSearchableIndexService__dispatchActivities_bundleID___block_invoke;
  v19[3] = &unk_278937870;
  v20 = v6;
  v21 = self;
  v16 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v19];

  v17 = *MEMORY[0x277D85DE8];
}

void __57__MDSearchableIndexService__dispatchActivities_bundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = "ies";
    v10 = *(a1 + 32);
    *buf = 134218754;
    if (v7 == 1)
    {
      v9 = "y";
    }

    v38 = v7;
    v39 = 2080;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v5;
    _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "Sending %lu activit%s to the receivers, bundleID:%@, protectionClass:%@", buf, 0x2Au);
  }

  if ((*(*(a1 + 40) + 19) & 1) == 0)
  {
    v11 = +[CSRecieverState sharedInstance];
    v12 = [v11 checkBundleIdentifier:*(a1 + 32)];

    if (v12)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __57__MDSearchableIndexService__dispatchActivities_bundleID___block_invoke_114;
      v32[3] = &unk_278937848;
      v33 = v6;
      v34 = *(a1 + 32);
      v35 = v5;
      [SpotlightSender dispatchWithOptions:0 block:v32];
    }
  }

  v13 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = "ies";
    v15 = *(a1 + 32);
    *buf = 134218754;
    if (v7 == 1)
    {
      v14 = "y";
    }

    v38 = v7;
    v39 = 2080;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v5;
    _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_INFO, "Sending %lu activit%s to the index, bundleID:%@, protectionClass:%@", buf, 0x2Au);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v29;
    *&v18 = 138412546;
    v27 = v18;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        v23 = [v22 action];
        v24 = [v22 searchableItem];
        if ([v24 noIndex] & 1) == 0 && (objc_msgSend(v23, "eligibility"))
        {
          [*(*(a1 + 40) + 40) userPerformedAction:v23 withItem:v24 protectionClass:v5 forBundleID:*(a1 + 32) personaID:0];
        }

        else
        {
          v25 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = v27;
            v38 = v23;
            v39 = 2112;
            v40 = v24;
            _os_log_debug_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEBUG, "Ignoring action:%@, item:%@", buf, 0x16u);
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchActivities:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MDSearchableIndexService *)self clientBundleID];
  if (self->_isInternal)
  {
    v29 = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v36;
LABEL_4:
      v11 = 0;
      v12 = v9;
      while (1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(*(&v35 + 1) + 8 * v11) item];
        v9 = [v13 bundleID];

        if ([v9 length])
        {
          if (![v5 isEqualToString:v9])
          {
            break;
          }
        }

        ++v11;
        v12 = v9;
        if (v8 == v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      if ([v6 count] == 1)
      {
        v14 = v29;
        v15 = v6;
        v16 = v9;
        goto LABEL_17;
      }

      v28 = v4;
      v17 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * i);
            v24 = [v23 item];
            v25 = [v24 bundleID];

            if ([v25 length])
            {
              v9 = v25;
            }

            else
            {
              v9 = v5;
            }

            v26 = [v17 objectForKeyedSubscript:v9];
            if (!v26)
            {
              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v17 setObject:v26 forKeyedSubscript:v9];
            }

            [v26 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v20);
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__MDSearchableIndexService__dispatchActivities___block_invoke;
      v30[3] = &unk_278937898;
      v30[4] = v29;
      [v17 enumerateKeysAndObjectsUsingBlock:v30];

      v4 = v28;
    }

    else
    {
      v9 = 0;
LABEL_16:

      v14 = v29;
      v15 = v6;
      v16 = v5;
LABEL_17:
      [(MDSearchableIndexService *)v14 _dispatchActivities:v15 bundleID:v16];
    }
  }

  else
  {
    [(MDSearchableIndexService *)self _dispatchActivities:v4 bundleID:v5];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithProtectionClass:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (!v6)
  {
    v6 = [(MDSearchableIndexService *)self protectionClass];
  }

  v9 = [(MDSearchableIndexService *)self clientBundleID];
  v10 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(MDSearchableIndexService *)self processDescription];
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEBUG, "(%@) checkInWithProtectionClass, protectionClass:%@, process:%@", &v16, 0x20u);
  }

  v11 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:0];
  if (v11)
  {
    if (v7)
    {
LABEL_16:
      v7[2](v7, 0, v11);
    }
  }

  else if (v9)
  {
    indexer = self->_indexer;
    if (v7 && !indexer)
    {
      v7[2](v7, 0, 0);
      indexer = self->_indexer;
    }

    [(MDIndexer *)indexer clientDidCheckin:v9 protectionClass:v6 service:self completionHandler:v7];
    v11 = 0;
  }

  else
  {
    v13 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService checkInWithProtectionClass:? completionHandler:?];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    if (v7)
    {
      goto LABEL_16;
    }
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)performIndexJob:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [(MDSearchableIndexService *)self clientConnection];
  v13 = [(MDSearchableIndexService *)self clientQueue];
  v14 = v13;
  if (v12 && v13)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "perform-job");
    v16 = [v8 xpc_dictionary];
    xpc_dictionary_set_value(v15, "j", v16);

    if (v9)
    {
      xpc_dictionary_set_string(v15, "pc", [v9 UTF8String]);
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __83__MDSearchableIndexService_performIndexJob_protectionClass_acknowledgementHandler___block_invoke;
    handler[3] = &unk_2789378C0;
    v18 = v10;
    xpc_connection_send_message_with_reply(v12, v15, v14, handler);

    goto LABEL_8;
  }

  if (v10)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSIndexErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, v15);
LABEL_8:
  }

  objc_autoreleasePoolPop(v11);
}

void __83__MDSearchableIndexService_performIndexJob_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (MEMORY[0x2383767F0]() == MEMORY[0x277D86468])
  {
    v3 = csindex_xpc_dictionary_decode_status_with_error();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)deleteAllUserActivities:(id)a3 fromClient:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (!v10)
  {
    v10 = [(MDSearchableIndexService *)self clientBundleID];
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteAllUserActivities:fromClient:options:completionHandler:];
  }

  v15 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:v10 protectionClass:0];
  if (v15)
  {
    if (v12)
    {
      v12[2](v12, v15);
LABEL_16:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:v10];

      if (v17)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke;
        v23[3] = &unk_2789377F8;
        v24 = v10;
        [SpotlightSender dispatchWithOptions:a5 block:v23];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:a5])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v19 = self->_indexer;
        v20 = [(MDSearchableIndexService *)self clientBundleID];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke_2;
        v21[3] = &unk_278935048;
        v22 = v12;
        [(MDIndexer *)v19 deleteAllUserActivities:v10 fromClient:v20 completionHandler:v21];

        v12 = v22;
        goto LABEL_16;
      }
    }

    if (v12)
    {
      v12[2](v12, 0);
      goto LABEL_16;
    }
  }

  objc_autoreleasePoolPop(v13);
}

uint64_t __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)a3 bundleID:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (!v11)
  {
    v11 = [(MDSearchableIndexService *)self clientBundleID];
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteUserActivitiesWithPersistentIdentifiers:bundleID:options:completionHandler:];
  }

  v15 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:v11 protectionClass:0];
  if (v15)
  {
    if (v12)
    {
      v12[2](v12, v15);
LABEL_15:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:v11];

      if (v17)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke;
        v21[3] = &unk_2789378E8;
        v22 = v10;
        v23 = v11;
        v24 = v12;
        [SpotlightSender dispatchWithOptions:a5 block:v21];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:a5])
    {
      v18 = [v10 data];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke_2;
      v19[3] = &unk_278937910;
      v20 = v12;
      [(MDSearchableIndexService *)self _processIndexDataForBundle:v11 protectionClass:0 personaID:0 options:a5 items:0 itemsText:0 itemsHTML:0 clientState:0 expectedClientState:0 clientStateName:0 deletes:v18 completionHandler:v19];

      v12 = v20;
      goto LABEL_15;
    }

    if (v12)
    {
      v12[2](v12, 0);
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v13);
}

void __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = MEMORY[0x2383760E0](a1[6]);
  [SpotlightSender deleteUserActivitiesWithPersistentIdentifiers:v3 bundleID:v4 client:a2 retainedData:v5];
}

uint64_t __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke_2(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)deleteActionsBeforeTime:(double)a3 options:(int64_t)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "deleteActionsBeforeTime:%lu options:0x%lx", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:a4])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v12 = self->_indexer;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __78__MDSearchableIndexService_deleteActionsBeforeTime_options_completionHandler___block_invoke;
        v15[3] = &unk_278935048;
        v16 = v8;
        [(MDIndexer *)v12 deleteActionsBeforeTime:v15 completionHandler:a3];
        v8 = v16;
LABEL_11:

        goto LABEL_12;
      }
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 0);
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    (*(v8 + 2))(v8, v13);

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __78__MDSearchableIndexService_deleteActionsBeforeTime_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteActionsWithIdentifiers:(id)a3 options:(int64_t)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v19 = [v8 count];
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "deleteActionsWithIdentifiers:%lu options:0x%lx", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:a4])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v13 = self->_indexer;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __83__MDSearchableIndexService_deleteActionsWithIdentifiers_options_completionHandler___block_invoke;
        v16[3] = &unk_278935048;
        v17 = v9;
        [(MDIndexer *)v13 deleteActionsWithIdentifiers:v8 completionHandler:v16];
        v9 = v17;
LABEL_11:

        goto LABEL_12;
      }
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0);
      goto LABEL_11;
    }
  }

  else if (v9)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    (*(v9 + 2))(v9, v14);

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v10);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __83__MDSearchableIndexService_deleteActionsWithIdentifiers_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_forceAppWithBundleID:(id)a3 toPerformJob:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MDSearchableIndexService *)self clientBundleID];
    v13 = 138412802;
    v14 = v12;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEBUG, "(%@) _forceAppWithBundleID, bundleID:%@, job:%@", &v13, 0x20u);
  }

  v9 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:v6];
  if (!v9)
  {
    v10 = [MEMORY[0x277CC3538] sharedManager];
    [v10 indexRequestsPerformJob:v7 forBundle:v6 completionHandler:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performDataMigrationWithTimeout:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(9, 0);
  v10 = v6;
  v8 = v6;
  v9 = v5;
  tracing_dispatch_async();
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_1(a1);
  }

  v4 = [*(a1 + 40) _checkItems:0 identifiers:0 protectionClass:0 bundleID:0];
  if (v4)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CC3538] sharedManager];
    v7 = [v6 allExtensionsWithBlock:&__block_literal_global_135];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"com.apple.corespotlight.dataMigration.start" object:*(a1 + 40) userInfo:0];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [objc_alloc(MEMORY[0x277CC3420]) initWithJobType:3];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2;
    v30[3] = &unk_278937938;
    v12 = v9;
    v31 = v12;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_142;
    v28[3] = &unk_278934050;
    v13 = v11;
    v29 = v13;
    v27 = v7;
    [v6 indexRequestsPerformJob:v10 extensions:v7 perExtensionCompletionHandler:v30 completionHandler:v28];
    v14 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_2();
    }

    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    [*(*(a1 + 40) + 40) lastUpdateTime];
    v16 = v15;
    v17 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_3();
    }

    v18 = v16;
    do
    {
      v19 = v18;
      sleep(2u);
      [*(*(a1 + 40) + 40) lastUpdateTime];
      v18 = v20;
    }

    while (v19 != v20);
    v21 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_4(v21, v18, v16);
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = *(a1 + 40);
    v32 = @"bundleIDs";
    v33[0] = v12;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v22 postNotificationName:@"com.apple.corespotlight.dataMigration.finish" object:v23 userInfo:v24];

    v25 = *(a1 + 48);
    if (v25)
    {
      (*(v25 + 16))(v25, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
  v26 = *MEMORY[0x277D85DE8];
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2_cold_1();
  }

  if (!v6)
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    [*(a1 + 32) addObject:v5];
    objc_sync_exit(v8);
  }
}

uint64_t __103__MDSearchableIndexService_transferDeleteJournalsForProtectionClass_toDirectory_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addInteraction:(id)a3 intentClassName:(id)a4 bundleID:(id)a5 protectionClass:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v45 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = objc_autoreleasePoolPush();
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [(MDSearchableIndexService *)self clientBundleID];
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v17 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v20 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v38 = v16;
    v39 = 2112;
    v40 = v15;
    v41 = 2112;
    v42 = v17;
    v43 = 2048;
    v44 = a7;
    _os_log_debug_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEBUG, "(%@) addInteraction:%@, protectionClass:%@, options:0x%lx", buf, 0x2Au);
  }

  v21 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v17 bundleID:v16];
  if (v21)
  {
    if (v18)
    {
      v18[2](v18, v21);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      +[CSRecieverState sharedInstance];
      v31 = v14;
      v22 = v19;
      v23 = v15;
      v25 = v24 = a7;
      v26 = [v25 checkBundleIdentifier:v16];

      v27 = v24;
      v15 = v23;
      v19 = v22;
      v14 = v31;
      if (v26)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __110__MDSearchableIndexService_addInteraction_intentClassName_bundleID_protectionClass_options_completionHandler___block_invoke;
        v32[3] = &unk_278937988;
        v33 = v31;
        v34 = v15;
        v35 = v16;
        v36 = v17;
        [SpotlightSender dispatchWithOptions:v27 block:v32];
      }
    }

    if (v14)
    {
      v28 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
      if (v28)
      {
        indexer = self->_indexer;
        if (objc_opt_respondsToSelector())
        {
          [(MDIndexer *)self->_indexer addInteraction:v28 bundleID:v16 protectionClass:v17];
        }
      }
    }

    if (v18)
    {
      v18[2](v18, 0);
    }
  }

  objc_autoreleasePoolPop(v19);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)deleteInteractionsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [(MDSearchableIndexService *)self clientBundleID];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v14 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = [v12 count];
    _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "(%@) deleteInteractionsWithIdentifiers, protectionClass:%@, identifiers num:%lu", buf, 0x20u);
  }

  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteInteractionsWithIdentifiers:v12 bundleID:a6 protectionClass:? options:? completionHandler:?];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v14 bundleID:v13];
  if (v19)
  {
    if (v15)
    {
      v15[2](v15, v19);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v20 = +[CSRecieverState sharedInstance];
      v21 = [v20 checkBundleIdentifier:v13];

      if (v21)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __113__MDSearchableIndexService_deleteInteractionsWithIdentifiers_bundleID_protectionClass_options_completionHandler___block_invoke;
        v23[3] = &unk_278937848;
        v24 = v12;
        v25 = v13;
        v26 = v14;
        [SpotlightSender dispatchWithOptions:a6 block:v23];
      }
    }

    if (v15)
    {
      v15[2](v15, 0);
    }
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [(MDSearchableIndexService *)self clientBundleID];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v14 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = [v12 count];
    _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "(%@) deleteInteractionsWithGroupIdentifiers, protectionClass:%@, identifiers num:%lu", buf, 0x20u);
  }

  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteInteractionsWithIdentifiers:v12 bundleID:a6 protectionClass:? options:? completionHandler:?];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v14 bundleID:v13];
  if (v19)
  {
    if (v15)
    {
      v15[2](v15, v19);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v20 = +[CSRecieverState sharedInstance];
      v21 = [v20 checkBundleIdentifier:v13];

      if (v21)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __118__MDSearchableIndexService_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass_options_completionHandler___block_invoke;
        v23[3] = &unk_278937848;
        v24 = v12;
        v25 = v13;
        v26 = v14;
        [SpotlightSender dispatchWithOptions:a6 block:v23];
      }
    }

    if (v15)
    {
      v15[2](v15, 0);
    }
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllInteractionsWithBundleID:(id)a3 protectionClass:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [(MDSearchableIndexService *)self clientBundleID];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "(%@) deleteAllInteractionsWithBundleID, protectionClass:%@, options:0x%lx", buf, 0x20u);
  }

  v15 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:v11 bundleID:v10];
  if (v15)
  {
    if (v12)
    {
      v12[2](v12, v15);
LABEL_19:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:v10];

      if (v17)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke;
        v24[3] = &unk_278937758;
        v25 = v10;
        v26 = v11;
        [SpotlightSender dispatchWithOptions:a5 block:v24];
      }
    }

    if ([v10 length])
    {
      if ([(MDSearchableIndexService *)self _jobForIndex:a5])
      {
        indexer = self->_indexer;
        if (objc_opt_respondsToSelector())
        {
          v19 = self->_indexer;
          v20 = [(MDSearchableIndexService *)self clientBundleID];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke_2;
          v22[3] = &unk_278935048;
          v23 = v12;
          [(MDIndexer *)v19 deleteAllInteractionsWithBundleID:v10 fromClient:v20 completionHandler:v22];

          v12 = v23;
          goto LABEL_19;
        }
      }
    }

    if (v12)
    {
      v12[2](v12, 0);
      goto LABEL_19;
    }
  }

  objc_autoreleasePoolPop(v13);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)donateRelevantActions:(id)a3 bundleID:(id)a4 options:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  if (!v11)
  {
    v11 = [(MDSearchableIndexService *)self clientBundleID];
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService donateRelevantActions:bundleID:options:completionHandler:];
  }

  v15 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:v11];
  if (v15)
  {
    if (v12)
    {
      v12[2](v12, v15);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:v11];

      if (v17)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __85__MDSearchableIndexService_donateRelevantActions_bundleID_options_completionHandler___block_invoke;
        v18[3] = &unk_278937758;
        v19 = v10;
        v20 = v11;
        [SpotlightSender dispatchWithOptions:a5 block:v18];
      }
    }

    if (v12)
    {
      v12[2](v12, 0);
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (BOOL)checkIn:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  if (v5)
  {
    v40 = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v52 = *v9;
    v53 = v10;
    v54 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService checkIn:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v49 = *v9;
    v50 = v13;
    v51 = *(v9 + 32);
    v14 = *v9;
    v15 = si_tracing_calc_next_spanid();
    v16 = *(v9 + 8);
    v17 = *(v9 + 24);
    if (v7)
    {
      if (!strcmp([v7 UTF8String], "NSFileProtectionComplete"))
      {
        v18 = "Class A index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v18 = "Class B index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v18 = "Class Cx index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v18 = "Class C index";
      }

      else
      {
        v18 = "Unknown index";
      }
    }

    else
    {
      v18 = "Nil index";
    }

    *v9 = v14;
    *(v9 + 8) = v15;
    *(v9 + 16) = v16;
    *(v9 + 24) = v17;
    *(v9 + 28) = 102;
    *(v9 + 32) = v18;
    si_tracing_log_span_begin();
    if (reply)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v19 = *(v9 + 16);
      v45 = *v9;
      v46 = v19;
      v41[2] = __36__MDSearchableIndexService_checkIn___block_invoke;
      v41[3] = &unk_2789379B0;
      v47 = *(v9 + 32);
      v42 = reply;
      v48 = uint64;
      v43 = v7;
      v44 = v5;
      v20 = v40;
      v21 = MEMORY[0x2383760E0](v41);
    }

    else
    {
      v21 = 0;
      v20 = v40;
    }

    if (v20->_isExtension)
    {
      v22 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(MDSearchableIndexService *)v20 processDescription];
        *buf = 138412290;
        v56 = v23;
        _os_log_impl(&dword_231A35000, v22, OS_LOG_TYPE_DEFAULT, "*warn* indexDelegate not supported with Extensions process:%@", buf, 0xCu);
      }

      if (v21)
      {
        v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
        (v21)[2](v21, 0, v24);
      }
    }

    else
    {
      [(MDSearchableIndexService *)v20 checkInWithProtectionClass:v7 completionHandler:v21];
    }

    v25 = *v9;
    v26 = *(v9 + 8);
    v27 = *(v9 + 16);
    v28 = *(v9 + 24);
    v29 = *(v9 + 28);
    v30 = *(v9 + 32);
    si_tracing_log_span_end();
    v31 = v50;
    *v9 = v49;
    *(v9 + 16) = v31;
    *(v9 + 32) = v51;
    v32 = *v9;
    v33 = *(v9 + 8);
    v34 = *(v9 + 16);
    v35 = *(v9 + 24);
    v36 = *(v9 + 28);
    si_tracing_log_span_end();
    v37 = v53;
    *v9 = v52;
    *(v9 + 16) = v37;
    *(v9 + 32) = v54;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

void __36__MDSearchableIndexService_checkIn___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v24 = *v6;
  v25 = *(v6 + 16);
  v26 = *(v6 + 32);
  v7 = *(a1 + 72);
  *v6 = *(a1 + 56);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 88);
  v21 = *(a1 + 56);
  v22 = *(a1 + 72);
  v23 = *(a1 + 88);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  v11 = *(v6 + 24);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for checkIn";
  si_tracing_log_span_begin();
  v12 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 96));
  v13 = *(a1 + 40);
  if (v13)
  {
    xpc_dictionary_set_string(*(a1 + 32), "pc", [v13 UTF8String]);
  }

  xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
  v14 = *v6;
  v15 = *(v6 + 8);
  v16 = *(v6 + 16);
  v17 = *(v6 + 24);
  v18 = *(v6 + 28);
  v19 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v24;
  *(v6 + 16) = v25;
  *(v6 + 32) = v26;
}

- (BOOL)processIndexData:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    value = xpc_dictionary_get_uint64(v4, "id");
    v9 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(MDSearchableIndexService *)self clientBundleID];
    }

    v91 = v11;

    v83 = [(MDSearchableIndexService *)self clientPersonaID];
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(MDSearchableIndexService *)self protectionClass];
    }

    v15 = v14;

    uint64 = xpc_dictionary_get_uint64(v4, "opt");
    v16 = [MEMORY[0x277CC3510] dataWrapperForKey:"items" sizeKey:"items-size" fromXPCDictionary:v4];
    v17 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v4];
    v90 = [MEMORY[0x277CC3510] dataWrapperForKey:"client-state-key" sizeKey:"client-state-size" fromXPCDictionary:v4];
    v84 = [MEMORY[0x277CC3510] dataWrapperForKey:"expected-client-state-key" sizeKey:"expected-client-state-size" fromXPCDictionary:v4];
    v89 = [MEMORY[0x277CC3510] copyNSStringForKey:"n" fromXPCDictionary:v4];
    if (v16)
    {
      v18 = objc_alloc(MEMORY[0x277CC33C8]);
      v19 = [v16 data];
      v94 = [v18 initWithData:v19];
    }

    else
    {
      v94 = 0;
    }

    connection = v5;
    v86 = v7;
    if (v17)
    {
      v20 = objc_alloc(MEMORY[0x277CC33C8]);
      v21 = [v17 data];
      v92 = [v20 initWithData:v21];
    }

    else
    {
      v92 = 0;
    }

    v88 = v17;
    v22 = v16;
    v93 = v15;
    v23 = (*MEMORY[0x277D286C8])();
    v24 = *(v23 + 16);
    v124 = *v23;
    v125 = v24;
    v126 = *(v23 + 32);
    v25 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v23 = v25;
    *(v23 + 8) = spanid;
    *(v23 + 16) = 0;
    *(v23 + 24) = value;
    *(v23 + 28) = 102;
    *(v23 + 32) = "[MDSearchableIndexService processIndexData:]";
    si_tracing_log_span_begin();
    v27 = *(v23 + 16);
    v121 = *v23;
    v122 = v27;
    v123 = *(v23 + 32);
    v28 = *v23;
    v29 = si_tracing_calc_next_spanid();
    v30 = *(v23 + 8);
    v31 = *(v23 + 24);
    if (v93)
    {
      if (!strcmp([v93 UTF8String], "NSFileProtectionComplete"))
      {
        v32 = "Class A index";
      }

      else if (!strcmp([v93 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v32 = "Class B index";
      }

      else if (!strcmp([v93 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v32 = "Class Cx index";
      }

      else if (!strcmp([v93 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v32 = "Class C index";
      }

      else
      {
        v32 = "Unknown index";
      }
    }

    else
    {
      v32 = "Nil index";
    }

    *v23 = v28;
    *(v23 + 8) = v29;
    *(v23 + 16) = v30;
    *(v23 + 24) = v31;
    *(v23 + 28) = 102;
    *(v23 + 32) = v32;
    si_tracing_log_span_begin();
    [v90 data];
    v34 = v33 = v92;
    v120 = 0;
    v8 = [(MDSearchableIndexService *)self _canProcessIndexDataForBundle:v91 itemsDecoder:v94 deletesDecoder:v92 clientState:v34 clientStateName:v89 outError:&v120];
    v81 = v120;

    v7 = v86;
    v35 = v22;
    if (v8)
    {
      v36 = v94;
      if (v94 && ([v94 obj], PlistObjectType = _MDPlistGetPlistObjectType(), v36 = v94, PlistObjectType == 240) && (objc_msgSend(v94, "obj"), Count = _MDPlistArrayGetCount(), v36 = v94, Count))
      {
        v79 = [MEMORY[0x277CC3510] dataWrapperForKey:"textdata" sizeKey:"text-data-size" fromXPCDictionary:v4];
        v39 = 1;
      }

      else
      {

        v39 = 0;
        v94 = 0;
        v35 = 0;
        v79 = 0;
      }

      v40 = v92;
      if (v92)
      {
        [v92 obj];
        v41 = _MDPlistGetPlistObjectType();
        v40 = v92;
        if (v41 == 240)
        {
          [v92 obj];
          v42 = _MDPlistArrayGetCount();
          v40 = v92;
          if (v42)
          {
            goto LABEL_57;
          }
        }
      }

      v88 = 0;
      v92 = 0;
      v80 = 0;
      if (v39)
      {
LABEL_57:
        if ((uint64 & 0x1024F) == 4 || self->_isPrivate || (+[CSRecieverState sharedInstance](CSRecieverState, "sharedInstance"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 checkBundleIdentifier:v91], v43, !v44))
        {
          v80 = 0;
        }

        else
        {
          if (v39)
          {
            v80 = [MEMORY[0x277CC3510] dataWrapperForKey:"htmldata" sizeKey:"html-data-size" fromXPCDictionary:v4];
            v45 = v94;
            if (v80)
            {
              v46 = objc_alloc(MEMORY[0x277CC33C8]);
              v47 = [v80 data];
              v48 = [v46 initWithData:v47];

              [v48 setBackingStore:v80];
            }

            else
            {
              v48 = 0;
            }

            if (v79)
            {
              v74 = objc_alloc(MEMORY[0x277CC33C8]);
              v75 = [v79 data];
              v73 = [v74 initWithData:v75];

              [v73 setBackingStore:v79];
            }

            else
            {
              v73 = 0;
            }
          }

          else
          {
            v80 = 0;
            v73 = 0;
            v48 = 0;
            v45 = v94;
          }

          [v45 setBackingStore:v35];
          [v92 setBackingStore:v88];
          [(MDSearchableIndexService *)self _dispatchToReceiversWithBundleID:v91 protectionClass:v93 options:uint64 items:v45 itemsText:v73 itemsHTML:v48 deletes:v92];
        }
      }

      if ([(MDSearchableIndexService *)self _jobForIndex:uint64])
      {
        v49 = *(v23 + 16);
        v117 = *v23;
        v118 = v49;
        v119 = *(v23 + 32);
        v115[0] = 0;
        v115[1] = v115;
        v115[2] = 0x3032000000;
        v115[3] = __Block_byref_object_copy__2;
        v115[4] = __Block_byref_object_dispose__2;
        v76 = v35;
        v50 = v35;
        v116 = v50;
        v113[0] = 0;
        v113[1] = v113;
        v113[2] = 0x3032000000;
        v113[3] = __Block_byref_object_copy__2;
        v113[4] = __Block_byref_object_dispose__2;
        v51 = v79;
        v114 = v51;
        v111[0] = 0;
        v111[1] = v111;
        v111[2] = 0x3032000000;
        v111[3] = __Block_byref_object_copy__2;
        v111[4] = __Block_byref_object_dispose__2;
        v52 = v80;
        v112 = v52;
        v109[0] = 0;
        v109[1] = v109;
        v109[2] = 0x3032000000;
        v109[3] = __Block_byref_object_copy__2;
        v109[4] = __Block_byref_object_dispose__2;
        v53 = v88;
        v110 = v53;
        v107[0] = 0;
        v107[1] = v107;
        v107[2] = 0x3032000000;
        v107[3] = __Block_byref_object_copy__2;
        v107[4] = __Block_byref_object_dispose__2;
        v54 = v90;
        v108 = v54;
        v78 = [v50 data];
        v77 = [v51 data];
        v55 = [v52 data];
        v56 = [v54 data];
        v57 = [v84 data];
        v58 = [v53 data];
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v103 = v117;
        v95[2] = __45__MDSearchableIndexService_processIndexData___block_invoke;
        v95[3] = &unk_2789379D8;
        v104 = v118;
        v105 = v119;
        v98 = v115;
        v99 = v113;
        v100 = v111;
        v101 = v109;
        v102 = v107;
        v96 = v86;
        v106 = value;
        v97 = connection;
        [(MDSearchableIndexService *)self _processIndexDataForBundle:v91 protectionClass:v93 personaID:v83 options:uint64 items:v78 itemsText:v77 itemsHTML:v55 clientState:v56 expectedClientState:v57 clientStateName:v89 deletes:v58 completionHandler:v95];

        _Block_object_dispose(v107, 8);
        _Block_object_dispose(v109, 8);

        _Block_object_dispose(v111, 8);
        _Block_object_dispose(v113, 8);

        _Block_object_dispose(v115, 8);
        v7 = v86;
        v35 = v76;
      }

      else
      {
        csindex_xpc_dictionary_encode_status_with_error();
        xpc_dictionary_set_uint64(v86, "id", value);
        xpc_connection_send_message(connection, v86);
      }

      v33 = v92;
    }

    v59 = *v23;
    v60 = *(v23 + 8);
    v61 = *(v23 + 16);
    v62 = *(v23 + 24);
    v63 = *(v23 + 28);
    v64 = *(v23 + 32);
    si_tracing_log_span_end();
    v65 = v122;
    *v23 = v121;
    *(v23 + 16) = v65;
    *(v23 + 32) = v123;
    v66 = *v23;
    v67 = *(v23 + 8);
    v68 = *(v23 + 16);
    v69 = *(v23 + 24);
    v70 = *(v23 + 28);
    si_tracing_log_span_end();
    v71 = v125;
    *v23 = v124;
    *(v23 + 16) = v71;
    *(v23 + 32) = v126;

    v5 = connection;
  }

  return v8;
}

void __45__MDSearchableIndexService_processIndexData___block_invoke(uint64_t a1, void *a2, char a3)
{
  v28 = a2;
  v5 = (*MEMORY[0x277D286C8])();
  v32 = *v5;
  v33 = *(v5 + 16);
  v34 = *(v5 + 32);
  v6 = *(a1 + 104);
  *v5 = *(a1 + 88);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a1 + 120);
  v29 = *(a1 + 88);
  v30 = *(a1 + 104);
  v31 = *(a1 + 120);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "completion handler for processIndexData";
  si_tracing_log_span_begin();
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;

  if ((a3 & 1) == 0)
  {
    v21 = *(a1 + 32);
    csindex_xpc_dictionary_encode_status_with_error();
    xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 128));
    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }

  v22 = *v5;
  v23 = *(v5 + 8);
  v24 = *(v5 + 16);
  v25 = *(v5 + 24);
  v26 = *(v5 + 28);
  v27 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v32;
  *(v5 + 16) = v33;
  *(v5 + 32) = v34;
}

- (BOOL)fetchBundleIDs:(id)a3
{
  v4 = a3;
  if (!self->_isInternal)
  {
    v6 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    goto LABEL_16;
  }

  indexer = self->_indexer;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService fetchBundleIDs:];
    }

LABEL_16:
    v10 = 0;
    goto LABEL_20;
  }

  v6 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v8 = reply;
  if (v6)
  {
    v9 = reply == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"ipc" fromXPCDictionary:v4];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(MDSearchableIndexService *)self protectionClass];
    }

    v14 = v13;

    v15 = self->_indexer;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__MDSearchableIndexService_fetchBundleIDs___block_invoke;
    v17[3] = &unk_278937A00;
    v18 = v8;
    v19 = v6;
    [(MDIndexer *)v15 fetchBundleIdsForProtectionClass:v14 completionHandler:v17];
  }

LABEL_20:
  return v10;
}

void __43__MDSearchableIndexService_fetchBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  if ([v7 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
    [v4 encodeObject:v7];
    v5 = [v4 data];
    v6 = v5;
    if (v4)
    {
      xpc_dictionary_set_data(*(a1 + 32), "data", [v5 bytes], objc_msgSend(v5, "length"));
    }
  }

  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
}

- (BOOL)prepareIndexingLocked:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  if (v5)
  {
    v36 = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v37 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v8 = xpc_dictionary_get_double(v4, "time");
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v10 = (*MEMORY[0x277D286C8])();
    v11 = *(v10 + 16);
    v48 = *v10;
    v49 = v11;
    v50 = *(v10 + 32);
    v12 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = 0;
    *(v10 + 24) = uint64;
    *(v10 + 28) = 102;
    *(v10 + 32) = "[MDSearchableIndexService prepareIndexingLocked:]";
    si_tracing_log_span_begin();
    v14 = *(v10 + 16);
    v45 = *v10;
    v46 = v14;
    v47 = *(v10 + 32);
    v15 = *v10;
    v16 = si_tracing_calc_next_spanid();
    v17 = *(v10 + 8);
    v18 = *(v10 + 24);
    if (v7)
    {
      if (!strcmp([v7 UTF8String], "NSFileProtectionComplete"))
      {
        v19 = "Class A index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v19 = "Class B index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v19 = "Class Cx index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v19 = "Class C index";
      }

      else
      {
        v19 = "Unknown index";
      }
    }

    else
    {
      v19 = "Nil index";
    }

    *v10 = v15;
    *(v10 + 8) = v16;
    *(v10 + 16) = v17;
    *(v10 + 24) = v18;
    *(v10 + 28) = 102;
    *(v10 + 32) = v19;
    si_tracing_log_span_begin();
    if (reply)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __50__MDSearchableIndexService_prepareIndexingLocked___block_invoke;
      v38[3] = &unk_278937A28;
      v20 = *(v10 + 16);
      v41 = *v10;
      v42 = v20;
      v43 = *(v10 + 32);
      v39 = reply;
      v44 = uint64;
      v40 = v5;
      v21 = MEMORY[0x2383760E0](v38);
    }

    else
    {
      v21 = 0;
    }

    [(MDSearchableIndexService *)v36 prepareIndexingWhileLocked:v37 protectionClass:v7 holdAssertionFor:v21 completionHandler:v8];

    v22 = *v10;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    v25 = *(v10 + 24);
    v26 = *(v10 + 28);
    v27 = *(v10 + 32);
    si_tracing_log_span_end();
    v28 = v46;
    *v10 = v45;
    *(v10 + 16) = v28;
    *(v10 + 32) = v47;
    v29 = *v10;
    v30 = *(v10 + 8);
    v31 = *(v10 + 16);
    v32 = *(v10 + 24);
    v33 = *(v10 + 28);
    si_tracing_log_span_end();
    v34 = v49;
    *v10 = v48;
    *(v10 + 16) = v34;
    *(v10 + 32) = v50;
  }

  return v5 != 0;
}

void __50__MDSearchableIndexService_prepareIndexingLocked___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for checkIn";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)finishIndexingLocked:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  if (v5)
  {
    v35 = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v36 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v47 = *v9;
    v48 = v10;
    v49 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService finishIndexingLocked:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v44 = *v9;
    v45 = v13;
    v46 = *(v9 + 32);
    v14 = *v9;
    v15 = si_tracing_calc_next_spanid();
    v16 = *(v9 + 8);
    v17 = *(v9 + 24);
    if (v7)
    {
      if (!strcmp([v7 UTF8String], "NSFileProtectionComplete"))
      {
        v18 = "Class A index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v18 = "Class B index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v18 = "Class Cx index";
      }

      else if (!strcmp([v7 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v18 = "Class C index";
      }

      else
      {
        v18 = "Unknown index";
      }
    }

    else
    {
      v18 = "Nil index";
    }

    *v9 = v14;
    *(v9 + 8) = v15;
    *(v9 + 16) = v16;
    *(v9 + 24) = v17;
    *(v9 + 28) = 102;
    *(v9 + 32) = v18;
    si_tracing_log_span_begin();
    if (reply)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __49__MDSearchableIndexService_finishIndexingLocked___block_invoke;
      v37[3] = &unk_278937A28;
      v19 = *(v9 + 16);
      v40 = *v9;
      v41 = v19;
      v42 = *(v9 + 32);
      v38 = reply;
      v43 = uint64;
      v39 = v5;
      v20 = MEMORY[0x2383760E0](v37);
    }

    else
    {
      v20 = 0;
    }

    [(MDSearchableIndexService *)v35 finishIndexingWhileLocked:v36 protectionClass:v7 completionHandler:v20];

    v21 = *v9;
    v22 = *(v9 + 8);
    v23 = *(v9 + 16);
    v24 = *(v9 + 24);
    v25 = *(v9 + 28);
    v26 = *(v9 + 32);
    si_tracing_log_span_end();
    v27 = v45;
    *v9 = v44;
    *(v9 + 16) = v27;
    *(v9 + 32) = v46;
    v28 = *v9;
    v29 = *(v9 + 8);
    v30 = *(v9 + 16);
    v31 = *(v9 + 24);
    v32 = *(v9 + 28);
    si_tracing_log_span_end();
    v33 = v48;
    *v9 = v47;
    *(v9 + 16) = v33;
    *(v9 + 32) = v49;
  }

  return v5 != 0;
}

void __49__MDSearchableIndexService_finishIndexingLocked___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for checkIn";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (void)indexSearchableItems:(id)a3 deleteSearchableItemsWithIdentifiers:(id)a4 clientState:(id)a5 clientStateName:(id)a6 protectionClass:(id)a7 forBundleID:(id)a8 options:(int64_t)a9 completionHandler:(id)a10
{
  v10 = a10;
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:clientStateName:protectionClass:forBundleID:options:completionHandler:];
  }

  if (v10)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v10[2](v10, v12);
  }
}

- (void)indexFromBundle:(id)a3 protectionClass:(id)a4 options:(int64_t)a5 items:(id)a6 itemsText:(id)a7 itemsHTML:(id)a8 clientState:(id)a9 expectedClientState:(id)a10 clientStateName:(id)a11 deletes:(id)a12 userActivities:(BOOL)a13 completionHandler:(id)a14
{
  v14 = a14;
  v15 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService indexFromBundle:protectionClass:options:items:itemsText:itemsHTML:clientState:expectedClientState:clientStateName:deletes:userActivities:completionHandler:];
  }

  if (v14)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    v14[2](v14, v16);
  }
}

- (BOOL)willModify:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v47 = self;
    v43 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v48 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v45 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v4];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v44 = v12;
    v14 = [v12 data];
    v15 = [v13 initWithData:v14];

    v42 = v15;
    v46 = [v15 decode];
    v16 = (*MEMORY[0x277D286C8])();
    v17 = *(v16 + 16);
    v60 = *v16;
    v61 = v17;
    v62 = *(v16 + 32);
    v18 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v16 = v18;
    *(v16 + 8) = spanid;
    *(v16 + 16) = 0;
    *(v16 + 24) = uint64;
    *(v16 + 28) = 102;
    *(v16 + 32) = "[MDSearchableIndexService willModify:]";
    si_tracing_log_span_begin();
    v20 = *(v16 + 16);
    v57 = *v16;
    v58 = v20;
    v59 = *(v16 + 32);
    v21 = *v16;
    v22 = si_tracing_calc_next_spanid();
    v23 = *(v16 + 8);
    v24 = *(v16 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v25 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v25 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v25 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v25 = "Class C index";
      }

      else
      {
        v25 = "Unknown index";
      }
    }

    else
    {
      v25 = "Nil index";
    }

    *v16 = v21;
    *(v16 + 8) = v22;
    *(v16 + 16) = v23;
    *(v16 + 24) = v24;
    *(v16 + 28) = 102;
    *(v16 + 32) = v25;
    si_tracing_log_span_begin();
    v26 = *(v16 + 16);
    v53 = *v16;
    v54 = v26;
    v55 = *(v16 + 32);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __39__MDSearchableIndexService_willModify___block_invoke;
    v49[3] = &unk_278937A50;
    v27 = v44;
    v50 = v27;
    v51 = v7;
    v56 = uint64;
    v52 = v5;
    [(MDSearchableIndexService *)v47 willModifySearchableItemsWithIdentifiers:v46 protectionClass:v11 forBundleID:v48 options:v45 completionHandler:v49];

    v28 = *v16;
    v29 = *(v16 + 8);
    v30 = *(v16 + 16);
    v31 = *(v16 + 24);
    v32 = *(v16 + 28);
    v33 = *(v16 + 32);
    si_tracing_log_span_end();
    v34 = v58;
    *v16 = v57;
    *(v16 + 16) = v34;
    *(v16 + 32) = v59;
    v35 = *v16;
    v36 = *(v16 + 8);
    v37 = *(v16 + 16);
    v38 = *(v16 + 24);
    v39 = *(v16 + 28);
    si_tracing_log_span_end();
    v40 = v61;
    *v16 = v60;
    *(v16 + 16) = v40;
    *(v16 + 32) = v62;

    v9 = v43;
  }

  return v9;
}

void __39__MDSearchableIndexService_willModify___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v22 = *v3;
  v23 = *(v3 + 16);
  v24 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for willModify";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  v10 = objc_opt_self();
  v11 = *(a1 + 40);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 40), "id", *(a1 + 96));
  xpc_connection_send_message(*(a1 + 48), *(a1 + 40));
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 28);
  v17 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v22;
  *(v3 + 16) = v23;
  *(v3 + 32) = v24;
}

- (BOOL)deleteDomains:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v47 = self;
    v44 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v48 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v46 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v4];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v45 = v12;
    v14 = [v12 data];
    v15 = [v13 initWithData:v14];

    v43 = v15;
    v49 = [v15 decode];
    v16 = (*MEMORY[0x277D286C8])();
    v17 = *(v16 + 16);
    v64 = *v16;
    v65 = v17;
    v66 = *(v16 + 32);
    v18 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v16 = v18;
    *(v16 + 8) = spanid;
    *(v16 + 16) = 0;
    *(v16 + 24) = uint64;
    *(v16 + 28) = 102;
    *(v16 + 32) = "[MDSearchableIndexService deleteDomains:]";
    si_tracing_log_span_begin();
    v20 = *(v16 + 16);
    v61 = *v16;
    v62 = v20;
    v63 = *(v16 + 32);
    v21 = *v16;
    v22 = si_tracing_calc_next_spanid();
    v23 = *(v16 + 8);
    v24 = *(v16 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v25 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v25 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v25 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v25 = "Class C index";
      }

      else
      {
        v25 = "Unknown index";
      }
    }

    else
    {
      v25 = "Nil index";
    }

    *v16 = v21;
    *(v16 + 8) = v22;
    *(v16 + 16) = v23;
    *(v16 + 24) = v24;
    *(v16 + 28) = 102;
    *(v16 + 32) = v25;
    si_tracing_log_span_begin();
    v26 = *(v16 + 16);
    v58 = *v16;
    v59 = v26;
    v60 = *(v16 + 32);
    v27 = [(MDSearchableIndexService *)v47 clientBundleID];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v54 = v58;
    v55 = v59;
    v50[2] = __42__MDSearchableIndexService_deleteDomains___block_invoke;
    v50[3] = &unk_278937A50;
    v56 = v60;
    v28 = v45;
    v51 = v28;
    v52 = v7;
    v57 = uint64;
    v53 = v5;
    [(MDSearchableIndexService *)v47 deleteSearchableItemsWithDomainIdentifiers:v49 protectionClass:v11 forBundleID:v48 fromClient:v27 options:v46 completionHandler:v50];

    v29 = *v16;
    v30 = *(v16 + 8);
    v31 = *(v16 + 16);
    v32 = *(v16 + 24);
    v33 = *(v16 + 28);
    v34 = *(v16 + 32);
    si_tracing_log_span_end();
    v35 = v62;
    *v16 = v61;
    *(v16 + 16) = v35;
    *(v16 + 32) = v63;
    v36 = *v16;
    v37 = *(v16 + 8);
    v38 = *(v16 + 16);
    v39 = *(v16 + 24);
    v40 = *(v16 + 28);
    si_tracing_log_span_end();
    v41 = v65;
    *v16 = v64;
    *(v16 + 16) = v41;
    *(v16 + 32) = v66;

    v9 = v44;
  }

  return v9;
}

void __42__MDSearchableIndexService_deleteDomains___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v22 = *v3;
  v23 = *(v3 + 16);
  v24 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteDomains";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  v10 = objc_opt_self();
  v11 = *(a1 + 40);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 40), "id", *(a1 + 96));
  xpc_connection_send_message(*(a1 + 48), *(a1 + 40));
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 28);
  v17 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v22;
  *(v3 + 16) = v23;
  *(v3 + 32) = v24;
}

- (BOOL)deleteBundle:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v40 = self;
    v37 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v41 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v39 = xpc_dictionary_get_uint64(v4, "opt");
    int64 = xpc_dictionary_get_int64(v4, "dar");
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v52 = *v12;
    v53 = v13;
    v54 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService deleteBundle:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v49 = *v12;
    v50 = v16;
    v51 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v45 = *v12;
    v46 = v22;
    v47 = *(v12 + 32);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __41__MDSearchableIndexService_deleteBundle___block_invoke;
    v42[3] = &unk_278937A28;
    v43 = v7;
    v48 = uint64;
    v44 = v5;
    [(MDSearchableIndexService *)v40 _deleteAllSearchableItemsWithBundleID:v41 protectionClass:v11 shouldGC:1 options:v39 deleteAllReason:int64 completionHandler:v42];

    v23 = *v12;
    v24 = *(v12 + 8);
    v25 = *(v12 + 16);
    v26 = *(v12 + 24);
    v27 = *(v12 + 28);
    v28 = *(v12 + 32);
    si_tracing_log_span_end();
    v29 = v50;
    *v12 = v49;
    *(v12 + 16) = v29;
    *(v12 + 32) = v51;
    v30 = *v12;
    v31 = *(v12 + 8);
    v32 = *(v12 + 16);
    v33 = *(v12 + 24);
    v34 = *(v12 + 28);
    si_tracing_log_span_end();
    v35 = v53;
    *v12 = v52;
    *(v12 + 16) = v35;
    *(v12 + 32) = v54;

    v9 = v37;
  }

  return v9;
}

void __41__MDSearchableIndexService_deleteBundle___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteBundle";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)deleteSinceDate:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v41 = self;
    v39 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v42 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v40 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = xpc_dictionary_get_double(v4, "time");
    v13 = (*MEMORY[0x277D286C8])();
    v14 = *(v13 + 16);
    v56 = *v13;
    v57 = v14;
    v58 = *(v13 + 32);
    v15 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v13 = v15;
    *(v13 + 8) = spanid;
    *(v13 + 16) = 0;
    *(v13 + 24) = uint64;
    *(v13 + 28) = 102;
    *(v13 + 32) = "[MDSearchableIndexService deleteSinceDate:]";
    si_tracing_log_span_begin();
    v17 = *(v13 + 16);
    v53 = *v13;
    v54 = v17;
    v55 = *(v13 + 32);
    v18 = *v13;
    v19 = si_tracing_calc_next_spanid();
    v20 = *(v13 + 8);
    v21 = *(v13 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v22 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v22 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v22 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v22 = "Class C index";
      }

      else
      {
        v22 = "Unknown index";
      }
    }

    else
    {
      v22 = "Nil index";
    }

    *v13 = v18;
    *(v13 + 8) = v19;
    *(v13 + 16) = v20;
    *(v13 + 24) = v21;
    *(v13 + 28) = 102;
    *(v13 + 32) = v22;
    si_tracing_log_span_begin();
    v23 = *(v13 + 16);
    v50 = *v13;
    v51 = v23;
    v52 = *(v13 + 32);
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v12];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__MDSearchableIndexService_deleteSinceDate___block_invoke;
    v43[3] = &unk_278937A28;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    v44 = v7;
    v49 = uint64;
    v45 = v5;
    [(MDSearchableIndexService *)v41 deleteSearchableItemsSinceDate:v24 protectionClass:v11 forBundleID:v42 options:v40 completionHandler:v43];

    v25 = *v13;
    v26 = *(v13 + 8);
    v27 = *(v13 + 16);
    v28 = *(v13 + 24);
    v29 = *(v13 + 28);
    v30 = *(v13 + 32);
    si_tracing_log_span_end();
    v31 = v54;
    *v13 = v53;
    *(v13 + 16) = v31;
    *(v13 + 32) = v55;
    v32 = *v13;
    v33 = *(v13 + 8);
    v34 = *(v13 + 16);
    v35 = *(v13 + 24);
    v36 = *(v13 + 28);
    si_tracing_log_span_end();
    v37 = v57;
    *v13 = v56;
    *(v13 + 16) = v37;
    *(v13 + 32) = v58;

    v9 = v39;
  }

  return v9;
}

void __44__MDSearchableIndexService_deleteSinceDate___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteSinceDate";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (void)_runLibraryDeletedCommand:(id)a3
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v7 = [[v3 alloc] initWithMachServiceName:@"com.apple.photos.service" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846DBD48];
  [v7 setRemoteObjectInterface:v5];

  [v7 resume];
  v6 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  [v6 photoLibraryDeletedAtURL:v4 reply:&__block_literal_global_214];
}

void __54__MDSearchableIndexService__runLibraryDeletedCommand___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "Photoslibrary delete connection error:%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __54__MDSearchableIndexService__runLibraryDeletedCommand___block_invoke_212(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = logForCSLogCategoryIndex();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Photoslibrary delete service error:%@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "Photoslibrary delete";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)photosLibraryDeleted:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"path" fromXPCDictionary:v4];
    v12 = (*MEMORY[0x277D286C8])();
    v23 = *v12;
    v24 = *(v12 + 16);
    v25 = *(v12 + 32);
    v13 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v13;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService photosLibraryDeleted:]";
    si_tracing_log_span_begin();
    if ([(MDSearchableIndexService *)self searchInternal]&& [(MDSearchableIndexService *)self allowPhotosLibraryDeletion])
    {
      v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:1];
      [(MDSearchableIndexService *)self _runLibraryDeletedCommand:v15];
    }

    csindex_xpc_dictionary_encode_status_with_error();
    xpc_dictionary_set_uint64(v7, "id", uint64);
    xpc_connection_send_message(v5, v7);
    v16 = *v12;
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    v19 = *(v12 + 24);
    v20 = *(v12 + 28);
    v21 = *(v12 + 32);
    si_tracing_log_span_end();
    *v12 = v23;
    *(v12 + 16) = v24;
    *(v12 + 32) = v25;
  }

  return v9;
}

- (BOOL)openJournalFile:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    if ([(MDSearchableIndexService *)self allowOpenJournalFile])
    {
      uint64 = xpc_dictionary_get_uint64(v4, "id");
      v10 = [MEMORY[0x277CC3510] copyNSStringForKey:"journal-name" fromXPCDictionary:v4];
      v11 = v10;
      if (v10 && [v10 length])
      {
        v12 = open([v11 UTF8String], 0);
        if (v12 < 0)
        {
          v15 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [MDSearchableIndexService openJournalFile:];
          }
        }

        else
        {
          v13 = v12;
          xpc_dictionary_set_fd(v7, "journal-fd", v12);
          close(v13);
        }

        xpc_dictionary_set_uint64(v7, "id", uint64);
        xpc_connection_send_message(v5, v7);
        v8 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "*warn* Connection not entitled to open journal file", v16, 2u);
      }
    }

    v8 = 0;
LABEL_11:
  }

  return v8;
}

- (BOOL)issueCommand:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  if (v5)
  {
    v29 = self;
    v30 = reply;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"request" fromXPCDictionary:v4];
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v55 = *v9;
    v56 = v10;
    v57 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService issueCommand:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v52 = *v9;
    v53 = v13;
    v54 = *(v9 + 32);
    v14 = v8 != 0;
    if (v8)
    {
      if (([v8 isEqualToString:@"diagnosemd"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"diagnosemd_q"))
      {
        v15 = [v8 isEqualToString:@"diagnosemd_q"];
        v16 = xpc_dictionary_dup_fd(v4, "fd");
        string = xpc_dictionary_get_string(v4, "b");
        if (string)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        }

        else
        {
          v18 = 0;
        }

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __41__MDSearchableIndexService_issueCommand___block_invoke;
        v45[3] = &unk_278937A78;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        v46 = v30;
        v51 = uint64;
        v47 = v5;
        [(MDSearchableIndexService *)v29 _issueDiagnose:v16 bundleID:v18 logQuery:v15 completionHandler:v45];
      }

      else
      {
        v19 = xpc_dictionary_dup_fd(v4, "fd");
        __buf = 0;
        if ((v19 & 0x80000000) != 0)
        {
          v20 = 0;
        }

        else
        {
          arc4random_buf(&__buf, 8uLL);
          change_fdguard_np();
          v20 = __buf;
        }

        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2020000000;
        v43 = 0;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v37 = v52;
        v38 = v53;
        v31[2] = __41__MDSearchableIndexService_issueCommand___block_invoke_2;
        v31[3] = &unk_278937AA0;
        v41 = v19;
        v35 = v42;
        v36 = v20;
        v39 = v54;
        v32 = v30;
        v40 = uint64;
        v33 = v5;
        v34 = v8;
        [(MDSearchableIndexService *)v29 _issueCommand:v34 outFileDescriptor:v19 searchContext:0 completionHandler:v31];

        _Block_object_dispose(v42, 8);
      }
    }

    v21 = *v9;
    v22 = *(v9 + 8);
    v23 = *(v9 + 16);
    v24 = *(v9 + 24);
    v25 = *(v9 + 28);
    v26 = *(v9 + 32);
    si_tracing_log_span_end();
    v27 = v56;
    *v9 = v55;
    *(v9 + 16) = v27;
    *(v9 + 32) = v57;

    reply = v30;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __41__MDSearchableIndexService_issueCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v22 = *v6;
  v23 = *(v6 + 16);
  v24 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v19 = *(a1 + 48);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  v11 = *(v6 + 24);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for issueDiagnose";
  si_tracing_log_span_begin();
  if (*(a1 + 32))
  {
    csindex_xpc_dictionary_encode_status_with_error();
    if (v18)
    {
      xpc_dictionary_set_data(*(a1 + 32), "data", [v18 bytes], objc_msgSend(v18, "length"));
    }

    xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }

  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = *(v6 + 28);
  v17 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v22;
  *(v6 + 16) = v23;
  *(v6 + 32) = v24;
}

void __41__MDSearchableIndexService_issueCommand___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 24))
  {
    v8 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __41__MDSearchableIndexService_issueCommand___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    *(v7 + 24) = 1;
    if ((*(a1 + 120) & 0x80000000) == 0)
    {
      guarded_close_np();
    }

    v9 = (*MEMORY[0x277D286C8])();
    v24 = *v9;
    v25 = *(v9 + 16);
    v26 = *(v9 + 32);
    v10 = *(a1 + 88);
    *v9 = *(a1 + 72);
    *(v9 + 16) = v10;
    *(v9 + 32) = *(a1 + 104);
    v21 = *(a1 + 72);
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v11 = *v9;
    spanid = si_tracing_calc_next_spanid();
    v13 = *(v9 + 8);
    v14 = *(v9 + 24);
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = v13;
    *(v9 + 28) = 102;
    *(v9 + 32) = "completion handler for issueCommand";
    si_tracing_log_span_begin();
    if (*(a1 + 32))
    {
      csindex_xpc_dictionary_encode_status_with_error();
      if (v5)
      {
        xpc_dictionary_set_data(*(a1 + 32), "data", [v5 bytes], objc_msgSend(v5, "length"));
      }

      xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 112));
      xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
    }

    v15 = *v9;
    v16 = *(v9 + 8);
    v17 = *(v9 + 16);
    v18 = *(v9 + 24);
    v19 = *(v9 + 28);
    v20 = *(v9 + 32);
    si_tracing_log_span_end();
    *v9 = v24;
    *(v9 + 16) = v25;
    *(v9 + 32) = v26;
  }
}

- (BOOL)fetchClientState:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v39 = self;
    v37 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v41 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v38 = xpc_dictionary_get_uint64(v4, "opt");
    v40 = [MEMORY[0x277CC3510] copyNSStringForKey:"client-state-name" fromXPCDictionary:v4];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v52 = *v12;
    v53 = v13;
    v54 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService fetchClientState:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v49 = *v12;
    v50 = v16;
    v51 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v45 = *v12;
    v46 = v22;
    v47 = *(v12 + 32);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __45__MDSearchableIndexService_fetchClientState___block_invoke;
    v42[3] = &unk_278937A78;
    v43 = v7;
    v48 = uint64;
    v44 = v5;
    [(MDSearchableIndexService *)v39 fetchLastClientStateWithProtectionClass:v11 forBundleID:v41 clientStateName:v40 options:v38 completionHandler:v42];

    v23 = *v12;
    v24 = *(v12 + 8);
    v25 = *(v12 + 16);
    v26 = *(v12 + 24);
    v27 = *(v12 + 28);
    v28 = *(v12 + 32);
    si_tracing_log_span_end();
    v29 = v50;
    *v12 = v49;
    *(v12 + 16) = v29;
    *(v12 + 32) = v51;
    v30 = *v12;
    v31 = *(v12 + 8);
    v32 = *(v12 + 16);
    v33 = *(v12 + 24);
    v34 = *(v12 + 28);
    si_tracing_log_span_end();
    v35 = v53;
    *v12 = v52;
    *(v12 + 16) = v35;
    *(v12 + 32) = v54;

    v9 = v37;
  }

  return v9;
}

void __45__MDSearchableIndexService_fetchClientState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v27 = *v6;
  v28 = *(v6 + 16);
  v29 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v24 = *(a1 + 48);
  v25 = *(a1 + 64);
  v26 = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  v11 = *(v6 + 24);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for fetchClientState";
  si_tracing_log_span_begin();
  v12 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  if (!v5)
  {
    v13 = *(a1 + 32);
    v14 = [v23 bytes];
    v15 = [v23 length];
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = "";
    }

    xpc_dictionary_set_data(v13, "client-state-key", v16, v15);
  }

  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v17 = *v6;
  v18 = *(v6 + 8);
  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  v21 = *(v6 + 28);
  v22 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v27;
  *(v6 + 16) = v28;
  *(v6 + 32) = v29;
}

- (BOOL)fetchAttributes:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v9 = MEMORY[0x277CC3510];
    v10 = xpc_dictionary_get_value(v4, "identifiers");
    v11 = [v9 copyNSStringArrayFromXPCArray:v10];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v27 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:v4];
      v12 = v27;
      if (!v27)
      {
        goto LABEL_17;
      }

      if (!self->_isInternal)
      {
        v14 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
        }

        v29 = 0;
        v8 = 0;
        goto LABEL_29;
      }

      v28 = [v27 data];
      if (!v28)
      {
LABEL_17:
        v29 = 0;
        v8 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v11 = v28;
    }

    v54 = v11;
    v55 = self;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v14 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v53 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v15 = MEMORY[0x277CC3510];
    v16 = xpc_dictionary_get_value(v4, "fa");
    v52 = [v15 copyNSStringArrayFromXPCArray:v16];

    v51 = xpc_dictionary_get_BOOL(v4, "fpa");
    int64 = xpc_dictionary_get_int64(v4, "qos");
    v17 = (*MEMORY[0x277D286C8])();
    v18 = *(v17 + 16);
    v70 = *v17;
    v71 = v18;
    v72 = *(v17 + 32);
    v19 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v17 = v19;
    *(v17 + 8) = spanid;
    *(v17 + 16) = 0;
    *(v17 + 24) = uint64;
    *(v17 + 28) = 102;
    *(v17 + 32) = "[MDSearchableIndexService fetchAttributes:]";
    si_tracing_log_span_begin();
    v49 = uint64;
    v21 = *(v17 + 16);
    v67 = *v17;
    v68 = v21;
    v69 = *(v17 + 32);
    v22 = *v17;
    v23 = si_tracing_calc_next_spanid();
    v24 = *(v17 + 8);
    v25 = *(v17 + 24);
    if (v14)
    {
      if (!strcmp([v14 UTF8String], "NSFileProtectionComplete"))
      {
        v26 = "Class A index";
      }

      else if (!strcmp([v14 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v26 = "Class B index";
      }

      else if (!strcmp([v14 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v26 = "Class Cx index";
      }

      else if (!strcmp([v14 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v26 = "Class C index";
      }

      else
      {
        v26 = "Unknown index";
      }
    }

    else
    {
      v26 = "Nil index";
    }

    *v17 = v22;
    *(v17 + 8) = v23;
    *(v17 + 16) = v24;
    *(v17 + 24) = v25;
    *(v17 + 28) = 102;
    *(v17 + 32) = v26;
    si_tracing_log_span_begin();
    v30 = *(v17 + 16);
    v64 = *v17;
    v65 = v30;
    v66 = *(v17 + 32);
    if (v55->_entitledAttributes)
    {
      v31 = *MEMORY[0x277CBECE8];
      v32 = SIUserCtxCreateWithLanguages();
      if (v32)
      {
        entitledAttributes = v55->_entitledAttributes;
        SIUserCtxSetEntitlements();
      }
    }

    else
    {
      v32 = 0;
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v60 = v64;
    v61 = v65;
    v56[2] = __44__MDSearchableIndexService_fetchAttributes___block_invoke;
    v56[3] = &unk_278937A50;
    v62 = v66;
    v57 = v7;
    v63 = v49;
    v58 = v5;
    v12 = v12;
    v59 = v12;
    LODWORD(v48) = int64;
    v29 = v54;
    [(MDSearchableIndexService *)v55 fetchAttributes:v52 protectionClass:v14 bundleID:v53 identifiers:v54 userCtx:v32 flags:v51 qos:v48 reply:v57 completionHandler:v56];

    v34 = *v17;
    v35 = *(v17 + 8);
    v36 = *(v17 + 16);
    v37 = *(v17 + 24);
    v38 = *(v17 + 28);
    v39 = *(v17 + 32);
    si_tracing_log_span_end();
    v40 = v68;
    *v17 = v67;
    *(v17 + 16) = v40;
    *(v17 + 32) = v69;
    v41 = *v17;
    v42 = *(v17 + 8);
    v43 = *(v17 + 16);
    v44 = *(v17 + 24);
    v45 = *(v17 + 28);
    si_tracing_log_span_end();
    v46 = v71;
    *v17 = v70;
    *(v17 + 16) = v46;
    *(v17 + 32) = v72;

    v8 = 1;
LABEL_29:

    goto LABEL_30;
  }

LABEL_31:

  return v8;
}

void __44__MDSearchableIndexService_fetchAttributes___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v22 = *v3;
  v23 = *(v3 + 16);
  v24 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for fetchAttributes";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 96));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *(a1 + 48);
  v11 = objc_opt_self();
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 28);
  v17 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v22;
  *(v3 + 16) = v23;
  *(v3 + 32) = v24;
}

- (BOOL)fetchCacheFileDescriptors:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v9 = MEMORY[0x277CC3510];
    v10 = xpc_dictionary_get_value(v4, "identifiers");
    v11 = [v9 copyNSStringArrayFromXPCArray:v10];

    v8 = v11 != 0;
    if (v11)
    {
      v44 = self;
      uint64 = xpc_dictionary_get_uint64(v4, "id");
      v45 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
      v43 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
      int64 = xpc_dictionary_get_int64(v4, "qos");
      v13 = (*MEMORY[0x277D286C8])();
      v14 = *(v13 + 16);
      v59 = *v13;
      v60 = v14;
      v61 = *(v13 + 32);
      v15 = si_tracing_calc_traceid();
      spanid = si_tracing_calc_next_spanid();
      *v13 = v15;
      *(v13 + 8) = spanid;
      *(v13 + 16) = 0;
      *(v13 + 24) = uint64;
      *(v13 + 28) = 102;
      *(v13 + 32) = "[MDSearchableIndexService fetchCacheFileDescriptors:]";
      si_tracing_log_span_begin();
      v41 = uint64;
      v17 = *(v13 + 16);
      v56 = *v13;
      v57 = v17;
      v58 = *(v13 + 32);
      v18 = *v13;
      v19 = si_tracing_calc_next_spanid();
      v20 = *(v13 + 8);
      v21 = *(v13 + 24);
      if (v45)
      {
        if (!strcmp([v45 UTF8String], "NSFileProtectionComplete"))
        {
          v22 = "Class A index";
        }

        else if (!strcmp([v45 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
        {
          v22 = "Class B index";
        }

        else if (!strcmp([v45 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
        {
          v22 = "Class Cx index";
        }

        else if (!strcmp([v45 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
        {
          v22 = "Class C index";
        }

        else
        {
          v22 = "Unknown index";
        }
      }

      else
      {
        v22 = "Nil index";
      }

      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v21;
      *(v13 + 28) = 102;
      *(v13 + 32) = v22;
      si_tracing_log_span_begin();
      v23 = *(v13 + 16);
      v53 = *v13;
      v54 = v23;
      v55 = *(v13 + 32);
      if (v44->_entitledAttributes)
      {
        v24 = *MEMORY[0x277CBECE8];
        v25 = SIUserCtxCreateWithLanguages();
        if (v25)
        {
          entitledAttributes = v44->_entitledAttributes;
          SIUserCtxSetEntitlements();
        }
      }

      else
      {
        v25 = 0;
      }

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __54__MDSearchableIndexService_fetchCacheFileDescriptors___block_invoke;
      v46[3] = &unk_278937A28;
      v49 = v53;
      v50 = v54;
      v51 = v55;
      v47 = v7;
      v52 = v41;
      v48 = v5;
      [(MDSearchableIndexService *)v44 fetchCacheFileDescriptorsForProtectionClass:v45 bundleID:v43 identifiers:v11 userCtx:v25 flags:0 qos:int64 reply:v47 completionHandler:v46];

      v27 = *v13;
      v28 = *(v13 + 8);
      v29 = *(v13 + 16);
      v30 = *(v13 + 24);
      v31 = *(v13 + 28);
      v32 = *(v13 + 32);
      si_tracing_log_span_end();
      v33 = v57;
      *v13 = v56;
      *(v13 + 16) = v33;
      *(v13 + 32) = v58;
      v34 = *v13;
      v35 = *(v13 + 8);
      v36 = *(v13 + 16);
      v37 = *(v13 + 24);
      v38 = *(v13 + 28);
      si_tracing_log_span_end();
      v39 = v60;
      *v13 = v59;
      *(v13 + 16) = v39;
      *(v13 + 32) = v61;
    }
  }

  return v8;
}

void __54__MDSearchableIndexService_fetchCacheFileDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for fetchCacheFileDescriptors";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)changeState:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v41 = self;
    v38 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v44 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v40 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v4];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v37 = v12;
    v14 = [v12 data];
    v15 = [v13 initWithData:v14];

    v36 = v15;
    v43 = [v15 decode];
    v39 = xpc_dictionary_get_uint64(v4, "modify-state");
    v42 = [MEMORY[0x277CC3510] copyNSStringForKey:"ct" fromXPCDictionary:v4];
    v16 = (*MEMORY[0x277D286C8])();
    v48 = *v16;
    v49 = *(v16 + 16);
    v50 = *(v16 + 32);
    v17 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v16 = v17;
    *(v16 + 8) = spanid;
    *(v16 + 16) = 0;
    *(v16 + 24) = uint64;
    *(v16 + 28) = 102;
    *(v16 + 32) = "[MDSearchableIndexService changeState:]";
    si_tracing_log_span_begin();
    v45 = *v16;
    v46 = *(v16 + 16);
    v47 = *(v16 + 32);
    v19 = *v16;
    v20 = si_tracing_calc_next_spanid();
    v21 = *(v16 + 8);
    v22 = *(v16 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v23 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v23 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v23 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v23 = "Class C index";
      }

      else
      {
        v23 = "Unknown index";
      }
    }

    else
    {
      v23 = "Nil index";
    }

    *v16 = v19;
    *(v16 + 8) = v20;
    *(v16 + 16) = v21;
    *(v16 + 24) = v22;
    *(v16 + 28) = 102;
    *(v16 + 32) = v23;
    si_tracing_log_span_begin();
    [(MDSearchableIndexService *)v41 changeStateOfSearchableItemsWithUIDs:v43 toState:v39 protectionClass:v11 forBundleID:v44 forUTIType:v42 options:v40];
    csindex_xpc_dictionary_encode_status_with_error();
    xpc_dictionary_set_uint64(v7, "id", uint64);
    xpc_connection_send_message(v5, v7);
    v24 = *v16;
    v25 = *(v16 + 8);
    v26 = *(v16 + 16);
    v27 = *(v16 + 24);
    v28 = *(v16 + 28);
    v29 = *(v16 + 32);
    si_tracing_log_span_end();
    *v16 = v45;
    *(v16 + 16) = v46;
    *(v16 + 32) = v47;
    v30 = *v16;
    v31 = *(v16 + 8);
    v32 = *(v16 + 16);
    v33 = *(v16 + 24);
    v34 = *(v16 + 28);
    si_tracing_log_span_end();
    *v16 = v48;
    *(v16 + 16) = v49;
    *(v16 + 32) = v50;

    v9 = v38;
  }

  return v9;
}

- (BOOL)dataMigration:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:{xpc_dictionary_get_double(v4, "timeout")}];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v32 = *v12;
    v33 = v13;
    v34 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService dataMigration:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v28 = *v12;
    v29 = v16;
    v30 = *(v12 + 32);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__MDSearchableIndexService_dataMigration___block_invoke;
    v25[3] = &unk_278937A28;
    v26 = v7;
    v31 = uint64;
    v27 = v5;
    [(MDSearchableIndexService *)self performDataMigrationWithTimeout:v11 completionHandler:v25];

    v17 = *v12;
    v18 = *(v12 + 8);
    v19 = *(v12 + 16);
    v20 = *(v12 + 24);
    v21 = *(v12 + 28);
    v22 = *(v12 + 32);
    si_tracing_log_span_end();
    v23 = v33;
    *v12 = v32;
    *(v12 + 16) = v23;
    *(v12 + 32) = v34;
  }

  return v9;
}

void __42__MDSearchableIndexService_dataMigration___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for dataMigration";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)transferDeleteJournals:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = xpc_dictionary_dup_fd(v4, "fd");
    v9 = *(v38 + 6);
    v8 = v9 > 0;
    if (v9 >= 1)
    {
      uint64 = xpc_dictionary_get_uint64(v4, "id");
      string = xpc_dictionary_get_string(v4, "pc");
      v12 = (*MEMORY[0x277D286C8])();
      v13 = *(v12 + 16);
      v34 = *v12;
      v35 = v13;
      v36 = *(v12 + 32);
      v14 = si_tracing_calc_traceid();
      spanid = si_tracing_calc_next_spanid();
      *v12 = v14;
      *(v12 + 8) = spanid;
      *(v12 + 16) = 0;
      *(v12 + 24) = uint64;
      *(v12 + 28) = 102;
      *(v12 + 32) = "[MDSearchableIndexService transferDeleteJournals:]";
      si_tracing_log_span_begin();
      v16 = *(v38 + 6);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v17 = *(v12 + 16);
      v30 = *v12;
      v31 = v17;
      v26[2] = __51__MDSearchableIndexService_transferDeleteJournals___block_invoke;
      v26[3] = &unk_278937AC8;
      v32 = *(v12 + 32);
      v27 = v7;
      v33 = uint64;
      v28 = v5;
      v29 = &v37;
      [(MDSearchableIndexService *)self transferDeleteJournalsForProtectionClass:string toDirectory:v16 withCompletionHandler:v26];

      v18 = *v12;
      v19 = *(v12 + 8);
      v20 = *(v12 + 16);
      v21 = *(v12 + 24);
      v22 = *(v12 + 28);
      v23 = *(v12 + 32);
      si_tracing_log_span_end();
      v24 = v35;
      *v12 = v34;
      *(v12 + 16) = v24;
      *(v12 + 32) = v36;
    }

    _Block_object_dispose(&v37, 8);
  }

  return v8;
}

void __51__MDSearchableIndexService_transferDeleteJournals___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v19 = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for transferDeleteJournals";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 96));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  close(*(*(*(a1 + 48) + 8) + 24));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)deleteAllUserActivities:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v13 = (*MEMORY[0x277D286C8])();
    v14 = *(v13 + 16);
    v37 = *v13;
    v38 = v14;
    v39 = *(v13 + 32);
    v15 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v13 = v15;
    *(v13 + 8) = spanid;
    *(v13 + 16) = 0;
    *(v13 + 24) = uint64;
    *(v13 + 28) = 102;
    *(v13 + 32) = "[MDSearchableIndexService deleteAllUserActivities:]";
    si_tracing_log_span_begin();
    v17 = *(v13 + 16);
    v34 = *v13;
    v35 = v17;
    v36 = *(v13 + 32);
    v18 = [(MDSearchableIndexService *)self clientBundleID];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __52__MDSearchableIndexService_deleteAllUserActivities___block_invoke;
    v27[3] = &unk_278937A28;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v28 = v7;
    v33 = uint64;
    v29 = v5;
    [(MDSearchableIndexService *)self deleteAllUserActivities:v12 fromClient:v18 options:v11 completionHandler:v27];

    v19 = *v13;
    v20 = *(v13 + 8);
    v21 = *(v13 + 16);
    v22 = *(v13 + 24);
    v23 = *(v13 + 28);
    v24 = *(v13 + 32);
    si_tracing_log_span_end();
    v25 = v38;
    *v13 = v37;
    *(v13 + 16) = v25;
    *(v13 + 32) = v39;
  }

  return v9;
}

void __52__MDSearchableIndexService_deleteAllUserActivities___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteAllUserActivities";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)deleteUserActivitiesWithPersistentIdentifiers:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v28 = self;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v10 = xpc_dictionary_get_uint64(v4, "opt");
    v29 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v11 = (*MEMORY[0x277D286C8])();
    v12 = *(v11 + 16);
    v41 = *v11;
    v42 = v12;
    v43 = *(v11 + 32);
    v13 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v11 = v13;
    *(v11 + 8) = spanid;
    *(v11 + 16) = 0;
    *(v11 + 24) = uint64;
    *(v11 + 28) = 102;
    *(v11 + 32) = "[MDSearchableIndexService deleteUserActivitiesWithPersistentIdentifiers:]";
    si_tracing_log_span_begin();
    v15 = *(v11 + 16);
    v38 = *v11;
    v39 = v15;
    v40 = *(v11 + 32);
    v16 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v4];
    v8 = v16 != 0;
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CC33C8]);
      v18 = [v16 data];
      v19 = [v17 initWithData:v18];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v34 = v38;
      v35 = v39;
      v30[2] = __74__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers___block_invoke;
      v30[3] = &unk_278937A50;
      v36 = v40;
      v31 = v16;
      v32 = v7;
      v37 = uint64;
      v33 = v5;
      [(MDSearchableIndexService *)v28 deleteUserActivitiesWithPersistentIdentifiers:v19 bundleID:v29 options:v10 completionHandler:v30];
    }

    v20 = *v11;
    v21 = *(v11 + 8);
    v22 = *(v11 + 16);
    v23 = *(v11 + 24);
    v24 = *(v11 + 28);
    v25 = *(v11 + 32);
    si_tracing_log_span_end();
    v26 = v42;
    *v11 = v41;
    *(v11 + 16) = v26;
    *(v11 + 32) = v43;
  }

  return v8;
}

void __74__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v22 = *v3;
  v23 = *(v3 + 16);
  v24 = *(v3 + 32);
  v4 = *(a1 + 72);
  *v3 = *(a1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 88);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteUserActivitiesWithPersistentIdentifiers";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  v10 = objc_opt_self();
  xpc_dictionary_set_uint64(*(a1 + 40), "id", *(a1 + 96));
  v11 = *(a1 + 40);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 48), *(a1 + 40));
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 28);
  v17 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v22;
  *(v3 + 16) = v23;
  *(v3 + 32) = v24;
}

- (BOOL)deleteActionsBeforeTime:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = xpc_dictionary_get_double(v4, "time");
    v13 = (*MEMORY[0x277D286C8])();
    v14 = *(v13 + 16);
    v33 = *v13;
    v34 = v14;
    v35 = *(v13 + 32);
    v15 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v13 = v15;
    *(v13 + 8) = spanid;
    *(v13 + 16) = 0;
    *(v13 + 24) = uint64;
    *(v13 + 28) = 102;
    *(v13 + 32) = "[MDSearchableIndexService deleteActionsBeforeTime:]";
    si_tracing_log_span_begin();
    v17 = *(v13 + 16);
    v29 = *v13;
    v30 = v17;
    v31 = *(v13 + 32);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __52__MDSearchableIndexService_deleteActionsBeforeTime___block_invoke;
    v26[3] = &unk_278937A28;
    v27 = v7;
    v32 = uint64;
    v28 = v5;
    [(MDSearchableIndexService *)self deleteActionsBeforeTime:v11 options:v26 completionHandler:v12];

    v18 = *v13;
    v19 = *(v13 + 8);
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    v22 = *(v13 + 28);
    v23 = *(v13 + 32);
    si_tracing_log_span_end();
    v24 = v34;
    *v13 = v33;
    *(v13 + 16) = v24;
    *(v13 + 32) = v35;
  }

  return v9;
}

void __52__MDSearchableIndexService_deleteActionsBeforeTime___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteActionsBeforeTime";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)deleteActionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = xpc_dictionary_get_uint64(v4, "opt");
    v12 = MEMORY[0x277CC3510];
    v13 = xpc_dictionary_get_value(v4, "identifiers");
    v14 = [v12 copyNSStringArrayFromXPCArray:v13];

    v15 = (*MEMORY[0x277D286C8])();
    v16 = *(v15 + 16);
    v35 = *v15;
    v36 = v16;
    v37 = *(v15 + 32);
    v17 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v15 = v17;
    *(v15 + 8) = spanid;
    *(v15 + 16) = 0;
    *(v15 + 24) = uint64;
    *(v15 + 28) = 102;
    *(v15 + 32) = "[MDSearchableIndexService deleteActionsWithIdentifiers:]";
    si_tracing_log_span_begin();
    v19 = *(v15 + 16);
    v31 = *v15;
    v32 = v19;
    v33 = *(v15 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__MDSearchableIndexService_deleteActionsWithIdentifiers___block_invoke;
    v28[3] = &unk_278937A28;
    v29 = v7;
    v34 = uint64;
    v30 = v5;
    [(MDSearchableIndexService *)self deleteActionsWithIdentifiers:v14 options:v11 completionHandler:v28];

    v20 = *v15;
    v21 = *(v15 + 8);
    v22 = *(v15 + 16);
    v23 = *(v15 + 24);
    v24 = *(v15 + 28);
    v25 = *(v15 + 32);
    si_tracing_log_span_end();
    v26 = v36;
    *v15 = v35;
    *(v15 + 16) = v26;
    *(v15 + 32) = v37;
  }

  return v9;
}

void __57__MDSearchableIndexService_deleteActionsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteActionsWithIdentifiers";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)processActivities:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  original = a3;
  connection = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  if (connection)
  {
    v4 = reply == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  v39 = v5;
  if (!v4)
  {
    message = reply;
    v6 = (*MEMORY[0x277D286C8])();
    v7 = *(v6 + 16);
    v48 = *v6;
    v49 = v7;
    v38 = v6;
    v50 = *(v6 + 32);
    v8 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v38 = v8;
    *(v38 + 8) = spanid;
    *(v38 + 16) = 0;
    *(v38 + 24) = -1;
    *(v38 + 28) = 102;
    *(v38 + 32) = "[MDSearchableIndexService processActivities:]";
    si_tracing_log_span_begin();
    v34 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:original];
    v36 = [v34 data];
    if ([v36 length])
    {
      v33 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v36 error:0];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
      v35 = [v33 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v16 = v35;
        v17 = [v16 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (v17)
        {
          v18 = *v45;
          v42 = *MEMORY[0x277CCA190];
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v45 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v44 + 1) + 8 * i);
              v21 = [v20 objectForKeyedSubscript:@"action"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v20 objectForKeyedSubscript:@"item"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = v42;
                  [(MDSearchableIndexService *)self userPerformedAction:v21 withItem:v22 protectionClass:v23];
                }
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v44 objects:v51 count:16];
          }

          while (v17);
        }
      }
    }

    if (xpc_dictionary_get_BOOL(original, "flush"))
    {
      [(MDSearchableIndexService *)self flushUserActivities];
    }

    csindex_xpc_dictionary_encode_status_with_error();
    xpc_connection_send_message(connection, message);

    v24 = *v38;
    v25 = *(v38 + 8);
    v26 = *(v38 + 16);
    v27 = *(v38 + 24);
    v28 = *(v38 + 28);
    v29 = *(v38 + 32);
    si_tracing_log_span_end();
    v30 = v49;
    reply = message;
    *v38 = v48;
    *(v38 + 16) = v30;
    *(v38 + 32) = v50;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)addInteraction:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v40 = self;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v10 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v39 = xpc_dictionary_get_uint64(v4, "opt");
    v42 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v41 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:v4];
    v11 = [v41 data];
    v43 = [v11 copy];

    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v57 = *v12;
    v58 = v13;
    v59 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService addInteraction:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v54 = *v12;
    v55 = v16;
    v56 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v10)
    {
      if (!strcmp([v10 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v10 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v10 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v10 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v51 = *v12;
    v52 = v22;
    v53 = *(v12 + 32);
    v23 = [v43 length];
    v8 = v23 != 0;
    if (v23)
    {
      v24 = [MEMORY[0x277CC3510] copyNSStringForKey:"icn" fromXPCDictionary:v4];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __43__MDSearchableIndexService_addInteraction___block_invoke;
      v44[3] = &unk_278937A28;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v45 = v7;
      v50 = uint64;
      v46 = v5;
      [(MDSearchableIndexService *)v40 addInteraction:v43 intentClassName:v24 bundleID:v42 protectionClass:v10 options:v39 completionHandler:v44];
    }

    v25 = *v12;
    v26 = *(v12 + 8);
    v27 = *(v12 + 16);
    v28 = *(v12 + 24);
    v29 = *(v12 + 28);
    v30 = *(v12 + 32);
    si_tracing_log_span_end();
    v31 = v55;
    *v12 = v54;
    *(v12 + 16) = v31;
    *(v12 + 32) = v56;
    v32 = *v12;
    v33 = *(v12 + 8);
    v34 = *(v12 + 16);
    v35 = *(v12 + 24);
    v36 = *(v12 + 28);
    si_tracing_log_span_end();
    v37 = v58;
    *v12 = v57;
    *(v12 + 16) = v37;
    *(v12 + 32) = v59;
  }

  return v8;
}

void __43__MDSearchableIndexService_addInteraction___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for addInteraction";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)_deleteInteractions:(id)a3 forGroup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = xpc_dictionary_get_remote_connection(v6);
  reply = xpc_dictionary_create_reply(v6);
  v9 = reply;
  v10 = 0;
  if (v7 && reply)
  {
    v43 = v4;
    v45 = self;
    uint64 = xpc_dictionary_get_uint64(v6, "id");
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v6];
    v44 = xpc_dictionary_get_uint64(v6, "opt");
    v46 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v6];
    v13 = MEMORY[0x277CC3510];
    v14 = xpc_dictionary_get_value(v6, "identifiers");
    v47 = [v13 copyNSStringArrayFromXPCArray:v14];

    v15 = (*MEMORY[0x277D286C8])();
    v16 = *(v15 + 16);
    v64 = *v15;
    v65 = v16;
    v66 = *(v15 + 32);
    v17 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v15 = v17;
    *(v15 + 8) = spanid;
    *(v15 + 16) = 0;
    *(v15 + 24) = uint64;
    *(v15 + 28) = 102;
    *(v15 + 32) = "[MDSearchableIndexService _deleteInteractions:forGroup:]";
    si_tracing_log_span_begin();
    v19 = *(v15 + 16);
    v61 = *v15;
    v62 = v19;
    v63 = *(v15 + 32);
    v20 = *v15;
    v21 = si_tracing_calc_next_spanid();
    v22 = *(v15 + 8);
    v23 = *(v15 + 24);
    if (v12)
    {
      if (!strcmp([v12 UTF8String], "NSFileProtectionComplete"))
      {
        v24 = "Class A index";
      }

      else if (!strcmp([v12 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v24 = "Class B index";
      }

      else if (!strcmp([v12 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v24 = "Class Cx index";
      }

      else if (!strcmp([v12 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v24 = "Class C index";
      }

      else
      {
        v24 = "Unknown index";
      }
    }

    else
    {
      v24 = "Nil index";
    }

    *v15 = v20;
    *(v15 + 8) = v21;
    *(v15 + 16) = v22;
    *(v15 + 24) = v23;
    *(v15 + 28) = 102;
    *(v15 + 32) = v24;
    si_tracing_log_span_begin();
    v25 = *(v15 + 16);
    v58 = *v15;
    v59 = v25;
    v60 = *(v15 + 32);
    v26 = v47;
    v27 = [v47 count];
    v10 = v27 != 0;
    if (v27)
    {
      if (v43)
      {
        v28 = v53;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke;
        v53[3] = &unk_278937A28;
        v54 = v58;
        v55 = v59;
        v56 = v60;
        v53[4] = v9;
        v57 = uint64;
        v53[5] = v7;
        [(MDSearchableIndexService *)v45 deleteInteractionsWithGroupIdentifiers:v47 bundleID:v46 protectionClass:v12 options:v44 completionHandler:v53];
      }

      else
      {
        v28 = v48;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke_2;
        v48[3] = &unk_278937A28;
        v49 = v58;
        v50 = v59;
        v51 = v60;
        v48[4] = v9;
        v52 = uint64;
        v48[5] = v7;
        [(MDSearchableIndexService *)v45 deleteInteractionsWithIdentifiers:v47 bundleID:v46 protectionClass:v12 options:v44 completionHandler:v48];
      }

      v26 = v47;
    }

    v29 = *v15;
    v30 = *(v15 + 8);
    v31 = *(v15 + 16);
    v32 = *(v15 + 24);
    v33 = *(v15 + 28);
    v34 = *(v15 + 32);
    si_tracing_log_span_end();
    v35 = v62;
    *v15 = v61;
    *(v15 + 16) = v35;
    *(v15 + 32) = v63;
    v36 = *v15;
    v37 = *(v15 + 8);
    v38 = *(v15 + 16);
    v39 = *(v15 + 24);
    v40 = *(v15 + 28);
    si_tracing_log_span_end();
    v41 = v65;
    *v15 = v64;
    *(v15 + 16) = v41;
    *(v15 + 32) = v66;
  }

  return v10;
}

void __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteInteractions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

void __57__MDSearchableIndexService__deleteInteractions_forGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteInteractions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)deleteAllInteractions:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v39 = self;
    v37 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v38 = xpc_dictionary_get_uint64(v4, "opt");
    v40 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v51 = *v12;
    v52 = v13;
    v53 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService deleteAllInteractions:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v48 = *v12;
    v49 = v16;
    v50 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v44 = *v12;
    v45 = v22;
    v46 = *(v12 + 32);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __50__MDSearchableIndexService_deleteAllInteractions___block_invoke;
    v41[3] = &unk_278937A28;
    v42 = v7;
    v47 = uint64;
    v43 = v5;
    [(MDSearchableIndexService *)v39 deleteAllInteractionsWithBundleID:v40 protectionClass:v11 options:v38 completionHandler:v41];

    v23 = *v12;
    v24 = *(v12 + 8);
    v25 = *(v12 + 16);
    v26 = *(v12 + 24);
    v27 = *(v12 + 28);
    v28 = *(v12 + 32);
    si_tracing_log_span_end();
    v29 = v49;
    *v12 = v48;
    *(v12 + 16) = v29;
    *(v12 + 32) = v50;
    v30 = *v12;
    v31 = *(v12 + 8);
    v32 = *(v12 + 16);
    v33 = *(v12 + 24);
    v34 = *(v12 + 28);
    si_tracing_log_span_end();
    v35 = v52;
    *v12 = v51;
    *(v12 + 16) = v35;
    *(v12 + 32) = v53;

    v9 = v37;
  }

  return v9;
}

void __50__MDSearchableIndexService_deleteAllInteractions___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for deleteAllInteractions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)donateRelevantActions:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v10 = xpc_dictionary_get_uint64(v4, "opt");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v36 = *v12;
    v37 = v13;
    v38 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService donateRelevantActions:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v33 = *v12;
    v34 = v16;
    v35 = *(v12 + 32);
    v17 = xpc_dictionary_get_value(v4, "data");
    v8 = v17 != 0;
    if (v17)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__MDSearchableIndexService_donateRelevantActions___block_invoke;
      v26[3] = &unk_278937A28;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      v27 = v7;
      v32 = uint64;
      v28 = v5;
      [(MDSearchableIndexService *)self donateRelevantActions:v17 bundleID:v11 options:v10 completionHandler:v26];
    }

    v18 = *v12;
    v19 = *(v12 + 8);
    v20 = *(v12 + 16);
    v21 = *(v12 + 24);
    v22 = *(v12 + 28);
    v23 = *(v12 + 32);
    si_tracing_log_span_end();
    v24 = v37;
    *v12 = v36;
    *(v12 + 16) = v24;
    *(v12 + 32) = v38;
  }

  return v8;
}

void __50__MDSearchableIndexService_donateRelevantActions___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v20 = *v3;
  v21 = *(v3 + 16);
  v22 = *(v3 + 32);
  v4 = *(a1 + 64);
  *v3 = *(a1 + 48);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completion handler for donateRelevantActions";
  si_tracing_log_span_begin();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  v9 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v20;
  *(v3 + 16) = v21;
  *(v3 + 32) = v22;
}

- (BOOL)updateCorrections:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  v7 = reply;
  if (v5)
  {
    v8 = reply == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    v40 = self;
    v38 = v9;
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v4];
    v37 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v4];
    v39 = xpc_dictionary_get_uint64(v4, "opt");
    v41 = [MEMORY[0x277CC3510] copyNSStringForKey:"filepath" fromXPCDictionary:v4];
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    v52 = *v12;
    v53 = v13;
    v54 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = uint64;
    *(v12 + 28) = 102;
    *(v12 + 32) = "[MDSearchableIndexService updateCorrections:]";
    si_tracing_log_span_begin();
    v16 = *(v12 + 16);
    v49 = *v12;
    v50 = v16;
    v51 = *(v12 + 32);
    v17 = *v12;
    v18 = si_tracing_calc_next_spanid();
    v19 = *(v12 + 8);
    v20 = *(v12 + 24);
    if (v11)
    {
      if (!strcmp([v11 UTF8String], "NSFileProtectionComplete"))
      {
        v21 = "Class A index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUnlessOpen"))
      {
        v21 = "Class B index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteWhenUserInactive"))
      {
        v21 = "Class Cx index";
      }

      else if (!strcmp([v11 UTF8String], "NSFileProtectionCompleteUntilFirstUserAuthentication"))
      {
        v21 = "Class C index";
      }

      else
      {
        v21 = "Unknown index";
      }
    }

    else
    {
      v21 = "Nil index";
    }

    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 16) = v19;
    *(v12 + 24) = v20;
    *(v12 + 28) = 102;
    *(v12 + 32) = v21;
    si_tracing_log_span_begin();
    v22 = *(v12 + 16);
    v45 = *v12;
    v46 = v22;
    v47 = *(v12 + 32);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __46__MDSearchableIndexService_updateCorrections___block_invoke;
    v42[3] = &unk_278937A78;
    v43 = v7;
    v48 = uint64;
    v44 = v5;
    [(MDSearchableIndexService *)v40 updateCorrectionsWithFilePath:v41 options:v39 completionHandler:v42];

    v23 = *v12;
    v24 = *(v12 + 8);
    v25 = *(v12 + 16);
    v26 = *(v12 + 24);
    v27 = *(v12 + 28);
    v28 = *(v12 + 32);
    si_tracing_log_span_end();
    v29 = v50;
    *v12 = v49;
    *(v12 + 16) = v29;
    *(v12 + 32) = v51;
    v30 = *v12;
    v31 = *(v12 + 8);
    v32 = *(v12 + 16);
    v33 = *(v12 + 24);
    v34 = *(v12 + 28);
    si_tracing_log_span_end();
    v35 = v53;
    *v12 = v52;
    *(v12 + 16) = v35;
    *(v12 + 32) = v54;

    v9 = v38;
  }

  return v9;
}

void __46__MDSearchableIndexService_updateCorrections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v23 = *v6;
  v24 = *(v6 + 16);
  v25 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  v11 = *(v6 + 24);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for updateCorrections";
  si_tracing_log_span_begin();
  v12 = *(a1 + 32);
  csindex_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  v13 = *v6;
  v14 = *(v6 + 8);
  v15 = *(v6 + 16);
  v16 = *(v6 + 24);
  v17 = *(v6 + 28);
  v18 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v23;
  *(v6 + 16) = v24;
  *(v6 + 32) = v25;
}

- (BOOL)issueCacheCommand:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  reply = xpc_dictionary_create_reply(v4);
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "id");
    v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"cache-request" fromXPCDictionary:v4];
    v9 = (*MEMORY[0x277D286C8])();
    v10 = *(v9 + 16);
    v39 = *v9;
    v40 = v10;
    v41 = *(v9 + 32);
    v11 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v9 = v11;
    *(v9 + 8) = spanid;
    *(v9 + 16) = 0;
    *(v9 + 24) = uint64;
    *(v9 + 28) = 102;
    *(v9 + 32) = "[MDSearchableIndexService issueCacheCommand:]";
    si_tracing_log_span_begin();
    v13 = *(v9 + 16);
    v36 = *v9;
    v37 = v13;
    v38 = *(v9 + 32);
    v14 = v8 != 0;
    if (v8)
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __46__MDSearchableIndexService_issueCacheCommand___block_invoke;
        v29 = &unk_278937A78;
        v32 = v36;
        v33 = v37;
        v34 = v38;
        v16 = reply;
        v30 = v16;
        v35 = uint64;
        v31 = v5;
        v17 = MEMORY[0x2383760E0](&v26);
        [(MDIndexer *)self->_indexer _issueCacheCommand:v8 xpc:v16 searchContext:0 completionHandler:v17, v26, v27, v28, v29];
      }
    }

    v18 = *v9;
    v19 = *(v9 + 8);
    v20 = *(v9 + 16);
    v21 = *(v9 + 24);
    v22 = *(v9 + 28);
    v23 = *(v9 + 32);
    si_tracing_log_span_end();
    v24 = v40;
    *v9 = v39;
    *(v9 + 16) = v24;
    *(v9 + 32) = v41;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __46__MDSearchableIndexService_issueCacheCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = (*MEMORY[0x277D286C8])();
  v22 = *v6;
  v23 = *(v6 + 16);
  v24 = *(v6 + 32);
  v7 = *(a1 + 64);
  *v6 = *(a1 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a1 + 80);
  v19 = *(a1 + 48);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v8 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v10 = *(v6 + 8);
  v11 = *(v6 + 24);
  *v6 = v8;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v10;
  *(v6 + 28) = 102;
  *(v6 + 32) = "completion handler for issueCacheCommand";
  si_tracing_log_span_begin();
  if (*(a1 + 32))
  {
    csindex_xpc_dictionary_encode_status_with_error();
    if (v18)
    {
      xpc_dictionary_set_data(*(a1 + 32), "cache-data-key", [v18 bytes], objc_msgSend(v18, "length"));
    }

    xpc_dictionary_set_uint64(*(a1 + 32), "id", *(a1 + 88));
    xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  }

  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = *(v6 + 28);
  v17 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v22;
  *(v6 + 16) = v23;
  *(v6 + 32) = v24;
}

- (BOOL)_handleAssetsCommand:(id)a3
{
  v4 = a3;
  indexer = self->_indexer;
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [(MDIndexer *)self->_indexer handleAssetsCommand:v4];
  }

  return v6 & 1;
}

- (BOOL)handleCommand:(const char *)a3 info:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v6];
  if (([v7 isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
  {
    v8 = [(MDSearchableIndexService *)self clientBundleID];
    if (([v8 isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
    {

      goto LABEL_11;
    }

    v9 = [(MDSearchableIndexService *)self allowNotifications];

    if (v9)
    {
      goto LABEL_11;
    }

LABEL_6:
    v10 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _issueCommand:? outFileDescriptor:? searchContext:? completionHandler:?];
    }

    goto LABEL_9;
  }

  if (![(MDSearchableIndexService *)self allowNotifications])
  {
    goto LABEL_6;
  }

LABEL_11:
  if (!strcmp(a3, "delete-bundle"))
  {
    v13 = [(MDSearchableIndexService *)self deleteBundle:v6];
LABEL_68:
    v11 = v13;
    goto LABEL_69;
  }

  if (!strcmp(a3, "delete-from-date"))
  {
    v13 = [(MDSearchableIndexService *)self deleteSinceDate:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "check-in"))
  {
    v13 = [(MDSearchableIndexService *)self checkIn:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "process-index-data"))
  {
    v13 = [(MDSearchableIndexService *)self processIndexData:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "fbi"))
  {
    v13 = [(MDSearchableIndexService *)self fetchBundleIDs:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "will-modify"))
  {
    v13 = [(MDSearchableIndexService *)self willModify:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete-domains"))
  {
    v13 = [(MDSearchableIndexService *)self deleteDomains:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "issue"))
  {
    v13 = [(MDSearchableIndexService *)self issueCommand:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "fetch-client-state"))
  {
    v13 = [(MDSearchableIndexService *)self fetchClientState:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "change-state"))
  {
    v13 = [(MDSearchableIndexService *)self changeState:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "data-migration"))
  {
    v13 = [(MDSearchableIndexService *)self dataMigration:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete-journal-transfer"))
  {
    v13 = [(MDSearchableIndexService *)self transferDeleteJournals:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "fetch_attributes"))
  {
    v13 = [(MDSearchableIndexService *)self fetchAttributes:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "fetch_cache_file_descriptors"))
  {
    v13 = [(MDSearchableIndexService *)self fetchCacheFileDescriptors:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete_all_activities"))
  {
    v13 = [(MDSearchableIndexService *)self deleteAllUserActivities:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete_activities"))
  {
    v13 = [(MDSearchableIndexService *)self deleteUserActivitiesWithPersistentIdentifiers:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete-actions-before-time"))
  {
    v13 = [(MDSearchableIndexService *)self deleteActionsBeforeTime:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete-actions-with-identifiers"))
  {
    v13 = [(MDSearchableIndexService *)self deleteActionsWithIdentifiers:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "activities"))
  {
    v13 = [(MDSearchableIndexService *)self processActivities:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "add_interaction"))
  {
    v13 = [(MDSearchableIndexService *)self addInteraction:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete_interactions"))
  {
    v14 = self;
    v15 = v6;
    v16 = 0;
LABEL_67:
    v13 = [(MDSearchableIndexService *)v14 _deleteInteractions:v15 forGroup:v16];
    goto LABEL_68;
  }

  if (!strcmp(a3, "delete_group_interactions"))
  {
    v14 = self;
    v15 = v6;
    v16 = 1;
    goto LABEL_67;
  }

  if (!strcmp(a3, "delete_all_interactions"))
  {
    v13 = [(MDSearchableIndexService *)self deleteAllInteractions:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "donate_relevant_actions"))
  {
    v13 = [(MDSearchableIndexService *)self donateRelevantActions:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "photoslibrary-deleted"))
  {
    v13 = [(MDSearchableIndexService *)self photosLibraryDeleted:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "prepare-indexing-locked"))
  {
    v13 = [(MDSearchableIndexService *)self prepareIndexingLocked:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "finish-indexing-locked"))
  {
    v13 = [(MDSearchableIndexService *)self finishIndexingLocked:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "cache-command-issue"))
  {
    v13 = [(MDSearchableIndexService *)self issueCacheCommand:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "update-corrections"))
  {
    v13 = [(MDSearchableIndexService *)self updateCorrections:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "open-journal"))
  {
    v13 = [(MDSearchableIndexService *)self openJournalFile:v6];
    goto LABEL_68;
  }

  if (!strcmp(a3, "assets"))
  {
    v13 = [(MDSearchableIndexService *)self _handleAssetsCommand:v6];
    goto LABEL_68;
  }

  v12 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService handleCommand:info:];
  }

LABEL_9:
  v11 = 0;
LABEL_69:

  return v11;
}

- (void)_checkNonEmptyBundle:(void *)a1 protectionClass:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 processDescription];
  v3 = [v0 clientBundleID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_checkItems:(void *)a1 identifiers:protectionClass:bundleID:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkItems:(void *)a1 identifiers:protectionClass:bundleID:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.5()
{
  OUTLINED_FUNCTION_8_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 bundleID];
  v3 = [v0 clientBundleID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_checkItems:identifiers:protectionClass:bundleID:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_canProcessIndexDataForBundle:itemsDecoder:deletesDecoder:clientState:clientStateName:outError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchToReceiversWithBundleID:protectionClass:options:items:itemsText:itemsHTML:deletes:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v8 = *MEMORY[0x277D85DE8];
  [SpotlightSender jobForTest:v1];
  [SpotlightSender jobForDuet:v0];
  [SpotlightSender jobForSuggestions:v0];
  [SpotlightSender jobForTextUnderstanding:v0];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x3Eu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:protectionClass:forBundleID:fromClient:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "domainIdentifier:%@, options:0x%lx");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateCorrectionsWithFilePath:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "updateCorrectionsWithProtectionClass, filePath:%@, options:0x%lx");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)provideDataForBundle:identifier:type:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_issueCommand:(void *)a1 outFileDescriptor:searchContext:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_issueCommand:(void *)a1 outFileDescriptor:searchContext:completionHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)userPerformedAction:withItem:protectionClass:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Ignoring action:%@, item:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithProtectionClass:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 processDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllUserActivities:fromClient:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "(%@) deleteAllActivities, options:0x%lx");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:bundleID:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "(%@) deleteActivities, options:0x%lx");
  v2 = *MEMORY[0x277D85DE8];
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 56));
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_cold_4(os_log_t log, double a2, double a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = (a2 - a3);
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Finished waiting for index to update, totalTime:%llds", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __78__MDSearchableIndexService_performDataMigrationWithTimeout_completionHandler___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "Extension %@ completed migration, error:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transferDeleteJournalsForProtectionClass:(const char *)a1 toDirectory:withCompletionHandler:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteInteractionsWithIdentifiers:(uint64_t)a1 bundleID:(uint64_t)a2 protectionClass:options:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = 134218242;
  *(&v6 + 4) = a2;
  OUTLINED_FUNCTION_6_0();
  *v7 = v2;
  OUTLINED_FUNCTION_4(&dword_231A35000, v3, v4, "options:0x%lx, identifiers:%@", v6, DWORD2(v6), *&v7[2], v8);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)donateRelevantActions:bundleID:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_231A35000, v0, v1, "(%@) donateRelevantActions options:0x%lx");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchBundleIDs:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:clientStateName:protectionClass:forBundleID:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)indexFromBundle:protectionClass:options:items:itemsText:itemsHTML:clientState:expectedClientState:clientStateName:deletes:userActivities:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)openJournalFile:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  v7 = *__error();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__MDSearchableIndexService_issueCommand___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processActivities:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
}

- (void)handleCommand:info:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end