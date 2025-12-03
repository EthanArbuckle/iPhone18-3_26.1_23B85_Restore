@interface UNCNotificationSystemServiceListener
- (UNCNotificationSystemServiceListener)initWithDelegate:(id)delegate;
- (void)activate;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)systemServiceConnectionDidInvalidate:(id)invalidate;
@end

@implementation UNCNotificationSystemServiceListener

- (UNCNotificationSystemServiceListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = UNCNotificationSystemServiceListener;
  v5 = [(UNCNotificationSystemServiceListener *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.usernotifications.UNCNotificationSystemServiceListener", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    array = [MEMORY[0x1E695DF70] array];
    queue_connections = v6->_queue_connections;
    v6->_queue_connections = array;
  }

  return v6;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UNCNotificationSystemServiceListener_dealloc__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = UNCNotificationSystemServiceListener;
  [(UNCNotificationSystemServiceListener *)&v4 dealloc];
}

- (void)activate
{
  v3 = +[UNCNotificationSystemService domain];
  v4 = +[UNCNotificationSystemService serviceInterface];
  [(BSServiceConnectionListener *)self->_queue_listener invalidate];
  v5 = MEMORY[0x1E698F4B8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__UNCNotificationSystemServiceListener_activate__block_invoke;
  v17[3] = &unk_1E85D7578;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  selfCopy = self;
  v8 = [v5 listenerWithConfigurator:v17];
  queue_listener = self->_queue_listener;
  self->_queue_listener = v8;

  [(BSServiceConnectionListener *)self->_queue_listener activate];
  bootstrapConfiguration = [MEMORY[0x1E698F508] bootstrapConfiguration];
  v11 = [bootstrapConfiguration domainForIdentifier:v6];
  identifier = [v7 identifier];
  v13 = [v11 serviceForIdentifier:identifier];
  v14 = [v13 optionForKey:@"isAutomatic"];
  bOOLValue = [v14 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v16 = [MEMORY[0x1E698F508] activateManualDomain:v6];
  }
}

void __48__UNCNotificationSystemServiceListener_activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDomain:v3];
  v4 = [*(a1 + 40) identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 48)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__UNCNotificationSystemServiceListener_listener_didReceiveConnection_withContext___block_invoke;
  v9[3] = &unk_1E85D6E70;
  v10 = connectionCopy;
  selfCopy = self;
  v8 = connectionCopy;
  dispatch_async(queue, v9);
}

void __82__UNCNotificationSystemServiceListener_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteToken];
  if ([v2 hasEntitlement:@"com.apple.private.usernotifications.systemservice"])
  {
    v3 = [UNCNotificationSystemServiceConnection alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    v7 = [(UNCNotificationSystemServiceConnection *)v3 initWithConnection:v4 connectionDelegate:v5 delegate:WeakRetained];

    [*(*(a1 + 40) + 32) addObject:v7];
  }

  else
  {
    [*(a1 + 32) invalidate];
    v8 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      __82__UNCNotificationSystemServiceListener_listener_didReceiveConnection_withContext___block_invoke_cold_1(v8, v2, a1);
    }
  }
}

- (void)systemServiceConnectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__UNCNotificationSystemServiceListener_systemServiceConnectionDidInvalidate___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = invalidateCopy;
  v6 = invalidateCopy;
  dispatch_async(queue, v7);
}

void __82__UNCNotificationSystemServiceListener_listener_didReceiveConnection_withContext___block_invoke_cold_1(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 bundleID];
  v7 = *(a3 + 40);
  v10 = 138543618;
  v11 = v6;
  v12 = 2114;
  v13 = objc_opt_class();
  v8 = v13;
  _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "Entitlement is missing. %{public}@ could not connect to %{public}@.", &v10, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end