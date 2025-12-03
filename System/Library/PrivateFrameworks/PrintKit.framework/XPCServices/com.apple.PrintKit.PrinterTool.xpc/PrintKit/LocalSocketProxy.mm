@interface LocalSocketProxy
- (LocalSocketProxy)initWithLocalSocketPath:(id)path;
- (void)_cancel;
- (void)_flushWaiters;
- (void)_listenerReady;
- (void)_newConnection:(id)connection;
- (void)_withPort:(id)port;
- (void)cancel;
- (void)dealloc;
- (void)start;
- (void)withPort:(id)port;
@end

@implementation LocalSocketProxy

- (LocalSocketProxy)initWithLocalSocketPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = LocalSocketProxy;
  v6 = [(LocalSocketProxy *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("LocalSocketProxy", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_path, path);
    v10 = objc_opt_new();
    connections = v6->_connections;
    v6->_connections = v10;
  }

  return v6;
}

- (void)dealloc
{
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LocalSocketProxy: Dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = LocalSocketProxy;
  [(LocalSocketProxy *)&v4 dealloc];
}

- (void)start
{
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    path = self->_path;
    *buf = 138412290;
    v17 = path;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LocalSocketProxy: Started to path %@", buf, 0xCu);
  }

  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_loopback);
  v6 = nw_listener_create(secure_tcp);
  listener = self->_listener;
  self->_listener = v6;

  nw_listener_set_queue(self->_listener, self->_queue);
  objc_initWeak(&location, self);
  v8 = self->_listener;
  v13[1] = _NSConcreteStackBlock;
  v13[2] = 3221225472;
  v13[3] = sub_100024BA4;
  v13[4] = &unk_1000A2268;
  objc_copyWeak(&v14, &location);
  v13[5] = self;
  nw_listener_set_event_handler();
  v9 = self->_listener;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024C40;
  v12[3] = &unk_1000A2290;
  objc_copyWeak(v13, &location);
  nw_listener_set_new_connection_handler(v9, v12);
  v10 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_listener;
    *buf = 134218242;
    v17 = v11;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LocalSocketProxy: Starting listener %p <%@>", buf, 0x16u);
  }

  nw_listener_start(self->_listener);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_newConnection:(id)connection
{
  connectionCopy = connection;
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LocalSocketProxy: New connection %@", buf, 0xCu);
  }

  v6 = [[LocalProxyConnection alloc] initWithConnection:connectionCopy path:self->_path queue:self->_queue];
  [(NSMutableSet *)self->_connections addObject:v6];
  v7 = self->_connections;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100024EB4;
  v10[3] = &unk_1000A22B8;
  v8 = v7;
  v11 = v8;
  [(LocalProxyConnection *)v6 setCleanupBlock:v10];
  [(LocalProxyConnection *)v6 start];
  v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LocalSocketProxy: Started proxy %@", buf, 0xCu);
  }
}

- (void)_listenerReady
{
  self->_port = nw_listener_get_port(self->_listener);
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    listener = self->_listener;
    port = self->_port;
    v6 = 138412546;
    v7 = listener;
    v8 = 1024;
    v9 = port;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LocalSocketProxy: Listener %@ ready on port %d", &v6, 0x12u);
  }

  [(LocalSocketProxy *)self _flushWaiters];
}

- (void)_flushWaiters
{
  v3 = self->_waiters;
  waiters = self->_waiters;
  self->_waiters = 0;

  if (v3)
  {
    port = self->_port;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100025048;
    v6[3] = &unk_1000A22D8;
    v7 = port;
    [(NSArray *)v3 enumerateObjectsUsingBlock:v6];
  }
}

- (void)withPort:(id)port
{
  portCopy = port;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002512C;
  block[3] = &unk_1000A2300;
  objc_copyWeak(&v9, &location);
  v8 = portCopy;
  v6 = portCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_withPort:(id)port
{
  portCopy = port;
  v5 = portCopy;
  if (!self->_listener || self->_port)
  {
    portCopy[2](portCopy);
  }

  else
  {
    waiters = self->_waiters;
    v7 = objc_retainBlock(portCopy);
    v8 = v7;
    if (waiters)
    {
      v9 = [(NSArray *)waiters arrayByAddingObject:v7];
      v10 = self->_waiters;
      self->_waiters = v9;
    }

    else
    {
      v13 = v7;
      v11 = [NSArray arrayWithObjects:&v13 count:1];
      v12 = self->_waiters;
      self->_waiters = v11;
    }
  }
}

- (void)_cancel
{
  listener = self->_listener;
  if (listener)
  {
    nw_listener_cancel(listener);
    v4 = self->_listener;
    self->_listener = 0;
  }

  self->_port = 0;

  [(LocalSocketProxy *)self _flushWaiters];
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000253EC;
  v4[3] = &unk_1000A2328;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end