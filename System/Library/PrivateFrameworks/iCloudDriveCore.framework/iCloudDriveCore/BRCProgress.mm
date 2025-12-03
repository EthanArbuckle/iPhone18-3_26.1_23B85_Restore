@interface BRCProgress
+ (id)progressToReplaceUploadProgress:(id)progress;
+ (id)uploadProgressForDocument:(id)document totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount;
- (BRCProgress)initWithGroup:(char)group session:(id)session;
- (BRCProgress)initWithIgnorePublish:(BOOL)publish;
- (void)_setupDownloadProgressForDocument:(id)document totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount;
- (void)_setupProgressForDocument:(id)document group:(char)group totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount;
- (void)_setupUploadProgressForDocumentWithName:(id)name totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount fileObjectID:(id)d;
- (void)brc_publish;
- (void)brc_unpublish;
- (void)setCompletedUnitCount:(int64_t)count;
@end

@implementation BRCProgress

- (void)setCompletedUnitCount:(int64_t)count
{
  v3.receiver = self;
  v3.super_class = BRCProgress;
  [(BRCProgress *)&v3 setCompletedUnitCount:count];
}

- (void)brc_publish
{
  if (!self->_ignorePublish)
  {
    v4.receiver = self;
    v4.super_class = BRCProgress;
    [(NSProgress *)&v4 brc_publish];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_published = 1;
    objc_sync_exit(selfCopy);
  }
}

- (void)brc_unpublish
{
  if (!self->_ignorePublish)
  {
    v4.receiver = self;
    v4.super_class = BRCProgress;
    [(NSProgress *)&v4 brc_unpublish];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_published = 0;
    objc_sync_exit(selfCopy);
  }
}

+ (id)uploadProgressForDocument:(id)document totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount
{
  v18 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v9 = [self _progressForDocument:documentCopy group:1 totalUnitCount:count completedUnitCount:unitCount];
  if (v9)
  {
    session = [documentCopy session];
    globalProgress = [session globalProgress];
    [globalProgress addProgress:v9 forDocument:documentCopy inGroup:1];
  }

  else
  {
    session = brc_bread_crumbs();
    globalProgress = brc_default_log();
    if (os_log_type_enabled(globalProgress, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = documentCopy;
      v16 = 2112;
      v17 = session;
      _os_log_impl(&dword_223E7A000, globalProgress, OS_LOG_TYPE_DEFAULT, "[WARNING] failed getting upload progress for %@%@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)progressToReplaceUploadProgress:(id)progress
{
  progressCopy = progress;
  v4 = progressCopy;
  if (*(progressCopy + 136) != 1)
  {
    [BRCProgress progressToReplaceUploadProgress:progressCopy];
  }

  v5 = [BRCProgress alloc];
  v6 = *(v4 + 136);
  WeakRetained = objc_loadWeakRetained(v4 + 16);
  v8 = [(BRCProgress *)v5 initWithGroup:v6 session:WeakRetained];

  if (v8)
  {
    userInfo = [v4 userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA610]];
    totalUnitCount = [v4 totalUnitCount];
    completedUnitCount = [v4 completedUnitCount];
    userInfo2 = [v4 userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:@"ICDProgressObjectID"];
    [v8 _setupUploadProgressForDocumentWithName:v10 totalUnitCount:totalUnitCount completedUnitCount:completedUnitCount fileObjectID:v14];

    v15 = MEMORY[0x277CFAE50];
    userInfo3 = [v4 userInfo];
    v17 = [userInfo3 objectForKeyedSubscript:@"ICDProgressObjectID"];
    v18 = [v15 fileObjectIDWithString:v17];

    v19 = objc_loadWeakRetained(v8 + 16);
    globalProgress = [v19 globalProgress];
    [globalProgress replaceProgressForFileObjectID:v18 inGroup:1 withProgress:v8];
  }

  return v8;
}

- (BRCProgress)initWithGroup:(char)group session:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = BRCProgress;
  v7 = [(BRCProgress *)&v10 initWithParent:0 userInfo:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_session, sessionCopy);
    v8->_group = group;
  }

  return v8;
}

- (BRCProgress)initWithIgnorePublish:(BOOL)publish
{
  v5.receiver = self;
  v5.super_class = BRCProgress;
  result = [(BRCProgress *)&v5 init];
  if (result)
  {
    result->_ignorePublish = publish;
  }

  return result;
}

- (void)_setupUploadProgressForDocumentWithName:(id)name totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount fileObjectID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
  [(BRCProgress *)self setUserInfoObject:v12 forKey:*MEMORY[0x277CCA608]];

  [(BRCProgress *)self setUserInfoObject:dCopy forKey:@"ICDProgressObjectID"];
  [(BRCProgress *)self setUserInfoObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFACF0]];
  [(BRCProgress *)self setUserInfoObject:*MEMORY[0x277CCA630] forKey:*MEMORY[0x277CCA628]];
  [(BRCProgress *)self setUserInfoObject:nameCopy forKey:*MEMORY[0x277CCA610]];
  [(BRCProgress *)self setCompletedUnitCount:unitCount];
  [(BRCProgress *)self setTotalUnitCount:count];
  if ([(BRCProgress *)self completedUnitCount]< 0 || [(BRCProgress *)self totalUnitCount]< 0)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = [(BRCProgress *)self totalUnitCount];
      v22 = 2048;
      completedUnitCount = [(BRCProgress *)self completedUnitCount];
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress initialized with negative values. total [%lld] completed [%lld]%@", buf, 0x20u);
    }
  }

  [(BRCProgress *)self setKind:*MEMORY[0x277CCA648]];
  [(BRCProgress *)self setCancellable:0];
  if (nameCopy)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = _BRLocalizedStringWithFormat();
    [(BRCProgress *)self setLocalizedDescription:v16, nameCopy];
  }

  v17 = brc_bread_crumbs();
  v18 = brc_notifications_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v22 = 2112;
    completedUnitCount = dCopy;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[NOTIF] Added progress %@ for %@%@", buf, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setupDownloadProgressForDocument:(id)document totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount
{
  v45 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v9 = [documentCopy st];
  logicalName = [v9 logicalName];

  [(BRCProgress *)self setUserInfoObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFACF0]];
  [(BRCProgress *)self setUserInfoObject:logicalName forKey:*MEMORY[0x277CCA610]];
  [(BRCProgress *)self setUserInfoObject:*MEMORY[0x277CCA620] forKey:*MEMORY[0x277CCA628]];
  [(BRCProgress *)self setCompletedUnitCount:unitCount];
  [(BRCProgress *)self setTotalUnitCount:count];
  if ([(BRCProgress *)self completedUnitCount]< 0 || [(BRCProgress *)self totalUnitCount]< 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = [(BRCProgress *)self totalUnitCount];
      v41 = 2048;
      completedUnitCount = [(BRCProgress *)self completedUnitCount];
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress initialized with negative values. total [%lld] completed [%lld]%@", buf, 0x20u);
    }
  }

  [(BRCProgress *)self setKind:*MEMORY[0x277CCA648]];
  [(BRCProgress *)self setCancellable:1];
  if (logicalName)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = _BRLocalizedStringWithFormat();
    [(BRCProgress *)self setLocalizedDescription:v14, logicalName];
  }

  clientZone = [documentCopy clientZone];
  dbRowID = [documentCopy dbRowID];
  objc_initWeak(&location, self);
  v17 = [documentCopy st];
  filename = [v17 filename];

  clientZone2 = [documentCopy clientZone];
  taskTracker = [clientZone2 taskTracker];

  v21 = [clientZone db];
  serialQueue = [v21 serialQueue];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__BRCProgress__setupDownloadProgressForDocument_totalUnitCount_completedUnitCount___block_invoke;
  v32[3] = &unk_2784FF760;
  v23 = filename;
  v33 = v23;
  v24 = taskTracker;
  v34 = v24;
  v25 = serialQueue;
  v35 = v25;
  v26 = clientZone;
  v36 = v26;
  v37[1] = dbRowID;
  objc_copyWeak(v37, &location);
  [(BRCProgress *)self setCancellationHandler:v32];
  v27 = brc_bread_crumbs();
  v28 = brc_notifications_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    fileObjectID = [documentCopy fileObjectID];
    *buf = 138412802;
    selfCopy = self;
    v41 = 2112;
    completedUnitCount = fileObjectID;
    v43 = 2112;
    v44 = v27;
    v31 = fileObjectID;
    _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[NOTIF] Added progress %@ for %@%@", buf, 0x20u);
  }

  objc_destroyWeak(v37);
  objc_destroyWeak(&location);

  v29 = *MEMORY[0x277D85DE8];
}

void __83__BRCProgress__setupDownloadProgressForDocument_totalUnitCount_completedUnitCount___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "[BRCProgress _setupDownloadProgressForDocument:totalUnitCount:completedUnitCount:]_block_invoke", 255, 0, v18);
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 134218498;
    v20 = v18[0];
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx User requested to cancel download for %@%@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __83__BRCProgress__setupDownloadProgressForDocument_totalUnitCount_completedUnitCount___block_invoke_50;
  v15 = &unk_2784FF738;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v16 = v7;
  v17[1] = v8;
  objc_copyWeak(v17, (a1 + 64));
  brc_task_tracker_async_with_logs(v5, v6, &v12, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained brc_unpublish];

  objc_destroyWeak(v17);
  __brc_leave_section(v18);
  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

void __83__BRCProgress__setupDownloadProgressForDocument_totalUnitCount_completedUnitCount___block_invoke_50(uint64_t a1)
{
  v2 = [*(a1 + 32) itemByRowID:*(a1 + 48)];
  v9 = [v2 asDocument];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained userInfo];
    v5 = [v4 objectForKeyedSubscript:@"BRProgressEtagIfLoserKey"];

    v6 = [WeakRetained userInfo];
    v7 = [v6 objectForKeyedSubscript:@"BRProgressDownloadKindKey"];
    v8 = [v7 longLongValue];

    [v9 cancelDownloadWithEtag:v5 downloadKind:v8];
  }
}

- (void)_setupProgressForDocument:(id)document group:(char)group totalUnitCount:(int64_t)count completedUnitCount:(int64_t)unitCount
{
  groupCopy = group;
  documentCopy = document;
  v16 = documentCopy;
  if (groupCopy == 1)
  {
    v11 = [documentCopy st];
    logicalName = [v11 logicalName];
    fileObjectID = [v16 fileObjectID];

    asString = [fileObjectID asString];
    [(BRCProgress *)self _setupUploadProgressForDocumentWithName:logicalName totalUnitCount:count completedUnitCount:unitCount fileObjectID:asString];

    v15 = v11;
  }

  else
  {
    [(BRCProgress *)self _setupDownloadProgressForDocument:documentCopy totalUnitCount:count completedUnitCount:unitCount];
    v15 = v16;
  }
}

+ (void)progressToReplaceUploadProgress:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = [a1 brc_dumpDescription];
    OUTLINED_FUNCTION_1_0();
    v7 = v2;
    _os_log_fault_impl(&dword_223E7A000, v3, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: progress->_group == BRCProgressUploadGroup The given progress is not for upload: %@%@", v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end