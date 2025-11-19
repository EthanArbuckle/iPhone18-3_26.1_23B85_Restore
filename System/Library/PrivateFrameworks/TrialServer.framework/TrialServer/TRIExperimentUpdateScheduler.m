@interface TRIExperimentUpdateScheduler
- (TRIExperimentUpdateScheduler)initWithExperimentDatabase:(id)a3 taskQueue:(id)a4;
- (void)scheduleExperimentUpdateOperationsForExperimentWithNewEndDate:(id)a3 withDeployment:(id)a4;
@end

@implementation TRIExperimentUpdateScheduler

- (TRIExperimentUpdateScheduler)initWithExperimentDatabase:(id)a3 taskQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TRIExperimentUpdateScheduler;
  v9 = [(TRIExperimentUpdateScheduler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_experimentDatabase, a3);
    v11 = [[TRIExperimentUpdateProcessor alloc] initWithExperimentDatabase:v7];
    v12 = _experimentUpdateProcessor;
    _experimentUpdateProcessor = v11;
  }

  return v10;
}

- (void)scheduleExperimentUpdateOperationsForExperimentWithNewEndDate:(id)a3 withDeployment:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [_experimentUpdateProcessor processUpdateOperationForExistingExperimentWithEndDate:v11 withExperimentDeployment:v6];
  if (v8)
  {
    v9 = [(TRIExperimentUpdateScheduler *)self queue];
    v10 = [TRITaskQueuingOptions optionsWithDuplicateTaskResolution:1];
    [v9 addTask:v8 options:v10];
  }

  objc_autoreleasePoolPop(v7);
}

@end