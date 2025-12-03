@interface ICPlayActivityCenter
+ (ICPlayActivityCenter)shared;
- (ICPlayActivityCenter)init;
- (id)_daemonPlayActivityControllerConnection;
- (void)dealloc;
- (void)flushPendingPlayActivityEventsWithCompletionHandler:(id)handler;
- (void)recordPlayActivityEvents:(id)events shouldFlush:(BOOL)flush withCompletionHandler:(id)handler;
@end

@implementation ICPlayActivityCenter

- (id)_daemonPlayActivityControllerConnection
{
  dispatch_assert_queue_V2(self->_serialQueue);
  daemonPlayActivityControllerConnection = self->_daemonPlayActivityControllerConnection;
  if (!daemonPlayActivityControllerConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloudd.playactivity" options:0];
    v5 = self->_daemonPlayActivityControllerConnection;
    self->_daemonPlayActivityControllerConnection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCEE78];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_insertPlayActivityEvents_shouldFlush_withCompletionHandler_ argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection setRemoteObjectInterface:v6];
    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection setInterruptionHandler:&__block_literal_global_66_22709];
    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection setInvalidationHandler:&__block_literal_global_69];
    [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection resume];

    daemonPlayActivityControllerConnection = self->_daemonPlayActivityControllerConnection;
  }

  return daemonPlayActivityControllerConnection;
}

void __63__ICPlayActivityCenter__daemonPlayActivityControllerConnection__block_invoke_67()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to daemon play activity controller invalidated.", v1, 2u);
  }
}

void __63__ICPlayActivityCenter__daemonPlayActivityControllerConnection__block_invoke()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to daemon play activity controller interrupted.", v1, 2u);
  }
}

- (void)recordPlayActivityEvents:(id)events shouldFlush:(BOOL)flush withCompletionHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7BF9B18;
  v13[4] = self;
  v14 = eventsCopy;
  v15 = handlerCopy;
  flushCopy = flush;
  v11 = handlerCopy;
  v12 = eventsCopy;
  dispatch_async(serialQueue, v13);
}

void __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _daemonPlayActivityControllerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF80A8;
  v3 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v12 = *(a1 + 48);
  v4 = [v2 remoteObjectProxyWithErrorHandler:v10];
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke_2_10;
  v7[3] = &unk_1E7BF80A8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 48);
  [v4 insertPlayActivityEvents:v8 shouldFlush:v5 withCompletionHandler:v7];
}

void __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) count];
    *buf = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Error %{public}@ recording %lu play activity events", buf, 0x20u);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke_9;
    v9[3] = &unk_1E7BF9EC8;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

void __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke_2_10(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [*(a1 + 40) count];
    *buf = 138543874;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished recording %lu play activity events with error %{public}@", buf, 0x20u);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__ICPlayActivityCenter_recordPlayActivityEvents_shouldFlush_withCompletionHandler___block_invoke_11;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

- (void)flushPendingPlayActivityEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serialQueue, v7);
}

void __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _daemonPlayActivityControllerConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7BFA490;
  v3 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke_2_7;
  v6[3] = &unk_1E7BFA490;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 flushPendingPlayActivityEventsWithCompletionHandler:v6];
}

void __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@  Error %{public}@ flushing play activity events", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke_5;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke_2_7(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@  Finished flushing play activity events with error %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__ICPlayActivityCenter_flushPendingPlayActivityEventsWithCompletionHandler___block_invoke_8;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_daemonPlayActivityControllerConnection invalidate];
  v3.receiver = self;
  v3.super_class = ICPlayActivityCenter;
  [(ICPlayActivityCenter *)&v3 dealloc];
}

- (ICPlayActivityCenter)init
{
  v7.receiver = self;
  v7.super_class = ICPlayActivityCenter;
  v2 = [(ICPlayActivityCenter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.iTunesCloud.ICPlayActivityCenter.serialQueue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;
  }

  return v2;
}

+ (ICPlayActivityCenter)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_22733);
  }

  v3 = _sharedInstance;

  return v3;
}

uint64_t __30__ICPlayActivityCenter_shared__block_invoke()
{
  v0 = objc_alloc_init(ICPlayActivityCenter);
  v1 = _sharedInstance;
  _sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end