@interface BRCContainerMetadataSyncPersistedState
+ (id)loadFromClientStateInSession:(id)session options:(id)options;
- (BRCContainerMetadataSyncPersistedState)init;
- (BRCContainerMetadataSyncPersistedState)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)allocateNextRequestID;
- (void)containerMetadataWasReset;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithServerChangeToken:(id)token requestID:(unint64_t)d;
@end

@implementation BRCContainerMetadataSyncPersistedState

- (id)description
{
  lastSyncDownDate = [(BRCContainerMetadataSyncPersistedState *)self lastSyncDownDate];
  if (lastSyncDownDate)
  {
    if (description_onceToken != -1)
    {
      [BRCContainerMetadataSyncPersistedState description];
    }

    v4 = [description_df stringFromDate:lastSyncDownDate];
  }

  else
  {
    v4 = @"never";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p>: %@:%@ %@:%lld %@:%@", self, @"serverChangeToken", self->_serverChangeToken, @"requestID", self->_requestID, @"lastSyncDate", v4];

  return v5;
}

+ (id)loadFromClientStateInSession:(id)session options:(id)options
{
  sessionCopy = session;
  clientState = [sessionCopy clientState];
  v6 = [clientState objectForKeyedSubscript:@"containerMetadataSync"];
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

    [clientState setObject:v9 forKeyedSubscript:@"containerMetadataSync"];
    v6 = v9;
  }

  clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
  [v6 setAssertionQueue:clientTruthWorkloop];

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

- (BRCContainerMetadataSyncPersistedState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BRCContainerMetadataSyncPersistedState;
  v5 = [(BRCPersistedState *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
    serverChangeToken = v5->_serverChangeToken;
    v5->_serverChangeToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v8;

    v5->_needsContainerMetadataSyncDown = [coderCopy decodeBoolForKey:@"isContainerMetadataSyncIdle"] ^ 1;
    v5->_needsSharedDBSyncDown = [coderCopy decodeBoolForKey:@"isSharedDBSyncIdle"] ^ 1;
    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckGroup"];
    ckGroup = v5->_ckGroup;
    v5->_ckGroup = v10;

    v5->_hasCaughtUpAtLeastOnce = [coderCopy decodeBoolForKey:@"containerMetadataHasCaughtUp"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = BRCContainerMetadataSyncPersistedState;
  [(BRCPersistedState *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:selfCopy->_serverChangeToken forKey:@"serverChangeToken"];
  [coderCopy encodeObject:selfCopy->_lastSyncDownDate forKey:@"lastSyncDate"];
  [coderCopy encodeBool:!selfCopy->_needsContainerMetadataSyncDown forKey:@"isContainerMetadataSyncIdle"];
  [coderCopy encodeBool:!selfCopy->_needsSharedDBSyncDown forKey:@"isSharedDBSyncIdle"];
  [coderCopy encodeInt64:selfCopy->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:selfCopy->_ckGroup forKey:@"ckGroup"];
  [coderCopy encodeBool:selfCopy->_hasCaughtUpAtLeastOnce forKey:@"containerMetadataHasCaughtUp"];
  objc_sync_exit(selfCopy);
}

- (void)updateWithServerChangeToken:(id)token requestID:(unint64_t)d
{
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_serverChangeToken, token);
  date = [MEMORY[0x277CBEAA8] date];
  lastSyncDownDate = selfCopy->_lastSyncDownDate;
  selfCopy->_lastSyncDownDate = date;

  requestID = selfCopy->_requestID;
  if (requestID < d)
  {
    if (requestID)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = 138412802;
        v16 = selfCopy;
        v17 = 2048;
        dCopy = d;
        v19 = 2112;
        v20 = v13;
        _os_log_fault_impl(&dword_223E7A000, v14, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _requestID == 0 %@: got request ID: %llu%@", &v15, 0x20u);
      }
    }

    selfCopy->_requestID = d;
  }

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_requestID + 1;
  selfCopy->_requestID = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

@end