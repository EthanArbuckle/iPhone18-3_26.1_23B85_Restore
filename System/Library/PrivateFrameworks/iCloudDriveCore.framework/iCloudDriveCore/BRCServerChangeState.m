@interface BRCServerChangeState
- (BOOL)hasNeverSyncedDown;
- (BRCServerChangeState)initWithCoder:(id)a3;
- (BRCServerChangeState)initWithServerSyncState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)forgetChangeTokens;
- (void)updateWithServerChangeToken:(id)a3 clientRequestID:(unint64_t)a4 caughtUp:(BOOL)a5;
@end

@implementation BRCServerChangeState

- (id)descriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  v7 = [(BRCServerChangeState *)v5 lastSyncDownDate];
  if (v7)
  {
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    v9 = [v8 dumpDateFormatter];

    v10 = [v9 stringFromDate:v7];
    [v6 appendFormat:@"last-sync:%@", v10];
  }

  else
  {
    [v6 appendString:@"last-sync:never"];
  }

  if (v5->_clientRequestID)
  {
    [v6 appendFormat:@", requestID:%llu", v5->_clientRequestID];
  }

  lastSyncDownStatus = v5->_lastSyncDownStatus;
  if (lastSyncDownStatus > 1)
  {
    if (lastSyncDownStatus == 3)
    {
      v12 = @", caught-up";
      goto LABEL_15;
    }

    if (lastSyncDownStatus == 2)
    {
      v12 = @", consistent";
      goto LABEL_15;
    }

LABEL_13:
    [v6 appendFormat:@", status:%d(?)", v5->_lastSyncDownStatus];
    goto LABEL_16;
  }

  if (!lastSyncDownStatus)
  {
    goto LABEL_16;
  }

  if (lastSyncDownStatus != 1)
  {
    goto LABEL_13;
  }

  v12 = @", inconsistent";
LABEL_15:
  [v6 appendString:v12];
LABEL_16:
  changeToken = v5->_changeToken;
  if (changeToken)
  {
    v14 = prettyPrintServerChangeToken(changeToken, v4);
    [v6 appendFormat:@", token:%@", v14];
  }

  objc_sync_exit(v5);

  return v6;
}

- (BOOL)hasNeverSyncedDown
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastSyncDownDate == 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)updateWithServerChangeToken:(id)a3 clientRequestID:(unint64_t)a4 caughtUp:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v9 = self;
  objc_sync_enter(v9);
  objc_storeStrong(&v9->_changeToken, a3);
  v10 = [MEMORY[0x277CBEAA8] date];
  lastSyncDownDate = v9->_lastSyncDownDate;
  v9->_lastSyncDownDate = v10;

  v12 = 2;
  if (v5)
  {
    v12 = 3;
  }

  v9->_lastSyncDownStatus = v12;
  v9->_clientRequestID = a4;
  objc_sync_exit(v9);
}

- (void)forgetChangeTokens
{
  obj = self;
  objc_sync_enter(obj);
  changeToken = obj->_changeToken;
  obj->_changeToken = 0;

  lastSyncDownDate = obj->_lastSyncDownDate;
  obj->_lastSyncDownDate = 0;

  obj->_lastSyncDownStatus = 0;
  objc_sync_exit(obj);
}

- (BRCServerChangeState)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BRCServerChangeState;
  v5 = [(BRCServerChangeState *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lsdDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v6;

    v5->_lastSyncDownStatus = [v4 decodeInt64ForKey:@"lsdStatus"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    changeToken = v5->_changeToken;
    v5->_changeToken = v8;

    v5->_clientRequestID = [v4 decodeInt64ForKey:@"requestID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeObject:v4->_lastSyncDownDate forKey:@"lsdDate"];
  [v5 encodeObject:v4->_changeToken forKey:@"token"];
  [v5 encodeInt64:v4->_lastSyncDownStatus forKey:@"lsdStatus"];
  [v5 encodeInt64:v4->_clientRequestID forKey:@"requestID"];
  objc_sync_exit(v4);
}

- (BRCServerChangeState)initWithServerSyncState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCServerChangeState;
  v5 = [(BRCServerChangeState *)&v8 init];
  if (v5)
  {
    v6 = v4;
    objc_sync_enter(v6);
    objc_storeStrong(&v5->_lastSyncDownDate, *(v6 + 1));
    v5->_lastSyncDownStatus = *(v6 + 2);
    objc_storeStrong(&v5->_changeToken, *(v6 + 3));
    v5->_clientRequestID = *(v6 + 4);
    objc_sync_exit(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithServerSyncState:self];
}

@end