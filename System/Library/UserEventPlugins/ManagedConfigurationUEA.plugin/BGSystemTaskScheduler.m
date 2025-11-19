@interface BGSystemTaskScheduler
- (BOOL)cancelReturnToServiceTaskRequestWithError:(id *)a3;
- (BOOL)deregisterRapidReturnToService;
- (BOOL)registerForRapidReturnToServiceWithLaunchHandler:(id)a3;
- (id)rapidReturnToServiceTaskRequest;
@end

@implementation BGSystemTaskScheduler

- (id)rapidReturnToServiceTaskRequest
{
  v3 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  v4 = [(BGSystemTaskScheduler *)self taskRequestForIdentifier:v3];

  return v4;
}

- (BOOL)cancelReturnToServiceTaskRequestWithError:(id *)a3
{
  v5 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  LOBYTE(a3) = [(BGSystemTaskScheduler *)self cancelTaskRequestWithIdentifier:v5 error:a3];

  return a3;
}

- (BOOL)registerForRapidReturnToServiceWithLaunchHandler:(id)a3
{
  v4 = a3;
  v5 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  v6 = dispatch_get_global_queue(9, 0);
  LOBYTE(self) = [(BGSystemTaskScheduler *)self registerForTaskWithIdentifier:v5 usingQueue:v6 launchHandler:v4];

  return self;
}

- (BOOL)deregisterRapidReturnToService
{
  v3 = +[BGNonRepeatingSystemTaskRequest rapidReturnToServiceTaskIdentifier];
  LOBYTE(self) = [(BGSystemTaskScheduler *)self deregisterTaskWithIdentifier:v3];

  return self;
}

@end