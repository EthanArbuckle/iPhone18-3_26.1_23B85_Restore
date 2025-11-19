@interface HDSPSleepScheduleModelSaveResult
+ (id)emptyResult;
+ (id)saveFailedWithError:(id)a3;
- (HDSPSleepScheduleModelSaveResult)initWithSuccess:(BOOL)a3 changeEvaluation:(id)a4 error:(id)a5 shouldNotify:(BOOL)a6;
@end

@implementation HDSPSleepScheduleModelSaveResult

+ (id)emptyResult
{
  v2 = [a1 alloc];
  v3 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  v4 = [v2 initWithSuccess:1 changeEvaluation:v3 error:0 shouldNotify:0];

  return v4;
}

+ (id)saveFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  v7 = [v5 initWithSuccess:0 changeEvaluation:v6 error:v4 shouldNotify:0];

  return v7;
}

- (HDSPSleepScheduleModelSaveResult)initWithSuccess:(BOOL)a3 changeEvaluation:(id)a4 error:(id)a5 shouldNotify:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = HDSPSleepScheduleModelSaveResult;
  v13 = [(HDSPSleepScheduleModelSaveResult *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_success = a3;
    objc_storeStrong(&v13->_changeEvaluation, a4);
    objc_storeStrong(&v14->_error, a5);
    v14->_shouldNotify = a6;
    v15 = v14;
  }

  return v14;
}

@end