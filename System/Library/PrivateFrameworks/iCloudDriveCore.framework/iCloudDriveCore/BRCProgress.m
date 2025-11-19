@interface BRCProgress
+ (id)progressToReplaceUploadProgress:(id)a3;
+ (id)uploadProgressForDocument:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5;
- (BRCProgress)initWithGroup:(char)a3 session:(id)a4;
- (BRCProgress)initWithIgnorePublish:(BOOL)a3;
- (void)_setupDownloadProgressForDocument:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5;
- (void)_setupProgressForDocument:(id)a3 group:(char)a4 totalUnitCount:(int64_t)a5 completedUnitCount:(int64_t)a6;
- (void)_setupUploadProgressForDocumentWithName:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5 fileObjectID:(id)a6;
- (void)brc_publish;
- (void)brc_unpublish;
- (void)setCompletedUnitCount:(int64_t)a3;
@end

@implementation BRCProgress

- (void)setCompletedUnitCount:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = BRCProgress;
  [(BRCProgress *)&v3 setCompletedUnitCount:a3];
}

- (void)brc_publish
{
  if (!self->_ignorePublish)
  {
    v4.receiver = self;
    v4.super_class = BRCProgress;
    [(NSProgress *)&v4 brc_publish];
    v3 = self;
    objc_sync_enter(v3);
    v3->_published = 1;
    objc_sync_exit(v3);
  }
}

- (void)brc_unpublish
{
  if (!self->_ignorePublish)
  {
    v4.receiver = self;
    v4.super_class = BRCProgress;
    [(NSProgress *)&v4 brc_unpublish];
    v3 = self;
    objc_sync_enter(v3);
    v3->_published = 0;
    objc_sync_exit(v3);
  }
}

+ (id)uploadProgressForDocument:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a1 _progressForDocument:v8 group:1 totalUnitCount:a4 completedUnitCount:a5];
  if (v9)
  {
    v10 = [v8 session];
    v11 = [v10 globalProgress];
    [v11 addProgress:v9 forDocument:v8 inGroup:1];
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] failed getting upload progress for %@%@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)progressToReplaceUploadProgress:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (*(v3 + 136) != 1)
  {
    [BRCProgress progressToReplaceUploadProgress:v3];
  }

  v5 = [BRCProgress alloc];
  v6 = *(v4 + 136);
  WeakRetained = objc_loadWeakRetained(v4 + 16);
  v8 = [(BRCProgress *)v5 initWithGroup:v6 session:WeakRetained];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA610]];
    v11 = [v4 totalUnitCount];
    v12 = [v4 completedUnitCount];
    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"ICDProgressObjectID"];
    [v8 _setupUploadProgressForDocumentWithName:v10 totalUnitCount:v11 completedUnitCount:v12 fileObjectID:v14];

    v15 = MEMORY[0x277CFAE50];
    v16 = [v4 userInfo];
    v17 = [v16 objectForKeyedSubscript:@"ICDProgressObjectID"];
    v18 = [v15 fileObjectIDWithString:v17];

    v19 = objc_loadWeakRetained(v8 + 16);
    v20 = [v19 globalProgress];
    [v20 replaceProgressForFileObjectID:v18 inGroup:1 withProgress:v8];
  }

  return v8;
}

- (BRCProgress)initWithGroup:(char)a3 session:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = BRCProgress;
  v7 = [(BRCProgress *)&v10 initWithParent:0 userInfo:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_session, v6);
    v8->_group = a3;
  }

  return v8;
}

- (BRCProgress)initWithIgnorePublish:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BRCProgress;
  result = [(BRCProgress *)&v5 init];
  if (result)
  {
    result->_ignorePublish = a3;
  }

  return result;
}

- (void)_setupUploadProgressForDocumentWithName:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5 fileObjectID:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  [(BRCProgress *)self setUserInfoObject:v12 forKey:*MEMORY[0x277CCA608]];

  [(BRCProgress *)self setUserInfoObject:v11 forKey:@"ICDProgressObjectID"];
  [(BRCProgress *)self setUserInfoObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFACF0]];
  [(BRCProgress *)self setUserInfoObject:*MEMORY[0x277CCA630] forKey:*MEMORY[0x277CCA628]];
  [(BRCProgress *)self setUserInfoObject:v10 forKey:*MEMORY[0x277CCA610]];
  [(BRCProgress *)self setCompletedUnitCount:a5];
  [(BRCProgress *)self setTotalUnitCount:a4];
  if ([(BRCProgress *)self completedUnitCount]< 0 || [(BRCProgress *)self totalUnitCount]< 0)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v21 = [(BRCProgress *)self totalUnitCount];
      v22 = 2048;
      v23 = [(BRCProgress *)self completedUnitCount];
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress initialized with negative values. total [%lld] completed [%lld]%@", buf, 0x20u);
    }
  }

  [(BRCProgress *)self setKind:*MEMORY[0x277CCA648]];
  [(BRCProgress *)self setCancellable:0];
  if (v10)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = _BRLocalizedStringWithFormat();
    [(BRCProgress *)self setLocalizedDescription:v16, v10];
  }

  v17 = brc_bread_crumbs();
  v18 = brc_notifications_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v21 = self;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[NOTIF] Added progress %@ for %@%@", buf, 0x20u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setupDownloadProgressForDocument:(id)a3 totalUnitCount:(int64_t)a4 completedUnitCount:(int64_t)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 st];
  v10 = [v9 logicalName];

  [(BRCProgress *)self setUserInfoObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFACF0]];
  [(BRCProgress *)self setUserInfoObject:v10 forKey:*MEMORY[0x277CCA610]];
  [(BRCProgress *)self setUserInfoObject:*MEMORY[0x277CCA620] forKey:*MEMORY[0x277CCA628]];
  [(BRCProgress *)self setCompletedUnitCount:a5];
  [(BRCProgress *)self setTotalUnitCount:a4];
  if ([(BRCProgress *)self completedUnitCount]< 0 || [(BRCProgress *)self totalUnitCount]< 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v40 = [(BRCProgress *)self totalUnitCount];
      v41 = 2048;
      v42 = [(BRCProgress *)self completedUnitCount];
      v43 = 2112;
      v44 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress initialized with negative values. total [%lld] completed [%lld]%@", buf, 0x20u);
    }
  }

  [(BRCProgress *)self setKind:*MEMORY[0x277CCA648]];
  [(BRCProgress *)self setCancellable:1];
  if (v10)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = _BRLocalizedStringWithFormat();
    [(BRCProgress *)self setLocalizedDescription:v14, v10];
  }

  v15 = [v8 clientZone];
  v16 = [v8 dbRowID];
  objc_initWeak(&location, self);
  v17 = [v8 st];
  v18 = [v17 filename];

  v19 = [v8 clientZone];
  v20 = [v19 taskTracker];

  v21 = [v15 db];
  v22 = [v21 serialQueue];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__BRCProgress__setupDownloadProgressForDocument_totalUnitCount_completedUnitCount___block_invoke;
  v32[3] = &unk_2784FF760;
  v23 = v18;
  v33 = v23;
  v24 = v20;
  v34 = v24;
  v25 = v22;
  v35 = v25;
  v26 = v15;
  v36 = v26;
  v37[1] = v16;
  objc_copyWeak(v37, &location);
  [(BRCProgress *)self setCancellationHandler:v32];
  v27 = brc_bread_crumbs();
  v28 = brc_notifications_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v8 fileObjectID];
    *buf = 138412802;
    v40 = self;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v27;
    v31 = v30;
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

- (void)_setupProgressForDocument:(id)a3 group:(char)a4 totalUnitCount:(int64_t)a5 completedUnitCount:(int64_t)a6
{
  v8 = a4;
  v10 = a3;
  v16 = v10;
  if (v8 == 1)
  {
    v11 = [v10 st];
    v12 = [v11 logicalName];
    v13 = [v16 fileObjectID];

    v14 = [v13 asString];
    [(BRCProgress *)self _setupUploadProgressForDocumentWithName:v12 totalUnitCount:a5 completedUnitCount:a6 fileObjectID:v14];

    v15 = v11;
  }

  else
  {
    [(BRCProgress *)self _setupDownloadProgressForDocument:v10 totalUnitCount:a5 completedUnitCount:a6];
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