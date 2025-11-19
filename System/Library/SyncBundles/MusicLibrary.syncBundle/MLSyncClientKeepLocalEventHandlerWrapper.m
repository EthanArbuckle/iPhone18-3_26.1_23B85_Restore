@interface MLSyncClientKeepLocalEventHandlerWrapper
+ (MLSyncClientKeepLocalEventHandlerWrapper)sharedInstance;
- (MLSyncKeepLocalEventHandler)keepLocalEventHandler;
- (id)_init;
- (void)initializeKeepLocalHandlerWithQueue:(id)a3 library:(id)a4;
- (void)startKeepLocalHandler;
- (void)stopKeepLocalHandler;
@end

@implementation MLSyncClientKeepLocalEventHandlerWrapper

- (MLSyncKeepLocalEventHandler)keepLocalEventHandler
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_keepLocalEventHandlerInitialized)
  {
    v3 = self->_keepLocalEventHandler;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)stopKeepLocalHandler
{
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_keepLocalEventHandler)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MLSyncClientKeepLocalEventHandlerWrapper.m" lineNumber:60 description:@"KeepLocal event handler is not initialized"];
  }

  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "preparing handler to reject keep local requests", v7, 2u);
  }

  self->_keepLocalEventHandlerInitialized = 0;
  [(MLSyncKeepLocalEventHandler *)self->_keepLocalEventHandler stop];
  keepLocalEventHandler = self->_keepLocalEventHandler;
  self->_keepLocalEventHandler = 0;

  os_unfair_recursive_lock_unlock();
}

- (void)startKeepLocalHandler
{
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_keepLocalEventHandler)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MLSyncClientKeepLocalEventHandlerWrapper.m" lineNumber:51 description:@"KeepLocal event handler is not initialized"];
  }

  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "preparing handler to accept keep local requests", v6, 2u);
  }

  [(MLSyncKeepLocalEventHandler *)self->_keepLocalEventHandler start];
  self->_keepLocalEventHandlerInitialized = 1;
  os_unfair_recursive_lock_unlock();
}

- (void)initializeKeepLocalHandlerWithQueue:(id)a3 library:(id)a4
{
  v7 = a4;
  v8 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_keepLocalEventHandler)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MLSyncClientKeepLocalEventHandlerWrapper.m" lineNumber:44 description:@"KeepLocal event handler is already initialized"];
  }

  v9 = [[MLSyncKeepLocalEventHandler alloc] initWithQueue:v8 library:v7];

  keepLocalEventHandler = self->_keepLocalEventHandler;
  self->_keepLocalEventHandler = v9;

  os_unfair_recursive_lock_unlock();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MLSyncClientKeepLocalEventHandlerWrapper;
  v2 = [(MLSyncClientKeepLocalEventHandlerWrapper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_keepLocalEventHandlerInitialized = 0;
    keepLocalEventHandler = v2->_keepLocalEventHandler;
    v2->_keepLocalEventHandler = 0;

    v3->_lock = 0;
  }

  return v3;
}

+ (MLSyncClientKeepLocalEventHandlerWrapper)sharedInstance
{
  if (qword_A7718 != -1)
  {
    dispatch_once(&qword_A7718, &stru_9EB00);
  }

  v3 = qword_A7720;

  return v3;
}

@end