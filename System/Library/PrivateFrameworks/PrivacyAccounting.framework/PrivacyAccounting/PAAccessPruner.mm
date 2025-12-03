@interface PAAccessPruner
+ (id)sharedInstance;
- (PAAccessPruner)initWithConnection:(id)connection queue:(id)queue;
- (PAAccessPruner)initWithQueue:(id)queue;
- (void)dealloc;
- (void)pruneEventsFromStartTime:(double)time toEndTime:(double)endTime completionHandler:(id)handler;
@end

@implementation PAAccessPruner

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PAAccessPruner sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __32__PAAccessPruner_sharedInstance__block_invoke()
{
  sharedInstance_instance = [[PAAccessPruner alloc] initWithQueue:0];

  return MEMORY[0x1EEE66BB8]();
}

- (PAAccessPruner)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (_os_feature_enabled_impl())
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.privacyaccountingd" options:4096];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PAAccessPruner *)self initWithConnection:v5 queue:queueCopy];
  v7 = v6;
  if (v6)
  {
    [(NSXPCConnection *)v6->_connection resume];
  }

  return v7;
}

- (PAAccessPruner)initWithConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = PAAccessPruner;
  v9 = [(PAAccessPruner *)&v14 init];
  if (v9)
  {
    PARegisterUserInfoValueProviderForPAErrorDomain();
    if (!queueCopy)
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_get_global_queue(21, 0);
      queueCopy = dispatch_queue_create_with_target_V2("com.apple.privacyaccounting.PAAccessPruner", v10, v11);
    }

    objc_storeStrong(&v9->_queue, queueCopy);
    [connectionCopy _setQueue:v9->_queue];
    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A5ED18];
    [connectionCopy setRemoteObjectInterface:v12];
    objc_storeStrong(&v9->_connection, connection);
  }

  return v9;
}

- (void)pruneEventsFromStartTime:(double)time toEndTime:(double)endTime completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = handlerCopy;
  if (self->_connection)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__PAAccessPruner_pruneEventsFromStartTime_toEndTime_completionHandler___block_invoke;
    v11[3] = &unk_1E86ABDC8;
    v11[4] = self;
    v12 = handlerCopy;
    timeCopy = time;
    endTimeCopy = endTime;
    _os_activity_initiate(&dword_1DF25B000, "PAAccessPruner -pruneEventsFromStartTime:toEndTime:completionHandler:", OS_ACTIVITY_FLAG_DEFAULT, v11);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:1 userInfo:0];
    (v9)[2](v9, v10);
  }
}

void __71__PAAccessPruner_pruneEventsFromStartTime_toEndTime_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__PAAccessPruner_pruneEventsFromStartTime_toEndTime_completionHandler___block_invoke_2;
  v4[3] = &unk_1E86ABDA0;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 pruneEventsFromStartTime:*(a1 + 40) toEndTime:*(a1 + 48) reply:*(a1 + 56)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = PAAccessPruner;
  [(PAAccessPruner *)&v3 dealloc];
}

@end