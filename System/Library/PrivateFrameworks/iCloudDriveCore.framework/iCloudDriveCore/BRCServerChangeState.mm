@interface BRCServerChangeState
- (BOOL)hasNeverSyncedDown;
- (BRCServerChangeState)initWithCoder:(id)coder;
- (BRCServerChangeState)initWithServerSyncState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)forgetChangeTokens;
- (void)updateWithServerChangeToken:(id)token clientRequestID:(unint64_t)d caughtUp:(BOOL)up;
@end

@implementation BRCServerChangeState

- (id)descriptionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  lastSyncDownDate = [(BRCServerChangeState *)selfCopy lastSyncDownDate];
  if (lastSyncDownDate)
  {
    v8 = [BRCUserDefaults defaultsForMangledID:0];
    dumpDateFormatter = [v8 dumpDateFormatter];

    v10 = [dumpDateFormatter stringFromDate:lastSyncDownDate];
    [v6 appendFormat:@"last-sync:%@", v10];
  }

  else
  {
    [v6 appendString:@"last-sync:never"];
  }

  if (selfCopy->_clientRequestID)
  {
    [v6 appendFormat:@", requestID:%llu", selfCopy->_clientRequestID];
  }

  lastSyncDownStatus = selfCopy->_lastSyncDownStatus;
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
    [v6 appendFormat:@", status:%d(?)", selfCopy->_lastSyncDownStatus];
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
  changeToken = selfCopy->_changeToken;
  if (changeToken)
  {
    v14 = prettyPrintServerChangeToken(changeToken, contextCopy);
    [v6 appendFormat:@", token:%@", v14];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)hasNeverSyncedDown
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastSyncDownDate == 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)updateWithServerChangeToken:(id)token clientRequestID:(unint64_t)d caughtUp:(BOOL)up
{
  upCopy = up;
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_changeToken, token);
  date = [MEMORY[0x277CBEAA8] date];
  lastSyncDownDate = selfCopy->_lastSyncDownDate;
  selfCopy->_lastSyncDownDate = date;

  v12 = 2;
  if (upCopy)
  {
    v12 = 3;
  }

  selfCopy->_lastSyncDownStatus = v12;
  selfCopy->_clientRequestID = d;
  objc_sync_exit(selfCopy);
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

- (BRCServerChangeState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BRCServerChangeState;
  v5 = [(BRCServerChangeState *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsdDate"];
    lastSyncDownDate = v5->_lastSyncDownDate;
    v5->_lastSyncDownDate = v6;

    v5->_lastSyncDownStatus = [coderCopy decodeInt64ForKey:@"lsdStatus"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    changeToken = v5->_changeToken;
    v5->_changeToken = v8;

    v5->_clientRequestID = [coderCopy decodeInt64ForKey:@"requestID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_lastSyncDownDate forKey:@"lsdDate"];
  [coderCopy encodeObject:selfCopy->_changeToken forKey:@"token"];
  [coderCopy encodeInt64:selfCopy->_lastSyncDownStatus forKey:@"lsdStatus"];
  [coderCopy encodeInt64:selfCopy->_clientRequestID forKey:@"requestID"];
  objc_sync_exit(selfCopy);
}

- (BRCServerChangeState)initWithServerSyncState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = BRCServerChangeState;
  v5 = [(BRCServerChangeState *)&v8 init];
  if (v5)
  {
    v6 = stateCopy;
    objc_sync_enter(v6);
    objc_storeStrong(&v5->_lastSyncDownDate, *(v6 + 1));
    v5->_lastSyncDownStatus = *(v6 + 2);
    objc_storeStrong(&v5->_changeToken, *(v6 + 3));
    v5->_clientRequestID = *(v6 + 4);
    objc_sync_exit(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithServerSyncState:self];
}

@end