@interface RTAuthorizedLocationManagerCachedStatus
- (RTAuthorizedLocationManagerCachedStatus)init;
- (id)getAuthConfirmationStatus;
- (id)getAuthLocConfirmationComputedTime;
- (id)getZDRLocationStatusComputationTime;
- (int64_t)getAuthConfirmationStatusCode;
- (int64_t)getZDRLocationStatus;
- (int64_t)getZDRLocationStatusCode;
- (void)setAuthConfirmationStatusToCacheInfo:(id)info statusCode:(int64_t)code timestamp:(id)timestamp;
- (void)setZDRStatusToCacheInfo:(int64_t)info zdrStatusCode:(int64_t)code zdrTimestamp:(id)timestamp;
@end

@implementation RTAuthorizedLocationManagerCachedStatus

- (int64_t)getAuthConfirmationStatusCode
{
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  lastAuthLocConfirmationStatusCode = self->_lastAuthLocConfirmationStatusCode;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];

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

- (void)setAuthConfirmationStatusToCacheInfo:(id)info statusCode:(int64_t)code timestamp:(id)timestamp
{
  infoCopy = info;
  timestampCopy = timestamp;
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  lastAuthLocConfirmationComputedTime = self->_lastAuthLocConfirmationComputedTime;
  self->_lastAuthLocConfirmationComputedTime = timestampCopy;
  v12 = timestampCopy;

  lastAuthLocConfirmationStatus = self->_lastAuthLocConfirmationStatus;
  self->_lastAuthLocConfirmationStatus = infoCopy;
  self->_lastAuthLocConfirmationStatusCode = code;

  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];
}

- (void)setZDRStatusToCacheInfo:(int64_t)info zdrStatusCode:(int64_t)code zdrTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  lastZDRLocationStatusComputationTime = self->_lastZDRLocationStatusComputationTime;
  self->_lastZDRLocationStatusComputationTime = timestampCopy;

  self->_lastZDRLocationStatus = info;
  self->_lastZDRLocationStatusCode = code;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];
}

- (id)getAuthConfirmationStatus
{
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  v4 = self->_lastAuthLocConfirmationStatus;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];

  return v4;
}

- (id)getAuthLocConfirmationComputedTime
{
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  v4 = self->_lastAuthLocConfirmationComputedTime;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];

  return v4;
}

- (int64_t)getZDRLocationStatus
{
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  lastZDRLocationStatus = self->_lastZDRLocationStatus;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];

  return lastZDRLocationStatus;
}

- (int64_t)getZDRLocationStatusCode
{
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  lastZDRLocationStatusCode = self->_lastZDRLocationStatusCode;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];

  return lastZDRLocationStatusCode;
}

- (id)getZDRLocationStatusComputationTime
{
  statusCacheLock = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock lock];

  v4 = self->_lastZDRLocationStatusComputationTime;
  statusCacheLock2 = [(RTAuthorizedLocationManagerCachedStatus *)self statusCacheLock];
  [statusCacheLock2 unlock];

  return v4;
}

@end