@interface BRCSyncOperationBackoffRatio
- (BRCSyncOperationBackoffRatio)init;
- (BRCSyncOperationBackoffRatio)initWithCoder:(id)coder;
- (float)backoffRatio;
- (void)encodeWithCoder:(id)coder;
- (void)newSyncOperationWithError:(id)error;
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

- (BRCSyncOperationBackoffRatio)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BRCSyncOperationBackoffRatio;
  v5 = [(BRCSyncOperationBackoffRatio *)&v7 init];
  if (v5)
  {
    v5->_totalSyncOperations = [coderCopy decodeInt64ForKey:@"totalSyncOperations"];
    v5->_failedSyncOperations = [coderCopy decodeInt64ForKey:@"failedSyncOperations"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  totalSyncOperations = self->_totalSyncOperations;
  coderCopy = coder;
  [coderCopy encodeInt64:totalSyncOperations forKey:@"totalSyncOperations"];
  [coderCopy encodeInt64:self->_failedSyncOperations forKey:@"failedSyncOperations"];
}

- (float)backoffRatio
{
  totalSyncOperations = self->_totalSyncOperations;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  minimumNumberOfFailuresBeforeReportingSyncBackoffRatio = [v4 minimumNumberOfFailuresBeforeReportingSyncBackoffRatio];

  result = 0.0;
  if (totalSyncOperations >= minimumNumberOfFailuresBeforeReportingSyncBackoffRatio)
  {
    return self->_failedSyncOperations / self->_totalSyncOperations;
  }

  return result;
}

- (void)newSyncOperationWithError:(id)error
{
  if (error)
  {
    ++self->_failedSyncOperations;
  }

  ++self->_totalSyncOperations;
}

@end