@interface BRCDataOrDocsScopeGatherer
- (BRCDataOrDocsScopeGatherer)initWithNotificationPipe:(id)pipe appLibraries:(id)libraries startingRank:(unint64_t)rank maxRank:(unint64_t)maxRank withDeadItems:(BOOL)items gatherReply:(id)reply;
- (id)_popGatherReply;
- (void)dealloc;
- (void)done;
- (void)gatherWithBatchSize:(int64_t)size completion:(id)completion;
- (void)invalidate;
@end

@implementation BRCDataOrDocsScopeGatherer

- (BRCDataOrDocsScopeGatherer)initWithNotificationPipe:(id)pipe appLibraries:(id)libraries startingRank:(unint64_t)rank maxRank:(unint64_t)maxRank withDeadItems:(BOOL)items gatherReply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  librariesCopy = libraries;
  replyCopy = reply;
  v40.receiver = self;
  v40.super_class = BRCDataOrDocsScopeGatherer;
  v17 = [(BRCDataOrDocsScopeGatherer *)&v40 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_pipe, pipeCopy);
    queue = [pipeCopy queue];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __115__BRCDataOrDocsScopeGatherer_initWithNotificationPipe_appLibraries_startingRank_maxRank_withDeadItems_gatherReply___block_invoke;
    v37 = &unk_2785014D0;
    v20 = queue;
    v38 = v20;
    v39 = replyCopy;
    v21 = MEMORY[0x22AA4A310](&v34);
    gatherReply = v18->_gatherReply;
    v18->_gatherReply = v21;

    manager = [pipeCopy manager];
    session = [manager session];
    session = v18->_session;
    v18->_session = session;

    v18->_gatheringRankMin = rank;
    v18->_gatheringRankMax = maxRank;
    v26 = [librariesCopy mutableCopy];
    gatheringAppLibraries = v18->_gatheringAppLibraries;
    v18->_gatheringAppLibraries = v26;

    objc_storeStrong(&v18->_gatheringNamePrefix, pipeCopy[18]);
    v18->_includesDeadItems = items;
    v18->_invalidated = 0;
    v28 = brc_bread_crumbs();
    v29 = brc_notifications_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v42 = pipeCopy;
      v43 = 2048;
      rankCopy = rank;
      v45 = 2048;
      maxRankCopy = maxRank;
      v47 = 2112;
      v48 = v28;
      _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[NOTIF] %@: gathering from %lld to %lld%@", buf, 0x2Au);
    }

    if (v18->_gatheringNamePrefix)
    {
      v30 = brc_bread_crumbs();
      v31 = brc_notifications_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [BRCDataOrDocsScopeGatherer initWithNotificationPipe:? appLibraries:? startingRank:? maxRank:? withDeadItems:? gatherReply:?];
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

void __115__BRCDataOrDocsScopeGatherer_initWithNotificationPipe_appLibraries_startingRank_maxRank_withDeadItems_gatherReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = *(a1 + 40);
  v6 = [v4 brc_wrappedError];

  (*(v5 + 16))(v5, v6);
}

- (void)gatherWithBatchSize:(int64_t)size completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_pipe);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    sizeCopy = size;
    manager = [WeakRetained manager];
    session = [manager session];

    readOnlyDB = [session readOnlyDB];
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke;
    v35[3] = &unk_2785014F8;
    objc_copyWeak(&v37, &location);
    v10 = completionCopy;
    v36 = v10;
    v11 = MEMORY[0x22AA4A310](v35);
    serialQueue = [readOnlyDB serialQueue];
    if (serialQueue)
    {
      personaIdentifier = [session personaIdentifier];
      if (personaIdentifier)
      {
        personaIdentifier2 = [session personaIdentifier];
        mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
        br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];
        v17 = [personaIdentifier2 isEqualToString:br_currentPersonaID];

        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      serialQueue2 = [readOnlyDB serialQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2;
      v28[3] = &unk_278501548;
      objc_copyWeak(v32, &location);
      v32[1] = sizeCopy;
      v30 = v11;
      v29 = readOnlyDB;
      v31 = v10;
      v23 = v11;
      dispatch_async(serialQueue2, v28);

      objc_destroyWeak(v32);
LABEL_12:

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
      goto LABEL_13;
    }

LABEL_5:
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't gather anymore because the personaID is incorrect or db has no serial queue%@", buf, 0xCu);
    }

    queue = [v7 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_14;
    block[3] = &unk_278501520;
    v34 = v11;
    v21 = v11;
    dispatch_async(queue, block);

    goto LABEL_12;
  }

  session = brc_bread_crumbs();
  readOnlyDB = brc_default_log();
  if (os_log_type_enabled(readOnlyDB, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = session;
    _os_log_impl(&dword_223E7A000, readOnlyDB, OS_LOG_TYPE_DEFAULT, "[WARNING] Notification pipe got deallocated. Nothing to do%@", buf, 0xCu);
  }

LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_notifications_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_cold_1();
    }
  }
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v65 = objc_loadWeakRetained(WeakRetained + 1);
    if (v65)
    {
      v63 = *(a1 + 64);
      if ((v63 & 0x8000000000000000) != 0)
      {
        __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_1();
      }

      if ([v2[3] count])
      {
        v66 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v63];
        v62 = [v2[3] lastObject];
        if (!v62)
        {
          __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_2();
        }

        v3 = v2[6];
        if (v3 + 1 > v2[4])
        {
          v4 = v3 + 1;
        }

        else
        {
          v4 = v2[4];
        }

        memset(v77, 0, sizeof(v77));
        __brc_create_section(0, "[BRCDataOrDocsScopeGatherer gatherWithBatchSize:completion:]_block_invoke", 193, 0, v77);
        v5 = brc_bread_crumbs();
        v6 = brc_notifications_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v30 = v77[0];
          v31 = [v62 logName];
          v32 = *(v65 + 136);
          v33 = BRCPrettyPrintBitmap();
          *buf = 134219266;
          v83 = v30;
          v84 = 2048;
          v85 = v4;
          v86 = 2112;
          v87 = v31;
          v88 = 2048;
          v89 = v63;
          v90 = 2112;
          v91 = v33;
          v92 = 2112;
          v93 = v5;
          _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx Looking for item with ranks >= %lld in %@ (%ld kind %@)%@", buf, 0x3Eu);
        }

        v7 = *(v65 + 136);
        if (v7)
        {
          v8 = v2[10];
          if (!v8)
          {
            v12 = 0;
            v61 = 0;
            v23 = 1;
LABEL_48:
            v60 = v23;
            goto LABEL_49;
          }

          if ((*(v65 + 140) & 2) != 0)
          {
            v29 = [v62 itemsEnumeratorChildOf:v2[10] withDeadItems:*(v2 + 72) rankMin:v4 rankMax:v2[5] count:v63 db:*(a1 + 32)];
            if (!v29)
            {
              v34 = brc_bread_crumbs();
              v35 = brc_default_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
              {
                __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_3();
              }

              v36 = [v65 queue];
              v75[0] = MEMORY[0x277D85DD0];
              v75[1] = 3221225472;
              v75[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_18;
              v75[3] = &unk_278501520;
              v76 = *(a1 + 40);
              dispatch_async(v36, v75);

              v28 = 0;
              v61 = 0;
              goto LABEL_79;
            }

            v12 = v29;
            v60 = 0;
            v61 = v29;
LABEL_49:

            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v28 = v12;
            v37 = [v28 countByEnumeratingWithState:&v70 objects:v80 count:16];
            if (v37)
            {
              v38 = *v71;
              do
              {
                v39 = 0;
                do
                {
                  if (*v71 != v38)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v40 = *(*(&v70 + 1) + 8 * v39);
                  v41 = objc_autoreleasePoolPush();
                  v2[6] = [v40 notifsRank];
                  if (![v40 isZoneRoot])
                  {
                    v44 = [BRCNotification notificationGatheredFromItem:v40];
                    v42 = v44;
                    if ((v2[9] & 1) != 0 || ![v44 isDead])
                    {
                      [v66 addObject:v42];
                      v43 = brc_bread_crumbs();
                      v45 = brc_notifications_log();
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412802;
                        v83 = v2;
                        v84 = 2112;
                        v85 = v42;
                        v86 = 2112;
                        v87 = v43;
                        v46 = v45;
                        v47 = "[NOTIF] %@: queued gathered notification %@%@";
                        v48 = 32;
LABEL_66:
                        _os_log_debug_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEBUG, v47, buf, v48);
                      }
                    }

                    else
                    {
                      v43 = brc_bread_crumbs();
                      v45 = brc_notifications_log();
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v83 = v42;
                        v84 = 2112;
                        v85 = v43;
                        v46 = v45;
                        v47 = "[NOTIF] Ignoring dead update %@%@";
                        v48 = 22;
                        goto LABEL_66;
                      }
                    }

                    goto LABEL_63;
                  }

                  v42 = brc_bread_crumbs();
                  v43 = brc_notifications_log();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v83 = v40;
                    v84 = 2112;
                    v85 = v42;
                    _os_log_debug_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEBUG, "[NOTIF] Ignoring zone root item %@%@", buf, 0x16u);
                  }

LABEL_63:

                  objc_autoreleasePoolPop(v41);
                  ++v39;
                }

                while (v37 != v39);
                v49 = [v28 countByEnumeratingWithState:&v70 objects:v80 count:16];
                v37 = v49;
              }

              while (v49);
            }

            if (v61)
            {
              v50 = v60;
            }

            else
            {
              v50 = 1;
            }

            if (v50)
            {
              if (v60)
              {
LABEL_73:
                [v2[3] removeLastObject];
                v2[6] = 0;
                v51 = 1;
LABEL_76:
                if (![v66 count])
                {
                  if ((v51 & 1) == 0)
                  {
                    v53 = brc_bread_crumbs();
                    v54 = brc_default_log();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v55 = [v61 rowNumber];
                      *buf = 134218498;
                      v83 = v55;
                      v84 = 2048;
                      v85 = v63;
                      v86 = 2112;
                      v87 = v53;
                      _os_log_impl(&dword_223E7A000, v54, OS_LOG_TYPE_DEFAULT, "[WARNING] Strange... No updates received and phase isn't done %lu vs %ld%@", buf, 0x20u);
                    }
                  }

                  [v2 gatherWithBatchSize:v63 completion:*(a1 + 48)];
                  goto LABEL_85;
                }

                v52 = [v65 queue];
                v27 = v67;
                v67[0] = MEMORY[0x277D85DD0];
                v67[1] = 3221225472;
                v67[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_24;
                v67[3] = &unk_2784FF5B8;
                v67[4] = v66;
                v68 = v65;
                v69 = *(a1 + 40);
                dispatch_async(v52, v67);

                goto LABEL_78;
              }
            }

            else if ([v61 rowNumber] < v63)
            {
              goto LABEL_73;
            }

            v51 = 0;
            goto LABEL_76;
          }

          v9 = [v2[8] clientReadDatabaseFacade];
          v10 = [v2[8] itemFetcher];
          v11 = [v10 itemByItemGlobalID:v8 dbFacade:v9];

          if (v11)
          {
            v81 = v11;
            v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
          }

          else
          {
            v12 = MEMORY[0x277CBEBF8];
          }

          v61 = 0;
        }

        else
        {
          v18 = (v7 >> 7) & 1;
          if ((v7 & 8) != 0)
          {
            v19 = 1;
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }

          if ((v7 & 6) != 0)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }

          if ((v7 & 6) != 0)
          {
            v21 = v19;
          }

          else
          {
            v21 = 1;
          }

          BYTE3(v59) = (*(v65 + 136) & 0x40) != 0;
          BYTE2(v59) = (*(v65 + 136) & 0x20) != 0;
          BYTE1(v59) = (*(v65 + 136) & 4) != 0;
          LOBYTE(v59) = (*(v65 + 136) & 2) != 0;
          v22 = [v62 itemsEnumeratorWithRankMin:v4 rankMax:v2[5] namePrefix:v2[7] withDeadItems:*(v2 + 72) shouldIncludeFolders:v21 shouldIncludeOnlyFolders:v20 shouldIncludeDocumentsScope:v59 shouldIncludeDataScope:v63 shouldIncludeExternalScope:*(a1 + 32) shouldIncludeTrashScope:? count:? db:?];
          if (!v22)
          {
            v24 = brc_bread_crumbs();
            v25 = brc_default_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_3();
            }

            v26 = [v65 queue];
            v27 = v74;
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_20;
            v74[3] = &unk_278501520;
            v74[4] = *(a1 + 40);
            dispatch_async(v26, v74);

            v28 = 0;
            v61 = 0;
LABEL_78:
            v8 = v27[4];
LABEL_79:

LABEL_85:
            __brc_leave_section(v77);

            v14 = v66;
            goto LABEL_86;
          }

          v12 = v22;
          v8 = brc_bread_crumbs();
          v9 = brc_notifications_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v57 = *(v2 + 72);
            *buf = 134218498;
            if (v57)
            {
              v58 = "yes";
            }

            else
            {
              v58 = "no";
            }

            v83 = v12;
            v84 = 2080;
            v85 = v58;
            v86 = 2112;
            v87 = v8;
            _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] Creating enumertor %p including dead items: %s%@", buf, 0x20u);
          }

          v61 = v12;
        }

        v23 = v7 & 1;
        goto LABEL_48;
      }

      v16 = [v65 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_16;
      block[3] = &unk_2784FFBC8;
      v17 = *(a1 + 40);
      block[4] = v2;
      v79 = v17;
      dispatch_async(v16, block);

      v14 = v79;
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_notifications_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_5();
      }
    }
  }

  else
  {
    v65 = brc_bread_crumbs();
    v13 = brc_notifications_log();
    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_cold_1();
      v14 = v13;
    }
  }

LABEL_86:

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_16(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 done];
}

uint64_t __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_24(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) addNotification:v7 asDead:{0, v11}];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = (*(*(a1 + 48) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_popGatherReply
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x22AA4A310](selfCopy->_gatherReply);
  gatherReply = selfCopy->_gatherReply;
  selfCopy->_gatherReply = 0;

  v5 = MEMORY[0x22AA4A310](v3);
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)done
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __34__BRCDataOrDocsScopeGatherer_done__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__BRCDataOrDocsScopeGatherer_done__block_invoke_2;
  v2[3] = &unk_278501520;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 addDequeueCallback:v2];
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__BRCDataOrDocsScopeGatherer_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4];
  (*(v1 + 16))(v1, v2);
}

- (void)dealloc
{
  [(BRCDataOrDocsScopeGatherer *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRCDataOrDocsScopeGatherer;
  [(BRCDataOrDocsScopeGatherer *)&v3 dealloc];
}

- (void)initWithNotificationPipe:(uint64_t *)a1 appLibraries:startingRank:maxRank:withDeadItems:gatherReply:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] Self got deallocated. Nothing to do%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: count >= 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: appLibrary%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: No gathered items enumerator - bailing out%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__BRCDataOrDocsScopeGatherer_gatherWithBatchSize_completion___block_invoke_2_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[NOTIF] Notification pipe got deallocated. Nothing to do%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end