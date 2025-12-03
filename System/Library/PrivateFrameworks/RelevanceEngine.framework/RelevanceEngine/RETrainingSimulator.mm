@interface RETrainingSimulator
- (RETrainingSimulator)initWithTargetProcess:(id)process relevanceEngine:(id)engine;
- (void)trainingSimulationClientWasInterrupted:(id)interrupted;
- (void)trainingSimulationClientWasInvalidated:(id)invalidated;
@end

@implementation RETrainingSimulator

- (RETrainingSimulator)initWithTargetProcess:(id)process relevanceEngine:(id)engine
{
  processCopy = process;
  engineCopy = engine;
  v14.receiver = self;
  v14.super_class = RETrainingSimulator;
  v9 = [(RETrainingSimulator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetProcessName, process);
    objc_storeStrong(&v10->_relevanceEngineName, engine);
    v11 = [[RETrainingSimulationClient alloc] initWithTargetProcessName:processCopy delegate:v10];
    client = v10->_client;
    v10->_client = v11;
  }

  return v10;
}

- (void)trainingSimulationClientWasInterrupted:(id)interrupted
{
  v3 = RELogForDomain(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [RETrainingSimulator trainingSimulationClientWasInterrupted:v3];
  }
}

- (void)trainingSimulationClientWasInvalidated:(id)invalidated
{
  v3 = RELogForDomain(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [RETrainingSimulator trainingSimulationClientWasInvalidated:v3];
  }
}

@end