@interface MADActivityStats
- (MADActivityStats)init;
@end

@implementation MADActivityStats

- (MADActivityStats)init
{
  v15.receiver = self;
  v15.super_class = MADActivityStats;
  v2 = [(MADActivityStats *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_successfulOperations = 0;
    v2->_successWithIssues = 0;
    firstSuccessIssue = v2->_firstSuccessIssue;
    v2->_firstSuccessIssue = 0;

    lastSuccessIssue = v3->_lastSuccessIssue;
    v3->_lastSuccessIssue = 0;

    firstWarningMethod = v3->_firstWarningMethod;
    v3->_totalWarnings = 0;
    v3->_firstWarningMethod = 0;

    firstWarningMessage = v3->_firstWarningMessage;
    v3->_firstWarningMessage = 0;

    lastWarningMethod = v3->_lastWarningMethod;
    v3->_lastWarningMethod = 0;

    lastWarningMessage = v3->_lastWarningMessage;
    v3->_lastWarningMessage = 0;

    v3->_failureResult = 0;
    v3->_allocationFailures = 0;
    v3->_associateReplyFailures = 0;
    failureResultName = v3->_failureResultName;
    v3->_failureResultName = 0;

    failureReason = v3->_failureReason;
    v3->_failureReason = 0;

    firstAdditionalFailure = v3->_firstAdditionalFailure;
    v3->_additionalFailures = 0;
    v3->_firstAdditionalFailure = 0;

    lastAdditionalFailure = v3->_lastAdditionalFailure;
    v3->_lastAdditionalFailure = 0;
  }

  return v3;
}

@end