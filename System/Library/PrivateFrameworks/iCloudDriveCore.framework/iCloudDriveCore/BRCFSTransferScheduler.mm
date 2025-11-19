@interface BRCFSTransferScheduler
- (void)moveAppLibraryTransfers:(id)a3 toAppLibrary:(id)a4;
@end

@implementation BRCFSTransferScheduler

- (void)moveAppLibraryTransfers:(id)a3 toAppLibrary:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = [(BRCAccountSession *)self->super._session clientDB];
  v26 = [(BRCFSSchedulerBase *)self tableName];
  v8 = [v7 dbRowID];
  v9 = [v7 transferSyncContext];
  v10 = [v9 contextIdentifier];
  v11 = [v6 dbRowID];
  v12 = [v6 transferSyncContext];
  v13 = [v12 contextIdentifier];
  [v27 execute:{@"UPDATE %@ SET app_library_rowid = %@, transfer_queue = %@ WHERE app_library_rowid = %@ AND transfer_queue = %@", v26, v8, v10, v11, v13}];

  v14 = self;
  v15 = [v27 changes];
  v16 = [(BRCFSSchedulerBase *)self tableName];
  v17 = [v7 dbRowID];
  v18 = [v6 dbRowID];
  [v27 execute:{@"UPDATE %@ SET app_library_rowid = %@ WHERE app_library_rowid = %@", v16, v17, v18}];

  v19 = [v27 changes] + v15;
  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = [(BRCFSSchedulerBase *)v14 name];
      v24 = [v6 appLibraryID];
      v25 = [v7 appLibraryID];
      *buf = 138413314;
      v29 = v23;
      v30 = 2048;
      v31 = v19;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v20;
      _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: moved %lld throttles from %@ to %@%@", buf, 0x34u);
    }

    [(BRCFSSchedulerBase *)v14 signal];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end