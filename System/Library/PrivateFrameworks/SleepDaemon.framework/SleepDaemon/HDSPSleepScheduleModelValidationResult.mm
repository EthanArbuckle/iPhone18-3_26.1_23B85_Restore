@interface HDSPSleepScheduleModelValidationResult
+ (id)emptyFailureWithError:(id)a3;
- (HDSPSleepScheduleModelValidationResult)initWithSuccess:(BOOL)a3 timelineResults:(id)a4 error:(id)a5;
@end

@implementation HDSPSleepScheduleModelValidationResult

- (HDSPSleepScheduleModelValidationResult)initWithSuccess:(BOOL)a3 timelineResults:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HDSPSleepScheduleModelValidationResult;
  v11 = [(HDSPSleepScheduleModelValidationResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_success = a3;
    objc_storeStrong(&v11->_error, a5);
    objc_storeStrong(&v12->_timelineResults, a4);
    v13 = v12;
  }

  return v12;
}

+ (id)emptyFailureWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSuccess:0 timelineResults:0 error:v4];

  return v5;
}

@end