@interface BGSystemTaskScheduler
- (BOOL)cancelReturnToServiceTaskRequestWithError:(id *)error;
- (BOOL)deregisterRapidReturnToService;
- (BOOL)registerForRapidReturnToServiceWithLaunchHandler:(id)handler;
- (id)rapidReturnToServiceTaskRequest;
@end

@implementation BGSystemTaskScheduler

- (id)rapidReturnToServiceTaskRequest
{
  v3 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  v4 = [(BGSystemTaskScheduler *)self taskRequestForIdentifier:v3];

  return v4;
}

- (BOOL)cancelReturnToServiceTaskRequestWithError:(id *)error
{
  v5 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  LOBYTE(error) = [(BGSystemTaskScheduler *)self cancelTaskRequestWithIdentifier:v5 error:error];

  return error;
}

- (BOOL)registerForRapidReturnToServiceWithLaunchHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  v6 = dispatch_get_global_queue(9, 0);
  LOBYTE(self) = [(BGSystemTaskScheduler *)self registerForTaskWithIdentifier:v5 usingQueue:v6 launchHandler:handlerCopy];

  return self;
}

- (BOOL)deregisterRapidReturnToService
{
  v3 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  LOBYTE(self) = [(BGSystemTaskScheduler *)self deregisterTaskWithIdentifier:v3];

  return self;
}

@end