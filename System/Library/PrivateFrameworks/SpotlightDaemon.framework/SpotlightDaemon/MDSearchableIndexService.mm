@interface MDSearchableIndexService
- (BOOL)_canProcessIndexDataForBundle:(id)bundle itemsDecoder:(id)decoder deletesDecoder:(id)deletesDecoder clientState:(id)state clientStateName:(id)name outError:(id *)error;
- (BOOL)_deleteInteractions:(id)interactions forGroup:(BOOL)group;
- (BOOL)_handleAssetsCommand:(id)command;
- (BOOL)addInteraction:(id)interaction;
- (BOOL)changeState:(id)state;
- (BOOL)checkIn:(id)in;
- (BOOL)dataMigration:(id)migration;
- (BOOL)deleteActionsBeforeTime:(id)time;
- (BOOL)deleteActionsWithIdentifiers:(id)identifiers;
- (BOOL)deleteAllInteractions:(id)interactions;
- (BOOL)deleteAllUserActivities:(id)activities;
- (BOOL)deleteBundle:(id)bundle;
- (BOOL)deleteDomains:(id)domains;
- (BOOL)deleteSinceDate:(id)date;
- (BOOL)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers;
- (BOOL)donateRelevantActions:(id)actions;
- (BOOL)fetchAttributes:(id)attributes;
- (BOOL)fetchBundleIDs:(id)ds;
- (BOOL)fetchCacheFileDescriptors:(id)descriptors;
- (BOOL)fetchClientState:(id)state;
- (BOOL)finishIndexingLocked:(id)locked;
- (BOOL)handleCommand:(const char *)command info:(id)info;
- (BOOL)issueCacheCommand:(id)command;
- (BOOL)issueCommand:(id)command;
- (BOOL)openJournalFile:(id)file;
- (BOOL)photosLibraryDeleted:(id)deleted;
- (BOOL)prepareIndexingLocked:(id)locked;
- (BOOL)processActivities:(id)activities;
- (BOOL)processIndexData:(id)data;
- (BOOL)transferDeleteJournals:(id)journals;
- (BOOL)updateCorrections:(id)corrections;
- (BOOL)willModify:(id)modify;
- (CSIndexingQueue)activityQueue;
- (NSString)processDescription;
- (id)_checkBundleIDHelper:(id)helper;
- (id)_checkItems:(id)items identifiers:(id)identifiers protectionClass:(id)class bundleID:(id)d;
- (id)_checkNonEmptyBundle:(id)bundle protectionClass:(id)class;
- (void)_deleteAllSearchableItemsWithBundleID:(id)d protectionClass:(id)class shouldGC:(BOOL)c options:(int64_t)options deleteAllReason:(int64_t)reason completionHandler:(id)handler;
- (void)_dispatchActivities:(id)activities;
- (void)_dispatchActivities:(id)activities bundleID:(id)d;
- (void)_dispatchToReceiversWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l deletes:(id)deletes;
- (void)_forceAppWithBundleID:(id)d toPerformJob:(id)job;
- (void)_makeActivityQueueIfNecessary;
- (void)_processIndexDataForBundle:(id)bundle protectionClass:(id)class personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)self0 expectedClientState:(id)self1 clientStateName:(id)self2 deletes:(id)self3 completionHandler:(id)self4;
- (void)_runLibraryDeletedCommand:(id)command;
- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state protectionClass:(id)class forBundleID:(id)d forUTIType:(id)type options:(int64_t)options;
- (void)checkInWithProtectionClass:(id)class completionHandler:(id)handler;
- (void)deleteActionsBeforeTime:(double)time options:(int64_t)options completionHandler:(id)handler;
- (void)deleteActionsWithIdentifiers:(id)identifiers options:(int64_t)options completionHandler:(id)handler;
- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)deleteAllUserActivities:(id)activities fromClient:(id)client options:(int64_t)options completionHandler:(id)handler;
- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler;
- (void)deleteSearchableItemsSinceDate:(id)date protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d fromClient:(id)client options:(int64_t)options completionHandler:(id)handler;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)donateRelevantActions:(id)actions bundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
- (void)fetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos reply:(id)self0 completionHandler:(id)self1;
- (void)fetchLastClientStateWithProtectionClass:(id)class forBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler;
- (void)finishIndexingWhileLocked:(id)locked protectionClass:(id)class completionHandler:(id)handler;
- (void)flushUserActivities;
- (void)indexFromBundle:(id)bundle protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)state expectedClientState:(id)self0 clientStateName:(id)self1 deletes:(id)self2 userActivities:(BOOL)self3 completionHandler:(id)self4;
- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state clientStateName:(id)name protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)self0;
- (void)performDataMigrationWithTimeout:(id)timeout completionHandler:(id)handler;
- (void)performIndexJob:(id)job protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)prepareIndexingWhileLocked:(id)locked protectionClass:(id)class holdAssertionFor:(double)for completionHandler:(id)handler;
- (void)provideDataForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler;
- (void)provideFileURLForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler;
- (void)updateCorrectionsWithFilePath:(id)path options:(int64_t)options completionHandler:(id)handler;
- (void)userPerformedAction:(id)action withItem:(id)item protectionClass:(id)class;
- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activityQueue && ([MEMORY[0x277CC3518] disabledUserActivities] & 1) == 0)
  {
    objc_initWeak(&location, selfCopy);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __57__MDSearchableIndexService__makeActivityQueueIfNecessary__block_invoke;
    v10 = &unk_278937730;
    objc_copyWeak(&v11, &location);
    v3 = [&v7 copy];
    v4 = objc_alloc(MEMORY[0x277CC3428]);
    v5 = [v4 initWithIdleTime:1 idleTimeLeeway:0 maximumBatchSize:v3 mode:1.0 notifyBlock:{0.25, v7, v8, v9, v10}];
    activityQueue = selfCopy->_activityQueue;
    selfCopy->_activityQueue = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (CSIndexingQueue)activityQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activityQueue;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)flushUserActivities
{
  activityQueue = [(MDSearchableIndexService *)self activityQueue];
  [activityQueue flush];
}

- (NSString)processDescription
{
  clientConnection = [(MDSearchableIndexService *)self clientConnection];
  v3 = clientConnection;
  if (clientConnection)
  {
    v4 = [MEMORY[0x277CC3510] processNameForPID:xpc_connection_get_pid(clientConnection)];
  }

  else
  {
    v4 = &stru_2846BD100;
  }

  return v4;
}

- (id)_checkNonEmptyBundle:(id)bundle protectionClass:(id)class
{
  if (bundle)
  {
    v5 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:class bundleID:bundle];
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

- (id)_checkItems:(id)items identifiers:(id)identifiers protectionClass:(id)class bundleID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  if (self->_isInternal)
  {
    goto LABEL_2;
  }

  clientBundleID = [(MDSearchableIndexService *)self clientBundleID];

  if (!clientBundleID)
  {
    v34 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService _checkItems:? identifiers:? protectionClass:? bundleID:?];
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    goto LABEL_44;
  }

  v31 = [(MDSearchableIndexService *)self _checkBundleIDHelper:dCopy];
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
  v43 = classCopy;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = *v49;
  v42 = itemsCopy;
  while (2)
  {
    v18 = dCopy;
    v19 = identifiersCopy;
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

      bundleID = [v21 bundleID];
      v23 = [(MDSearchableIndexService *)self _checkBundleIDHelper:bundleID];

      if (v23)
      {
        v36 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [MDSearchableIndexService _checkItems:identifiers:protectionClass:bundleID:];
        }

LABEL_34:
        classCopy = v43;

        identifiersCopy = v19;
        dCopy = v18;
        itemsCopy = v42;
        goto LABEL_44;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    identifiersCopy = v19;
    dCopy = v18;
    itemsCopy = v42;
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
  v24 = identifiersCopy;
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
  classCopy = v43;
LABEL_44:

  v40 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_checkBundleIDHelper:(id)helper
{
  helperCopy = helper;
  if (!helperCopy || (-[MDSearchableIndexService clientBundleID](self, "clientBundleID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [helperCopy isEqualToString:v5], v5, (v6 & 1) != 0) || self->_isInternal)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
  }

  return v7;
}

- (BOOL)_canProcessIndexDataForBundle:(id)bundle itemsDecoder:(id)decoder deletesDecoder:(id)deletesDecoder clientState:(id)state clientStateName:(id)name outError:(id *)error
{
  bundleCopy = bundle;
  decoderCopy = decoder;
  deletesDecoderCopy = deletesDecoder;
  stateCopy = state;
  nameCopy = name;
  if (!bundleCopy)
  {
    bundleCopy = [(MDSearchableIndexService *)self clientBundleID];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:bundleCopy];
  if (v19)
  {
    goto LABEL_9;
  }

  if (stateCopy && !nameCopy)
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

  if (stateCopy)
  {
    v19 = 0;
    v21 = 1;
  }

  else
  {
    if (decoderCopy && ([decoderCopy obj], _MDPlistGetPlistObjectType() == 240))
    {
      [decoderCopy obj];
      v21 = _MDPlistArrayGetCount() != 0;
    }

    else
    {
      v21 = 0;
    }

    if (deletesDecoderCopy && ([deletesDecoderCopy obj], _MDPlistGetPlistObjectType() == 240))
    {
      [deletesDecoderCopy obj];
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
  if (error)
  {
    v19 = v19;
    *error = v19;
  }

  return v21 & 1;
}

- (void)_processIndexDataForBundle:(id)bundle protectionClass:(id)class personaID:(id)d options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)self0 expectedClientState:(id)self1 clientStateName:(id)self2 deletes:(id)self3 completionHandler:(id)self4
{
  bundleCopy = bundle;
  classCopy = class;
  dCopy = d;
  itemsCopy = items;
  textCopy = text;
  lCopy = l;
  stateCopy = state;
  clientStateCopy = clientState;
  nameCopy = name;
  deletesCopy = deletes;
  handlerCopy = handler;
  if ([(MDSearchableIndexService *)self _jobForIndex:options]&& (v27 = self->_indexer, (objc_opt_respondsToSelector() & 1) != 0))
  {
    indexer = self->_indexer;
    LOBYTE(v31) = 1;
    v29 = itemsCopy;
    v30 = textCopy;
    [(MDIndexer *)indexer indexFromBundle:bundleCopy protectionClass:classCopy personaID:dCopy options:options items:itemsCopy itemsText:textCopy itemsHTML:lCopy clientState:stateCopy expectedClientState:clientStateCopy clientStateName:nameCopy deletes:deletesCopy canCreateNewIndex:v31 completionHandler:handlerCopy];
  }

  else
  {
    v30 = textCopy;
    v29 = itemsCopy;
    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_7:
}

- (void)_dispatchToReceiversWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l deletes:(id)deletes
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  itemsCopy = items;
  textCopy = text;
  lCopy = l;
  deletesCopy = deletes;
  v20 = &off_231AED000;
  if (deletesCopy)
  {
    v21 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if ([SpotlightSender jobForTest:options])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v28 = v22;
      v29 = lCopy;
      if ([SpotlightSender jobForDuet:options])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if ([SpotlightSender jobForSuggestions:options])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138413570;
      if ([SpotlightSender jobForTextUnderstanding:options])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v40 = dCopy;
      v41 = 2048;
      optionsCopy = options;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v23;
      lCopy = v29;
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
    v37 = deletesCopy;
    v38 = dCopy;
    [SpotlightSender dispatchWithOptions:options block:v36];
  }

  if (itemsCopy)
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
    v31 = lCopy;
    v32 = textCopy;
    v33 = itemsCopy;
    v34 = dCopy;
    v35 = classCopy;
    [SpotlightSender dispatchWithOptions:options block:v30];
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

- (void)willModifySearchableItemsWithIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v25 = dCopy;
    v26 = 2048;
    v27 = [identifiersCopy count];
    v28 = 2112;
    v29 = identifiersCopy;
    v30 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "(%@) willModifySearchableItemsWithIdentifiers, identifiers/%ld:%@, options:0x%lx", buf, 0x2Au);
  }

  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:identifiersCopy protectionClass:classCopy bundleID:dCopy];
  if (v18)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v18);
LABEL_15:
    }
  }

  else
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v20 = self->_indexer;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __123__MDSearchableIndexService_willModifySearchableItemsWithIdentifiers_protectionClass_forBundleID_options_completionHandler___block_invoke;
        v22[3] = &unk_278935048;
        v23 = handlerCopy;
        [(MDIndexer *)v20 willModifySearchableItemsWithIdentifiers:identifiersCopy protectionClass:classCopy forBundleID:dCopy options:options completionHandler:v22];
        handlerCopy = v23;
        goto LABEL_15;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
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

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers protectionClass:(id)class forBundleID:(id)d fromClient:(id)client options:(int64_t)options completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  classCopy = class;
  dCopy = d;
  clientCopy = client;
  handlerCopy = handler;
  v19 = objc_autoreleasePoolPush();
  clientBundleID = self->_clientBundleID;
  if (dCopy)
  {
    if (clientBundleID && ![(NSString *)dCopy isEqualToString:?])
    {
      goto LABEL_8;
    }
  }

  else
  {
    dCopy = clientBundleID;
  }

  if (!self->_protectionClass)
  {

    classCopy = 0;
  }

LABEL_8:
  v21 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = dCopy;
    v40 = 2112;
    v41 = classCopy;
    v42 = 2048;
    v43 = [identifiersCopy count];
    _os_log_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEFAULT, "(%@) deleteSearchableItemsWithDomainIdentifiers, protectionClass:%@, domainIdentifier num:%ld", buf, 0x20u);
  }

  v22 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteSearchableItemsWithDomainIdentifiers:protectionClass:forBundleID:fromClient:options:completionHandler:];
  }

  v23 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:identifiersCopy protectionClass:classCopy bundleID:dCopy];
  if (v23)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v23);
LABEL_23:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      +[CSRecieverState sharedInstance];
      v32 = identifiersCopy;
      v24 = clientCopy;
      v25 = v19;
      v27 = v26 = options;
      v28 = [v27 checkBundleIdentifier:dCopy];

      options = v26;
      v19 = v25;
      clientCopy = v24;
      identifiersCopy = v32;
      if (v28)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke;
        v35[3] = &unk_278937758;
        v36 = v32;
        v37 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v35];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v30 = self->_indexer;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __136__MDSearchableIndexService_deleteSearchableItemsWithDomainIdentifiers_protectionClass_forBundleID_fromClient_options_completionHandler___block_invoke_2;
        v33[3] = &unk_278935048;
        v34 = handlerCopy;
        [(MDIndexer *)v30 deleteSearchableItemsWithDomainIdentifiers:identifiersCopy protectionClass:classCopy forBundleID:dCopy fromClient:clientCopy options:options completionHandler:v33];
        handlerCopy = v34;
        goto LABEL_23;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
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

- (void)fetchLastClientStateWithProtectionClass:(id)class forBundleID:(id)d clientStateName:(id)name options:(int64_t)options completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  classCopy = class;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    protectionClass = [(MDSearchableIndexService *)self protectionClass];
    *buf = 138413314;
    v26 = dCopy;
    v27 = 2112;
    v28 = nameCopy;
    v29 = 2112;
    v30 = classCopy;
    v31 = 2112;
    v32 = protectionClass;
    v33 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "(%@) fetchLastClientStateWithProtectionClass, clientStateName:%@, protectionClass:%@/%@, options:0x%lx", buf, 0x34u);
  }

  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v18)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v18);
LABEL_15:
    }
  }

  else
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v20 = self->_indexer;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __122__MDSearchableIndexService_fetchLastClientStateWithProtectionClass_forBundleID_clientStateName_options_completionHandler___block_invoke;
        v23[3] = &unk_2789377A8;
        v24 = handlerCopy;
        [(MDIndexer *)v20 fetchLastClientStateWithProtectionClass:classCopy forBundleID:dCopy clientStateName:nameCopy options:options completionHandler:v23];
        handlerCopy = v24;
        goto LABEL_15;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, 0);
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

- (void)updateCorrectionsWithFilePath:(id)path options:(int64_t)options completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService updateCorrectionsWithFilePath:options:completionHandler:];
  }

  v10 = +[SPCorrectionHandler sharedHandler];
  [v10 updateWithFilePath:pathCopy];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)fetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers userCtx:(id)ctx flags:(unsigned int)flags qos:(unsigned int)qos reply:(id)self0 completionHandler:(id)self1
{
  attributesCopy = attributes;
  classCopy = class;
  dCopy = d;
  identifiersCopy = identifiers;
  ctxCopy = ctx;
  replyCopy = reply;
  handlerCopy = handler;
  v23 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = identifiersCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:v24 protectionClass:classCopy bundleID:dCopy];
  if (v25)
  {
    v26 = v25;
    handlerCopy[2](handlerCopy, v25);
  }

  else
  {
    indexer = self->_indexer;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __123__MDSearchableIndexService_fetchAttributes_protectionClass_bundleID_identifiers_userCtx_flags_qos_reply_completionHandler___block_invoke;
    v30[3] = &unk_2789377D0;
    v31 = replyCopy;
    v32 = handlerCopy;
    LODWORD(v28) = qos;
    [(MDIndexer *)indexer fetchAttributes:attributesCopy protectionClass:classCopy bundleID:dCopy identifiers:identifiersCopy userCtx:ctxCopy flags:flags qos:v28 completionHandler:v30];

    handlerCopy = v31;
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

- (void)deleteSearchableItemsSinceDate:(id)date protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  classCopy = class;
  dCopy = d;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = dCopy;
    v31 = 2112;
    v32 = dateCopy;
    v33 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEBUG, "(%@) deleteSearchableItemsSinceDate, startDate:%@, options:0x%lx", buf, 0x20u);
  }

  v18 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v18)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v18);
LABEL_18:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v19 = +[CSRecieverState sharedInstance];
      v20 = [v19 checkBundleIdentifier:dCopy];

      if (v20)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke;
        v26[3] = &unk_278937758;
        v27 = dateCopy;
        v28 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v26];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v22 = self->_indexer;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __113__MDSearchableIndexService_deleteSearchableItemsSinceDate_protectionClass_forBundleID_options_completionHandler___block_invoke_2;
        v24[3] = &unk_278935048;
        v25 = handlerCopy;
        [(MDIndexer *)v22 deleteSearchableItemsSinceDate:dateCopy protectionClass:classCopy forBundleID:dCopy options:options completionHandler:v24];
        handlerCopy = v25;
        goto LABEL_18;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
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

- (void)provideDataForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  typeCopy = type;
  handlerCopy = handler;
  if (!-[MDSearchableIndexService searchInternal](self, "searchInternal") && (!-[MDSearchableIndexService allowMail](self, "allowMail") || ([bundleCopy isEqualToString:@"com.apple.mobilemail"] & 1) == 0) && (!-[MDSearchableIndexService allowMessagesContent](self, "allowMessagesContent") || (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.MobileSMS") & 1) == 0))
  {
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v16);

    goto LABEL_13;
  }

  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer provideDataForBundle:bundleCopy identifier:identifierCopy type:typeCopy completionHandler:handlerCopy];
LABEL_13:

    goto LABEL_14;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)provideFileURLForBundle:(id)bundle identifier:(id)identifier type:(id)type completionHandler:(id)handler
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  typeCopy = type;
  handlerCopy = handler;
  if (![(MDSearchableIndexService *)self searchInternal])
  {
    v15 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MDSearchableIndexService provideDataForBundle:identifier:type:completionHandler:];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1003 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v16);

    goto LABEL_9;
  }

  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer provideFileURLForBundle:bundleCopy identifier:identifierCopy type:typeCopy completionHandler:handlerCopy];
LABEL_9:

    goto LABEL_10;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)prepareIndexingWhileLocked:(id)locked protectionClass:(id)class holdAssertionFor:(double)for completionHandler:(id)handler
{
  lockedCopy = locked;
  classCopy = class;
  handlerCopy = handler;
  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer prepareIndexingWhileLocked:lockedCopy protectionClass:classCopy holdAssertionFor:handlerCopy completionHandler:for];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    handlerCopy[2](handlerCopy, v13);
  }

LABEL_6:
}

- (void)finishIndexingWhileLocked:(id)locked protectionClass:(id)class completionHandler:(id)handler
{
  lockedCopy = locked;
  classCopy = class;
  handlerCopy = handler;
  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer finishIndexingWhileLocked:lockedCopy protectionClass:classCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1 userInfo:0];
    handlerCopy[2](handlerCopy, v11);
  }

LABEL_6:
}

- (void)_deleteAllSearchableItemsWithBundleID:(id)d protectionClass:(id)class shouldGC:(BOOL)c options:(int64_t)options deleteAllReason:(int64_t)reason completionHandler:(id)handler
{
  cCopy = c;
  v62 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  clientConnection4 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v18 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    optionsCopy = options;
    v19 = "NO";
    if (cCopy)
    {
      v19 = "YES";
    }

    v36 = v19;
    v37 = qos_class_self();
    clientConnection = [(MDSearchableIndexService *)self clientConnection];
    reasonCopy = reason;
    if (clientConnection)
    {
      clientConnection2 = [(MDSearchableIndexService *)self clientConnection];
      name = xpc_connection_get_name(clientConnection2);
    }

    else
    {
      name = "";
    }

    v39 = clientConnection4;
    clientConnection3 = [(MDSearchableIndexService *)self clientConnection];
    v23 = clientConnection3;
    if (clientConnection3)
    {
      clientConnection4 = [(MDSearchableIndexService *)self clientConnection];
      LODWORD(clientConnection3) = xpc_connection_get_pid(clientConnection4);
    }

    *buf = 138413826;
    v49 = dCopy;
    v50 = 2112;
    v51 = classCopy;
    v52 = 2080;
    v53 = v36;
    v54 = 2048;
    v55 = optionsCopy;
    v56 = 2048;
    v57 = v37;
    v58 = 2080;
    v59 = name;
    v60 = 1024;
    v61 = clientConnection3;
    _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "(%@) deleteAllSearchableItemsWithBundleID, protectionClass:%@, shouldGC:%s, options:0x%lx, qos:0x%lx conn:%s(%d)", buf, 0x44u);
    if (v23)
    {
    }

    if (clientConnection)
    {
    }

    reason = reasonCopy;
    clientConnection4 = v39;
    options = optionsCopy;
  }

  v24 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:dCopy protectionClass:classCopy];
  if (v24)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v24);
LABEL_31:
    }
  }

  else
  {
    v40 = cCopy;
    if (!self->_isPrivate)
    {
      v25 = +[CSRecieverState sharedInstance];
      v26 = [v25 checkBundleIdentifier:dCopy];

      if (v26)
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke;
        v46[3] = &unk_2789377F8;
        v47 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v46];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      v28 = objc_opt_respondsToSelector();
      v29 = self->_indexer;
      if (v28)
      {
        clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __133__MDSearchableIndexService__deleteAllSearchableItemsWithBundleID_protectionClass_shouldGC_options_deleteAllReason_completionHandler___block_invoke_2;
        v44[3] = &unk_278935048;
        v45 = handlerCopy;
        [(MDIndexer *)v29 deleteAllSearchableItemsWithBundleID:dCopy fromClient:clientBundleID protectionClass:classCopy shouldGC:v40 deleteAllReason:reason completionHandler:v44];

        handlerCopy = v45;
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
        v43 = handlerCopy;
        [(MDIndexer *)v32 deleteAllSearchableItemsWithProtectionClass:classCopy forBundleID:dCopy options:options deleteAllReason:reason completionHandler:v42];
        handlerCopy = v43;
        goto LABEL_31;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_31;
    }
  }

  objc_autoreleasePoolPop(clientConnection4);
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

- (void)changeStateOfSearchableItemsWithUIDs:(id)ds toState:(int64_t)state protectionClass:(id)class forBundleID:(id)d forUTIType:(id)type options:(int64_t)options
{
  v58 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  classCopy = class;
  dCopy = d;
  typeCopy = type;
  v18 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:dsCopy protectionClass:classCopy bundleID:dCopy];
  if (!v19)
  {
    v32 = v18;
    v20 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if ([SpotlightSender jobForTest:options])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v31 = v21;
      if ([SpotlightSender jobForDuet:options])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v30 = v22;
      if ([SpotlightSender jobForSuggestions:options])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if ([SpotlightSender jobForTextUnderstanding:options, v23])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138414594;
      v39 = dCopy;
      v40 = 2112;
      v41 = typeCopy;
      v42 = 2048;
      stateCopy = state;
      v44 = 2048;
      optionsCopy = options;
      v46 = 2112;
      v47 = v31;
      v48 = 2112;
      v49 = v30;
      v50 = 2112;
      v51 = v29;
      v52 = 2112;
      v53 = v24;
      v54 = 2048;
      v55 = [dsCopy count];
      v56 = 2112;
      v57 = dsCopy;
      _os_log_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEFAULT, "(%@) changeStateOfSearchableItemsWithUIDs (delete or purge), uti:%@, state:%ld, options:0x%lx, test/duet/suggestions/textunderstanding:%@/%@/%@/%@, identifiers/%ld:%@", buf, 0x66u);
    }

    if (!self->_isPrivate)
    {
      v25 = +[CSRecieverState sharedInstance];
      v26 = [v25 checkBundleIdentifier:dCopy];

      if (v26)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __120__MDSearchableIndexService_changeStateOfSearchableItemsWithUIDs_toState_protectionClass_forBundleID_forUTIType_options___block_invoke;
        v33[3] = &unk_278937820;
        stateCopy2 = state;
        v34 = dsCopy;
        v35 = dCopy;
        v36 = typeCopy;
        [SpotlightSender dispatchWithOptions:options block:v33];
      }
    }

    v18 = v32;
    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        [(MDIndexer *)self->_indexer changeStateOfSearchableItemsWithUIDs:dsCopy toState:state protectionClass:classCopy forBundleID:dCopy forUTIType:typeCopy options:options];
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

- (void)userPerformedAction:(id)action withItem:(id)item protectionClass:(id)class
{
  v30 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemCopy = item;
  classCopy = class;
  v11 = objc_autoreleasePoolPush();
  if (!classCopy)
  {
    classCopy = [(MDSearchableIndexService *)self protectionClass];
  }

  v12 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    *buf = 138413058;
    v23 = clientBundleID;
    v24 = 2112;
    v25 = actionCopy;
    v26 = 2112;
    v27 = itemCopy;
    v28 = 2112;
    v29 = classCopy;
    _os_log_debug_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEBUG, "(%@) userPerformedAction, action:%@, item:%@, protectionClass:%@", buf, 0x2Au);
  }

  if (actionCopy && itemCopy)
  {
    v21 = itemCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v14 = [(MDSearchableIndexService *)self _checkItems:v13 identifiers:0 protectionClass:classCopy bundleID:0];

    if (!v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CC34F8]) initWithAction:actionCopy item:itemCopy];
      [v15 setProtectionClass:classCopy];
      [(MDSearchableIndexService *)self _makeActivityQueueIfNecessary];
      activityQueue = [(MDSearchableIndexService *)self activityQueue];
      v20 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [activityQueue queueItems:v17];
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

- (void)_dispatchActivities:(id)activities bundleID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dCopy = d;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = activitiesCopy;
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
        protectionClass = [v13 protectionClass];
        v15 = [v7 objectForKeyedSubscript:protectionClass];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v7 setObject:v15 forKeyedSubscript:protectionClass];
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
  v20 = dCopy;
  selfCopy = self;
  v16 = dCopy;
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

- (void)_dispatchActivities:(id)activities
{
  v41 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
  if (self->_isInternal)
  {
    selfCopy = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = activitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      bundleID = 0;
      v10 = *v36;
LABEL_4:
      v11 = 0;
      v12 = bundleID;
      while (1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v6);
        }

        item = [*(*(&v35 + 1) + 8 * v11) item];
        bundleID = [item bundleID];

        if ([bundleID length])
        {
          if (![clientBundleID isEqualToString:bundleID])
          {
            break;
          }
        }

        ++v11;
        v12 = bundleID;
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
        v14 = selfCopy;
        v15 = v6;
        v16 = bundleID;
        goto LABEL_17;
      }

      v28 = activitiesCopy;
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
            item2 = [v23 item];
            bundleID2 = [item2 bundleID];

            if ([bundleID2 length])
            {
              bundleID = bundleID2;
            }

            else
            {
              bundleID = clientBundleID;
            }

            v26 = [v17 objectForKeyedSubscript:bundleID];
            if (!v26)
            {
              v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v17 setObject:v26 forKeyedSubscript:bundleID];
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
      v30[4] = selfCopy;
      [v17 enumerateKeysAndObjectsUsingBlock:v30];

      activitiesCopy = v28;
    }

    else
    {
      bundleID = 0;
LABEL_16:

      v14 = selfCopy;
      v15 = v6;
      v16 = clientBundleID;
LABEL_17:
      [(MDSearchableIndexService *)v14 _dispatchActivities:v15 bundleID:v16];
    }
  }

  else
  {
    [(MDSearchableIndexService *)self _dispatchActivities:activitiesCopy bundleID:clientBundleID];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithProtectionClass:(id)class completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  classCopy = class;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  if (!classCopy)
  {
    classCopy = [(MDSearchableIndexService *)self protectionClass];
  }

  clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
  v10 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    processDescription = [(MDSearchableIndexService *)self processDescription];
    v16 = 138412802;
    v17 = clientBundleID;
    v18 = 2112;
    v19 = classCopy;
    v20 = 2112;
    v21 = processDescription;
    _os_log_debug_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEBUG, "(%@) checkInWithProtectionClass, protectionClass:%@, process:%@", &v16, 0x20u);
  }

  v11 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:0];
  if (v11)
  {
    if (handlerCopy)
    {
LABEL_16:
      handlerCopy[2](handlerCopy, 0, v11);
    }
  }

  else if (clientBundleID)
  {
    indexer = self->_indexer;
    if (handlerCopy && !indexer)
    {
      handlerCopy[2](handlerCopy, 0, 0);
      indexer = self->_indexer;
    }

    [(MDIndexer *)indexer clientDidCheckin:clientBundleID protectionClass:classCopy service:self completionHandler:handlerCopy];
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
    if (handlerCopy)
    {
      goto LABEL_16;
    }
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)performIndexJob:(id)job protectionClass:(id)class acknowledgementHandler:(id)handler
{
  jobCopy = job;
  classCopy = class;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  clientConnection = [(MDSearchableIndexService *)self clientConnection];
  clientQueue = [(MDSearchableIndexService *)self clientQueue];
  v14 = clientQueue;
  if (clientConnection && clientQueue)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "command", "perform-job");
    xpc_dictionary = [jobCopy xpc_dictionary];
    xpc_dictionary_set_value(v15, "j", xpc_dictionary);

    if (classCopy)
    {
      xpc_dictionary_set_string(v15, "pc", [classCopy UTF8String]);
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __83__MDSearchableIndexService_performIndexJob_protectionClass_acknowledgementHandler___block_invoke;
    handler[3] = &unk_2789378C0;
    v18 = handlerCopy;
    xpc_connection_send_message_with_reply(clientConnection, v15, v14, handler);

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSIndexErrorDomain" code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
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

- (void)deleteAllUserActivities:(id)activities fromClient:(id)client options:(int64_t)options completionHandler:(id)handler
{
  activitiesCopy = activities;
  clientCopy = client;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  if (!activitiesCopy)
  {
    activitiesCopy = [(MDSearchableIndexService *)self clientBundleID];
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteAllUserActivities:fromClient:options:completionHandler:];
  }

  v15 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:activitiesCopy protectionClass:0];
  if (v15)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v15);
LABEL_16:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:activitiesCopy];

      if (v17)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke;
        v23[3] = &unk_2789377F8;
        v24 = activitiesCopy;
        [SpotlightSender dispatchWithOptions:options block:v23];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v19 = self->_indexer;
        clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __89__MDSearchableIndexService_deleteAllUserActivities_fromClient_options_completionHandler___block_invoke_2;
        v21[3] = &unk_278935048;
        v22 = handlerCopy;
        [(MDIndexer *)v19 deleteAllUserActivities:activitiesCopy fromClient:clientBundleID completionHandler:v21];

        handlerCopy = v22;
        goto LABEL_16;
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
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

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  dCopy = d;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  if (!dCopy)
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteUserActivitiesWithPersistentIdentifiers:bundleID:options:completionHandler:];
  }

  v15 = [(MDSearchableIndexService *)self _checkNonEmptyBundle:dCopy protectionClass:0];
  if (v15)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v15);
LABEL_15:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:dCopy];

      if (v17)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke;
        v21[3] = &unk_2789378E8;
        v22 = identifiersCopy;
        v23 = dCopy;
        v24 = handlerCopy;
        [SpotlightSender dispatchWithOptions:options block:v21];
      }
    }

    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      data = [identifiersCopy data];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __109__MDSearchableIndexService_deleteUserActivitiesWithPersistentIdentifiers_bundleID_options_completionHandler___block_invoke_2;
      v19[3] = &unk_278937910;
      v20 = handlerCopy;
      [(MDSearchableIndexService *)self _processIndexDataForBundle:dCopy protectionClass:0 personaID:0 options:options items:0 itemsText:0 itemsHTML:0 clientState:0 expectedClientState:0 clientStateName:0 deletes:data completionHandler:v19];

      handlerCopy = v20;
      goto LABEL_15;
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
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

- (void)deleteActionsBeforeTime:(double)time options:(int64_t)options completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = objc_autoreleasePoolPush();
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    timeCopy = time;
    v19 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "deleteActionsBeforeTime:%lu options:0x%lx", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v12 = self->_indexer;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __78__MDSearchableIndexService_deleteActionsBeforeTime_options_completionHandler___block_invoke;
        v15[3] = &unk_278935048;
        v16 = handlerCopy;
        [(MDIndexer *)v12 deleteActionsBeforeTime:v15 completionHandler:time];
        handlerCopy = v16;
LABEL_11:

        goto LABEL_12;
      }
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_11;
    }
  }

  else if (handlerCopy)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13);

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

- (void)deleteActionsWithIdentifiers:(id)identifiers options:(int64_t)options completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v19 = [identifiersCopy count];
    v20 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "deleteActionsWithIdentifiers:%lu options:0x%lx", buf, 0x16u);
  }

  if (self->_isInternal)
  {
    if ([(MDSearchableIndexService *)self _jobForIndex:options])
    {
      indexer = self->_indexer;
      if (objc_opt_respondsToSelector())
      {
        v13 = self->_indexer;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __83__MDSearchableIndexService_deleteActionsWithIdentifiers_options_completionHandler___block_invoke;
        v16[3] = &unk_278935048;
        v17 = handlerCopy;
        [(MDIndexer *)v13 deleteActionsWithIdentifiers:identifiersCopy completionHandler:v16];
        handlerCopy = v17;
LABEL_11:

        goto LABEL_12;
      }
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_11;
    }
  }

  else if (handlerCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v14);

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

- (void)_forceAppWithBundleID:(id)d toPerformJob:(id)job
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  jobCopy = job;
  v8 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    v13 = 138412802;
    v14 = clientBundleID;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = jobCopy;
    _os_log_debug_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEBUG, "(%@) _forceAppWithBundleID, bundleID:%@, job:%@", &v13, 0x20u);
  }

  v9 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:dCopy];
  if (!v9)
  {
    mEMORY[0x277CC3538] = [MEMORY[0x277CC3538] sharedManager];
    [mEMORY[0x277CC3538] indexRequestsPerformJob:jobCopy forBundle:dCopy completionHandler:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performDataMigrationWithTimeout:(id)timeout completionHandler:(id)handler
{
  timeoutCopy = timeout;
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(9, 0);
  v10 = handlerCopy;
  v8 = handlerCopy;
  v9 = timeoutCopy;
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

- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  nameCopy = name;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v19 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v20 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v38 = dCopy;
    v39 = 2112;
    v40 = nameCopy;
    v41 = 2112;
    v42 = classCopy;
    v43 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&dword_231A35000, v20, OS_LOG_TYPE_DEBUG, "(%@) addInteraction:%@, protectionClass:%@, options:0x%lx", buf, 0x2Au);
  }

  v21 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v21)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      +[CSRecieverState sharedInstance];
      v31 = interactionCopy;
      v22 = v19;
      v23 = nameCopy;
      v25 = v24 = options;
      v26 = [v25 checkBundleIdentifier:dCopy];

      v27 = v24;
      nameCopy = v23;
      v19 = v22;
      interactionCopy = v31;
      if (v26)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __110__MDSearchableIndexService_addInteraction_intentClassName_bundleID_protectionClass_options_completionHandler___block_invoke;
        v32[3] = &unk_278937988;
        v33 = v31;
        v34 = nameCopy;
        v35 = dCopy;
        v36 = classCopy;
        [SpotlightSender dispatchWithOptions:v27 block:v32];
      }
    }

    if (interactionCopy)
    {
      v28 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:interactionCopy error:0];
      if (v28)
      {
        indexer = self->_indexer;
        if (objc_opt_respondsToSelector())
        {
          [(MDIndexer *)self->_indexer addInteraction:v28 bundleID:dCopy protectionClass:classCopy];
        }
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v19);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = dCopy;
    v29 = 2112;
    v30 = classCopy;
    v31 = 2048;
    v32 = [identifiersCopy count];
    _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "(%@) deleteInteractionsWithIdentifiers, protectionClass:%@, identifiers num:%lu", buf, 0x20u);
  }

  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteInteractionsWithIdentifiers:identifiersCopy bundleID:options protectionClass:? options:? completionHandler:?];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v19)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v19);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v20 = +[CSRecieverState sharedInstance];
      v21 = [v20 checkBundleIdentifier:dCopy];

      if (v21)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __113__MDSearchableIndexService_deleteInteractionsWithIdentifiers_bundleID_protectionClass_options_completionHandler___block_invoke;
        v23[3] = &unk_278937848;
        v24 = identifiersCopy;
        v25 = dCopy;
        v26 = classCopy;
        [SpotlightSender dispatchWithOptions:options block:v23];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = dCopy;
    v29 = 2112;
    v30 = classCopy;
    v31 = 2048;
    v32 = [identifiersCopy count];
    _os_log_impl(&dword_231A35000, v17, OS_LOG_TYPE_DEFAULT, "(%@) deleteInteractionsWithGroupIdentifiers, protectionClass:%@, identifiers num:%lu", buf, 0x20u);
  }

  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService deleteInteractionsWithIdentifiers:identifiersCopy bundleID:options protectionClass:? options:? completionHandler:?];
  }

  v19 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v19)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v19);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v20 = +[CSRecieverState sharedInstance];
      v21 = [v20 checkBundleIdentifier:dCopy];

      if (v21)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __118__MDSearchableIndexService_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass_options_completionHandler___block_invoke;
        v23[3] = &unk_278937848;
        v24 = identifiersCopy;
        v25 = dCopy;
        v26 = classCopy;
        [SpotlightSender dispatchWithOptions:options block:v23];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class options:(int64_t)options completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  classCopy = [(MDSearchableIndexService *)self protectionClass];
LABEL_3:
  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = dCopy;
    v29 = 2112;
    v30 = classCopy;
    v31 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_DEFAULT, "(%@) deleteAllInteractionsWithBundleID, protectionClass:%@, options:0x%lx", buf, 0x20u);
  }

  v15 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:classCopy bundleID:dCopy];
  if (v15)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v15);
LABEL_19:
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:dCopy];

      if (v17)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke;
        v24[3] = &unk_278937758;
        v25 = dCopy;
        v26 = classCopy;
        [SpotlightSender dispatchWithOptions:options block:v24];
      }
    }

    if ([dCopy length])
    {
      if ([(MDSearchableIndexService *)self _jobForIndex:options])
      {
        indexer = self->_indexer;
        if (objc_opt_respondsToSelector())
        {
          v19 = self->_indexer;
          clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __104__MDSearchableIndexService_deleteAllInteractionsWithBundleID_protectionClass_options_completionHandler___block_invoke_2;
          v22[3] = &unk_278935048;
          v23 = handlerCopy;
          [(MDIndexer *)v19 deleteAllInteractionsWithBundleID:dCopy fromClient:clientBundleID completionHandler:v22];

          handlerCopy = v23;
          goto LABEL_19;
        }
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
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

- (void)donateRelevantActions:(id)actions bundleID:(id)d options:(int64_t)options completionHandler:(id)handler
{
  actionsCopy = actions;
  dCopy = d;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  if (!dCopy)
  {
    dCopy = [(MDSearchableIndexService *)self clientBundleID];
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MDSearchableIndexService donateRelevantActions:bundleID:options:completionHandler:];
  }

  v15 = [(MDSearchableIndexService *)self _checkItems:0 identifiers:0 protectionClass:0 bundleID:dCopy];
  if (v15)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v15);
    }
  }

  else
  {
    if (!self->_isPrivate)
    {
      v16 = +[CSRecieverState sharedInstance];
      v17 = [v16 checkBundleIdentifier:dCopy];

      if (v17)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __85__MDSearchableIndexService_donateRelevantActions_bundleID_options_completionHandler___block_invoke;
        v18[3] = &unk_278937758;
        v19 = actionsCopy;
        v20 = dCopy;
        [SpotlightSender dispatchWithOptions:options block:v18];
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (BOOL)checkIn:(id)in
{
  v57 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v5 = xpc_dictionary_get_remote_connection(inCopy);
  reply = xpc_dictionary_create_reply(inCopy);
  if (v5)
  {
    selfCopy = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:inCopy];
    uint64 = xpc_dictionary_get_uint64(inCopy, "id");
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
      v20 = selfCopy;
      v21 = MEMORY[0x2383760E0](v41);
    }

    else
    {
      v21 = 0;
      v20 = selfCopy;
    }

    if (v20->_isExtension)
    {
      v22 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        processDescription = [(MDSearchableIndexService *)v20 processDescription];
        *buf = 138412290;
        v56 = processDescription;
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

- (BOOL)processIndexData:(id)data
{
  dataCopy = data;
  v5 = xpc_dictionary_get_remote_connection(dataCopy);
  reply = xpc_dictionary_create_reply(dataCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    value = xpc_dictionary_get_uint64(dataCopy, "id");
    v9 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:dataCopy];
    v10 = v9;
    if (v9)
    {
      clientBundleID = v9;
    }

    else
    {
      clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    }

    v91 = clientBundleID;

    clientPersonaID = [(MDSearchableIndexService *)self clientPersonaID];
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:dataCopy];
    v13 = v12;
    if (v12)
    {
      protectionClass = v12;
    }

    else
    {
      protectionClass = [(MDSearchableIndexService *)self protectionClass];
    }

    v15 = protectionClass;

    uint64 = xpc_dictionary_get_uint64(dataCopy, "opt");
    v16 = [MEMORY[0x277CC3510] dataWrapperForKey:"items" sizeKey:"items-size" fromXPCDictionary:dataCopy];
    v17 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:dataCopy];
    v90 = [MEMORY[0x277CC3510] dataWrapperForKey:"client-state-key" sizeKey:"client-state-size" fromXPCDictionary:dataCopy];
    v84 = [MEMORY[0x277CC3510] dataWrapperForKey:"expected-client-state-key" sizeKey:"expected-client-state-size" fromXPCDictionary:dataCopy];
    v89 = [MEMORY[0x277CC3510] copyNSStringForKey:"n" fromXPCDictionary:dataCopy];
    if (v16)
    {
      v18 = objc_alloc(MEMORY[0x277CC33C8]);
      data = [v16 data];
      v94 = [v18 initWithData:data];
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
      data2 = [v17 data];
      v92 = [v20 initWithData:data2];
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
        v79 = [MEMORY[0x277CC3510] dataWrapperForKey:"textdata" sizeKey:"text-data-size" fromXPCDictionary:dataCopy];
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
            v80 = [MEMORY[0x277CC3510] dataWrapperForKey:"htmldata" sizeKey:"html-data-size" fromXPCDictionary:dataCopy];
            v45 = v94;
            if (v80)
            {
              v46 = objc_alloc(MEMORY[0x277CC33C8]);
              data3 = [v80 data];
              v48 = [v46 initWithData:data3];

              [v48 setBackingStore:v80];
            }

            else
            {
              v48 = 0;
            }

            if (v79)
            {
              v74 = objc_alloc(MEMORY[0x277CC33C8]);
              data4 = [v79 data];
              v73 = [v74 initWithData:data4];

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
        data5 = [v50 data];
        data6 = [v51 data];
        data7 = [v52 data];
        data8 = [v54 data];
        data9 = [v84 data];
        data10 = [v53 data];
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
        [(MDSearchableIndexService *)self _processIndexDataForBundle:v91 protectionClass:v93 personaID:clientPersonaID options:uint64 items:data5 itemsText:data6 itemsHTML:data7 clientState:data8 expectedClientState:data9 clientStateName:v89 deletes:data10 completionHandler:v95];

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

- (BOOL)fetchBundleIDs:(id)ds
{
  dsCopy = ds;
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

  v6 = xpc_dictionary_get_remote_connection(dsCopy);
  reply = xpc_dictionary_create_reply(dsCopy);
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
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"ipc" fromXPCDictionary:dsCopy];
    v12 = v11;
    if (v11)
    {
      protectionClass = v11;
    }

    else
    {
      protectionClass = [(MDSearchableIndexService *)self protectionClass];
    }

    v14 = protectionClass;

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

- (BOOL)prepareIndexingLocked:(id)locked
{
  lockedCopy = locked;
  v5 = xpc_dictionary_get_remote_connection(lockedCopy);
  reply = xpc_dictionary_create_reply(lockedCopy);
  if (v5)
  {
    selfCopy = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:lockedCopy];
    v37 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:lockedCopy];
    v8 = xpc_dictionary_get_double(lockedCopy, "time");
    uint64 = xpc_dictionary_get_uint64(lockedCopy, "id");
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

    [(MDSearchableIndexService *)selfCopy prepareIndexingWhileLocked:v37 protectionClass:v7 holdAssertionFor:v21 completionHandler:v8];

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

- (BOOL)finishIndexingLocked:(id)locked
{
  lockedCopy = locked;
  v5 = xpc_dictionary_get_remote_connection(lockedCopy);
  reply = xpc_dictionary_create_reply(lockedCopy);
  if (v5)
  {
    selfCopy = self;
    v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:lockedCopy];
    v36 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:lockedCopy];
    uint64 = xpc_dictionary_get_uint64(lockedCopy, "id");
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

    [(MDSearchableIndexService *)selfCopy finishIndexingWhileLocked:v36 protectionClass:v7 completionHandler:v20];

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

- (void)indexSearchableItems:(id)items deleteSearchableItemsWithIdentifiers:(id)identifiers clientState:(id)state clientStateName:(id)name protectionClass:(id)class forBundleID:(id)d options:(int64_t)options completionHandler:(id)self0
{
  handlerCopy = handler;
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService indexSearchableItems:deleteSearchableItemsWithIdentifiers:clientState:clientStateName:protectionClass:forBundleID:options:completionHandler:];
  }

  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v12);
  }
}

- (void)indexFromBundle:(id)bundle protectionClass:(id)class options:(int64_t)options items:(id)items itemsText:(id)text itemsHTML:(id)l clientState:(id)state expectedClientState:(id)self0 clientStateName:(id)self1 deletes:(id)self2 userActivities:(BOOL)self3 completionHandler:(id)self4
{
  handlerCopy = handler;
  v15 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MDSearchableIndexService indexFromBundle:protectionClass:options:items:itemsText:itemsHTML:clientState:expectedClientState:clientStateName:deletes:userActivities:completionHandler:];
  }

  if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC22E8] code:-1000 userInfo:0];
    handlerCopy[2](handlerCopy, v16);
  }
}

- (BOOL)willModify:(id)modify
{
  modifyCopy = modify;
  v5 = xpc_dictionary_get_remote_connection(modifyCopy);
  reply = xpc_dictionary_create_reply(modifyCopy);
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
    selfCopy = self;
    v43 = v9;
    uint64 = xpc_dictionary_get_uint64(modifyCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:modifyCopy];
    v48 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:modifyCopy];
    v45 = xpc_dictionary_get_uint64(modifyCopy, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:modifyCopy];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v44 = v12;
    data = [v12 data];
    v15 = [v13 initWithData:data];

    v42 = v15;
    decode = [v15 decode];
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
    [(MDSearchableIndexService *)selfCopy willModifySearchableItemsWithIdentifiers:decode protectionClass:v11 forBundleID:v48 options:v45 completionHandler:v49];

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

- (BOOL)deleteDomains:(id)domains
{
  domainsCopy = domains;
  v5 = xpc_dictionary_get_remote_connection(domainsCopy);
  reply = xpc_dictionary_create_reply(domainsCopy);
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
    selfCopy = self;
    v44 = v9;
    uint64 = xpc_dictionary_get_uint64(domainsCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:domainsCopy];
    v48 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:domainsCopy];
    v46 = xpc_dictionary_get_uint64(domainsCopy, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:domainsCopy];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v45 = v12;
    data = [v12 data];
    v15 = [v13 initWithData:data];

    v43 = v15;
    decode = [v15 decode];
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
    clientBundleID = [(MDSearchableIndexService *)selfCopy clientBundleID];
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
    [(MDSearchableIndexService *)selfCopy deleteSearchableItemsWithDomainIdentifiers:decode protectionClass:v11 forBundleID:v48 fromClient:clientBundleID options:v46 completionHandler:v50];

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

- (BOOL)deleteBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = xpc_dictionary_get_remote_connection(bundleCopy);
  reply = xpc_dictionary_create_reply(bundleCopy);
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
    selfCopy = self;
    v37 = v9;
    uint64 = xpc_dictionary_get_uint64(bundleCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:bundleCopy];
    v41 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:bundleCopy];
    v39 = xpc_dictionary_get_uint64(bundleCopy, "opt");
    int64 = xpc_dictionary_get_int64(bundleCopy, "dar");
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
    [(MDSearchableIndexService *)selfCopy _deleteAllSearchableItemsWithBundleID:v41 protectionClass:v11 shouldGC:1 options:v39 deleteAllReason:int64 completionHandler:v42];

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

- (BOOL)deleteSinceDate:(id)date
{
  dateCopy = date;
  v5 = xpc_dictionary_get_remote_connection(dateCopy);
  reply = xpc_dictionary_create_reply(dateCopy);
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
    selfCopy = self;
    v39 = v9;
    uint64 = xpc_dictionary_get_uint64(dateCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:dateCopy];
    v42 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:dateCopy];
    v40 = xpc_dictionary_get_uint64(dateCopy, "opt");
    v12 = xpc_dictionary_get_double(dateCopy, "time");
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
    [(MDSearchableIndexService *)selfCopy deleteSearchableItemsSinceDate:v24 protectionClass:v11 forBundleID:v42 options:v40 completionHandler:v43];

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

- (void)_runLibraryDeletedCommand:(id)command
{
  v3 = MEMORY[0x277CCAE80];
  commandCopy = command;
  v7 = [[v3 alloc] initWithMachServiceName:@"com.apple.photos.service" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846DBD48];
  [v7 setRemoteObjectInterface:v5];

  [v7 resume];
  v6 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  [v6 photoLibraryDeletedAtURL:commandCopy reply:&__block_literal_global_214];
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

- (BOOL)photosLibraryDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = xpc_dictionary_get_remote_connection(deletedCopy);
  reply = xpc_dictionary_create_reply(deletedCopy);
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
    uint64 = xpc_dictionary_get_uint64(deletedCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"path" fromXPCDictionary:deletedCopy];
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

- (BOOL)openJournalFile:(id)file
{
  fileCopy = file;
  v5 = xpc_dictionary_get_remote_connection(fileCopy);
  reply = xpc_dictionary_create_reply(fileCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    if ([(MDSearchableIndexService *)self allowOpenJournalFile])
    {
      uint64 = xpc_dictionary_get_uint64(fileCopy, "id");
      v10 = [MEMORY[0x277CC3510] copyNSStringForKey:"journal-name" fromXPCDictionary:fileCopy];
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

- (BOOL)issueCommand:(id)command
{
  commandCopy = command;
  v5 = xpc_dictionary_get_remote_connection(commandCopy);
  reply = xpc_dictionary_create_reply(commandCopy);
  if (v5)
  {
    selfCopy = self;
    v30 = reply;
    uint64 = xpc_dictionary_get_uint64(commandCopy, "id");
    v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"request" fromXPCDictionary:commandCopy];
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
        v16 = xpc_dictionary_dup_fd(commandCopy, "fd");
        string = xpc_dictionary_get_string(commandCopy, "b");
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
        [(MDSearchableIndexService *)selfCopy _issueDiagnose:v16 bundleID:v18 logQuery:v15 completionHandler:v45];
      }

      else
      {
        v19 = xpc_dictionary_dup_fd(commandCopy, "fd");
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
        [(MDSearchableIndexService *)selfCopy _issueCommand:v34 outFileDescriptor:v19 searchContext:0 completionHandler:v31];

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

- (BOOL)fetchClientState:(id)state
{
  stateCopy = state;
  v5 = xpc_dictionary_get_remote_connection(stateCopy);
  reply = xpc_dictionary_create_reply(stateCopy);
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
    selfCopy = self;
    v37 = v9;
    uint64 = xpc_dictionary_get_uint64(stateCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:stateCopy];
    v41 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:stateCopy];
    v38 = xpc_dictionary_get_uint64(stateCopy, "opt");
    v40 = [MEMORY[0x277CC3510] copyNSStringForKey:"client-state-name" fromXPCDictionary:stateCopy];
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
    [(MDSearchableIndexService *)selfCopy fetchLastClientStateWithProtectionClass:v11 forBundleID:v41 clientStateName:v40 options:v38 completionHandler:v42];

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

- (BOOL)fetchAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = xpc_dictionary_get_remote_connection(attributesCopy);
  reply = xpc_dictionary_create_reply(attributesCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v9 = MEMORY[0x277CC3510];
    v10 = xpc_dictionary_get_value(attributesCopy, "identifiers");
    v11 = [v9 copyNSStringArrayFromXPCArray:v10];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v27 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:attributesCopy];
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

      data = [v27 data];
      if (!data)
      {
LABEL_17:
        v29 = 0;
        v8 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v11 = data;
    }

    v54 = v11;
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(attributesCopy, "id");
    v14 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:attributesCopy];
    v53 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:attributesCopy];
    v15 = MEMORY[0x277CC3510];
    v16 = xpc_dictionary_get_value(attributesCopy, "fa");
    v52 = [v15 copyNSStringArrayFromXPCArray:v16];

    v51 = xpc_dictionary_get_BOOL(attributesCopy, "fpa");
    int64 = xpc_dictionary_get_int64(attributesCopy, "qos");
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
    if (selfCopy->_entitledAttributes)
    {
      v31 = *MEMORY[0x277CBECE8];
      v32 = SIUserCtxCreateWithLanguages();
      if (v32)
      {
        entitledAttributes = selfCopy->_entitledAttributes;
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
    [(MDSearchableIndexService *)selfCopy fetchAttributes:v52 protectionClass:v14 bundleID:v53 identifiers:v54 userCtx:v32 flags:v51 qos:v48 reply:v57 completionHandler:v56];

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

- (BOOL)fetchCacheFileDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = xpc_dictionary_get_remote_connection(descriptorsCopy);
  reply = xpc_dictionary_create_reply(descriptorsCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v9 = MEMORY[0x277CC3510];
    v10 = xpc_dictionary_get_value(descriptorsCopy, "identifiers");
    v11 = [v9 copyNSStringArrayFromXPCArray:v10];

    v8 = v11 != 0;
    if (v11)
    {
      selfCopy = self;
      uint64 = xpc_dictionary_get_uint64(descriptorsCopy, "id");
      v45 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:descriptorsCopy];
      v43 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:descriptorsCopy];
      int64 = xpc_dictionary_get_int64(descriptorsCopy, "qos");
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
      if (selfCopy->_entitledAttributes)
      {
        v24 = *MEMORY[0x277CBECE8];
        v25 = SIUserCtxCreateWithLanguages();
        if (v25)
        {
          entitledAttributes = selfCopy->_entitledAttributes;
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
      [(MDSearchableIndexService *)selfCopy fetchCacheFileDescriptorsForProtectionClass:v45 bundleID:v43 identifiers:v11 userCtx:v25 flags:0 qos:int64 reply:v47 completionHandler:v46];

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

- (BOOL)changeState:(id)state
{
  stateCopy = state;
  v5 = xpc_dictionary_get_remote_connection(stateCopy);
  reply = xpc_dictionary_create_reply(stateCopy);
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
    selfCopy = self;
    v38 = v9;
    uint64 = xpc_dictionary_get_uint64(stateCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:stateCopy];
    v44 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:stateCopy];
    v40 = xpc_dictionary_get_uint64(stateCopy, "opt");
    v12 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:stateCopy];
    v13 = objc_alloc(MEMORY[0x277CC33C8]);
    v37 = v12;
    data = [v12 data];
    v15 = [v13 initWithData:data];

    v36 = v15;
    decode = [v15 decode];
    v39 = xpc_dictionary_get_uint64(stateCopy, "modify-state");
    v42 = [MEMORY[0x277CC3510] copyNSStringForKey:"ct" fromXPCDictionary:stateCopy];
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
    [(MDSearchableIndexService *)selfCopy changeStateOfSearchableItemsWithUIDs:decode toState:v39 protectionClass:v11 forBundleID:v44 forUTIType:v42 options:v40];
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

- (BOOL)dataMigration:(id)migration
{
  migrationCopy = migration;
  v5 = xpc_dictionary_get_remote_connection(migrationCopy);
  reply = xpc_dictionary_create_reply(migrationCopy);
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
    uint64 = xpc_dictionary_get_uint64(migrationCopy, "id");
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:{xpc_dictionary_get_double(migrationCopy, "timeout")}];
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

- (BOOL)transferDeleteJournals:(id)journals
{
  journalsCopy = journals;
  v5 = xpc_dictionary_get_remote_connection(journalsCopy);
  reply = xpc_dictionary_create_reply(journalsCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = xpc_dictionary_dup_fd(journalsCopy, "fd");
    v9 = *(v38 + 6);
    v8 = v9 > 0;
    if (v9 >= 1)
    {
      uint64 = xpc_dictionary_get_uint64(journalsCopy, "id");
      string = xpc_dictionary_get_string(journalsCopy, "pc");
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

- (BOOL)deleteAllUserActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = xpc_dictionary_get_remote_connection(activitiesCopy);
  reply = xpc_dictionary_create_reply(activitiesCopy);
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
    uint64 = xpc_dictionary_get_uint64(activitiesCopy, "id");
    v11 = xpc_dictionary_get_uint64(activitiesCopy, "opt");
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:activitiesCopy];
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
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
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
    [(MDSearchableIndexService *)self deleteAllUserActivities:v12 fromClient:clientBundleID options:v11 completionHandler:v27];

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

- (BOOL)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = xpc_dictionary_get_remote_connection(identifiersCopy);
  reply = xpc_dictionary_create_reply(identifiersCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(identifiersCopy, "id");
    v10 = xpc_dictionary_get_uint64(identifiersCopy, "opt");
    v29 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:identifiersCopy];
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
    v16 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:identifiersCopy];
    v8 = v16 != 0;
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CC33C8]);
      data = [v16 data];
      v19 = [v17 initWithData:data];

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
      [(MDSearchableIndexService *)selfCopy deleteUserActivitiesWithPersistentIdentifiers:v19 bundleID:v29 options:v10 completionHandler:v30];
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

- (BOOL)deleteActionsBeforeTime:(id)time
{
  timeCopy = time;
  v5 = xpc_dictionary_get_remote_connection(timeCopy);
  reply = xpc_dictionary_create_reply(timeCopy);
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
    uint64 = xpc_dictionary_get_uint64(timeCopy, "id");
    v11 = xpc_dictionary_get_uint64(timeCopy, "opt");
    v12 = xpc_dictionary_get_double(timeCopy, "time");
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

- (BOOL)deleteActionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = xpc_dictionary_get_remote_connection(identifiersCopy);
  reply = xpc_dictionary_create_reply(identifiersCopy);
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
    uint64 = xpc_dictionary_get_uint64(identifiersCopy, "id");
    v11 = xpc_dictionary_get_uint64(identifiersCopy, "opt");
    v12 = MEMORY[0x277CC3510];
    v13 = xpc_dictionary_get_value(identifiersCopy, "identifiers");
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

- (BOOL)processActivities:(id)activities
{
  v52 = *MEMORY[0x277D85DE8];
  original = activities;
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
    data = [v34 data];
    if ([data length])
    {
      v33 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:data error:0];
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

- (BOOL)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = xpc_dictionary_get_remote_connection(interactionCopy);
  reply = xpc_dictionary_create_reply(interactionCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(interactionCopy, "id");
    v10 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:interactionCopy];
    v39 = xpc_dictionary_get_uint64(interactionCopy, "opt");
    v42 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:interactionCopy];
    v41 = [MEMORY[0x277CC3510] dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:interactionCopy];
    data = [v41 data];
    v43 = [data copy];

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
      v24 = [MEMORY[0x277CC3510] copyNSStringForKey:"icn" fromXPCDictionary:interactionCopy];
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
      [(MDSearchableIndexService *)selfCopy addInteraction:v43 intentClassName:v24 bundleID:v42 protectionClass:v10 options:v39 completionHandler:v44];
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

- (BOOL)_deleteInteractions:(id)interactions forGroup:(BOOL)group
{
  groupCopy = group;
  interactionsCopy = interactions;
  v7 = xpc_dictionary_get_remote_connection(interactionsCopy);
  reply = xpc_dictionary_create_reply(interactionsCopy);
  v9 = reply;
  v10 = 0;
  if (v7 && reply)
  {
    v43 = groupCopy;
    selfCopy = self;
    uint64 = xpc_dictionary_get_uint64(interactionsCopy, "id");
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:interactionsCopy];
    v44 = xpc_dictionary_get_uint64(interactionsCopy, "opt");
    v46 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:interactionsCopy];
    v13 = MEMORY[0x277CC3510];
    v14 = xpc_dictionary_get_value(interactionsCopy, "identifiers");
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
        [(MDSearchableIndexService *)selfCopy deleteInteractionsWithGroupIdentifiers:v47 bundleID:v46 protectionClass:v12 options:v44 completionHandler:v53];
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
        [(MDSearchableIndexService *)selfCopy deleteInteractionsWithIdentifiers:v47 bundleID:v46 protectionClass:v12 options:v44 completionHandler:v48];
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

- (BOOL)deleteAllInteractions:(id)interactions
{
  interactionsCopy = interactions;
  v5 = xpc_dictionary_get_remote_connection(interactionsCopy);
  reply = xpc_dictionary_create_reply(interactionsCopy);
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
    selfCopy = self;
    v37 = v9;
    uint64 = xpc_dictionary_get_uint64(interactionsCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:interactionsCopy];
    v38 = xpc_dictionary_get_uint64(interactionsCopy, "opt");
    v40 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:interactionsCopy];
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
    [(MDSearchableIndexService *)selfCopy deleteAllInteractionsWithBundleID:v40 protectionClass:v11 options:v38 completionHandler:v41];

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

- (BOOL)donateRelevantActions:(id)actions
{
  actionsCopy = actions;
  v5 = xpc_dictionary_get_remote_connection(actionsCopy);
  reply = xpc_dictionary_create_reply(actionsCopy);
  v7 = reply;
  v8 = 0;
  if (v5 && reply)
  {
    uint64 = xpc_dictionary_get_uint64(actionsCopy, "id");
    v10 = xpc_dictionary_get_uint64(actionsCopy, "opt");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:actionsCopy];
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
    v17 = xpc_dictionary_get_value(actionsCopy, "data");
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

- (BOOL)updateCorrections:(id)corrections
{
  correctionsCopy = corrections;
  v5 = xpc_dictionary_get_remote_connection(correctionsCopy);
  reply = xpc_dictionary_create_reply(correctionsCopy);
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
    selfCopy = self;
    v38 = v9;
    uint64 = xpc_dictionary_get_uint64(correctionsCopy, "id");
    v11 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:correctionsCopy];
    v37 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:correctionsCopy];
    v39 = xpc_dictionary_get_uint64(correctionsCopy, "opt");
    v41 = [MEMORY[0x277CC3510] copyNSStringForKey:"filepath" fromXPCDictionary:correctionsCopy];
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
    [(MDSearchableIndexService *)selfCopy updateCorrectionsWithFilePath:v41 options:v39 completionHandler:v42];

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

- (BOOL)issueCacheCommand:(id)command
{
  commandCopy = command;
  v5 = xpc_dictionary_get_remote_connection(commandCopy);
  reply = xpc_dictionary_create_reply(commandCopy);
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(commandCopy, "id");
    v8 = [MEMORY[0x277CC3510] copyNSStringForKey:"cache-request" fromXPCDictionary:commandCopy];
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

- (BOOL)_handleAssetsCommand:(id)command
{
  commandCopy = command;
  indexer = self->_indexer;
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [(MDIndexer *)self->_indexer handleAssetsCommand:commandCopy];
  }

  return v6 & 1;
}

- (BOOL)handleCommand:(const char *)command info:(id)info
{
  infoCopy = info;
  v7 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:infoCopy];
  if (([v7 isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
  {
    clientBundleID = [(MDSearchableIndexService *)self clientBundleID];
    if (([clientBundleID isEqualToString:@"com.apple.usernotificationsd"] & 1) == 0)
    {

      goto LABEL_11;
    }

    allowNotifications = [(MDSearchableIndexService *)self allowNotifications];

    if (allowNotifications)
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
  if (!strcmp(command, "delete-bundle"))
  {
    v13 = [(MDSearchableIndexService *)self deleteBundle:infoCopy];
LABEL_68:
    v11 = v13;
    goto LABEL_69;
  }

  if (!strcmp(command, "delete-from-date"))
  {
    v13 = [(MDSearchableIndexService *)self deleteSinceDate:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "check-in"))
  {
    v13 = [(MDSearchableIndexService *)self checkIn:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "process-index-data"))
  {
    v13 = [(MDSearchableIndexService *)self processIndexData:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fbi"))
  {
    v13 = [(MDSearchableIndexService *)self fetchBundleIDs:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "will-modify"))
  {
    v13 = [(MDSearchableIndexService *)self willModify:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-domains"))
  {
    v13 = [(MDSearchableIndexService *)self deleteDomains:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "issue"))
  {
    v13 = [(MDSearchableIndexService *)self issueCommand:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fetch-client-state"))
  {
    v13 = [(MDSearchableIndexService *)self fetchClientState:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "change-state"))
  {
    v13 = [(MDSearchableIndexService *)self changeState:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "data-migration"))
  {
    v13 = [(MDSearchableIndexService *)self dataMigration:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-journal-transfer"))
  {
    v13 = [(MDSearchableIndexService *)self transferDeleteJournals:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fetch_attributes"))
  {
    v13 = [(MDSearchableIndexService *)self fetchAttributes:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "fetch_cache_file_descriptors"))
  {
    v13 = [(MDSearchableIndexService *)self fetchCacheFileDescriptors:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_all_activities"))
  {
    v13 = [(MDSearchableIndexService *)self deleteAllUserActivities:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_activities"))
  {
    v13 = [(MDSearchableIndexService *)self deleteUserActivitiesWithPersistentIdentifiers:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-actions-before-time"))
  {
    v13 = [(MDSearchableIndexService *)self deleteActionsBeforeTime:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete-actions-with-identifiers"))
  {
    v13 = [(MDSearchableIndexService *)self deleteActionsWithIdentifiers:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "activities"))
  {
    v13 = [(MDSearchableIndexService *)self processActivities:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "add_interaction"))
  {
    v13 = [(MDSearchableIndexService *)self addInteraction:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_interactions"))
  {
    selfCopy2 = self;
    v15 = infoCopy;
    v16 = 0;
LABEL_67:
    v13 = [(MDSearchableIndexService *)selfCopy2 _deleteInteractions:v15 forGroup:v16];
    goto LABEL_68;
  }

  if (!strcmp(command, "delete_group_interactions"))
  {
    selfCopy2 = self;
    v15 = infoCopy;
    v16 = 1;
    goto LABEL_67;
  }

  if (!strcmp(command, "delete_all_interactions"))
  {
    v13 = [(MDSearchableIndexService *)self deleteAllInteractions:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "donate_relevant_actions"))
  {
    v13 = [(MDSearchableIndexService *)self donateRelevantActions:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "photoslibrary-deleted"))
  {
    v13 = [(MDSearchableIndexService *)self photosLibraryDeleted:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "prepare-indexing-locked"))
  {
    v13 = [(MDSearchableIndexService *)self prepareIndexingLocked:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "finish-indexing-locked"))
  {
    v13 = [(MDSearchableIndexService *)self finishIndexingLocked:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "cache-command-issue"))
  {
    v13 = [(MDSearchableIndexService *)self issueCacheCommand:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "update-corrections"))
  {
    v13 = [(MDSearchableIndexService *)self updateCorrections:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "open-journal"))
  {
    v13 = [(MDSearchableIndexService *)self openJournalFile:infoCopy];
    goto LABEL_68;
  }

  if (!strcmp(command, "assets"))
  {
    v13 = [(MDSearchableIndexService *)self _handleAssetsCommand:infoCopy];
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