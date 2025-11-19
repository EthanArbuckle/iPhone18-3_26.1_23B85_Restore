@interface NSError(BRCSyncOperationThrottle)
- (uint64_t)brc_syncOperationErrorKind;
- (void)brc_syncOperationErrorKind;
@end

@implementation NSError(BRCSyncOperationThrottle)

- (uint64_t)brc_syncOperationErrorKind
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v3 = [a1 code];

    if (v3 == 25)
    {
      v4 = 2;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (([a1 brc_isCloudKitCancellationError] & 1) != 0 || objc_msgSend(a1, "br_isCloudDocsErrorCode:", 23))
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(NSError(BRCSyncOperationThrottle) *)v5 brc_syncOperationErrorKind];
    }

    v4 = 1;
  }

  else if ([a1 brc_isCloudKitAtomicFailure] && (+[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "considerSyncUpBatchFailuresAsSuccessForThrottling"), v8, v9))
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(NSError(BRCSyncOperationThrottle) *)v10 brc_syncOperationErrorKind];
    }

    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__NSError_BRCSyncOperationThrottle__brc_syncOperationErrorKind__block_invoke;
    v12[3] = &unk_2785032F0;
    v12[4] = &v13;
    [a1 brc_checkErrorsFromCloudKit:v12];
    v4 = *(v14 + 6);
  }

LABEL_10:
  _Block_object_dispose(&v13, 8);
  return v4;
}

- (void)brc_syncOperationErrorKind
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Skipping throttling because sync operation was cancelled%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end