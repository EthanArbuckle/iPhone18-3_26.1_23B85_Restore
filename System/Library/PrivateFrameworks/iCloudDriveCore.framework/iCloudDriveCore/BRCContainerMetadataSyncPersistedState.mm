@interface BRCContainerMetadataSyncPersistedState
+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4;
- (BRCContainerMetadataSyncPersistedState)init;
- (BRCContainerMetadataSyncPersistedState)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)allocateNextRequestID;
- (void)containerMetadataWasReset;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithServerChangeToken:(id)a3 requestID:(unint64_t)a4;
@end

@implementation BRCContainerMetadataSyncPersistedState

- (id)description
{
  v3 = [(BRCContainerMetadataSyncPersistedState *)self lastSyncDownDate];
  if (v3)
  {
    if (description_onceToken != -1)
    {
      [BRCContainerMetadataSyncPersistedState description];
    }

    v4 = [description_df stringFromDate:v3];
  }

  else
  {
    v4 = @"never";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p>: %@:%@ %@:%lld %@:%@", self, @"serverChangeToken", self->_serverChangeToken, @"requestID", self->_requestID, @"lastSyncDate", v4];

  return v5;
}

+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4
{
  v4 = a3;
  v5 = [v4 clientState];
  v6 = [v5 objectForKeyedSubscript:@"containerMetadataSync"];
  if (objc_opt_isKindOfClass())
  {
    if (([v6 hasCaughtUpAtLeastOnce] & 1) == 0 && (objc_msgSend(v6, "needsContainerMetadataSyncDown") & 1) == 0)
    {
      [v6 setHasCaughtUpAtLeastOnce:1];
    }
  }

  else
  {
    v9 = objc_opt_new();

    [v5 setObject:v9 forKeyedSubscript:@"containerMetadataSync"];
    v6 = v9;
  }

  v7 = [v4 clientTruthWorkloop];
  [v6 setAssertionQueue:v7];

  return v6;
}

uint64_t __53__BRCContainerMetadataSyncPersistedState_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = description_df;
  description_df = v0;

  v2 = description_df;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (BRCContainerMetadataSyncPersistedState)init
{
  v3.receiver = self;
  v3.super_class = BRCContainerMetadataSyncPersistedState;
  result = [(BRCContainerMetadataSyncPersistedState *)&v3 init];
  if (result)
  {
    result->_needsContainerMetadataSyncDown = 1;
    result->_needsSharedDBSyncDown = 1;
  }

  return result;
}

- (BRCContainerMetadataSyncPersistedState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BRCContainerMetadataSyncPersistedState;
  v5 = [(BRCPersistedState *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
    serverChangeToken = v5->_serverChangeToken;
    v5->_serverChangeToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v8;

    v5->_needsContainerMetadataSyncDown = [v4 decodeBoolForKey:@"isContainerMetadataSyncIdle"] ^ 1;
    v5->_needsSharedDBSyncDown = [v4 decodeBoolForKey:@"isSharedDBSyncIdle"] ^ 1;
    v5->_requestID = [v4 decodeInt64ForKey:@"requestID"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckGroup"];
    ckGroup = v5->_ckGroup;
    v5->_ckGroup = v10;

    v5->_hasCaughtUpAtLeastOnce = [v4 decodeBoolForKey:@"containerMetadataHasCaughtUp"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6.receiver = v5;
  v6.super_class = BRCContainerMetadataSyncPersistedState;
  [(BRCPersistedState *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:v5->_serverChangeToken forKey:@"serverChangeToken"];
  [v4 encodeObject:v5->_lastSyncDownDate forKey:@"lastSyncDate"];
  [v4 encodeBool:!v5->_needsContainerMetadataSyncDown forKey:@"isContainerMetadataSyncIdle"];
  [v4 encodeBool:!v5->_needsSharedDBSyncDown forKey:@"isSharedDBSyncIdle"];
  [v4 encodeInt64:v5->_requestID forKey:@"requestID"];
  [v4 encodeObject:v5->_ckGroup forKey:@"ckGroup"];
  [v4 encodeBool:v5->_hasCaughtUpAtLeastOnce forKey:@"containerMetadataHasCaughtUp"];
  objc_sync_exit(v5);
}

- (void)updateWithServerChangeToken:(id)a3 requestID:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  objc_storeStrong(&v8->_serverChangeToken, a3);
  v9 = [MEMORY[0x277CBEAA8] date];
  lastSyncDownDate = v8->_lastSyncDownDate;
  v8->_lastSyncDownDate = v9;

  requestID = v8->_requestID;
  if (requestID < a4)
  {
    if (requestID)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = 138412802;
        v16 = v8;
        v17 = 2048;
        v18 = a4;
        v19 = 2112;
        v20 = v13;
        _os_log_fault_impl(&dword_223E7A000, v14, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _requestID == 0 %@: got request ID: %llu%@", &v15, 0x20u);
      }
    }

    v8->_requestID = a4;
  }

  objc_sync_exit(v8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)containerMetadataWasReset
{
  obj = self;
  objc_sync_enter(obj);
  serverChangeToken = obj->_serverChangeToken;
  obj->_serverChangeToken = 0;

  lastSyncDownDate = obj->_lastSyncDownDate;
  obj->_lastSyncDownDate = 0;

  objc_sync_exit(obj);
}

- (unint64_t)allocateNextRequestID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_requestID + 1;
  v2->_requestID = v3;
  objc_sync_exit(v2);

  return v3;
}

@end