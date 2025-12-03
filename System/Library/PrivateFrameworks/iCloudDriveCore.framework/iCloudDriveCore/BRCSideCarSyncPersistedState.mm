@interface BRCSideCarSyncPersistedState
+ (id)loadFromClientStateInSession:(id)session options:(id)options;
- (BRCSideCarSyncPersistedState)initWithCoder:(id)coder;
- (BRCSideCarSyncPersistedState)initWithZoneHealthState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)allocateNextRequestID;
- (void)encodeWithCoder:(id)coder;
- (void)sideCarZoneWasReset;
- (void)updateWithServerChangeToken:(id)token requestID:(unint64_t)d;
@end

@implementation BRCSideCarSyncPersistedState

- (id)description
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  dumpDateFormatter = [v3 dumpDateFormatter];

  v5 = MEMORY[0x277CCACA8];
  v6 = [dumpDateFormatter stringFromDate:self->_lastSyncDownDate];
  if (self->_needsSync)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  requestID = self->_requestID;
  v9 = [(CKServerChangeToken *)self->_serverChangeToken descriptionWithContext:0];
  v10 = [v5 stringWithFormat:@"side-car-state{last-sync:%@, needs-sync:%@, requestID:%lld, changeToken:%@}", v6, v7, requestID, v9];

  return v10;
}

+ (id)loadFromClientStateInSession:(id)session options:(id)options
{
  clientState = [session clientState];
  v6 = [clientState objectForKeyedSubscript:@"sideCarSync"];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(BRCSideCarSyncPersistedState *)self loadFromClientStateInSession:v6 options:clientState, &v8];
    v6 = v8;
  }

  return v6;
}

- (BRCSideCarSyncPersistedState)initWithZoneHealthState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = BRCSideCarSyncPersistedState;
  v5 = [(BRCSideCarSyncPersistedState *)&v8 init];
  if (v5)
  {
    v6 = stateCopy;
    objc_sync_enter(v6);
    objc_storeStrong(&v5->_lastSyncDownDate, *(v6 + 3));
    objc_storeStrong(&v5->_serverChangeToken, *(v6 + 4));
    v5->_needsSync = *(v6 + 16);
    v5->_requestID = *(v6 + 5);
    objc_storeStrong(&v5->_ckGroup, *(v6 + 6));
    objc_sync_exit(v6);
  }

  return v5;
}

- (BRCSideCarSyncPersistedState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BRCSideCarSyncPersistedState;
  v5 = [(BRCSideCarSyncPersistedState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
    serverChangeToken = v5->_serverChangeToken;
    v5->_serverChangeToken = v8;

    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v5->_needsSync = [coderCopy decodeBoolForKey:@"sideCarSyncIdle"] ^ 1;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckGroup"];
    ckGroup = v5->_ckGroup;
    v5->_ckGroup = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = BRCSideCarSyncPersistedState;
  [(BRCPersistedState *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:selfCopy->_lastSyncDownDate forKey:@"lastSyncDate"];
  [coderCopy encodeObject:selfCopy->_serverChangeToken forKey:@"serverChangeToken"];
  [coderCopy encodeBool:!selfCopy->_needsSync forKey:@"sideCarSyncIdle"];
  [coderCopy encodeInt64:selfCopy->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:selfCopy->_ckGroup forKey:@"ckGroup"];
  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithZoneHealthState:self];
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

- (void)sideCarZoneWasReset
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