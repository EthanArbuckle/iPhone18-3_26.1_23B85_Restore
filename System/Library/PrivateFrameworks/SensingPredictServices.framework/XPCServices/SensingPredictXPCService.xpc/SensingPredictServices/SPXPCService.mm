@interface SPXPCService
+ (id)sharedInstance;
- (BOOL)_contextEngineShouldRun;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SPXPCService)init;
- (void)_contextEngineEnsureStarted;
- (void)_contextEngineEnsureStopped;
- (void)_prefsChanged;
- (void)_update;
- (void)_updateContextEventSignal;
- (void)_updateLocationCategory;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)contextEventUpdated:(unsigned __int8)a3 fusedState:(unsigned int)a4;
- (void)locationCategoryChanged:(unsigned __int8)a3;
- (void)scheduleLocationCategoryUpdate;
@end

@implementation SPXPCService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D58;
  block[3] = &unk_100010630;
  block[4] = a1;
  if (qword_1000161F0 != -1)
  {
    dispatch_once(&qword_1000161F0, block);
  }

  v2 = qword_1000161F8;

  return v2;
}

- (SPXPCService)init
{
  v12.receiver = self;
  v12.super_class = SPXPCService;
  v2 = [(SPXPCService *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SPXPCService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_prefsChangedNotifyToken = -1;
    v6 = v2->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003EA0;
    handler[3] = &unk_100010858;
    v7 = v2;
    v11 = v7;
    notify_register_dispatch("com.apple.SensingPredict.prefsChanged", &v2->_prefsChangedNotifyToken, v6, handler);
    v8 = v7;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SPServicesXPCConnection);
  [(SPServicesXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(SPServicesXPCConnection *)v6 setXpcCnx:v5];
  [(SPServicesXPCConnection *)v6 setXpcService:self];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SPXPCClientInterface];
  [v5 _setQueue:self->_dispatchQueue];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SPXPCServiceInterface];
  [v5 setExportedInterface:v11];

  [v5 setExportedObject:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000040B0;
  v13[3] = &unk_1000106E8;
  v13[4] = self;
  v13[5] = v6;
  [v5 setInvalidationHandler:v13];
  [v5 setRemoteObjectInterface:v10];
  [v5 resume];
  if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
  {
    sub_100009DF8(v5);
  }

  return 1;
}

- (void)_prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = CFPrefs_GetInt64() != 0;
  prefsOverrideLocationCategory = self->_prefsOverrideLocationCategory;
  if (prefsOverrideLocationCategory != v3)
  {
    if (dword_100015F40 <= 10)
    {
      if (dword_100015F40 != -1)
      {
LABEL_4:
        v5 = "no";
        if (prefsOverrideLocationCategory)
        {
          v6 = "yes";
        }

        else
        {
          v6 = "no";
        }

        if (v3)
        {
          v5 = "yes";
        }

        v11 = v6;
        v12 = v5;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefsOverrideLocationCategory) = self->_prefsOverrideLocationCategory;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_prefsOverrideLocationCategory = v3;
    [(SPXPCService *)self scheduleLocationCategoryUpdate:v11];
  }

  Int64 = CFPrefs_GetInt64();
  prefsLocationCategory = self->_prefsLocationCategory;
  if (Int64 == prefsLocationCategory)
  {
    goto LABEL_25;
  }

  if (dword_100015F40 <= 10)
  {
    if (dword_100015F40 != -1)
    {
LABEL_15:
      if (prefsLocationCategory > 9)
      {
        v9 = @"?";
      }

      else
      {
        v9 = off_1000108E0[prefsLocationCategory];
      }

      if (Int64 > 9u)
      {
        v10 = @"?";
      }

      else
      {
        v10 = off_1000108E0[Int64 & 0xF];
      }

      v11 = v9;
      v12 = v10;
      LogPrintF();
      goto LABEL_24;
    }

    if (_LogCategory_Initialize())
    {
      LODWORD(prefsLocationCategory) = self->_prefsLocationCategory;
      goto LABEL_15;
    }
  }

LABEL_24:
  self->_prefsLocationCategory = Int64;
  [(SPXPCService *)self scheduleLocationCategoryUpdate:v11];
LABEL_25:
  if (Int64)
  {
    [(SPXPCService *)self _update];
  }
}

- (void)_update
{
  if ([(SPXPCService *)self _contextEngineShouldRun])
  {

    [(SPXPCService *)self _contextEngineEnsureStarted];
  }

  else
  {

    [(SPXPCService *)self _contextEngineEnsureStopped];
  }
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_100015F40 <= 20)
  {
    if (dword_100015F40 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100009E3C(v4);
      v4 = v6;
    }
  }

  [v4 xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
  [(SPXPCService *)self _update];
}

- (BOOL)_contextEngineShouldRun
{
  v2 = [(NSMutableSet *)self->_xpcConnections count];
  if (v2)
  {
    if (_os_feature_enabled_impl())
    {
      LOBYTE(v2) = 1;
      return v2;
    }

    if (dword_100015F40 > 30)
    {
LABEL_8:
      LOBYTE(v2) = 0;
      return v2;
    }

    if (dword_100015F40 != -1 || (LODWORD(v2) = _LogCategory_Initialize(), v2))
    {
      sub_100009EA0();
      goto LABEL_8;
    }
  }

  return v2;
}

- (void)_contextEngineEnsureStarted
{
  contextEngine = self->_contextEngine;
  if (!contextEngine)
  {
    v4 = [[SPContextEngine alloc] initWithQueue:self->_dispatchQueue];
    v5 = self->_contextEngine;
    self->_contextEngine = v4;

    [(SPContextEngine *)self->_contextEngine activate];
    contextEngine = self->_contextEngine;
  }

  v6 = [(SPContextMonitor *)self->_contextMonitor contextChangeFlags];

  [(SPContextEngine *)contextEngine processContextChangeFlags:v6];
}

- (void)_contextEngineEnsureStopped
{
  [(SPContextEngine *)self->_contextEngine invalidate];
  contextEngine = self->_contextEngine;
  self->_contextEngine = 0;
}

- (void)locationCategoryChanged:(unsigned __int8)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_locationCategory = a3;

  [(SPXPCService *)self scheduleLocationCategoryUpdate];
}

- (void)_updateContextEventSignal
{
  p_currentContext = &self->_currentContext;
  currentContext = self->_currentContext;
  *(p_currentContext + 16) = 0;
  if (!currentContext)
  {
    v5 = objc_alloc_init(SPContext);
    v6 = *p_currentContext;
    *p_currentContext = v5;

    currentContext = *p_currentContext;
  }

  v7 = 48;
  if (self->_prefsOverrideLocationCategory)
  {
    v7 = 57;
  }

  v8 = *(&self->super.isa + v7);
  if (v8 != [(SPContext *)currentContext locationCategory])
  {
    p_spFusedState = &self->_spFusedState;
    if (self->_spFusedState)
    {
      if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
      {
        sub_100009EBC(p_currentContext, v8, &self->_spFusedState);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = self->_xpcConnections;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * i) contextMonitorReportContextSignalUpdated:*p_currentContext contextFusedState:{*p_spFusedState, v15}];
          }

          v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)contextEventUpdated:(unsigned __int8)a3 fusedState:(unsigned int)a4
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_conextEventSignalPending)
  {
    self->_conextEventSignalPending = 1;
    self->_locationCategory = a3;
    self->_spFusedState = a4;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000047A0;
    block[3] = &unk_100010658;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)scheduleLocationCategoryUpdate
{
  if (!self->_locationUpdatePending)
  {
    self->_locationUpdatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004830;
    block[3] = &unk_100010658;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_updateLocationCategory
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_currentContext = &self->_currentContext;
  currentContext = self->_currentContext;
  self->_locationUpdatePending = 0;
  if (!currentContext)
  {
    v5 = objc_alloc_init(SPContext);
    v6 = *p_currentContext;
    *p_currentContext = v5;

    currentContext = *p_currentContext;
  }

  v7 = 48;
  if (self->_prefsOverrideLocationCategory)
  {
    v7 = 57;
  }

  v8 = *(&self->super.isa + v7);
  if (v8 != [(SPContext *)currentContext locationCategory])
  {
    if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
    {
      sub_100009F7C(&self->_currentContext, v8);
    }

    [(SPContext *)self->_currentContext setLocationCategory:v8];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_xpcConnections;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * i) contextMonitorReportLocationChanged:{*p_currentContext, v14}];
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

@end