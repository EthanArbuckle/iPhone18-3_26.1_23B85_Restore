@interface WFTask
+ (WFServiceConnection)sharedServiceConnection;
- (BOOL)isCancelled;
- (WFTask)init;
- (WFTask)initWithResponseRequired:(BOOL)required;
- (void)cancel;
- (void)executeSynchronously;
- (void)start;
@end

@implementation WFTask

+ (WFServiceConnection)sharedServiceConnection
{
  if (sharedServiceConnection_onceToken != -1)
  {
    +[WFTask sharedServiceConnection];
  }

  v3 = sharedServiceConnection_serviceConnection;

  return v3;
}

uint64_t __33__WFTask_sharedServiceConnection__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedServiceConnection_serviceConnection;
  sharedServiceConnection_serviceConnection = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WFTask)init
{
  v13.receiver = self;
  v13.super_class = WFTask;
  v3 = [(WFTask *)&v13 init];
  if (v3 == self)
  {
    v4 = +[WFTaskIdentifier defaultIdentifier];
    objc_storeStrong(&v3->_identifier, v4);
    v3->_requiresResponse = 1;
    v5 = objc_opt_new();
    [(WFTask *)v3 setProgress:v5];

    progress = [(WFTask *)v3 progress];
    [progress setUserInfoObject:v3->_identifier forKey:@"taskIdentifier"];

    progress2 = [(WFTask *)v3 progress];
    [progress2 setCancellable:1];

    progress3 = [(WFTask *)v3 progress];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __14__WFTask_init__block_invoke;
    v11[3] = &unk_279E6D9A8;
    v12 = v4;
    v9 = v4;
    [progress3 setCancellationHandler:v11];
  }

  return v3;
}

void __14__WFTask_init__block_invoke(uint64_t a1)
{
  v2 = +[WFTask sharedServiceConnection];
  [v2 cancelRequestWithIdentifier:*(a1 + 32)];
}

- (WFTask)initWithResponseRequired:(BOOL)required
{
  result = [(WFTask *)self init];
  if (result)
  {
    result->_requiresResponse = required;
  }

  return result;
}

- (void)start
{
  sharedServiceConnection = [objc_opt_class() sharedServiceConnection];
  [sharedServiceConnection enqueueRequest:self];
}

- (void)executeSynchronously
{
  sharedServiceConnection = [objc_opt_class() sharedServiceConnection];
  [sharedServiceConnection enqueueRequest:self waitUntilDone:1];
}

- (BOOL)isCancelled
{
  progress = [(WFTask *)self progress];
  isCancelled = [progress isCancelled];

  return isCancelled;
}

- (void)cancel
{
  if (![(WFTask *)self isCancelled])
  {
    progress = [(WFTask *)self progress];
    [progress cancel];
  }
}

@end