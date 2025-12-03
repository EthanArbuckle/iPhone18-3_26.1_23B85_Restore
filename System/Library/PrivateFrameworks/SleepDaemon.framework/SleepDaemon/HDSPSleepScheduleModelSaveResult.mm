@interface HDSPSleepScheduleModelSaveResult
+ (id)emptyResult;
+ (id)saveFailedWithError:(id)error;
- (HDSPSleepScheduleModelSaveResult)initWithSuccess:(BOOL)success changeEvaluation:(id)evaluation error:(id)error shouldNotify:(BOOL)notify;
@end

@implementation HDSPSleepScheduleModelSaveResult

+ (id)emptyResult
{
  v2 = [self alloc];
  v3 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  v4 = [v2 initWithSuccess:1 changeEvaluation:v3 error:0 shouldNotify:0];

  return v4;
}

+ (id)saveFailedWithError:(id)error
{
  errorCopy = error;
  v5 = [self alloc];
  v6 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  v7 = [v5 initWithSuccess:0 changeEvaluation:v6 error:errorCopy shouldNotify:0];

  return v7;
}

- (HDSPSleepScheduleModelSaveResult)initWithSuccess:(BOOL)success changeEvaluation:(id)evaluation error:(id)error shouldNotify:(BOOL)notify
{
  evaluationCopy = evaluation;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HDSPSleepScheduleModelSaveResult;
  v13 = [(HDSPSleepScheduleModelSaveResult *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_success = success;
    objc_storeStrong(&v13->_changeEvaluation, evaluation);
    objc_storeStrong(&v14->_error, error);
    v14->_shouldNotify = notify;
    v15 = v14;
  }

  return v14;
}

@end