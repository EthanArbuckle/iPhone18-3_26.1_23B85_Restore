@interface CSDClientManager
- (BOOL)isClientAllowed:(id)a3;
- (BOOL)isLocalClientActive;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CSDClient)currentClient;
- (CSDClientManager)initWithSerialQueue:(id)a3;
- (NSArray)clients;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (id)_connectionEndedHandlerForXPCClient:(id)a3 withCustomBlock:(id)a4;
- (id)_updatedQOSBlockForBlock:(id)a3;
- (id)_xpcClientForConnection:(id)a3;
- (id)asynchronousExportedObjectProxy;
- (id)clientsEntitledForCapability:(id)a3;
- (id)clientsPassingTest:(id)a3;
- (id)exportedObject;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)synchronousExportedObjectProxy;
- (void)_performBlock:(id)a3 onClients:(id)a4;
- (void)_performBlock:(id)a3 onClients:(id)a4 coalescedByIdentifier:(id)a5;
- (void)addClient:(id)a3;
- (void)addLocalClientObject:(id)a3;
- (void)dealloc;
- (void)filterClientsEntitledForCapability:(id)a3 andPerformBlock:(id)a4;
- (void)filterClientsUsingPredicate:(id)a3 andPerformBlock:(id)a4;
- (void)filterClientsUsingPredicate:(id)a3 andPerformBlock:(id)a4 coalescedByIdentifier:(id)a5;
- (void)invalidate;
- (void)performBlockOnClients:(id)a3;
- (void)performBlockOnClients:(id)a3 coalescedByIdentifier:(id)a4;
- (void)performBlockOnQueue:(id)a3 andWait:(BOOL)a4;
- (void)removeClient:(id)a3;
- (void)removeLocalClientObject:(id)a3;
- (void)setAsynchronousExportedObjectProxy:(id)a3;
- (void)setExportedInterface:(id)a3;
- (void)setExportedObject:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)setLocalClientActive:(BOOL)a3;
- (void)setRemoteObjectInterface:(id)a3;
- (void)setSynchronousExportedObjectProxy:(id)a3;
- (void)startListeningOnMachServiceWithName:(id)a3;
@end

@implementation CSDClientManager

- (NSXPCInterface)remoteObjectInterface
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  remoteObjectInterface = self->_remoteObjectInterface;

  return remoteObjectInterface;
}

- (BOOL)isLocalClientActive
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_localClientActive;
}

- (CSDClient)currentClient
{
  v4 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v4);

  if (![(CSDClientManager *)self isLocalClientActive])
  {
    v13 = +[NSXPCConnection currentConnection];
    if (v13)
    {
      v14 = [(CSDClientManager *)self clientsByObject];
      v12 = [v14 objectForKey:v13];

      if (v12)
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = [NSString stringWithFormat:@"We have an active XPC connection but no corresponding CSDClient"];
      NSLog(@"** TUAssertion failure: %@", v15);

      if (_TUAssertShouldCrashApplication())
      {
        v16 = +[NSAssertionHandler currentHandler];
        [v16 handleFailureInMethod:a2 object:self file:@"CSDClientManager.m" lineNumber:136 description:@"We have an active XPC connection but no corresponding CSDClient"];
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(CSDClientManager *)self clientsByObject];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [(CSDClientManager *)self clientsByObject];
      v12 = [v11 objectForKey:v10];

      if (![v12 isRemote])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (NSXPCInterface)exportedInterface
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  exportedInterface = self->_exportedInterface;

  return exportedInterface;
}

- (id)exportedObject
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  exportedObject = self->_exportedObject;

  return exportedObject;
}

- (id)interruptionHandler
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(self->_interruptionHandler);

  return v4;
}

- (id)invalidationHandler
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(self->_invalidationHandler);

  return v4;
}

- (NSArray)clients
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDClientManager *)self clientsByObject];
  v5 = NSAllMapTableValues(v4);

  return v5;
}

- (CSDClientManager)initWithSerialQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSDClientManager;
  v6 = [(CSDClientManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    dispatch_queue_set_specific(v7->_queue, [(CSDClientManager *)v7 queueContext], [(CSDClientManager *)v7 queueContext], 0);
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    clientsByObject = v7->_clientsByObject;
    v7->_clientsByObject = v8;
  }

  return v7;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_queue, [(CSDClientManager *)self queueContext], 0, 0);
  v3.receiver = self;
  v3.super_class = CSDClientManager;
  [(CSDClientManager *)&v3 dealloc];
}

- (void)setLocalClientActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_localClientActive != v3)
  {
    self->_localClientActive = v3;
  }
}

- (void)setRemoteObjectInterface:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  remoteObjectInterface = self->_remoteObjectInterface;
  self->_remoteObjectInterface = v4;
}

- (void)setExportedInterface:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  exportedInterface = self->_exportedInterface;
  self->_exportedInterface = v4;
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_retainBlock(v4);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v6;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_retainBlock(v4);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v6;
}

- (id)asynchronousExportedObjectProxy
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  asynchronousExportedObjectProxy = self->_asynchronousExportedObjectProxy;

  return asynchronousExportedObjectProxy;
}

- (void)setAsynchronousExportedObjectProxy:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  asynchronousExportedObjectProxy = self->_asynchronousExportedObjectProxy;
  self->_asynchronousExportedObjectProxy = v4;
}

- (id)synchronousExportedObjectProxy
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  synchronousExportedObjectProxy = self->_synchronousExportedObjectProxy;

  return synchronousExportedObjectProxy;
}

- (void)setSynchronousExportedObjectProxy:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  synchronousExportedObjectProxy = self->_synchronousExportedObjectProxy;
  self->_synchronousExportedObjectProxy = v4;
}

- (void)setExportedObject:(id)a3
{
  v11 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_exportedObject != v11)
  {
    objc_storeStrong(&self->_exportedObject, a3);
    if (self->_exportedObject)
    {
      v6 = [[CSDClientManagerExportedObjectProxy alloc] initWithExportedObject:self->_exportedObject];
      [(CSDClientManagerExportedObjectProxy *)v6 setClientManager:self];
      asynchronousExportedObjectProxy = self->_asynchronousExportedObjectProxy;
      self->_asynchronousExportedObjectProxy = v6;
      v8 = v6;

      v9 = [[CSDClientManagerExportedObjectProxy alloc] initWithExportedObject:self->_exportedObject];
      [(CSDClientManagerExportedObjectProxy *)v9 setClientManager:self];
      [(CSDClientManagerExportedObjectProxy *)v9 setSynchronous:1];
      synchronousExportedObjectProxy = self->_synchronousExportedObjectProxy;
      self->_synchronousExportedObjectProxy = v9;
    }
  }
}

- (BOOL)isClientAllowed:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDClientManager *)self requiredConnectionCapability];
  if (v6)
  {
    v7 = [(CSDClientManager *)self requiredConnectionCapability];
    v8 = [v4 isEntitledForCapability:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)startListeningOnMachServiceWithName:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDClientManager *)self setMachServiceName:v4];
  v6 = [[NSXPCListener alloc] initWithMachServiceName:v4];

  [(CSDClientManager *)self setXpcListener:v6];
  v7 = [(CSDClientManager *)self xpcListener];
  [v7 setDelegate:self];

  v8 = [(CSDClientManager *)self xpcListener];
  [v8 resume];
}

- (void)invalidate
{
  v3 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDClientManager *)self xpcListener];
  [v4 invalidate];

  [(CSDClientManager *)self setExportedObject:0];
  [(CSDClientManager *)self setAsynchronousExportedObjectProxy:0];

  [(CSDClientManager *)self setSynchronousExportedObjectProxy:0];
}

- (void)addLocalClientObject:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [CSDClient alloc];
  v7 = [(CSDClientManager *)self queue];
  v8 = [(CSDClient *)v6 initWithObject:v4 queue:v7];

  [(CSDClientManager *)self addClient:v8];
}

- (void)removeLocalClientObject:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDClientManager *)self clientsByObject];
  v7 = [v6 objectForKey:v4];

  [(CSDClientManager *)self removeClient:v7];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = [(CSDClientManager *)self clientsByObject];
  v6 = [v4 object];
  [v7 setObject:v4 forKey:v6];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v7 = [(CSDClientManager *)self clientsByObject];
  v6 = [v4 object];

  [v7 removeObjectForKey:v6];
}

- (id)clientsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDClientManager *)self clients];
  if (v4)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100260448;
    v10[3] = &unk_10061FDB0;
    v11 = v4;
    v7 = [NSPredicate predicateWithBlock:v10];
    v8 = [v6 filteredArrayUsingPredicate:v7];

    v6 = v8;
  }

  return v6;
}

- (id)clientsEntitledForCapability:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_10020A620(v4);

  v7 = [(CSDClientManager *)self clientsPassingTest:v6];

  return v7;
}

- (void)performBlockOnClients:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDClientManager *)self clients];
  [(CSDClientManager *)self _performBlock:v4 onClients:v6 coalescedByIdentifier:0];
}

- (void)filterClientsUsingPredicate:(id)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDClientManager *)self clientsPassingTest:v7];

  [(CSDClientManager *)self _performBlock:v6 onClients:v9 coalescedByIdentifier:0];
}

- (void)filterClientsEntitledForCapability:(id)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_10020A620(v7);

  [(CSDClientManager *)self filterClientsUsingPredicate:v9 andPerformBlock:v6];
}

- (void)performBlockOnClients:(id)a3 coalescedByIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDClientManager *)self clients];
  [(CSDClientManager *)self _performBlock:v7 onClients:v9 coalescedByIdentifier:v6];
}

- (void)filterClientsUsingPredicate:(id)a3 andPerformBlock:(id)a4 coalescedByIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(CSDClientManager *)self clientsPassingTest:v10];

  [(CSDClientManager *)self _performBlock:v9 onClients:v12 coalescedByIdentifier:v8];
}

- (void)performBlockOnQueue:(id)a3 andWait:(BOOL)a4
{
  v4 = a4;
  block = a3;
  specific = dispatch_get_specific([(CSDClientManager *)self queueContext]);
  if (specific == [(CSDClientManager *)self queueContext])
  {
    block[2]();
  }

  else
  {
    v7 = [(CSDClientManager *)self queue];
    v8 = v7;
    if (v4)
    {
      dispatch_sync(v7, block);
    }

    else
    {
      dispatch_async(v7, block);
    }
  }
}

- (void)_performBlock:(id)a3 onClients:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) performBlock:{v6, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_performBlock:(id)a3 onClients:(id)a4 coalescedByIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (v10)
        {
          [v17 performBlock:v8 coalescedByIdentifier:v10];
        }

        else
        {
          [v17 performBlock:{v8, v18}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (id)_xpcClientForConnection:(id)a3
{
  v4 = a3;
  v5 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [CSDXPCClient alloc];
  v7 = [(CSDClientManager *)self queue];
  v8 = [(CSDXPCClient *)v6 initWithConnection:v4 queue:v7];

  [(CSDXPCClient *)v8 setSupportsClientAssertions:[(CSDClientManager *)self supportsClientAssertions]];
  v9 = [(CSDClientManager *)self remoteObjectInterface];
  [v4 setRemoteObjectInterface:v9];

  v10 = [(CSDClientManager *)self exportedInterface];
  [v4 setExportedInterface:v10];

  v11 = [(CSDClientManager *)self exportedObject];
  [v4 setExportedObject:v11];

  v12 = [(CSDClientManager *)self interruptionHandler];
  v13 = [(CSDClientManager *)self _connectionEndedHandlerForXPCClient:v8 withCustomBlock:v12];
  [v4 setInterruptionHandler:v13];

  v14 = [(CSDClientManager *)self invalidationHandler];
  v15 = [(CSDClientManager *)self _connectionEndedHandlerForXPCClient:v8 withCustomBlock:v14];
  [v4 setInvalidationHandler:v15];

  v16 = [(CSDClientManager *)self queue];
  [v4 _setQueue:v16];

  return v8;
}

- (id)_connectionEndedHandlerForXPCClient:(id)a3 withCustomBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(v8);

  objc_initWeak(&location, v7);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100260DD4;
  v12[3] = &unk_10061FE00;
  v12[4] = self;
  objc_copyWeak(&v14, &location);
  v13 = v6;
  v9 = v6;
  v10 = objc_retainBlock(v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

- (id)_updatedQOSBlockForBlock:(id)a3
{
  v3 = a3;
  if (qos_class_self() >= QOS_CLASS_DEFAULT)
  {
    v4 = qos_class_self();
  }

  else
  {
    v4 = QOS_CLASS_DEFAULT;
  }

  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v4, 0, v3);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDClientManager *)self machServiceName];
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "machServiceName: %@ newConnection: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  v10 = [(CSDClientManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100261280;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v15 = v7;
  v16 = buf;
  v11 = v7;
  dispatch_sync(v10, block);

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v12 & 1;
}

@end