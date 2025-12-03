@interface ASMServicesDaemon
+ (id)sharedInstance;
- (ASMServicesDaemon)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_scheduleUpdate;
- (void)_xpcConnectionInterrupted:(id)interrupted;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation ASMServicesDaemon

+ (id)sharedInstance
{
  if (qword_10001A630 != -1)
  {
    sub_10000966C();
  }

  v3 = qword_10001A628;

  return v3;
}

- (ASMServicesDaemon)init
{
  v8.receiver = self;
  v8.super_class = ASMServicesDaemon;
  v2 = [(ASMServicesDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ASMServicesDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_prefsChangedNotifyToken = -1;
    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v44 = 0;
  NSAppendPrintF_safe();
  v4 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = CFPrefs_CopyKeys();
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  obj = self;
  v8 = 0;
  v9 = *v41;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v41 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v40 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = v4;
        v27 = v11;
        v29 = CFPrefs_CopyTypedValue();
        NSAppendPrintF();
        v12 = v4;

        ++v8;
        v4 = v12;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
  }

  while (v7);

  if (v8 >= 1)
  {
    v38 = v4;
    NSAppendPrintF();
    v5 = v4;
    v4 = v4;
    self = obj;
LABEL_12:

    goto LABEL_14;
  }

  self = obj;
LABEL_14:
  v13 = [(NSMutableSet *)self->_xpcConnections count:v27];
  if (v13)
  {
    v37 = v4;
    v28 = v13;
    NSAppendPrintF();
    v14 = v4;

    v4 = v14;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obja = self->_xpcConnections;
  v15 = [(NSMutableSet *)obja countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obja);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        xpcCnx = [v19 xpcCnx];
        processIdentifier = [xpcCnx processIdentifier];
        entitled = [v19 entitled];
        v23 = "no";
        if (entitled)
        {
          v23 = "yes";
        }

        v28 = processIdentifier;
        v30 = v23;
        NSAppendPrintF();
        v24 = v4;

        NSAppendPrintF();
        v4 = v24;
      }

      v16 = [(NSMutableSet *)obja countByEnumeratingWithState:&v33 objects:v45 count:16, processIdentifier, v30];
    }

    while (v16);
  }

  NSAppendPrintF();
  v25 = v4;

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006F2C;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.AccessorySensorManager"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000070E8;
    handler[3] = &unk_100014650;
    handler[4] = self;
    notify_register_dispatch("com.apple.AccessorySensorManager.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  if (!self->_stateHandle)
  {
    v6 = self->_dispatchQueue;
    self->_stateHandle = os_state_add_handler();
  }

  notify_post("com.apple.AccessorySensorManager.daemonStarted");
  [(ASMServicesDaemon *)self _prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000071E0;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_alloc_init(ASMServicesXPCConnection);
  [(ASMServicesXPCConnection *)v6 setDaemon:self];
  [(ASMServicesXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(ASMServicesXPCConnection *)v6 setXpcCnx:connectionCopy];
  [(ASMServicesXPCConnection *)v6 setConnectionID:ASMXPCGetNextConnectionID()];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASMServicesXPCClientInterface];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASMServicesXPCDaemonInterface];
  [connectionCopy setExportedInterface:v11];

  [connectionCopy setExportedObject:v6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007478;
  v14[3] = &unk_1000144A0;
  v14[4] = self;
  v14[5] = v6;
  [connectionCopy setInterruptionHandler:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007484;
  v13[3] = &unk_1000144A0;
  v13[4] = self;
  v13[5] = v6;
  [connectionCopy setInvalidationHandler:v13];
  [connectionCopy setRemoteObjectInterface:v10];
  [connectionCopy resume];
  if (dword_10001A478 <= 20 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_1000096D4(connectionCopy);
  }

  return 1;
}

- (void)_scheduleUpdate
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000751C;
    block[3] = &unk_1000143A0;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_10001A478 <= 20)
  {
    if (dword_10001A478 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_100009718(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
  [(ASMServicesDaemon *)self _update];
}

- (void)_xpcConnectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v5 = interruptedCopy;
  if (dword_10001A478 <= 20)
  {
    if (dword_10001A478 != -1 || (v4 = _LogCategory_Initialize(), interruptedCopy = v5, v4))
    {
      sub_10000977C(interruptedCopy);
      interruptedCopy = v5;
    }
  }

  [interruptedCopy xpcConnectionInterrupted];
}

@end