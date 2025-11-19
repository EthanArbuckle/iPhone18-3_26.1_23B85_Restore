@interface SKDBackgroundSystemTaskScheduler
- (BOOL)registerTaskWithIdentifier:(id)a3 usingQueue:(id)a4 onLaunch:(id)a5 onExpiration:(id)a6;
- (BOOL)submitTaskRequest:(id)a3 error:(id *)a4;
- (SKDBackgroundSystemTaskScheduler)init;
- (id)taskRequestForIdentifier:(id)a3;
@end

@implementation SKDBackgroundSystemTaskScheduler

- (BOOL)registerTaskWithIdentifier:(id)a3 usingQueue:(id)a4 onLaunch:(id)a5 onExpiration:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = sub_231C17C60();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = a4;
  v17 = self;
  LOBYTE(v11) = _s24SpotlightKnowledgeDaemon29BackgroundSystemTaskSchedulerC8register14taskIdentifier5using8onLaunch0L10ExpirationSbSS_So17OS_dispatch_queueCySo013SKDBackgroundeF9Providing_pYbcyyYbctF_0(v11, v13, v16, sub_231C0B8C8, v14, sub_231C0B8DC, v15);

  return v11 & 1;
}

- (BOOL)submitTaskRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_231C0B4CC(v5);

  return 1;
}

- (id)taskRequestForIdentifier:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedScheduler];
  v7 = [v6 taskRequestForIdentifier_];

  return v7;
}

- (SKDBackgroundSystemTaskScheduler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SKDBackgroundSystemTaskScheduler *)&v3 init];
}

@end