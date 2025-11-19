@interface BRCSyncOperationBackoffRatio
- (BRCSyncOperationBackoffRatio)init;
- (BRCSyncOperationBackoffRatio)initWithCoder:(id)a3;
- (float)backoffRatio;
- (void)encodeWithCoder:(id)a3;
- (void)newSyncOperationWithError:(id)a3;
@end

@implementation BRCSyncOperationBackoffRatio

- (BRCSyncOperationBackoffRatio)init
{
  v3.receiver = self;
  v3.super_class = BRCSyncOperationBackoffRatio;
  result = [(BRCSyncOperationBackoffRatio *)&v3 init];
  if (result)
  {
    result->_totalSyncOperations = 0;
    result->_failedSyncOperations = 0;
  }

  return result;
}

- (BRCSyncOperationBackoffRatio)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCSyncOperationBackoffRatio;
  v5 = [(BRCSyncOperationBackoffRatio *)&v7 init];
  if (v5)
  {
    v5->_totalSyncOperations = [v4 decodeInt64ForKey:@"totalSyncOperations"];
    v5->_failedSyncOperations = [v4 decodeInt64ForKey:@"failedSyncOperations"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  totalSyncOperations = self->_totalSyncOperations;
  v5 = a3;
  [v5 encodeInt64:totalSyncOperations forKey:@"totalSyncOperations"];
  [v5 encodeInt64:self->_failedSyncOperations forKey:@"failedSyncOperations"];
}

- (float)backoffRatio
{
  totalSyncOperations = self->_totalSyncOperations;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 minimumNumberOfFailuresBeforeReportingSyncBackoffRatio];

  result = 0.0;
  if (totalSyncOperations >= v5)
  {
    return self->_failedSyncOperations / self->_totalSyncOperations;
  }

  return result;
}

- (void)newSyncOperationWithError:(id)a3
{
  if (a3)
  {
    ++self->_failedSyncOperations;
  }

  ++self->_totalSyncOperations;
}

@end