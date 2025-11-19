@interface RTAuthorizedLocationManagerCachedStatus
- (RTAuthorizedLocationManagerCachedStatus)init;
- (id)getAuthConfirmationStatus;
- (id)getAuthLocConfirmationComputedTime;
- (id)getZDRLocationStatusComputationTime;
- (int64_t)getAuthConfirmationStatusCode;
- (int64_t)getZDRLocationStatus;
- (int64_t)getZDRLocationStatusCode;
- (void)setAuthConfirmationStatusToCacheInfo:(id)a3 statusCode:(int64_t)a4 timestamp:(id)a5;
- (void)setZDRStatusToCacheInfo:(int64_t)a3 zdrStatusCode:(int64_t)a4 zdrTimestamp:(id)a5;
@end

@implementation RTAuthorizedLocationManagerCachedStatus

- (int64_t)getAuthConfirmationStatusCode
{
  v3 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v3 lock];

  lastAuthLocConfirmationStatusCode = self->_lastAuthLocConfirmationStatusCode;
  v5 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v5 unlock];

  return lastAuthLocConfirmationStatusCode;
}

- (RTAuthorizedLocationManagerCachedStatus)init
{
  v10.receiver = self;
  v10.super_class = RTAuthorizedLocationManagerCachedStatus;
  v2 = [(RTAuthorizedLocationManagerCachedStatus *)&v10 init];
  v3 = v2;
  if (v2)
  {
    lastAuthLocConfirmationStatus = v2->_lastAuthLocConfirmationStatus;
    v2->_lastAuthLocConfirmationStatus = 0;

    lastAuthLocConfirmationComputedTime = v3->_lastAuthLocConfirmationComputedTime;
    v3->_lastAuthLocConfirmationStatusCode = -1;
    v3->_lastAuthLocConfirmationComputedTime = 0;

    v3->_lastZDRLocationStatus = 0;
    v3->_lastZDRLocationStatusCode = 0;
    lastZDRLocationStatusComputationTime = v3->_lastZDRLocationStatusComputationTime;
    v3->_lastZDRLocationStatusComputationTime = 0;

    v7 = objc_opt_new();
    statusCacheLock = v3->_statusCacheLock;
    v3->_statusCacheLock = v7;
  }

  return v3;
}

- (void)setAuthConfirmationStatusToCacheInfo:(id)a3 statusCode:(int64_t)a4 timestamp:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v10 lock];

  lastAuthLocConfirmationComputedTime = self->_lastAuthLocConfirmationComputedTime;
  self->_lastAuthLocConfirmationComputedTime = v9;
  v12 = v9;

  lastAuthLocConfirmationStatus = self->_lastAuthLocConfirmationStatus;
  self->_lastAuthLocConfirmationStatus = v8;
  self->_lastAuthLocConfirmationStatusCode = a4;

  v14 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v14 unlock];
}

- (void)setZDRStatusToCacheInfo:(int64_t)a3 zdrStatusCode:(int64_t)a4 zdrTimestamp:(id)a5
{
  v8 = a5;
  v9 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v9 lock];

  lastZDRLocationStatusComputationTime = self->_lastZDRLocationStatusComputationTime;
  self->_lastZDRLocationStatusComputationTime = v8;

  self->_lastZDRLocationStatus = a3;
  self->_lastZDRLocationStatusCode = a4;
  v11 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v11 unlock];
}

- (id)getAuthConfirmationStatus
{
  v3 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v3 lock];

  v4 = self->_lastAuthLocConfirmationStatus;
  v5 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v5 unlock];

  return v4;
}

- (id)getAuthLocConfirmationComputedTime
{
  v3 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v3 lock];

  v4 = self->_lastAuthLocConfirmationComputedTime;
  v5 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v5 unlock];

  return v4;
}

- (int64_t)getZDRLocationStatus
{
  v3 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v3 lock];

  lastZDRLocationStatus = self->_lastZDRLocationStatus;
  v5 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v5 unlock];

  return lastZDRLocationStatus;
}

- (int64_t)getZDRLocationStatusCode
{
  v3 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v3 lock];

  lastZDRLocationStatusCode = self->_lastZDRLocationStatusCode;
  v5 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v5 unlock];

  return lastZDRLocationStatusCode;
}

- (id)getZDRLocationStatusComputationTime
{
  v3 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v3 lock];

  v4 = self->_lastZDRLocationStatusComputationTime;
  v5 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [v5 unlock];

  return v4;
}

@end