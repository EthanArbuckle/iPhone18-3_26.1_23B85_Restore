@interface BRCNotificationPipe
- (BRCNotificationPipe)initWithReceiver:(id)receiver manager:(id)manager startingRank:(unint64_t)rank;
- (BRCNotificationPipe)initWithXPCReceiver:(id)receiver client:(id)client manager:(id)manager startingRank:(unint64_t)rank;
- (BRCNotificationPipeDelegate)delegate;
- (NSString)description;
- (id)_initWithManager:(id)manager startingRank:(unint64_t)rank;
- (int)_isInterestingUpdate:(id)update;
- (void)__flush;
- (void)__performBlockafterDBAndNotifFlush:(id)flush session:(id)session description:(id)description error:(id)error;
- (void)_addIntraContainerUpdatesFromInterContainerUpdate:(id)update toArray:(id)array;
- (void)_gatherIfNeededAndFlushAsync;
- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInAppLibrary:(id)library description:(id)description;
- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInClientZone:(id)zone description:(id)description;
- (void)_prepareForSecondGatherWithRank:(unint64_t)rank;
- (void)_registerAsWatcherIfNeeded;
- (void)_stopWatchingItems;
- (void)_watchItem:(id)item options:(unsigned __int16)options gatherReply:(id)reply;
- (void)addDequeueCallback:(id)callback;
- (void)boostPriority:(id)priority;
- (void)close;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateIfWatchingAppLibraryIDs:(id)ds;
- (void)invalidateReceiverIfWatchingAppLibraryIDs:(id)ds;
- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation;
- (void)processUpdates:(id)updates withRank:(unint64_t)rank;
- (void)watchItemWithFileObjectID:(id)d options:(unsigned __int16)options request:(id)request gatherReply:(id)reply;
- (void)watchScopes:(unsigned __int16)scopes trustedAppLibraryIDs:(id)ds gatherReply:(id)reply;
@end

@implementation BRCNotificationPipe

- (void)_gatherIfNeededAndFlushAsync
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)__flush
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  notifBatchSize = [v3 notifBatchSize];
  if (!self->_hasUpdatesInFlight)
  {
    v5 = notifBatchSize;
    if ([(BRNotificationQueue *)self->_notifs count])
    {
      notifs = self->_notifs;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __30__BRCNotificationPipe___flush__block_invoke;
      v7[3] = &unk_278501598;
      v7[4] = self;
      [(BRNotificationQueue *)notifs dequeue:v5 block:v7];
    }
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _receiver == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_registerAsWatcherIfNeeded
{
  watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

  if (!watchedAncestorFilenameToItem)
  {
    watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
    if (watchedAncestorFileObjectID)
    {
      [(BRCNotificationManager *)self->_manager registerPipe:self asWatcherForFileObjectID:watchedAncestorFileObjectID];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)addDequeueCallback:(id)callback
{
  queue = self->_queue;
  callbackCopy = callback;
  dispatch_assert_queue_V2(queue);
  [(BRNotificationQueue *)self->_notifs addDequeueCallback:callbackCopy];
}

- (id)_initWithManager:(id)manager startingRank:(unint64_t)rank
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = BRCNotificationPipe;
  v8 = [(BRCNotificationPipe *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CFAE70]);
    notifs = v8->_notifs;
    v8->_notifs = v9;

    objc_storeStrong(&v8->_manager, manager);
    v8->_initialGatherMaxRank = rank;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    recursiveScopeListOps = v8->_recursiveScopeListOps;
    v8->_recursiveScopeListOps = weakObjectsHashTable;
  }

  return v8;
}

- (BRCNotificationPipe)initWithXPCReceiver:(id)receiver client:(id)client manager:(id)manager startingRank:(unint64_t)rank
{
  receiverCopy = receiver;
  clientCopy = client;
  v12 = [(BRCNotificationPipe *)self _initWithManager:manager startingRank:rank];
  if (v12)
  {
    connection = [clientCopy connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__BRCNotificationPipe_initWithXPCReceiver_client_manager_startingRank___block_invoke;
    v20[3] = &unk_2784FF540;
    v14 = v12;
    v21 = v14;
    v15 = [receiverCopy remoteObjectProxyWithErrorHandler:v20];
    receiver = v14->_receiver;
    v14->_receiver = v15;

    _queue = [connection _queue];
    queue = v14->_queue;
    v14->_queue = _queue;

    objc_storeStrong(&v14->_client, client);
  }

  return v12;
}

void __71__BRCNotificationPipe_initWithXPCReceiver_client_manager_startingRank___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  memset(v8, 0, sizeof(v8));
  __brc_create_section(0, "[BRCNotificationPipe initWithXPCReceiver:client:manager:startingRank:]_block_invoke", 471, 0, v8);
  v4 = brc_bread_crumbs();
  v5 = brc_notifications_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v8[0];
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@ got error %@%@", buf, 0x2Au);
  }

  [*(a1 + 32) invalidate];
  __brc_leave_section(v8);

  v6 = *MEMORY[0x277D85DE8];
}

- (BRCNotificationPipe)initWithReceiver:(id)receiver manager:(id)manager startingRank:(unint64_t)rank
{
  receiverCopy = receiver;
  v10 = [(BRCNotificationPipe *)self _initWithManager:manager startingRank:rank];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 1, receiver);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.brc.pipe", v13);

    queue = v11->_queue;
    v11->_queue = v14;
  }

  return v11;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  if (self->_client)
  {
    [v3 appendString:@" "];
    v4 = [(BRCXPCClient *)self->_client description];
    [v3 appendString:v4];
  }

  if (self->_gatherer)
  {
    [v3 appendString:@" gathering"];
  }

  if ([(NSSet *)self->_watchedAppLibraryIDs count])
  {
    allObjects = [(NSSet *)self->_watchedAppLibraryIDs allObjects];
    v6 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" {%@}", v6];
  }

  watchKind = self->_watchKind;
  if (watchKind)
  {
    watchItemOptions = self->_watchItemOptions;
    v12 = @" {children of ";
    if ((watchItemOptions & 2) == 0)
    {
      v12 = @" {item at ";
    }

    if ((watchItemOptions & 4) != 0)
    {
      v13 = @" {descendants of ";
    }

    else
    {
      v13 = v12;
    }

    [v3 appendString:v13];
    watchedAncestorItemGlobalID = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];

    if (watchedAncestorItemGlobalID)
    {
      watchedAncestorItemGlobalID2 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
      v16 = [watchedAncestorItemGlobalID2 description];
      [v3 appendString:v16];

      watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
    }

    else
    {
      watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

      watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
      if (watchedAncestorFilenameToItem)
      {
        watchedAncestorFilenameToItem2 = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];
        [v3 appendFormat:@"[fid:%@ n:%@]", watchedAncestorFileObjectID, watchedAncestorFilenameToItem2];

        goto LABEL_32;
      }
    }

    if (!watchedAncestorFileObjectID)
    {
LABEL_33:
      v20 = self->_watchItemOptions;
      v21 = BRCPrettyPrintBitmap();
      v22 = v21;
      if ((self->_watchKind & 0x20) != 0)
      {
        v23 = @"|withAliases";
      }

      else
      {
        v23 = &stru_2837504F0;
      }

      [v3 appendFormat:@" (%@%@)}", v21, v23];

      goto LABEL_37;
    }

    watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
    [v3 appendFormat:@"[fid:%@]", watchedAncestorFileObjectID];
LABEL_32:

    goto LABEL_33;
  }

  if ((watchKind & 0x26) == 0)
  {
    goto LABEL_37;
  }

  [v3 appendString:@" {NSMDQ"];
  v8 = self->_watchKind;
  if ((v8 & 4) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_41:
    [v3 appendString:@" docs"];
    v8 = self->_watchKind;
    if ((v8 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  [v3 appendString:@" data"];
  v8 = self->_watchKind;
  if ((v8 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_11:
  if ((v8 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v8 & 0x80) != 0)
  {
    v9 = @" dirs-only";
  }

  else
  {
    v9 = @" dirs";
  }

  [v3 appendString:v9];
LABEL_16:
  v10 = self->_watchKind;
  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_44:
    [v3 appendString:@" ext"];
    if ((self->_watchKind & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [v3 appendString:@" faults"];
  v10 = self->_watchKind;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_18:
  if ((v10 & 0x40) != 0)
  {
LABEL_19:
    [v3 appendString:@" trash"];
  }

LABEL_20:
  [v3 appendString:@"}"];
LABEL_37:
  [v3 appendFormat:@" queued:%ld>", -[BRNotificationQueue count](self->_notifs, "count")];

  return v3;
}

- (int)_isInterestingUpdate:(id)update
{
  v80 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

  if (watchedAncestorFilenameToItem)
  {
    watchedAncestorFileObjectID = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];

    if (watchedAncestorFileObjectID)
    {
      parentFileObjectID = [updateCopy parentFileObjectID];
      watchedAncestorFileObjectID2 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
      v9 = [parentFileObjectID isEqualToFileObjectID:watchedAncestorFileObjectID2];
    }

    else
    {
      v9 = 0;
    }

    watchedAncestorFilenameToItem2 = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];
    if (!v9 || ([updateCopy logicalName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "br_isEqualToStringForHFS:isCaseSensitive:", watchedAncestorFilenameToItem2, 1), v11, !v12))
    {
      watchedAncestorFileObjectID7 = brc_bread_crumbs();
      v28 = brc_notifications_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe _isInterestingUpdate:];
      }

      v29 = 0;
      goto LABEL_109;
    }

    [(BRCNotificationPipe *)self setWatchedAncestorFilenameToItem:0];
    fileObjectID = [updateCopy fileObjectID];
    [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:fileObjectID];

    [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
  }

  watchedAncestorFileObjectID3 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
  if (!watchedAncestorFileObjectID3)
  {
    goto LABEL_17;
  }

  v15 = watchedAncestorFileObjectID3;
  fileObjectID2 = [updateCopy fileObjectID];
  watchedAncestorFileObjectID4 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
  v18 = [fileObjectID2 isEqualToFileObjectID:watchedAncestorFileObjectID4];

  if (v18)
  {
    watchedAncestorItemGlobalID = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
    itemGlobalID = [updateCopy itemGlobalID];
    v21 = [watchedAncestorItemGlobalID isEqualToItemGlobalID:itemGlobalID];

    if ((v21 & 1) == 0)
    {
      watchedAncestorItemGlobalID2 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
      [(BRCNotificationPipe *)self setOldWatchedAncestorItemGlobalID:watchedAncestorItemGlobalID2];

      itemGlobalID2 = [updateCopy itemGlobalID];
      [(BRCNotificationPipe *)self setWatchedAncestorItemGlobalID:itemGlobalID2];

      [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
      oldWatchedAncestorItemGlobalID = [(BRCNotificationPipe *)self oldWatchedAncestorItemGlobalID];

      if (oldWatchedAncestorItemGlobalID)
      {
        v25 = brc_bread_crumbs();
        v26 = brc_notifications_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(BRCNotificationPipe *)self _isInterestingUpdate:v25, v26];
        }
      }

      else
      {
        v25 = brc_bread_crumbs();
        v26 = brc_notifications_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(BRCNotificationPipe *)self _isInterestingUpdate:v25, v26];
        }
      }
    }
  }

  else
  {
LABEL_17:
    watchedAncestorItemGlobalID3 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
    if (watchedAncestorItemGlobalID3)
    {
      v31 = watchedAncestorItemGlobalID3;
      itemGlobalID3 = [updateCopy itemGlobalID];
      watchedAncestorItemGlobalID4 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
      v34 = [itemGlobalID3 isEqualToItemGlobalID:watchedAncestorItemGlobalID4];

      if (v34)
      {
        watchedAncestorFileObjectID5 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
        fileObjectID3 = [updateCopy fileObjectID];
        v37 = [watchedAncestorFileObjectID5 isEqualToFileObjectID:fileObjectID3];

        if ((v37 & 1) == 0)
        {
          v38 = brc_bread_crumbs();
          v39 = brc_notifications_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            watchedAncestorItemGlobalID5 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
            fileObjectID4 = [updateCopy fileObjectID];
            watchedAncestorFileObjectID6 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
            v72 = 138413058;
            v73 = watchedAncestorItemGlobalID5;
            v74 = 2112;
            v75 = fileObjectID4;
            v76 = 2112;
            v77 = watchedAncestorFileObjectID6;
            v78 = 2112;
            v79 = v38;
            _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[NOTIF] Learning new fileObjectID for %@: %@ (was %@)%@", &v72, 0x2Au);
          }

          fileObjectID5 = [updateCopy fileObjectID];
          [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:fileObjectID5];

          [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
        }
      }
    }
  }

  watchedAncestorFilenameToItem2 = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
  watchedAncestorFileObjectID7 = [(BRCNotificationPipe *)self watchedAncestorFileObjectID];
  watchKind = self->_watchKind;
  if ((watchKind & 6) != 0)
  {
    appLibrary = [updateCopy appLibrary];
    includesDataScope = [appLibrary includesDataScope];

    v44 = self->_watchKind;
    if ([updateCopy isDirectory] && (self->_watchKind & 8) == 0)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
LABEL_40:
        v29 = 0;
LABEL_108:

LABEL_109:
        goto LABEL_110;
      }

LABEL_30:
      [BRCNotificationPipe _isInterestingUpdate:];
      goto LABEL_40;
    }

    if ((((v44 & 6) != 6) & includesDataScope) != 1)
    {
      if ([updateCopy isInTrashScope] && (self->_watchKind & 0x40) == 0)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_107;
      }

      watchedAppLibraryIDs = self->_watchedAppLibraryIDs;
      appLibraryID = [updateCopy appLibraryID];
      LOBYTE(watchedAppLibraryIDs) = [(NSSet *)watchedAppLibraryIDs containsObject:appLibraryID];

      if (watchedAppLibraryIDs)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        v29 = 2;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_108;
      }

      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_107;
      }

LABEL_77:
      [BRCNotificationPipe _isInterestingUpdate:];
LABEL_107:
      v29 = 1;
      goto LABEL_108;
    }

    watchKind = self->_watchKind;
  }

  if (watchKind)
  {
    if (self->_watchItemOptions)
    {
      if (watchedAncestorFileObjectID7)
      {
        fileObjectID6 = [updateCopy fileObjectID];
        v48 = [fileObjectID6 isEqualToFileObjectID:watchedAncestorFileObjectID7];

        if (v48)
        {
          v28 = brc_bread_crumbs();
          v45 = brc_notifications_log();
          v29 = 2;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [BRCNotificationPipe _isInterestingUpdate:];
          }

          goto LABEL_108;
        }
      }

      if (watchedAncestorFilenameToItem2)
      {
        itemGlobalID4 = [updateCopy itemGlobalID];
        v52 = [itemGlobalID4 isEqualToItemGlobalID:watchedAncestorFilenameToItem2];

        if (v52)
        {
          v28 = brc_bread_crumbs();
          v45 = brc_notifications_log();
          v29 = 2;
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_108;
          }

          goto LABEL_100;
        }
      }
    }

    if ((self->_watchItemOptions & 2) != 0 && watchedAncestorFileObjectID7)
    {
      parentFileObjectID2 = [updateCopy parentFileObjectID];
      v54 = [parentFileObjectID2 isEqualToFileObjectID:watchedAncestorFileObjectID7];

      if (v54)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        v29 = 2;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_108;
      }

      oldParentFileObjectID = [updateCopy oldParentFileObjectID];
      v59 = [oldParentFileObjectID isEqualToFileObjectID:watchedAncestorFileObjectID7];

      if (v59)
      {
        v28 = brc_bread_crumbs();
        v45 = brc_notifications_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [BRCNotificationPipe _isInterestingUpdate:];
        }

        goto LABEL_107;
      }
    }
  }

  isDocumentsFolder = [updateCopy isDocumentsFolder];
  if ((self->_watchKind & 0x46) == 0 && (self->_watchItemOptions & 4) == 0)
  {
    goto LABEL_36;
  }

  if (isDocumentsFolder)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_40;
  }

  if ([updateCopy isDirectory] && (self->_watchKind & 8) == 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_40;
    }

    goto LABEL_30;
  }

  if ([updateCopy br_downloadStatus] == 1 && (self->_watchKind & 0x10) == 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_40;
  }

  v55 = self->_watchedAppLibraryIDs;
  appLibraryID2 = [updateCopy appLibraryID];
  LOBYTE(v55) = [(NSSet *)v55 containsObject:appLibraryID2];

  if ((v55 & 1) == 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_107;
    }

    goto LABEL_77;
  }

  v57 = self->_watchKind;
  if ((v57 & 0x46) == 0)
  {
    if (!watchedAncestorFilenameToItem2)
    {
      goto LABEL_101;
    }

    if ((v57 & 1) == 0)
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    parentGlobalIDs = [updateCopy parentGlobalIDs];
    v61 = [parentGlobalIDs containsObject:watchedAncestorFilenameToItem2];

    if (v61)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_108;
      }
    }

    else
    {
      oldWatchedAncestorItemGlobalID2 = [(BRCNotificationPipe *)self oldWatchedAncestorItemGlobalID];
      if (!oldWatchedAncestorItemGlobalID2)
      {
        goto LABEL_101;
      }

      v66 = oldWatchedAncestorItemGlobalID2;
      parentGlobalIDs2 = [updateCopy parentGlobalIDs];
      oldWatchedAncestorItemGlobalID3 = [(BRCNotificationPipe *)self oldWatchedAncestorItemGlobalID];
      v69 = [parentGlobalIDs2 containsObject:oldWatchedAncestorItemGlobalID3];

      if (!v69)
      {
        goto LABEL_101;
      }

      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_108;
      }
    }

LABEL_100:
    [BRCNotificationPipe _isInterestingUpdate:];
    goto LABEL_108;
  }

  if ([updateCopy isInDocumentScope])
  {
    if ((self->_watchKind & 2) != 0)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe _isInterestingUpdate:];
      }

      goto LABEL_108;
    }
  }

  else if ([updateCopy isInDataScope])
  {
    if ((self->_watchKind & 4) != 0)
    {
      v28 = brc_bread_crumbs();
      v45 = brc_notifications_log();
      v29 = 2;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BRCNotificationPipe _isInterestingUpdate:];
      }

      goto LABEL_108;
    }
  }

  else if ([updateCopy isInTrashScope] && (self->_watchKind & 0x40) != 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    v29 = 2;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_108;
  }

LABEL_101:
  if (([updateCopy diffs] & 0xC010) != 0)
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_107;
  }

  if ([updateCopy isDead])
  {
    v28 = brc_bread_crumbs();
    v45 = brc_notifications_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _isInterestingUpdate:];
    }

    goto LABEL_107;
  }

LABEL_36:
  v29 = 0;
LABEL_110:

  v70 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)_addIntraContainerUpdatesFromInterContainerUpdate:(id)update toArray:(id)array
{
  updateCopy = update;
  arrayCopy = array;
  if ([updateCopy isBRAlias])
  {
    if ((self->_watchKind & 0x20) == 0)
    {
      goto LABEL_9;
    }

    watchedAppLibraryIDs = self->_watchedAppLibraryIDs;
    aliasSourceAppLibraryID = [updateCopy aliasSourceAppLibraryID];
    LOBYTE(watchedAppLibraryIDs) = [(NSSet *)watchedAppLibraryIDs containsObject:aliasSourceAppLibraryID];

    if ((watchedAppLibraryIDs & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    [arrayCopy addObject:updateCopy];
    goto LABEL_9;
  }

  v9 = self->_watchedAppLibraryIDs;
  appLibraryID = [updateCopy appLibraryID];
  LOBYTE(v9) = [(NSSet *)v9 containsObject:appLibraryID];

  if (v9)
  {
    goto LABEL_8;
  }

  oldAppLibraryID = [updateCopy oldAppLibraryID];
  if (oldAppLibraryID)
  {
    v12 = oldAppLibraryID;
    v13 = self->_watchedAppLibraryIDs;
    oldAppLibraryID2 = [updateCopy oldAppLibraryID];
    LODWORD(v13) = [(NSSet *)v13 containsObject:oldAppLibraryID2];

    if (v13)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_prepareForSecondGatherWithRank:(unint64_t)rank
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_receiver)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_notifications_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCNotificationPipe _prepareForSecondGatherWithRank:];
    }

    dispatch_group_enter(self->_gatherGroup);
    if (self->_gatherer)
    {
      [BRCNotificationPipe _prepareForSecondGatherWithRank:];
    }

    v7 = [BRCDataOrDocsScopeGatherer alloc];
    allObjects = [(NSSet *)self->_watchedAppLibraries allObjects];
    initialGatherMaxRank = self->_initialGatherMaxRank;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke;
    v12[3] = &unk_2784FF540;
    v12[4] = self;
    v10 = [(BRCDataOrDocsScopeGatherer *)v7 initWithNotificationPipe:self appLibraries:allObjects startingRank:initialGatherMaxRank maxRank:rank + 1 withDeadItems:1 gatherReply:v12];
    gatherer = self->_gatherer;
    self->_gatherer = v10;

    self->_initialGatherMaxRank = 0;
  }
}

void __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke_cold_1();
  }

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

- (void)processUpdates:(id)updates withRank:(unint64_t)rank
{
  v39 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  if (self->_receiver)
  {
    if (self->_watchKind)
    {
      memset(v31, 0, sizeof(v31));
      __brc_create_section(0, "[BRCNotificationPipe processUpdates:withRank:]", 804, 0, v31);
      v7 = brc_bread_crumbs();
      v8 = brc_notifications_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        *&buf[4] = v31[0];
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v34 = updatesCopy;
        v35 = 2048;
        rankCopy = rank;
        v37 = 2112;
        v38 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@: processing updates %@ [rank:%lld]%@", buf, 0x34u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v34) = 0;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__BRCNotificationPipe_processUpdates_withRank___block_invoke;
      block[3] = &unk_278501570;
      block[5] = buf;
      block[6] = rank;
      block[4] = self;
      dispatch_sync(queue, block);
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(updatesCopy, "count")}];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = updatesCopy;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v12)
      {
        v13 = *v27;
        do
        {
          v14 = 0;
          do
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v26 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            [(BRCNotificationPipe *)self _addIntraContainerUpdatesFromInterContainerUpdate:v15 toArray:v10];
            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v12);
      }

      v17 = [v11 count];
      if (v17 != [v10 count])
      {
        if ([v10 count])
        {
          v18 = brc_bread_crumbs();
          v19 = brc_notifications_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [BRCNotificationPipe processUpdates:withRank:];
          }
        }

        else
        {
          v18 = brc_bread_crumbs();
          v19 = brc_notifications_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [BRCNotificationPipe processUpdates:withRank:];
          }
        }
      }

      if ([v10 count] || *(*&buf[8] + 24) == 1)
      {
        v21 = self->_queue;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__BRCNotificationPipe_processUpdates_withRank___block_invoke_138;
        v23[3] = &unk_2784FF478;
        v24 = v10;
        selfCopy = self;
        dispatch_sync(v21, v23);
      }

      _Block_object_dispose(buf, 8);
      __brc_leave_section(v31);
    }

    else
    {
      initialGatherMaxRank = self->_initialGatherMaxRank;
      if (initialGatherMaxRank && initialGatherMaxRank < rank && !self->_secondaryGatherMaxRank)
      {
        self->_secondaryGatherMaxRank = rank;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void *__47__BRCNotificationPipe_processUpdates_withRank___block_invoke(void *a1)
{
  result = a1[4];
  v3 = result[12];
  if (v3 && (v4 = a1[6], v3 < v4) && !result[13])
  {
    if (result[9])
    {
      result[13] = v4;
    }

    else
    {
      result = [result _prepareForSecondGatherWithRank:?];
      *(*(a1[5] + 8) + 24) = 1;
    }
  }

  else if (!result[9] && !result[13])
  {
    result[12] = 0;
  }

  return result;
}

uint64_t __47__BRCNotificationPipe_processUpdates_withRank___block_invoke_138(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) _isInterestingUpdate:{v7, v12}];
        if (v9)
        {
          [*(a1 + 40) addNotification:v7 asDead:v9 == 1];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _gatherIfNeededAndFlushAsync];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __30__BRCNotificationPipe___flush__block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v19 = brc_bread_crumbs();
    v20 = brc_notifications_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 32);
      *buf = 138412802;
      v45 = v30;
      v46 = 2048;
      v47 = [v3 count];
      v48 = 2112;
      v49 = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: sending %ld notifications:%@", buf, 0x20u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = v3;
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v22)
    {
      v24 = v22;
      v25 = *v39;
      *&v23 = 138412546;
      v31 = v23;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          v28 = brc_bread_crumbs();
          v29 = brc_notifications_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v45 = v27;
            v46 = 2112;
            v47 = v28;
            _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[NOTIF]   %@%@", buf, 0x16u);
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v24);
    }

    a1 = v32;
  }

  *(*(a1 + 32) + 88) = 1;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count", v31)}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (j = 0; j != v7; ++j)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * j);
        v11 = [v10 fileObjectID];
        if ([v11 isAppLibraryRoot] && (objc_msgSend(v11, "isCloudDocsRoot") & 1) == 0)
        {
          v13 = [v10 appLibrary];
          v14 = [v13 containerMetadata];
          v15 = [(BRQueryItem *)BRCNotification containerItemForContainer:v14 withRepresentativeItem:v10];
          [v4 addObject:v15];
        }

        else
        {
          v12 = [v10 asFileProviderItem];

          if (v12)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v7);
  }

  v16 = *(v32 + 32);
  v17 = *(v16 + 8);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __30__BRCNotificationPipe___flush__block_invoke_140;
  v33[3] = &unk_2784FF450;
  v33[4] = v16;
  [v17 receiveUpdates:v4 reply:v33];

  v18 = *MEMORY[0x277D85DE8];
}

void __30__BRCNotificationPipe___flush__block_invoke_140(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "[BRCNotificationPipe __flush]_block_invoke", 900, 0, v18);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    *block = 134218498;
    *&block[4] = v18[0];
    *&block[12] = 2112;
    *&block[14] = v14;
    *&block[22] = 2112;
    v22 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@: received notification acknowledgement%@", block, 0x20u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __30__BRCNotificationPipe___flush__block_invoke_141;
  v17[3] = &unk_2784FF450;
  v17[4] = v4;
  v6 = v5;
  v7 = v17;
  v8 = objc_autoreleasePoolPush();
  v19 = 0uLL;
  v20 = 0;
  __brc_create_section(0, "brc_dispatch_async_autorelease_with_logs", 297, 0, &v19);
  v9 = brc_bread_crumbs();
  v10 = brc_notifications_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = v19;
    label = dispatch_queue_get_label(v6);
    *block = 134218498;
    *&block[4] = v15;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[NOTIF] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v25 = v19;
  v26 = v20;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __brc_dispatch_async_autorelease_with_logs_block_invoke_0;
  v22 = &unk_2784FF568;
  v11 = v6;
  v23 = v11;
  v12 = v7;
  v24 = v12;
  dispatch_async(v11, block);

  objc_autoreleasePoolPop(v8);
  __brc_leave_section(v18);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __30__BRCNotificationPipe___flush__block_invoke_141(uint64_t a1)
{
  *(*(a1 + 32) + 88) = 0;
  [*(*(a1 + 32) + 16) processDequeueCallbacks];
  v2 = *(a1 + 32);

  return [v2 _gatherIfNeededAndFlushAsync];
}

void __51__BRCNotificationPipe__gatherIfNeededAndFlushAsync__block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 120));
  v5 = *(a1 + 32);
  if (a2)
  {
    goto LABEL_6;
  }

  v6 = v5[9];
  if (v6 == v7)
  {
    v5[9] = 0;

    v5 = *(a1 + 32);
  }

  if (!v5[13] || v5[9])
  {
LABEL_6:
    [v5 __flush];
  }

  else
  {
    [v5 _prepareForSecondGatherWithRank:?];
    *(*(a1 + 32) + 104) = 0;
    [*(a1 + 32) _gatherIfNeededAndFlushAsync];
  }
}

- (void)_stopWatchingItems
{
  v39 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_watchedAppLibrariesFlags)
  {
    [(BRCNotificationManager *)self->_manager unregisterAppLibraries:self->_watchedAppLibraries forFlags:?];
    self->_watchedAppLibrariesFlags = 0;
  }

  [(BRCNotificationManager *)self->_manager unregisterPipeAsWatcher:self];
  delegate = [(BRCNotificationPipe *)self delegate];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = self->_watchedAppLibraries;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [delegate notificationPipe:self didObserveAppLibrary:*(*(&v32 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_externalAppLibraries;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [delegate notificationPipe:self didObserveAppLibrary:*(*(&v28 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v9);
  }

  watchedAppLibraries = self->_watchedAppLibraries;
  self->_watchedAppLibraries = 0;

  [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:0];
  [(BRCNotificationPipe *)self setWatchedAncestorItemGlobalID:0];
  [(BRCNotificationPipe *)self setWatchedAncestorFilenameToItem:0];
  [(BRCDataOrDocsScopeGatherer *)self->_gatherer invalidate];
  gatherer = self->_gatherer;
  self->_gatherer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_listOp);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endObservingChangesWithDelegate:self];
    objc_storeWeak(&self->_listOp, 0);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = selfCopy->_recursiveScopeListOps;
  v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v24 + 1) + 8 * v20++) endObservingChanges];
      }

      while (v18 != v20);
      v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v18);
  }

  [(NSHashTable *)selfCopy->_recursiveScopeListOps removeAllObjects];
  objc_sync_exit(selfCopy);

  boostReply = selfCopy->_boostReply;
  if (boostReply)
  {
    boostReply[2]();
    v22 = selfCopy->_boostReply;
    selfCopy->_boostReply = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation
{
  obj = byOperation;
  operationCopy = operation;
  WeakRetained = objc_loadWeakRetained(&self->_listOp);

  if (WeakRetained == operationCopy)
  {
    objc_storeWeak(&self->_listOp, obj);
  }
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BRCNotificationPipe_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)__performBlockafterDBAndNotifFlush:(id)flush session:(id)session description:(id)description error:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  flushCopy = flush;
  sessionCopy = session;
  descriptionCopy = description;
  errorCopy = error;
  v14 = brc_bread_crumbs();
  v15 = brc_notifications_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v29 = descriptionCopy;
    v30 = 2112;
    selfCopy = self;
    v32 = 2112;
    v33 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting for db flush for %@ in %@%@", buf, 0x20u);
  }

  clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke;
  block[3] = &unk_278501638;
  v23 = sessionCopy;
  v24 = descriptionCopy;
  v26 = errorCopy;
  v27 = flushCopy;
  selfCopy2 = self;
  v17 = errorCopy;
  v18 = flushCopy;
  v19 = descriptionCopy;
  v20 = sessionCopy;
  dispatch_async(clientTruthWorkloop, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2;
  v10[3] = &unk_2784FFA48;
  v11 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3;
  v7[3] = &unk_278501610;
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 48);
  v6 = v3;
  v4 = *(a1 + 64);
  *&v5 = *(a1 + 56);
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 performWithFlags:0 action:v10 whenFlushed:v7];
}

uint64_t __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) clientDB];
  [v1 forceBatchStart];

  return 1;
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3_cold_1(a1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_145;
  block[3] = &unk_2785003B0;
  v8 = *(a1 + 32);
  v4 = *(v8.i64[1] + 120);
  v5 = v8.i64[0];
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = v7;
  dispatch_async(v4, block);
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_145(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = a1[4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2_146;
  v3[3] = &unk_2785015E8;
  objc_copyWeak(&v7, &location);
  v4 = a1[5];
  v6 = a1[7];
  v5 = a1[6];
  [v2 addDequeueCallback:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_2_146(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[NOTIF] Finished gather group for %@ in %@%@", &v8, 0x20u);
  }

  v5 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInClientZone:(id)zone description:(id)description
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  descriptionCopy = description;
  zoneCopy = zone;
  session = [zoneCopy session];
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v23 = descriptionCopy;
    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting for faulting for %@ in %@%@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke;
  v18[3] = &unk_278501660;
  v18[4] = self;
  v19 = session;
  v20 = descriptionCopy;
  v21 = blockCopy;
  v14 = descriptionCopy;
  v15 = session;
  v16 = blockCopy;
  [zoneCopy notifyClient:@"nsmdq" whenFaultingIsDone:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) __performBlockafterDBAndNotifFlush:*(a1 + 56) session:*(a1 + 40) description:*(a1 + 48) error:v3];
}

- (void)_performBlock:(id)block whenNotifsAreFullyFlushedInAppLibrary:(id)library description:(id)description
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  descriptionCopy = description;
  libraryCopy = library;
  session = [libraryCopy session];
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = descriptionCopy;
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting for faulting for %@ in %@%@", buf, 0x20u);
  }

  defaultClientZone = [libraryCopy defaultClientZone];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInAppLibrary_description___block_invoke;
  v19[3] = &unk_278501660;
  v19[4] = self;
  v20 = session;
  v21 = descriptionCopy;
  v22 = blockCopy;
  v15 = descriptionCopy;
  v16 = session;
  v17 = blockCopy;
  [defaultClientZone notifyClient:@"extension" whenFaultingIsDone:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInAppLibrary_description___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) __performBlockafterDBAndNotifFlush:*(a1 + 56) session:*(a1 + 40) description:*(a1 + 48) error:v3];
}

- (void)watchScopes:(unsigned __int16)scopes trustedAppLibraryIDs:(id)ds gatherReply:(id)reply
{
  scopesCopy = scopes;
  v94 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  memset(v82, 0, sizeof(v82));
  __brc_create_section(0, "[BRCNotificationPipe watchScopes:trustedAppLibraryIDs:gatherReply:]", 1099, 0, v82);
  v7 = brc_bread_crumbs();
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134220290;
    *&buf[4] = v82[0];
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 1024;
    *&buf[24] = scopesCopy & 1;
    *&buf[28] = 1024;
    *&buf[30] = (scopesCopy >> 1) & 1;
    *&buf[34] = 1024;
    *&buf[36] = (scopesCopy >> 2) & 1;
    LOWORD(v86) = 1024;
    *(&v86 + 2) = (scopesCopy >> 3) & 1;
    HIWORD(v86) = 1024;
    v87 = (scopesCopy >> 4) & 1;
    v88 = 1024;
    v89 = 0;
    v90 = 2112;
    v91 = dsCopy;
    v92 = 2112;
    v93 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx %@: starting watching ubiquitous scope (docs:%d data:%d ext:%d dirs:%d faults:%d trash:%d) for %@%@", buf, 0x4Eu);
  }

  if (self->_watchKind)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      watchKind = self->_watchKind;
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = watchKind;
      *&buf[18] = 2112;
      *&buf[20] = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] %@: EALREADY: watch already set up to kind %d%@", buf, 0x1Cu);
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:37];
    replyCopy[2](replyCopy, v11);
  }

  else if ((8 * scopesCopy) & 0x20 | (2 * (scopesCopy & 3)))
  {
    session = [(BRCNotificationManager *)self->_manager session];
    v53 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
    obj = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v13)
    {
      v14 = *v79;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v79 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v78 + 1) + 8 * i);
          v17 = [session appLibraryByID:v16];
          if (v17)
          {
            [obj addObject:v17];
          }

          else
          {
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, 0x90u))
            {
              *buf = 138412802;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v16;
              *&buf[22] = 2112;
              *&buf[24] = v18;
              _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %@: unable to find container %@%@", buf, 0x20u);
            }

            [v53 removeObject:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v13);
    }

    if ([obj count])
    {
      objc_storeStrong(&self->_watchedAppLibraries, obj);
      objc_storeStrong(&self->_watchedAppLibraryIDs, v53);
      self->_watchedAppLibrariesFlags = 3;
      v20 = dispatch_group_create();
      gatherGroup = self->_gatherGroup;
      self->_gatherGroup = v20;

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__10;
      *&buf[32] = __Block_byref_object_dispose__10;
      v86 = 0;
      objc_initWeak(&location, self);
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v52 = self->_watchedAppLibraries;
      v22 = [(NSSet *)v52 countByEnumeratingWithState:&v73 objects:v83 count:16];
      if (v22)
      {
        v23 = *v74;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v74 != v23)
            {
              objc_enumerationMutation(v52);
            }

            v25 = *(*(&v73 + 1) + 8 * j);
            delegate = [(BRCNotificationPipe *)self delegate];
            [delegate notificationPipe:self willObserveAppLibrary:v25];

            if (scopesCopy)
            {
              dbRowID = [v25 dbRowID];
              v28 = [BRCItemID documentsItemIDWithAppLibraryRowID:dbRowID];

              dispatch_group_enter(self->_gatherGroup);
              v29 = [v25 db];
              serialQueue = [v29 serialQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke;
              block[3] = &unk_2785016B0;
              block[4] = v25;
              v69 = v28;
              selfCopy = self;
              v31 = v28;
              objc_copyWeak(&v72, &location);
              v71 = buf;
              dispatch_async(serialQueue, block);

              objc_destroyWeak(&v72);
            }

            if ((scopesCopy & 2) != 0)
            {
              rootItemID = [v25 rootItemID];
              dispatch_group_enter(self->_gatherGroup);
              v33 = [v25 db];
              serialQueue2 = [v33 serialQueue];
              v63[0] = MEMORY[0x277D85DD0];
              v63[1] = 3221225472;
              v63[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3;
              v63[3] = &unk_2785016B0;
              v63[4] = v25;
              v64 = rootItemID;
              selfCopy2 = self;
              v35 = rootItemID;
              objc_copyWeak(&v67, &location);
              v66 = buf;
              dispatch_async(serialQueue2, v63);

              objc_destroyWeak(&v67);
            }
          }

          v22 = [(NSSet *)v52 countByEnumeratingWithState:&v73 objects:v83 count:16];
        }

        while (v22);
      }

      [(BRCNotificationManager *)self->_manager registerAppLibraries:self->_watchedAppLibraries forFlags:self->_watchedAppLibrariesFlags];
      dispatch_group_enter(self->_gatherGroup);
      v36 = [BRCDataOrDocsScopeGatherer alloc];
      allObjects = [obj allObjects];
      initialGatherMaxRank = self->_initialGatherMaxRank;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158;
      v61[3] = &unk_2785016D8;
      objc_copyWeak(&v62, &location);
      v61[4] = buf;
      v39 = [(BRCDataOrDocsScopeGatherer *)v36 initWithNotificationPipe:self appLibraries:allObjects startingRank:1 maxRank:initialGatherMaxRank withDeadItems:0 gatherReply:v61];
      gatherer = self->_gatherer;
      self->_gatherer = v39;

      self->_watchKind = (2 * scopesCopy) & 0x80 | scopesCopy & 0x18 | (8 * scopesCopy) & 0x20 | (2 * (scopesCopy & 3));
      v41 = self->_gatherGroup;
      queue = [(BRCNotificationPipe *)self queue];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159;
      v57[3] = &unk_278501700;
      objc_copyWeak(&v60, &location);
      v58 = replyCopy;
      v59 = buf;
      dispatch_group_notify(v41, queue, v57);

      [(BRCNotificationPipe *)self _gatherIfNeededAndFlushAsync];
      objc_destroyWeak(&v60);
      objc_destroyWeak(&v62);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v45 = brc_bread_crumbs();
      v46 = brc_default_log();
      if (os_log_type_enabled(v46, 0x90u))
      {
        [BRCNotificationPipe watchScopes:trustedAppLibraryIDs:gatherReply:];
      }

      v47 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
      replyCopy[2](replyCopy, v47);
    }

    v11 = session;
  }

  else
  {
    v43 = brc_bread_crumbs();
    v44 = brc_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      _os_log_impl(&dword_223E7A000, v44, OS_LOG_TYPE_DEFAULT, "[WARNING] %@: client didn't specify Document or Data Scope%@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    replyCopy[2](replyCopy, v11);
  }

  __brc_leave_section(v82);
  v48 = *MEMORY[0x277D85DE8];
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultClientZone];
  v3 = [v2 fetchRecursiveDirectoryContentsIfNecessary:*(a1 + 40) isUserWaiting:1 rescheduleApply:1];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_1();
    }

    [v3 beginObservingChanges];
    v6 = *(a1 + 48);
    objc_sync_enter(v6);
    [*(*(a1 + 48) + 176) addObject:v3];
    objc_sync_exit(v6);

    objc_initWeak(&location, v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_155;
    v10[3] = &unk_278501688;
    objc_copyWeak(&v11, (a1 + 64));
    objc_copyWeak(&v12, &location);
    v7 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v10[5] = v7;
    [v3 addRecursiveDirectoryListCompletionBlock:v10];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_2((a1 + 40));
    }

    dispatch_group_leave(*(*(a1 + 48) + 80));
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_155(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6[22] removeObject:v5];
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2;
    v15[3] = &unk_278500DA0;
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v14 = [v5 description];
    [v6 _performBlock:v15 whenNotifsAreFullyFlushedInAppLibrary:v12 description:v14];
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultClientZone];
  v3 = [v2 fetchRecursiveDirectoryContentsIfNecessary:*(a1 + 40) isUserWaiting:1 rescheduleApply:1];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_1();
    }

    [v3 beginObservingChanges];
    v6 = *(a1 + 48);
    objc_sync_enter(v6);
    [*(*(a1 + 48) + 176) addObject:v3];
    objc_sync_exit(v6);

    objc_initWeak(&location, v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_156;
    v10[3] = &unk_278501688;
    objc_copyWeak(&v11, (a1 + 64));
    objc_copyWeak(&v12, &location);
    v7 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v10[5] = v7;
    [v3 addRecursiveDirectoryListCompletionBlock:v10];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_2((a1 + 40));
    }

    dispatch_group_leave(*(*(a1 + 48) + 80));
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_156(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6[22] removeObject:v5];
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2_157;
    v15[3] = &unk_278500DA0;
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v14 = [v5 description];
    [v6 _performBlock:v15 whenNotifsAreFullyFlushedInAppLibrary:v12 description:v14];
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_2_157(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = *(*(a1 + 32) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v12 = brc_bread_crumbs();
    v13 = brc_notifications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158_cold_1();
    }

    dispatch_group_leave(v6[10]);
  }
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 40) + 8) + 40) brc_wrappedError];
  (*(v5 + 16))(v5, v6);
}

- (void)_watchItem:(id)item options:(unsigned __int16)options gatherReply:(id)reply
{
  v90 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  replyCopy = reply;
  if (self->_watchKind)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      watchKind = self->_watchKind;
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = watchKind;
      *&buf[18] = 2112;
      *&buf[20] = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %@: EALREADY: watch already set up to kind %d%@", buf, 0x1Cu);
    }

    v12 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:37];
    replyCopy[2](replyCopy, v12);

    goto LABEL_35;
  }

  if (itemCopy)
  {
    [(BRCNotificationPipe *)self setWatchedAncestorFilenameToItem:0];
    fileObjectID = [itemCopy fileObjectID];
    [(BRCNotificationPipe *)self setWatchedAncestorFileObjectID:fileObjectID];

    itemGlobalID = [itemCopy itemGlobalID];
    [(BRCNotificationPipe *)self setWatchedAncestorItemGlobalID:itemGlobalID];

    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    appLibrary = [itemCopy appLibrary];
    v86 = appLibrary;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    v18 = [v15 initWithArray:v17];
    watchedAppLibraries = self->_watchedAppLibraries;
    self->_watchedAppLibraries = v18;

    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    appLibrary2 = [itemCopy appLibrary];
    appLibraryID = [appLibrary2 appLibraryID];
    v85 = appLibraryID;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v24 = [v20 initWithArray:v23];
    watchedAppLibraryIDs = self->_watchedAppLibraryIDs;
    self->_watchedAppLibraryIDs = v24;

LABEL_8:
    [(BRCNotificationPipe *)self _registerAsWatcherIfNeeded];
    self->_watchItemOptions = options;
    v27 = dispatch_group_create();
    gatherGroup = self->_gatherGroup;
    self->_gatherGroup = v27;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__10;
    v83 = __Block_byref_object_dispose__10;
    v84 = 0;
    objc_initWeak(&location, self);
    if (!self->_watchedAncestorFileObjectID || ![itemCopy isDirectory])
    {
LABEL_28:
      if ((options & 4) != 0)
      {
        v44 = 3;
      }

      else
      {
        v44 = 1;
      }

      dispatch_group_enter(self->_gatherGroup);
      if (self->_gatherer)
      {
        v58 = brc_bread_crumbs();
        v59 = brc_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          [BRCNotificationPipe _watchItem:options:gatherReply:];
        }
      }

      v45 = [BRCDataOrDocsScopeGatherer alloc];
      allObjects = [(NSSet *)self->_watchedAppLibraries allObjects];
      initialGatherMaxRank = self->_initialGatherMaxRank;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_166;
      v70[3] = &unk_2785016D8;
      objc_copyWeak(&v71, &location);
      v70[4] = buf;
      v48 = [(BRCDataOrDocsScopeGatherer *)v45 initWithNotificationPipe:self appLibraries:allObjects startingRank:1 maxRank:initialGatherMaxRank withDeadItems:0 gatherReply:v70];
      gatherer = self->_gatherer;
      self->_gatherer = v48;

      self->_watchKind = 1;
      v50 = self->_gatherGroup;
      queue = [(BRCNotificationPipe *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167;
      block[3] = &unk_278501700;
      objc_copyWeak(&v69, &location);
      v67 = replyCopy;
      v68 = buf;
      dispatch_group_notify(v50, queue, block);

      if ((options & 8) != 0)
      {
        watchedAncestorItemGlobalID = [(BRCNotificationPipe *)self watchedAncestorItemGlobalID];
        [(BRCDataOrDocsScopeGatherer *)self->_gatherer setGatheredChildrenItemGlobalID:watchedAncestorItemGlobalID];
      }

      queue = self->_queue;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_168;
      v62[3] = &unk_278501750;
      v62[4] = self;
      v64 = buf;
      v65 = v44;
      v63 = itemCopy;
      v54 = v62;
      *from = MEMORY[0x277D85DD0];
      *&from[8] = 3221225472;
      *&from[16] = __brc_dispatch_async_autorelease_block_invoke;
      v88 = &unk_278501520;
      v89 = v54;
      v55 = queue;
      dispatch_async(v55, from);

      objc_destroyWeak(&v69);
      objc_destroyWeak(&v71);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_35;
    }

    clientZone = [itemCopy clientZone];
    appLibrary3 = [itemCopy appLibrary];
    if ((options & 4) != 0)
    {
      itemID = [itemCopy itemID];
      v32 = [clientZone fetchRecursiveDirectoryContentsIfNecessary:itemID isUserWaiting:1 rescheduleApply:1];

      if (v32)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_notifications_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *from = 138412802;
          *&from[4] = v32;
          *&from[12] = 2112;
          *&from[14] = self;
          *&from[22] = 2112;
          v88 = v41;
          _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting on gather group for %@ in %@%@", from, 0x20u);
        }

        dispatch_group_enter(self->_gatherGroup);
      }

      [v32 beginObservingChanges];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NSHashTable *)selfCopy->_recursiveScopeListOps addObject:v32];
      objc_sync_exit(selfCopy);

      objc_initWeak(from, v32);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke;
      v76[3] = &unk_278501688;
      objc_copyWeak(&v79, &location);
      objc_copyWeak(&v80, from);
      v78 = buf;
      v77 = clientZone;
      [v32 addRecursiveDirectoryListCompletionBlock:v76];

      objc_destroyWeak(&v80);
      objc_destroyWeak(&v79);
      objc_destroyWeak(from);
    }

    else
    {
      if ((options & 2) == 0)
      {
LABEL_27:

        goto LABEL_28;
      }

      itemID2 = [(BRCItemGlobalID *)self->_watchedAncestorItemGlobalID itemID];
      v32 = [clientZone fetchDirectoryContentsIfNecessary:itemID2 isUserWaiting:1 rescheduleApplyScheduler:1];

      [v32 beginObservingChangesWithDelegate:self];
      if (v32)
      {
        v33 = brc_bread_crumbs();
        v34 = brc_notifications_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *from = 138412802;
          *&from[4] = v32;
          *&from[12] = 2112;
          *&from[14] = self;
          *&from[22] = 2112;
          v88 = v33;
          _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[NOTIF] Waiting on gather group for %@ in %@%@", from, 0x20u);
        }

        dispatch_group_enter(self->_gatherGroup);
      }

      WeakRetained = objc_loadWeakRetained(&self->_listOp);
      v36 = WeakRetained == 0;

      if (!v36)
      {
        v60 = brc_bread_crumbs();
        v61 = brc_default_log();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          [BRCNotificationPipe _watchItem:options:gatherReply:];
        }
      }

      objc_storeWeak(&self->_listOp, v32);
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_164;
      v72[3] = &unk_278501728;
      objc_copyWeak(&v75, &location);
      v72[4] = self;
      v74 = buf;
      v73 = clientZone;
      [v32 addDirectoryListCompletionBlock:v72];

      objc_destroyWeak(&v75);
    }

    goto LABEL_27;
  }

  watchedAncestorFilenameToItem = [(BRCNotificationPipe *)self watchedAncestorFilenameToItem];

  if (watchedAncestorFilenameToItem)
  {
    goto LABEL_8;
  }

  v37 = brc_bread_crumbs();
  v38 = brc_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
  {
    [BRCNotificationPipe _watchItem:options:gatherReply:];
  }

  v39 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Invalid notification pipe setup"];
  replyCopy[2](replyCopy, v39);

LABEL_35:
  v56 = *MEMORY[0x277D85DE8];
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6[22] removeObject:v5];
    v7 = *(*(a1 + 40) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    objc_storeStrong(v8, v11);
    objc_sync_exit(v6);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_2;
    v15[3] = &unk_278500DA0;
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v14 = [v5 description];
    [v6 _performBlock:v15 whenNotifsAreFullyFlushedInClientZone:v12 description:v14];
  }
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_164(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = brc_bread_crumbs();
  v6 = brc_notifications_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    *buf = 138413058;
    v21 = v18;
    v22 = 2112;
    v23 = v3;
    v24 = 2112;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[NOTIF] %@ - Calling the list completion block with %@, sself = %@%@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v8 = objc_loadWeakRetained(v7 + 16);
    objc_storeWeak(v7 + 16, 0);
    v9 = *(*(a1 + 48) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v3;
    }

    objc_storeStrong(v10, v13);
    objc_sync_exit(v7);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_165;
    v19[3] = &unk_278500DA0;
    v15 = a1 + 40;
    v14 = *(a1 + 40);
    v16 = [v8 description];
    [v7 _performBlock:v19 whenNotifsAreFullyFlushedInClientZone:v14 description:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_165(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_166(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = brc_bread_crumbs();
    v8 = brc_notifications_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158_cold_1();
    }

    v9 = *(*(a1 + 32) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v3;
    }

    objc_storeStrong(v10, v13);
    dispatch_group_leave(v6[10]);
    objc_sync_exit(v6);
  }
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 40) + 8) + 40) brc_wrappedError];
  (*(v5 + 16))(v5, v6);
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_168(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v3 = *(v2 + 168);
    v4 = [v3 countByEnumeratingWithState:&v29 objects:v45 count:16];
    if (v4)
    {
      v5 = *v30;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v30 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v29 + 1) + 8 * i);
          v8 = [*(a1 + 32) delegate];
          [v8 notificationPipe:*(a1 + 32) willObserveAppLibrary:v7];
        }

        v4 = [v3 countByEnumeratingWithState:&v29 objects:v45 count:16];
      }

      while (v4);
    }

    *(*(a1 + 32) + 192) = *(a1 + 56);
    [*(*(a1 + 32) + 112) registerAppLibraries:*(*(a1 + 32) + 168) forFlags:?];
    v9 = brc_bread_crumbs();
    v10 = brc_notifications_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = [v21 watchedAncestorFileObjectID];
      v24 = [*(a1 + 32) watchedAncestorItemGlobalID];
      v25 = [*(a1 + 32) watchedAncestorFilenameToItem];
      v26 = v25;
      v27 = &stru_2837504F0;
      *buf = 138413570;
      if (v25)
      {
        v27 = v25;
      }

      v34 = v21;
      v35 = 2112;
      v36 = v22;
      v37 = 2112;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v27;
      v43 = 2112;
      v44 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: started watching children of %@ (fsid:%@ id:%@ filename:%@)%@", buf, 0x3Eu);
    }

    [*(a1 + 32) _gatherIfNeededAndFlushAsync];
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    obj = v2;
    objc_sync_enter(obj);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    if (v13)
    {
      v14 = v13;
      v15 = *(v12 + 40);
      *(v12 + 40) = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4];
      v17 = *(*(a1 + 48) + 8);
      v15 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    [*(*(a1 + 32) + 72) invalidate];
    v18 = *(a1 + 32);
    v19 = *(v18 + 72);
    *(v18 + 72) = 0;

    objc_sync_exit(obj);
    v20 = *MEMORY[0x277D85DE8];
  }
}

- (void)invalidateIfWatchingAppLibraryIDs:(id)ds
{
  if ([(NSSet *)self->_watchedAppLibraryIDs intersectsSet:ds])
  {

    [(BRCNotificationPipe *)self close];
  }
}

- (void)invalidateReceiverIfWatchingAppLibraryIDs:(id)ds
{
  if ([(NSSet *)self->_watchedAppLibraryIDs intersectsSet:ds])
  {
    receiver = self->_receiver;

    [(BRItemNotificationReceiving *)receiver invalidate];
  }
}

- (BRCNotificationPipeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __90__BRCNotificationPipe_IPCs__watchItemsNamesPrefixedBy_inScopes_appLibraryIDs_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __67__BRCNotificationPipe_IPCs__watchScopes_appLibraryIDs_gatherReply___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, 0x90u))
  {
    v10 = a1[5];
    v11 = *(a1[4] + 32);
    v12 = 138413058;
    v13 = v11;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@: can't watch %@: %@%@", &v12, 0x2Au);
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = a1[4];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v12, 0x20u);
  }

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __53__BRCNotificationPipe_IPCs__watchScopes_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, 0x90u))
  {
    v10 = *(*(a1 + 32) + 32);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@: can't watch app containers: %@%@", &v11, 0x20u);
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)boostPriority:(id)priority
{
  v25 = *MEMORY[0x277D85DE8];
  priorityCopy = priority;
  memset(v14, 0, sizeof(v14));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) boostPriority:]", 1495, 0, v14);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v14[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v16 = v7;
    v17 = 2112;
    selfCopy = self;
    v19 = 2112;
    v20 = v9;
    v21 = 2080;
    v22 = "[BRCNotificationPipe(IPCs) boostPriority:]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  boostReply = self->_boostReply;
  if (boostReply)
  {
    boostReply[2]();
  }

  v11 = MEMORY[0x22AA4A310](priorityCopy);
  v12 = self->_boostReply;
  self->_boostReply = v11;

  __brc_leave_section(v14);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)watchItemWithFileObjectID:(id)d options:(unsigned __int16)options request:(id)request gatherReply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  replyCopy = reply;
  session = [(BRCNotificationManager *)self->_manager session];
  v14 = brc_bread_crumbs();
  v15 = brc_notifications_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCNotificationPipe(IPCs) watchItemWithFileObjectID:options:request:gatherReply:];
  }

  clientTruthWorkloop = [session clientTruthWorkloop];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke;
  v31[3] = &unk_2785017A0;
  v17 = dCopy;
  v32 = v17;
  v18 = replyCopy;
  v36 = v18;
  v19 = session;
  v33 = v19;
  v20 = requestCopy;
  v34 = v20;
  selfCopy = self;
  optionsCopy = options;
  v21 = clientTruthWorkloop;
  v22 = v31;
  v23 = objc_autoreleasePoolPush();
  v38 = 0uLL;
  v39 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v38);
  v24 = brc_bread_crumbs();
  v25 = brc_notifications_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v29 = v38;
    label = dispatch_queue_get_label(v21);
    *block = 134218498;
    *&block[4] = v29;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v41 = v24;
    _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[NOTIF] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v44 = v38;
  v45 = v39;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_4;
  v41 = &unk_2784FF568;
  v26 = v21;
  v42 = v26;
  v27 = v22;
  v43 = v27;
  dispatch_async(v26, block);

  objc_autoreleasePoolPop(v23);
  v28 = *MEMORY[0x277D85DE8];
}

void __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isRootContainerItem])
  {
    v2 = *(*(a1 + 64) + 16);
    v3 = *MEMORY[0x277D85DE8];

    v2();
  }

  else
  {
    v4 = [*(a1 + 40) itemFetcher];
    v5 = [v4 itemByFileObjectID:*(a1 + 32)];

    if (v5)
    {
      v6 = [v5 appLibrary];
      v7 = [v6 appLibraryID];
      if (v7)
      {
        v8 = [*(a1 + 48) isSystemRequest];
        if (v6 && v8 && ([v6 isAppInstalled] & 1) == 0)
        {
          v31 = brc_bread_crumbs();
          v32 = brc_notifications_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke_cold_1();
          }

          (*(*(a1 + 64) + 16))();
        }

        else
        {
          if ([v5 isZoneRoot])
          {
            [*(a1 + 56) setWatchedAncestorFilenameToItem:0];
            [*(a1 + 56) setWatchedAncestorFileObjectID:*(a1 + 32)];
          }

          else
          {
            v18 = [v5 st];
            v19 = [v18 logicalName];
            [*(a1 + 56) setWatchedAncestorFilenameToItem:v19];

            v20 = [v5 parentFileObjectID];
            [*(a1 + 56) setWatchedAncestorFileObjectID:v20];
          }

          [*(a1 + 56) setWatchedAncestorItemGlobalID:0];
          v21 = objc_alloc(MEMORY[0x277CBEB98]);
          v35 = v6;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v23 = [v21 initWithArray:v22];
          v24 = *(a1 + 56);
          v25 = *(v24 + 168);
          *(v24 + 168) = v23;

          v26 = objc_alloc(MEMORY[0x277CBEB98]);
          v34 = v7;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
          v28 = [v26 initWithArray:v27];
          v29 = *(a1 + 56);
          v30 = *(v29 + 184);
          *(v29 + 184) = v28;

          [*(a1 + 56) _watchItem:v5 options:*(a1 + 72) gatherReply:*(a1 + 64)];
        }
      }

      else
      {
        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412802;
          v37 = v15;
          v38 = 2112;
          v39 = 0;
          v40 = 2112;
          v41 = v13;
          _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Path %@ is not an existing app library: %@%@", buf, 0x20u);
        }

        v16 = *(a1 + 64);
        v17 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
        (*(v16 + 16))(v16, v17);
      }
    }

    else
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412802;
        v37 = v11;
        v38 = 2112;
        v39 = 0;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Path %@ is not an existing container: %@%@", buf, 0x20u);
      }

      v12 = *(a1 + 64);
      v6 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
      (*(v12 + 16))(v12, v6);
    }

    v33 = *MEMORY[0x277D85DE8];
  }
}

- (void)invalidate
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  __brc_create_section(1, "[BRCNotificationPipe(IPCs) invalidate]", 1553, 0, v14);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v14[0];
    v6 = qos_class_self();
    v7 = BRCPrettyPrintEnumWithContext(v6, &brc_qos_entries, 0);
    *buf = 134219010;
    v16 = v5;
    v17 = 2112;
    selfCopy2 = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2080;
    v22 = "[BRCNotificationPipe(IPCs) invalidate]";
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  if (self->_receiver)
  {
    memset(v13, 0, sizeof(v13));
    __brc_create_section(0, "[BRCNotificationPipe(IPCs) invalidate]", 1560, 0, v13);
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v16 = v13[0];
      v17 = 2112;
      selfCopy2 = self;
      v19 = 2112;
      v20 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx invalidating %@%@", buf, 0x20u);
    }

    dispatch_assert_queue_V2(self->_queue);
    [(BRCNotificationPipe *)self _stopWatchingItems];
    client = self->_client;
    self->_client = 0;

    [(BRItemNotificationReceiving *)self->_receiver invalidate];
    [(BRNotificationQueue *)self->_notifs removeAllObjects];
    receiver = self->_receiver;
    self->_receiver = 0;

    self->_hasUpdatesInFlight = 0;
    __brc_leave_section(v13);
  }

  __brc_leave_section(v14);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)addNotification:(uint64_t *)a1 asDead:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 watchedAncestorItemGlobalID];
  v7 = [a1 oldWatchedAncestorItemGlobalID];
  v11 = 138412802;
  v12 = v6;
  OUTLINED_FUNCTION_4_0();
  v13 = v8;
  v14 = v9;
  v15 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[NOTIF] Learning path-match for %@ (was %@)%@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:(NSObject *)a3 .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 watchedAncestorItemGlobalID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[NOTIF] Learning itemID for our ancestor: %@%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.16()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _watchKind & WATCH_ITEM%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.19()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.20()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.21()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isInterestingUpdate:.cold.23()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_prepareForSecondGatherWithRank:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] doing the second phase gathering%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_prepareForSecondGatherWithRank:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_gatherer%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __55__BRCNotificationPipe__prepareForSecondGatherWithRank___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] Finished second phase gathering%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processUpdates:withRank:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processUpdates:withRank:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] dropping all updates%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__BRCNotificationPipe___performBlockafterDBAndNotifFlush_session_description_error___block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __87__BRCNotificationPipe__performBlock_whenNotifsAreFullyFlushedInClientZone_description___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)watchScopes:trustedAppLibraryIDs:gatherReply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_3_158_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__BRCNotificationPipe_watchScopes_trustedAppLibraryIDs_gatherReply___block_invoke_159_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_watchItem:options:gatherReply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: !_listOp%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_watchItem:options:gatherReply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: !_gatherer%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_watchItem:options:gatherReply:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Invalid notification pipe setup%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__BRCNotificationPipe__watchItem_options_gatherReply___block_invoke_167_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__BRCNotificationPipe_IPCs__watchItemWithFileObjectID_options_request_gatherReply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end