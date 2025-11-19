@interface RETrainingSimulator
- (RETrainingSimulator)initWithTargetProcess:(id)a3 relevanceEngine:(id)a4;
- (void)trainingSimulationClientWasInterrupted:(id)a3;
- (void)trainingSimulationClientWasInvalidated:(id)a3;
@end

@implementation RETrainingSimulator

- (RETrainingSimulator)initWithTargetProcess:(id)a3 relevanceEngine:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RETrainingSimulator;
  v9 = [(RETrainingSimulator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetProcessName, a3);
    objc_storeStrong(&v10->_relevanceEngineName, a4);
    v11 = [[RETrainingSimulationClient alloc] initWithTargetProcessName:v7 delegate:v10];
    client = v10->_client;
    v10->_client = v11;
  }

  return v10;
}

- (void)trainingSimulationClientWasInterrupted:(id)a3
{
  v3 = RELogForDomain(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [RETrainingSimulator trainingSimulationClientWasInterrupted:v3];
  }
}

- (void)trainingSimulationClientWasInvalidated:(id)a3
{
  v3 = RELogForDomain(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [RETrainingSimulator trainingSimulationClientWasInvalidated:v3];
  }
}

@end