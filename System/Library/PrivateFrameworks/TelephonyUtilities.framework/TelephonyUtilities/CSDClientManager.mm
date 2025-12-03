@interface CSDClientManager
- (BOOL)isClientAllowed:(id)allowed;
- (BOOL)isLocalClientActive;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CSDClient)currentClient;
- (CSDClientManager)initWithSerialQueue:(id)queue;
- (NSArray)clients;
- (NSXPCInterface)exportedInterface;
- (NSXPCInterface)remoteObjectInterface;
- (id)_connectionEndedHandlerForXPCClient:(id)client withCustomBlock:(id)block;
- (id)_updatedQOSBlockForBlock:(id)block;
- (id)_xpcClientForConnection:(id)connection;
- (id)asynchronousExportedObjectProxy;
- (id)clientsEntitledForCapability:(id)capability;
- (id)clientsPassingTest:(id)test;
- (id)exportedObject;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)synchronousExportedObjectProxy;
- (void)_performBlock:(id)block onClients:(id)clients;
- (void)_performBlock:(id)block onClients:(id)clients coalescedByIdentifier:(id)identifier;
- (void)addClient:(id)client;
- (void)addLocalClientObject:(id)object;
- (void)dealloc;
- (void)filterClientsEntitledForCapability:(id)capability andPerformBlock:(id)block;
- (void)filterClientsUsingPredicate:(id)predicate andPerformBlock:(id)block;
- (void)filterClientsUsingPredicate:(id)predicate andPerformBlock:(id)block coalescedByIdentifier:(id)identifier;
- (void)invalidate;
- (void)performBlockOnClients:(id)clients;
- (void)performBlockOnClients:(id)clients coalescedByIdentifier:(id)identifier;
- (void)performBlockOnQueue:(id)queue andWait:(BOOL)wait;
- (void)removeClient:(id)client;
- (void)removeLocalClientObject:(id)object;
- (void)setAsynchronousExportedObjectProxy:(id)proxy;
- (void)setExportedInterface:(id)interface;
- (void)setExportedObject:(id)object;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setLocalClientActive:(BOOL)active;
- (void)setRemoteObjectInterface:(id)interface;
- (void)setSynchronousExportedObjectProxy:(id)proxy;
- (void)startListeningOnMachServiceWithName:(id)name;
@end

@implementation CSDClientManager

- (NSXPCInterface)remoteObjectInterface
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteObjectInterface = self->_remoteObjectInterface;

  return remoteObjectInterface;
}

- (BOOL)isLocalClientActive
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_localClientActive;
}

- (CSDClient)currentClient
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(CSDClientManager *)self isLocalClientActive])
  {
    v13 = +[NSXPCConnection currentConnection];
    if (v13)
    {
      clientsByObject = [(CSDClientManager *)self clientsByObject];
      v12 = [clientsByObject objectForKey:v13];

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
  clientsByObject2 = [(CSDClientManager *)self clientsByObject];
  v6 = [clientsByObject2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(clientsByObject2);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      clientsByObject3 = [(CSDClientManager *)self clientsByObject];
      v12 = [clientsByObject3 objectForKey:v10];

      if (![v12 isRemote])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [clientsByObject2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  exportedInterface = self->_exportedInterface;

  return exportedInterface;
}

- (id)exportedObject
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  exportedObject = self->_exportedObject;

  return exportedObject;
}

- (id)interruptionHandler
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_retainBlock(self->_interruptionHandler);

  return v4;
}

- (id)invalidationHandler
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_retainBlock(self->_invalidationHandler);

  return v4;
}

- (NSArray)clients
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientsByObject = [(CSDClientManager *)self clientsByObject];
  v5 = NSAllMapTableValues(clientsByObject);

  return v5;
}

- (CSDClientManager)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CSDClientManager;
  v6 = [(CSDClientManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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

- (void)setLocalClientActive:(BOOL)active
{
  activeCopy = active;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_localClientActive != activeCopy)
  {
    self->_localClientActive = activeCopy;
  }
}

- (void)setRemoteObjectInterface:(id)interface
{
  interfaceCopy = interface;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteObjectInterface = self->_remoteObjectInterface;
  self->_remoteObjectInterface = interfaceCopy;
}

- (void)setExportedInterface:(id)interface
{
  interfaceCopy = interface;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  exportedInterface = self->_exportedInterface;
  self->_exportedInterface = interfaceCopy;
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_retainBlock(handlerCopy);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v6;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_retainBlock(handlerCopy);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v6;
}

- (id)asynchronousExportedObjectProxy
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  asynchronousExportedObjectProxy = self->_asynchronousExportedObjectProxy;

  return asynchronousExportedObjectProxy;
}

- (void)setAsynchronousExportedObjectProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  asynchronousExportedObjectProxy = self->_asynchronousExportedObjectProxy;
  self->_asynchronousExportedObjectProxy = proxyCopy;
}

- (id)synchronousExportedObjectProxy
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  synchronousExportedObjectProxy = self->_synchronousExportedObjectProxy;

  return synchronousExportedObjectProxy;
}

- (void)setSynchronousExportedObjectProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  synchronousExportedObjectProxy = self->_synchronousExportedObjectProxy;
  self->_synchronousExportedObjectProxy = proxyCopy;
}

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_exportedObject != objectCopy)
  {
    objc_storeStrong(&self->_exportedObject, object);
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

- (BOOL)isClientAllowed:(id)allowed
{
  allowedCopy = allowed;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  requiredConnectionCapability = [(CSDClientManager *)self requiredConnectionCapability];
  if (requiredConnectionCapability)
  {
    requiredConnectionCapability2 = [(CSDClientManager *)self requiredConnectionCapability];
    v8 = [allowedCopy isEntitledForCapability:requiredConnectionCapability2];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)startListeningOnMachServiceWithName:(id)name
{
  nameCopy = name;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDClientManager *)self setMachServiceName:nameCopy];
  v6 = [[NSXPCListener alloc] initWithMachServiceName:nameCopy];

  [(CSDClientManager *)self setXpcListener:v6];
  xpcListener = [(CSDClientManager *)self xpcListener];
  [xpcListener setDelegate:self];

  xpcListener2 = [(CSDClientManager *)self xpcListener];
  [xpcListener2 resume];
}

- (void)invalidate
{
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  xpcListener = [(CSDClientManager *)self xpcListener];
  [xpcListener invalidate];

  [(CSDClientManager *)self setExportedObject:0];
  [(CSDClientManager *)self setAsynchronousExportedObjectProxy:0];

  [(CSDClientManager *)self setSynchronousExportedObjectProxy:0];
}

- (void)addLocalClientObject:(id)object
{
  objectCopy = object;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [CSDClient alloc];
  queue2 = [(CSDClientManager *)self queue];
  v8 = [(CSDClient *)v6 initWithObject:objectCopy queue:queue2];

  [(CSDClientManager *)self addClient:v8];
}

- (void)removeLocalClientObject:(id)object
{
  objectCopy = object;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientsByObject = [(CSDClientManager *)self clientsByObject];
  v7 = [clientsByObject objectForKey:objectCopy];

  [(CSDClientManager *)self removeClient:v7];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientsByObject = [(CSDClientManager *)self clientsByObject];
  object = [clientCopy object];
  [clientsByObject setObject:clientCopy forKey:object];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clientsByObject = [(CSDClientManager *)self clientsByObject];
  object = [clientCopy object];

  [clientsByObject removeObjectForKey:object];
}

- (id)clientsPassingTest:(id)test
{
  testCopy = test;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clients = [(CSDClientManager *)self clients];
  if (testCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100260448;
    v10[3] = &unk_10061FDB0;
    v11 = testCopy;
    v7 = [NSPredicate predicateWithBlock:v10];
    v8 = [clients filteredArrayUsingPredicate:v7];

    clients = v8;
  }

  return clients;
}

- (id)clientsEntitledForCapability:(id)capability
{
  capabilityCopy = capability;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_10020A620(capabilityCopy);

  v7 = [(CSDClientManager *)self clientsPassingTest:v6];

  return v7;
}

- (void)performBlockOnClients:(id)clients
{
  clientsCopy = clients;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clients = [(CSDClientManager *)self clients];
  [(CSDClientManager *)self _performBlock:clientsCopy onClients:clients coalescedByIdentifier:0];
}

- (void)filterClientsUsingPredicate:(id)predicate andPerformBlock:(id)block
{
  blockCopy = block;
  predicateCopy = predicate;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [(CSDClientManager *)self clientsPassingTest:predicateCopy];

  [(CSDClientManager *)self _performBlock:blockCopy onClients:v9 coalescedByIdentifier:0];
}

- (void)filterClientsEntitledForCapability:(id)capability andPerformBlock:(id)block
{
  blockCopy = block;
  capabilityCopy = capability;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_10020A620(capabilityCopy);

  [(CSDClientManager *)self filterClientsUsingPredicate:v9 andPerformBlock:blockCopy];
}

- (void)performBlockOnClients:(id)clients coalescedByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientsCopy = clients;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  clients = [(CSDClientManager *)self clients];
  [(CSDClientManager *)self _performBlock:clientsCopy onClients:clients coalescedByIdentifier:identifierCopy];
}

- (void)filterClientsUsingPredicate:(id)predicate andPerformBlock:(id)block coalescedByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  predicateCopy = predicate;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [(CSDClientManager *)self clientsPassingTest:predicateCopy];

  [(CSDClientManager *)self _performBlock:blockCopy onClients:v12 coalescedByIdentifier:identifierCopy];
}

- (void)performBlockOnQueue:(id)queue andWait:(BOOL)wait
{
  waitCopy = wait;
  block = queue;
  specific = dispatch_get_specific([(CSDClientManager *)self queueContext]);
  if (specific == [(CSDClientManager *)self queueContext])
  {
    block[2]();
  }

  else
  {
    queue = [(CSDClientManager *)self queue];
    v8 = queue;
    if (waitCopy)
    {
      dispatch_sync(queue, block);
    }

    else
    {
      dispatch_async(queue, block);
    }
  }
}

- (void)_performBlock:(id)block onClients:(id)clients
{
  blockCopy = block;
  clientsCopy = clients;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = clientsCopy;
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

        [*(*(&v14 + 1) + 8 * v13) performBlock:{blockCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_performBlock:(id)block onClients:(id)clients coalescedByIdentifier:(id)identifier
{
  blockCopy = block;
  clientsCopy = clients;
  identifierCopy = identifier;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = clientsCopy;
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
        if (identifierCopy)
        {
          [v17 performBlock:blockCopy coalescedByIdentifier:identifierCopy];
        }

        else
        {
          [v17 performBlock:{blockCopy, v18}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (id)_xpcClientForConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [CSDXPCClient alloc];
  queue2 = [(CSDClientManager *)self queue];
  v8 = [(CSDXPCClient *)v6 initWithConnection:connectionCopy queue:queue2];

  [(CSDXPCClient *)v8 setSupportsClientAssertions:[(CSDClientManager *)self supportsClientAssertions]];
  remoteObjectInterface = [(CSDClientManager *)self remoteObjectInterface];
  [connectionCopy setRemoteObjectInterface:remoteObjectInterface];

  exportedInterface = [(CSDClientManager *)self exportedInterface];
  [connectionCopy setExportedInterface:exportedInterface];

  exportedObject = [(CSDClientManager *)self exportedObject];
  [connectionCopy setExportedObject:exportedObject];

  interruptionHandler = [(CSDClientManager *)self interruptionHandler];
  v13 = [(CSDClientManager *)self _connectionEndedHandlerForXPCClient:v8 withCustomBlock:interruptionHandler];
  [connectionCopy setInterruptionHandler:v13];

  invalidationHandler = [(CSDClientManager *)self invalidationHandler];
  v15 = [(CSDClientManager *)self _connectionEndedHandlerForXPCClient:v8 withCustomBlock:invalidationHandler];
  [connectionCopy setInvalidationHandler:v15];

  queue3 = [(CSDClientManager *)self queue];
  [connectionCopy _setQueue:queue3];

  return v8;
}

- (id)_connectionEndedHandlerForXPCClient:(id)client withCustomBlock:(id)block
{
  blockCopy = block;
  clientCopy = client;
  queue = [(CSDClientManager *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, clientCopy);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100260DD4;
  v12[3] = &unk_10061FE00;
  v12[4] = self;
  objc_copyWeak(&v14, &location);
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = objc_retainBlock(v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

- (id)_updatedQOSBlockForBlock:(id)block
{
  blockCopy = block;
  if (qos_class_self() >= QOS_CLASS_DEFAULT)
  {
    v4 = qos_class_self();
  }

  else
  {
    v4 = QOS_CLASS_DEFAULT;
  }

  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v4, 0, blockCopy);

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    machServiceName = [(CSDClientManager *)self machServiceName];
    *buf = 138412546;
    *&buf[4] = machServiceName;
    *&buf[12] = 2112;
    *&buf[14] = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "machServiceName: %@ newConnection: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  queue = [(CSDClientManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100261280;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v15 = connectionCopy;
  v16 = buf;
  v11 = connectionCopy;
  dispatch_sync(queue, block);

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v12 & 1;
}

@end