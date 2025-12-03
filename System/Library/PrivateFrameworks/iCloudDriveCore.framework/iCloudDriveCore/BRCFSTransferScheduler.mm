@interface BRCFSTransferScheduler
- (void)moveAppLibraryTransfers:(id)transfers toAppLibrary:(id)library;
@end

@implementation BRCFSTransferScheduler

- (void)moveAppLibraryTransfers:(id)transfers toAppLibrary:(id)library
{
  v38 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  libraryCopy = library;
  clientDB = [(BRCAccountSession *)self->super._session clientDB];
  tableName = [(BRCFSSchedulerBase *)self tableName];
  dbRowID = [libraryCopy dbRowID];
  transferSyncContext = [libraryCopy transferSyncContext];
  contextIdentifier = [transferSyncContext contextIdentifier];
  dbRowID2 = [transfersCopy dbRowID];
  transferSyncContext2 = [transfersCopy transferSyncContext];
  contextIdentifier2 = [transferSyncContext2 contextIdentifier];
  [clientDB execute:{@"UPDATE %@ SET app_library_rowid = %@, transfer_queue = %@ WHERE app_library_rowid = %@ AND transfer_queue = %@", tableName, dbRowID, contextIdentifier, dbRowID2, contextIdentifier2}];

  selfCopy = self;
  changes = [clientDB changes];
  tableName2 = [(BRCFSSchedulerBase *)self tableName];
  dbRowID3 = [libraryCopy dbRowID];
  dbRowID4 = [transfersCopy dbRowID];
  [clientDB execute:{@"UPDATE %@ SET app_library_rowid = %@ WHERE app_library_rowid = %@", tableName2, dbRowID3, dbRowID4}];

  v19 = [clientDB changes] + changes;
  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      name = [(BRCFSSchedulerBase *)selfCopy name];
      appLibraryID = [transfersCopy appLibraryID];
      appLibraryID2 = [libraryCopy appLibraryID];
      *buf = 138413314;
      v29 = name;
      v30 = 2048;
      v31 = v19;
      v32 = 2112;
      v33 = appLibraryID;
      v34 = 2112;
      v35 = appLibraryID2;
      v36 = 2112;
      v37 = v20;
      _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: moved %lld throttles from %@ to %@%@", buf, 0x34u);
    }

    [(BRCFSSchedulerBase *)selfCopy signal];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end