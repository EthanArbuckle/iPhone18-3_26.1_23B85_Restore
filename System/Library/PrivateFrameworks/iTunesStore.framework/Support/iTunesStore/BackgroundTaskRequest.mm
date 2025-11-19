@interface BackgroundTaskRequest
+ (id)networkAvailableRequest;
+ (id)pluggedInRequest;
+ (id)wifiAvailableRequest;
- (BackgroundTaskRequest)init;
- (BackgroundTaskRequest)initWithBackgroundTaskAgentJob:(id)a3;
@end

@implementation BackgroundTaskRequest

- (BackgroundTaskRequest)init
{
  v6.receiver = self;
  v6.super_class = BackgroundTaskRequest;
  v2 = [(BackgroundTaskRequest *)&v6 init];
  if (v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    job = v2->_job;
    v2->_job = v3;
  }

  return v2;
}

- (BackgroundTaskRequest)initWithBackgroundTaskAgentJob:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BackgroundTaskRequest;
  v5 = [(BackgroundTaskRequest *)&v9 init];
  if (v5)
  {
    v6 = xpc_copy(v4);
    job = v5->_job;
    v5->_job = v6;
  }

  return v5;
}

+ (id)networkAvailableRequest
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v4 = [[a1 alloc] initWithBackgroundTaskAgentJob:v3];
  [v4 setRequestIdentifier:@"com.apple.itunesstored.BackgroundTaskRequest.networkAvailableRequest"];

  return v4;
}

+ (id)pluggedInRequest
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
  v4 = [[a1 alloc] initWithBackgroundTaskAgentJob:v3];
  [v4 setRequestIdentifier:@"com.apple.itunesstored.BackgroundTaskRequest.pluggedInRequest"];

  return v4;
}

+ (id)wifiAvailableRequest
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v4 = [[a1 alloc] initWithBackgroundTaskAgentJob:v3];
  [v4 setRequestIdentifier:@"com.apple.itunesstored.BackgroundTaskRequest.wifiAvailableRequest"];

  return v4;
}

@end