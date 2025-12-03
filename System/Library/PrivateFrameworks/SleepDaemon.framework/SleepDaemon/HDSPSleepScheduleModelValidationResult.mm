@interface HDSPSleepScheduleModelValidationResult
+ (id)emptyFailureWithError:(id)error;
- (HDSPSleepScheduleModelValidationResult)initWithSuccess:(BOOL)success timelineResults:(id)results error:(id)error;
@end

@implementation HDSPSleepScheduleModelValidationResult

- (HDSPSleepScheduleModelValidationResult)initWithSuccess:(BOOL)success timelineResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = HDSPSleepScheduleModelValidationResult;
  v11 = [(HDSPSleepScheduleModelValidationResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = success;
    objc_storeStrong(&v11->_error, error);
    objc_storeStrong(&v12->_timelineResults, results);
    v13 = v12;
  }

  return v12;
}

+ (id)emptyFailureWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithSuccess:0 timelineResults:0 error:errorCopy];

  return v5;
}

@end