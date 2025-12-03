@interface TRIExperimentUpdateScheduler
- (TRIExperimentUpdateScheduler)initWithExperimentDatabase:(id)database taskQueue:(id)queue;
- (void)scheduleExperimentUpdateOperationsForExperimentWithNewEndDate:(id)date withDeployment:(id)deployment;
@end

@implementation TRIExperimentUpdateScheduler

- (TRIExperimentUpdateScheduler)initWithExperimentDatabase:(id)database taskQueue:(id)queue
{
  databaseCopy = database;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = TRIExperimentUpdateScheduler;
  v9 = [(TRIExperimentUpdateScheduler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_experimentDatabase, database);
    v11 = [[TRIExperimentUpdateProcessor alloc] initWithExperimentDatabase:databaseCopy];
    v12 = _experimentUpdateProcessor;
    _experimentUpdateProcessor = v11;
  }

  return v10;
}

- (void)scheduleExperimentUpdateOperationsForExperimentWithNewEndDate:(id)date withDeployment:(id)deployment
{
  dateCopy = date;
  deploymentCopy = deployment;
  v7 = objc_autoreleasePoolPush();
  v8 = [_experimentUpdateProcessor processUpdateOperationForExistingExperimentWithEndDate:dateCopy withExperimentDeployment:deploymentCopy];
  if (v8)
  {
    queue = [(TRIExperimentUpdateScheduler *)self queue];
    v10 = [TRITaskQueuingOptions optionsWithDuplicateTaskResolution:1];
    [queue addTask:v8 options:v10];
  }

  objc_autoreleasePoolPop(v7);
}

@end