@interface BatteryUsageQueryModule
+ (id)sharedModule;
- (BatteryUsageQueryModule)init;
- (void)populateBatteryGraphModelsWithCompletion:(id)completion;
- (void)populateBatteryModelsWithCompletion:(id)completion;
- (void)populateBatteryUsageWithCompletion:(id)completion;
- (void)queryBackend:(id)backend withCompletion:(id)completion;
@end

@implementation BatteryUsageQueryModule

+ (id)sharedModule
{
  if (qword_10000C6F8 != -1)
  {
    sub_100002D48();
  }

  v3 = qword_10000C6F0;

  return v3;
}

- (BatteryUsageQueryModule)init
{
  v8.receiver = self;
  v8.super_class = BatteryUsageQueryModule;
  v2 = [(BatteryUsageQueryModule *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queryUsageQueue = v2->_queryUsageQueue;
    v2->_queryUsageQueue = v3;

    [(NSOperationQueue *)v2->_queryUsageQueue setName:@"com.apple.preferences.battery_ui_query"];
    [(NSOperationQueue *)v2->_queryUsageQueue setMaxConcurrentOperationCount:1];
    v2->_type = 0;
    v5 = objc_alloc_init(NSOperationQueue);
    queryModelQueue = v2->_queryModelQueue;
    v2->_queryModelQueue = v5;

    [(NSOperationQueue *)v2->_queryModelQueue setName:@"com.apple.preferences.battery_model_query"];
    [(NSOperationQueue *)v2->_queryModelQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)populateBatteryUsageWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [[QueryOperations alloc] initWithCompletion:completionCopy];

  [(QueryOperations *)v6 setFunctionName:@"PLBatteryUIQueryFunctionKey"];
  [(QueryOperations *)v6 setQueryType:[(BatteryUsageQueryModule *)self type]];
  manualFileName = [(BatteryUsageQueryModule *)self manualFileName];
  [(QueryOperations *)v6 setManualFileName:manualFileName];

  [(NSOperationQueue *)self->_queryUsageQueue addOperation:v6];
}

- (void)populateBatteryModelsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [[QueryOperations alloc] initWithCompletion:completionCopy];

  [(QueryOperations *)v6 setFunctionName:@"PLBatteryUIModelsQueryFunctionKey"];
  graphNames = [(BatteryUsageQueryModule *)self graphNames];
  [(QueryOperations *)v6 setGraphArray:graphNames];

  [(NSOperationQueue *)self->_queryModelQueue addOperation:v6];
}

- (void)populateBatteryGraphModelsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[QueryOperations alloc] initWithCompletion:completionCopy];

  [(QueryOperations *)v5 setFunctionName:@"PLBatteryUIGraphKey"];
  NSLog(@"Operation is: %@", v5);
  [(NSOperationQueue *)self->_queryModelQueue addOperation:v5];
}

- (void)queryBackend:(id)backend withCompletion:(id)completion
{
  completionCopy = completion;
  backendCopy = backend;
  v9 = [[QueryOperations alloc] initWithCompletion:completionCopy];

  [(QueryOperations *)v9 setFunctionName:@"PLBatteryUIQueryFunctionKey"];
  [(QueryOperations *)v9 setQueryType:[(BatteryUsageQueryModule *)self type]];
  [(QueryOperations *)v9 setBackend:backendCopy];

  manualFileName = [(BatteryUsageQueryModule *)self manualFileName];
  [(QueryOperations *)v9 setManualFileName:manualFileName];

  [(NSOperationQueue *)self->_queryUsageQueue addOperation:v9];
}

@end