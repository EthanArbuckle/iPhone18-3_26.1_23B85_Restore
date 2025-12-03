@interface SKDBackgroundSystemTaskScheduler
- (BOOL)registerTaskWithIdentifier:(id)identifier usingQueue:(id)queue onLaunch:(id)launch onExpiration:(id)expiration;
- (BOOL)submitTaskRequest:(id)request error:(id *)error;
- (SKDBackgroundSystemTaskScheduler)init;
- (id)taskRequestForIdentifier:(id)identifier;
@end

@implementation SKDBackgroundSystemTaskScheduler

- (BOOL)registerTaskWithIdentifier:(id)identifier usingQueue:(id)queue onLaunch:(id)launch onExpiration:(id)expiration
{
  v9 = _Block_copy(launch);
  v10 = _Block_copy(expiration);
  v11 = sub_231C17C60();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  queueCopy = queue;
  selfCopy = self;
  LOBYTE(v11) = _s24SpotlightKnowledgeDaemon29BackgroundSystemTaskSchedulerC8register14taskIdentifier5using8onLaunch0L10ExpirationSbSS_So17OS_dispatch_queueCySo013SKDBackgroundeF9Providing_pYbcyyYbctF_0(v11, v13, queueCopy, sub_231C0B8C8, v14, sub_231C0B8DC, v15);

  return v11 & 1;
}

- (BOOL)submitTaskRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;
  sub_231C0B4CC(requestCopy);

  return 1;
}

- (id)taskRequestForIdentifier:(id)identifier
{
  v4 = objc_opt_self();
  identifierCopy = identifier;
  sharedScheduler = [v4 sharedScheduler];
  taskRequestForIdentifier_ = [sharedScheduler taskRequestForIdentifier_];

  return taskRequestForIdentifier_;
}

- (SKDBackgroundSystemTaskScheduler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SKDBackgroundSystemTaskScheduler *)&v3 init];
}

@end