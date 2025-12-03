@interface NRDUpdateBrainClientImpl
- (NRDUpdateBrainClientImpl)init;
- (NRDUpdateBrainClientImpl)initWithDelegate:(id)delegate;
- (NRDUpdateBrainClientImpl)initWithEndpoint:(id)endpoint;
- (void)_connectToServerIfNecessary_nolock;
- (void)_invalidateConnection;
- (void)_invalidateConnection_nolock;
- (void)calculateCurrentRequiredSpace:(id)space callback:(id)callback;
- (void)connectToServerIfNecessary;
- (void)dealloc;
- (void)downloadNeRDUpdate:(id)update options:(id)options progress:(id)progress completion:(id)completion;
- (void)finishNeRDUpdate:(id)update;
- (void)getListenerEndpoint:(id)endpoint;
- (void)handleConnectionError:(id)error method:(const char *)method handler:(id)handler;
- (void)installNeRDUpdate:(id)update options:(id)options progress:(id)progress completion:(id)completion;
- (void)noteConnectionDropped;
- (void)ping:(id)ping;
- (void)ping:(id)ping reply:(id)reply;
- (void)purgeNeRDUpdate:(id)update;
- (void)queryNeRDUpdate:(id)update build:(id)build options:(id)options callback:(id)callback;
- (void)run:(unint64_t)run options:(id)options callback:(id)callback;
@end

@implementation NRDUpdateBrainClientImpl

- (NRDUpdateBrainClientImpl)init
{
  v3.receiver = self;
  v3.super_class = NRDUpdateBrainClientImpl;
  result = [(NRDUpdateBrainClientImpl *)&v3 init];
  if (result)
  {
    result->_brainProtocol = &OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate;
    result->_brainProtocolVersion = 1;
  }

  return result;
}

- (NRDUpdateBrainClientImpl)initWithDelegate:(id)delegate
{
  result = [(NRDUpdateBrainClientImpl *)self init];
  if (result)
  {
    result->_delegate = delegate;
  }

  return result;
}

- (NRDUpdateBrainClientImpl)initWithEndpoint:(id)endpoint
{
  v4 = [(NRDUpdateBrainClientImpl *)self init];
  result = 0;
  if (endpoint)
  {
    if (v4)
    {
      v4->_serverEndpoint = endpoint;
      endpointCopy = endpoint;
      return v4;
    }
  }

  return result;
}

- (void)dealloc
{
  [(NRDUpdateBrainClientImpl *)self _invalidateConnection];
  self->_delegate = 0;

  v3.receiver = self;
  v3.super_class = NRDUpdateBrainClientImpl;
  [(NRDUpdateBrainClientImpl *)&v3 dealloc];
}

- (void)_invalidateConnection_nolock
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    [(NSXPCConnection *)serverConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_serverConnection invalidate];

    self->_serverConnection = 0;
    self->_connected = 0;
  }
}

- (void)_invalidateConnection
{
  objc_sync_enter(self);
  [(NRDUpdateBrainClientImpl *)self _invalidateConnection_nolock];

  objc_sync_exit(self);
}

- (void)_connectToServerIfNecessary_nolock
{
  if (!self->_connected)
  {
    [(NRDUpdateBrainClientImpl *)self _invalidateConnection];
    serverEndpoint = self->_serverEndpoint;
    v4 = [NSXPCConnection alloc];
    if (serverEndpoint)
    {
      v5 = [v4 initWithListenerEndpoint:self->_serverEndpoint];
    }

    else
    {
      v5 = [v4 initWithServiceName:@"com.apple.NRD.UpdateBrainService" options:0];
    }

    self->_serverConnection = v5;
    v6 = dispatch_queue_create("com.apple.NRDUpdateBrainClient.serverConnectionQueue", &_dispatch_queue_attr_concurrent);
    [(NSXPCConnection *)self->_serverConnection _setQueue:v6];
    dispatch_release(v6);
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate2];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdateBrainDelegateInterface];
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDBackgroundActivitySchedulerInterface];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDRemoteableBlockInterface];
    [(NSXPCInterface *)v9 setInterface:v10 forSelector:"scheduleWithRemoteableBlock:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v9 setInterface:v10 forSelector:"setCheckInHandler:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v7 setInterface:v10 forSelector:"downloadNeRDUpdate:options:progress:completion:" argumentIndex:2 ofReply:0];
    [(NSXPCInterface *)v7 setInterface:v10 forSelector:"installNeRDUpdate:options:progress:completion:" argumentIndex:2 ofReply:0];
    [(NSXPCInterface *)v7 setInterface:v10 forSelector:"finishNeRDUpdate:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v8 setInterface:v9 forSelector:"newSchedulerWithIdentifier:reply:" argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)self->_serverConnection setRemoteObjectInterface:v7];
    if (self->_delegate)
    {
      [(NSXPCConnection *)self->_serverConnection setExportedInterface:v8];
      [(NSXPCConnection *)self->_serverConnection setExportedObject:self->_delegate];
      delegate = self->_delegate;
    }

    else
    {
      delegate = 0;
    }

    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3052000000;
    v15[3] = __Block_byref_object_copy_;
    v15[4] = __Block_byref_object_dispose_;
    v15[5] = self;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3052000000;
    v14[3] = __Block_byref_object_copy_;
    v14[4] = __Block_byref_object_dispose_;
    v14[5] = delegate;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke;
    v13[3] = &unk_100018520;
    v13[4] = v15;
    v13[5] = v14;
    [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:v13, _NSConcreteStackBlock, 3221225472, __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_139, &unk_100018520, v15, v14];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:&v12];
    [(NSXPCConnection *)self->_serverConnection resume];
    self->_connected = 1;
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v15, 8);
  }
}

uint64_t __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"com.apple.NRD.UpdateBrainService";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection to %{public}@ invalidated", &v4, 0xCu);
  }

  [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(*(*(a1 + 40) + 8) + 40) connectionInvalidated];
    }
  }

  return result;
}

uint64_t __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_139(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"com.apple.NRD.UpdateBrainService";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection to %{public}@ interrupted", &v4, 0xCu);
  }

  [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(*(*(a1 + 40) + 8) + 40) connectionInterrupted];
    }
  }

  return result;
}

- (void)connectToServerIfNecessary
{
  objc_sync_enter(self);
  [(NRDUpdateBrainClientImpl *)self _connectToServerIfNecessary_nolock];

  objc_sync_exit(self);
}

- (void)noteConnectionDropped
{
  objc_sync_enter(self);
  self->_connected = 0;

  objc_sync_exit(self);
}

- (void)handleConnectionError:(id)error method:(const char *)method handler:(id)handler
{
  if (error)
  {
    v9 = nrdSharedLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (method)
    {
      if (v10)
      {
        [NRDUpdateBrainClientImpl handleConnectionError:method method:error handler:v9];
      }
    }

    else if (v10)
    {
      [NRDUpdateBrainClientImpl handleConnectionError:method:handler:];
    }

    [(NRDUpdateBrainClientImpl *)self _invalidateConnection];
    (*(handler + 2))(handler);
  }
}

- (void)ping:(id)ping
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pinging NeRD update brain...", &buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke;
  v18[3] = &unk_100018570;
  v18[4] = self;
  v18[5] = ping;
  v18[6] = &v19;
  v18[7] = "[NRDUpdateBrainClientImpl ping:]";
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_142;
  v17[3] = &unk_1000185E8;
  v17[4] = self;
  v17[5] = ping;
  v17[6] = &v19;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v18), "ping:", v17}];
  v14 = __33__NRDUpdateBrainClientImpl_ping___block_invoke_169;
  v15 = &unk_100018610;
  v16 = &v19;
  v6 = objc_autoreleasePoolPush();
  v7 = [NSDate date:_NSConcreteStackBlock];
  do
  {
    v8 = +[NSDate date];
    [+[NSRunLoop currentRunLoop](NSRunLoop runUntilDate:"runUntilDate:", [(NSDate *)v8 dateByAddingTimeInterval:0.125]];
    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v8];
    if (v9 < 0.125)
    {
      v10 = 0.125 - v9;
      buf.tv_sec = v10;
      buf.tv_nsec = ((v10 - v10) * 1000000000.0);
      nanosleep(&buf, 0);
    }

    if (v14(&v13))
    {
      break;
    }

    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v7];
  }

  while (v11 < 30.0);
  objc_autoreleasePoolPop(v6);
  if ((v20[3] & 1) == 0)
  {
    v12 = nrdSharedLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateBrainClientImpl ping:];
    }

    v24 = NSDebugDescriptionErrorKey;
    v25 = @"timeout connecting to brain endpoint";
    (*(ping + 2))(ping, [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:101 userInfo:[NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1]]);
  }

  _Block_object_dispose(&v19, 8);
}

id __33__NRDUpdateBrainClientImpl_ping___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_2;
  v5[3] = &unk_100018548;
  v5[4] = a2;
  v6 = *(a1 + 40);
  return [v2 handleConnectionError:a2 method:v3 handler:v5];
}

uint64_t __33__NRDUpdateBrainClientImpl_ping___block_invoke_2(void *a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __33__NRDUpdateBrainClientImpl_ping___block_invoke_2_cold_1();
  }

  v3 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

id __33__NRDUpdateBrainClientImpl_ping___block_invoke_142(void *a1, uint64_t a2)
{
  v4 = nrdSharedLogger();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__NRDUpdateBrainClientImpl_ping___block_invoke_142_cold_1();
    }

    result = (*(a1[5] + 16))();
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pinging NeRD update brain succeeded", buf, 2u);
    }

    v7 = a1[4];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_143;
    v8[3] = &unk_1000185C0;
    v8[4] = v7;
    v8[5] = 0;
    v9 = *(a1 + 5);
    return [v7 getListenerEndpoint:v8];
  }

  return result;
}

NRDUpdateBrainClientImpl *__33__NRDUpdateBrainClientImpl_ping___block_invoke_143(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = nrdSharedLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Could not probe for NRDUpdateBrainInterfacePrivate2.", v9, 2u);
    }

    v5 = *(a1 + 40);
    result = (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v7 = [[NRDUpdateBrainClientImpl alloc] initWithEndpoint:a2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v8 = *(a1 + 48);
    v11 = *(a1 + 32);
    v10[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_150;
    v10[3] = &unk_100018598;
    v13 = v8;
    v12 = v7;
    [(NRDUpdateBrainClientImpl *)v7 ping:&off_100019B00 reply:v10];
    return v7;
  }

  return result;
}

id __33__NRDUpdateBrainClientImpl_ping___block_invoke_150(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = nrdSharedLogger();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NeRD update brain does not support NRDUpdateBrainInterfacePrivate2.", v10, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NeRD update brain supports NRDUpdateBrainInterfacePrivate2.", buf, 2u);
    }

    *(*(a1 + 32) + 8) = [a2 objectForKeyedSubscript:@"BrainVersion"];
    *(*(a1 + 32) + 16) = [a2 objectForKeyedSubscript:@"BrainTimeStamp"];
    *(*(a1 + 32) + 24) = [a2 objectForKeyedSubscript:@"BrainUUID"];
    *(*(a1 + 32) + 32) = [a2 objectForKeyedSubscript:@"DylibUUID"];
    *(*(a1 + 32) + 72) = &OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate2;
    [a2 objectForKeyedSubscript:@"__BrainProtocolVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(a1 + 32) + 80) = [objc_msgSend(a2 objectForKeyedSubscript:{@"__BrainProtocolVersion", "unsignedIntValue"}];
    }
  }

  v8 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  *(*(*(a1 + 64) + 8) + 24) = 1;
  return [*(a1 + 48) _invalidateConnection];
}

- (void)ping:(id)ping reply:(id)reply
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = nrdSharedLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Probing NeRD update brain for NRDUpdateBrainInterfacePrivate2...", &buf, 2u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke;
  v20[3] = &unk_100018570;
  v20[4] = self;
  v20[5] = reply;
  v20[6] = &v21;
  v20[7] = "[NRDUpdateBrainClientImpl ping:reply:]";
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_3;
  v19[3] = &unk_100018638;
  v19[4] = reply;
  v19[5] = &v21;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v20), "ping:reply:", ping, v19}];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_4;
  v17 = &unk_100018610;
  v18 = &v21;
  v8 = objc_autoreleasePoolPush();
  v9 = +[NSDate date];
  do
  {
    v10 = +[NSDate date];
    [+[NSRunLoop currentRunLoop](NSRunLoop runUntilDate:"runUntilDate:", [(NSDate *)v10 dateByAddingTimeInterval:0.125]];
    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v10];
    if (v11 < 0.125)
    {
      v12 = 0.125 - v11;
      buf.tv_sec = v12;
      buf.tv_nsec = ((v12 - v12) * 1000000000.0);
      nanosleep(&buf, 0);
    }

    if (v16(v15))
    {
      break;
    }

    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v9];
  }

  while (v13 < 30.0);
  objc_autoreleasePoolPop(v8);
  if ((v22[3] & 1) == 0)
  {
    v14 = nrdSharedLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateBrainClientImpl ping:reply:];
    }

    v26[0] = NSDebugDescriptionErrorKey;
    v26[1] = @"Protocol";
    v27[0] = @"timeout connecting to brain endpoint";
    v27[1] = @"NRDUpdateBrainInterfacePrivate2";
    v26[2] = @"Non-fatal";
    v27[2] = &__kCFBooleanTrue;
    (*(reply + 2))(reply, 0, [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:101 userInfo:[NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3]]);
  }

  _Block_object_dispose(&v21, 8);
}

id __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_2;
  v5[3] = &unk_100018548;
  v5[4] = a2;
  v6 = *(a1 + 40);
  return [v2 handleConnectionError:a2 method:v3 handler:v5];
}

uint64_t __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

uint64_t __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)run:(unint64_t)run options:(id)options callback:(id)callback
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __49__NRDUpdateBrainClientImpl_run_options_callback___block_invoke;
  v10[3] = &unk_100018688;
  v10[5] = callback;
  v10[6] = "[NRDUpdateBrainClientImpl run:options:callback:]";
  v10[4] = self;
  v9 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v10];
  if (protocol_isEqual(self->_brainProtocol, &OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate2))
  {
    [v9 run:run options:options callback:callback];
  }

  else
  {
    [v9 run:run callback:callback];
  }
}

id __49__NRDUpdateBrainClientImpl_run_options_callback___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __49__NRDUpdateBrainClientImpl_run_options_callback___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)getListenerEndpoint:(id)endpoint
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __48__NRDUpdateBrainClientImpl_getListenerEndpoint___block_invoke;
  v3[3] = &unk_100018688;
  v3[5] = endpoint;
  v3[6] = "[NRDUpdateBrainClientImpl getListenerEndpoint:]";
  v3[4] = self;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v3), "getListenerEndpoint:", endpoint}];
}

id __48__NRDUpdateBrainClientImpl_getListenerEndpoint___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __48__NRDUpdateBrainClientImpl_getListenerEndpoint___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)queryNeRDUpdate:(id)update build:(id)build options:(id)options callback:(id)callback
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __67__NRDUpdateBrainClientImpl_queryNeRDUpdate_build_options_callback___block_invoke;
  v6[3] = &unk_100018688;
  v6[5] = callback;
  v6[6] = "[NRDUpdateBrainClientImpl queryNeRDUpdate:build:options:callback:]";
  v6[4] = self;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v6), "queryNeRDUpdate:build:options:callback:", update, build, options, callback}];
}

id __67__NRDUpdateBrainClientImpl_queryNeRDUpdate_build_options_callback___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __67__NRDUpdateBrainClientImpl_queryNeRDUpdate_build_options_callback___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)downloadNeRDUpdate:(id)update options:(id)options progress:(id)progress completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke;
  v15[3] = &unk_100018688;
  v15[5] = completion;
  v15[6] = "[NRDUpdateBrainClientImpl downloadNeRDUpdate:options:progress:completion:]";
  v15[4] = self;
  v10 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_3;
  v14[3] = &unk_1000186B0;
  v14[4] = progress;
  v11 = [[NRDRemoteableBlock alloc] initWithProgressBlock:v14];
  v12 = v11;
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_4;
    v13[3] = &unk_1000186D8;
    v13[4] = completion;
    [v10 downloadNeRDUpdate:update options:options progress:v11 completion:v13];
  }

  else
  {
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"no remote object connection";
    (*(completion + 2))(completion, [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:105 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]]);
  }
}

id __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

uint64_t __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3.n128_f64[0] = [a2 unsignedIntegerValue] / 100.0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)installNeRDUpdate:(id)update options:(id)options progress:(id)progress completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke;
  v15[3] = &unk_100018688;
  v15[5] = completion;
  v15[6] = "[NRDUpdateBrainClientImpl installNeRDUpdate:options:progress:completion:]";
  v15[4] = self;
  v10 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_3;
  v14[3] = &unk_1000186B0;
  v14[4] = progress;
  v11 = [[NRDRemoteableBlock alloc] initWithProgressBlock:v14];
  v12 = v11;
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_4;
    v13[3] = &unk_1000186D8;
    v13[4] = completion;
    [v10 installNeRDUpdate:update options:options progress:v11 completion:v13];
  }

  else
  {
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"no remote object connection";
    (*(completion + 2))(completion, [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:105 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]]);
  }
}

id __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

uint64_t __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3.n128_f64[0] = [a2 unsignedIntegerValue] / 100.0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)purgeNeRDUpdate:(id)update
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __44__NRDUpdateBrainClientImpl_purgeNeRDUpdate___block_invoke;
  v3[3] = &unk_100018688;
  v3[5] = update;
  v3[6] = "[NRDUpdateBrainClientImpl purgeNeRDUpdate:]";
  v3[4] = self;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v3), "purgeNeRDUpdate:", update}];
}

id __44__NRDUpdateBrainClientImpl_purgeNeRDUpdate___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __44__NRDUpdateBrainClientImpl_purgeNeRDUpdate___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)finishNeRDUpdate:(id)update
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke;
  v4[3] = &unk_100018688;
  v4[5] = update;
  v4[6] = "[NRDUpdateBrainClientImpl finishNeRDUpdate:]";
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_3;
  v3[3] = &unk_100018768;
  v3[4] = update;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v4), "finishNeRDUpdate:", v3}];
}

id __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

uint64_t __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_4;
  v6 = &unk_100018740;
  v7 = a2;
  return (*(*(a1 + 32) + 16))();
}

void __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_5(id a1, int a2)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "sending NRD update brain the all-clear.", v3, 2u);
  }
}

- (void)calculateCurrentRequiredSpace:(id)space callback:(id)callback
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __67__NRDUpdateBrainClientImpl_calculateCurrentRequiredSpace_callback___block_invoke;
  v4[3] = &unk_100018688;
  v4[5] = callback;
  v4[6] = "[NRDUpdateBrainClientImpl calculateCurrentRequiredSpace:callback:]";
  v4[4] = self;
  [-[NRDUpdateBrainClientImpl _remoteInterfaceWithErrorHandler:](self _remoteInterfaceWithErrorHandler:{v4), "calculateCurrentRequiredSpace:callback:", space, callback}];
}

id __67__NRDUpdateBrainClientImpl_calculateCurrentRequiredSpace_callback___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __67__NRDUpdateBrainClientImpl_calculateCurrentRequiredSpace_callback___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

id __54__NRDUpdateBrainClientImpl_cancelNeRDUpdate_callback___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __54__NRDUpdateBrainClientImpl_cancelNeRDUpdate_callback___block_invoke_2;
  v6[3] = &unk_100018660;
  v3 = a1[4];
  v4 = a1[5];
  v6[4] = a2;
  v6[5] = v4;
  return [v3 handleConnectionError:a2 method:v2 handler:v6];
}

- (void)handleConnectionError:(uint64_t)a1 method:(uint64_t)a2 handler:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s - connection error: %{public}@", &v3, 0x16u);
}

@end