@interface BRCFSDownloaderBatchEnumerator
- (id)nextDocumentItem;
@end

@implementation BRCFSDownloaderBatchEnumerator

- (id)nextDocumentItem
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(BRCSyncContext *)self->_syncContext session];
  if (![(PQLResultSet *)self->_rs next])
  {
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(PQLResultSet *)self->_rs longLongAtIndex:0];
    v6 = [(PQLResultSet *)self->_rs longLongAtIndex:1];
    enumeratedThrottleIds = self->_enumeratedThrottleIds;
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    LOBYTE(enumeratedThrottleIds) = [(NSMutableSet *)enumeratedThrottleIds containsObject:v8];

    if (enumeratedThrottleIds)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v25 = v5;
        v26 = 2112;
        v27 = v9;
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Throttle ID %lld was already enumerated. Will schedule it for retry to the next batch%@", buf, 0x16u);
      }

      now = self->_now;
      if (v6 <= now + 1)
      {
        v6 = now + 1;
      }
    }

    else
    {
      now = self->_now;
    }

    if (v6 > now)
    {
      retryQueueKick = self->_retryQueueKick;
      v13 = *retryQueueKick;
      if (*retryQueueKick >= v6)
      {
        v13 = v6;
      }

      *retryQueueKick = v13;
      v14 = [v3 clientDB];
      kind = self->_kind;
      v16 = [(PQLResultSet *)self->_rs stringAtIndex:3];
      [v14 execute:{@"UPDATE client_downloads    SET transfer_queue = '_retry'  WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@", v5, kind, v16}];

      goto LABEL_14;
    }

    v17 = [v3 itemFetcher];
    v18 = [v17 itemByRowID:v5];
    v19 = [v18 asDocument];

    if (v19)
    {
      break;
    }

LABEL_14:
    objc_autoreleasePoolPop(v4);
    if (([(PQLResultSet *)self->_rs next]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v22 = self->_enumeratedThrottleIds;
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  [(NSMutableSet *)v22 addObject:v23];

  objc_autoreleasePoolPop(v4);
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end