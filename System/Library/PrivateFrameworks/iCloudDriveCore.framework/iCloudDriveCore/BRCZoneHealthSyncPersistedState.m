@interface BRCZoneHealthSyncPersistedState
+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4;
- (BRCZoneHealthSyncPersistedState)initWithCoder:(id)a3;
- (BRCZoneHealthSyncPersistedState)initWithZoneHealthState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)allocateNextRequestID;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithServerChangeToken:(id)a3 requestID:(unint64_t)a4;
- (void)zoneHealthWasReset;
@end

@implementation BRCZoneHealthSyncPersistedState

- (id)description
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 dumpDateFormatter];

  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 stringFromDate:self->_lastSyncDownDate];
  if (self->_needsSyncDown)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  requestID = self->_requestID;
  v9 = [(CKServerChangeToken *)self->_serverChangeToken descriptionWithContext:0];
  v10 = [v5 stringWithFormat:@"zone-health-state{last-sync:%@, needs-syncdown:%@, requestID:%lld, changeToken:%@}", v6, v7, requestID, v9];

  return v10;
}

+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4
{
  v5 = [a3 clientState];
  v6 = [v5 objectForKeyedSubscript:@"zoneHealthSync"];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(BRCZoneHealthSyncPersistedState *)a1 loadFromClientStateInSession:v6 options:v5, &v8];
    v6 = v8;
  }

  return v6;
}

- (BRCZoneHealthSyncPersistedState)initWithZoneHealthState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCZoneHealthSyncPersistedState;
  v5 = [(BRCZoneHealthSyncPersistedState *)&v8 init];
  if (v5)
  {
    v6 = v4;
    objc_sync_enter(v6);
    objc_storeStrong(&v5->_lastSyncDownDate, *(v6 + 3));
    objc_storeStrong(&v5->_serverChangeToken, *(v6 + 4));
    v5->_needsSyncDown = *(v6 + 16);
    v5->_requestID = *(v6 + 5);
    objc_storeStrong(&v5->_ckGroup, *(v6 + 6));
    objc_sync_exit(v6);
  }

  return v5;
}

- (BRCZoneHealthSyncPersistedState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BRCZoneHealthSyncPersistedState;
  v5 = [(BRCZoneHealthSyncPersistedState *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverChangeToken"];
    serverChangeToken = v5->_serverChangeToken;
    v5->_serverChangeToken = v8;

    v5->_needsSyncDown = [v4 decodeBoolForKey:@"zoneHealthSyncIdle"] ^ 1;
    v5->_requestID = [v4 decodeInt64ForKey:@"requestID"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckGroup"];
    ckGroup = v5->_ckGroup;
    v5->_ckGroup = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6.receiver = v5;
  v6.super_class = BRCZoneHealthSyncPersistedState;
  [(BRCPersistedState *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:v5->_lastSyncDownDate forKey:@"lastSyncDate"];
  [v4 encodeObject:v5->_serverChangeToken forKey:@"serverChangeToken"];
  [v4 encodeBool:!v5->_needsSyncDown forKey:@"zoneHealthSyncIdle"];
  [v4 encodeInt64:v5->_requestID forKey:@"requestID"];
  [v4 encodeObject:v5->_ckGroup forKey:@"ckGroup"];
  objc_sync_exit(v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithZoneHealthState:self];
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

- (void)zoneHealthWasReset
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