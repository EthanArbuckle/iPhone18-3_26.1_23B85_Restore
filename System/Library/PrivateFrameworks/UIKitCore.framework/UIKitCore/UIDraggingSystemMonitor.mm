@interface UIDraggingSystemMonitor
+ (id)sharedInstance;
- (BOOL)xpcQueue_shouldAcceptNewConnection:(id)a3;
- (NSSet)sessions;
- (UIDraggingSystemMonitorDelegate)delegate;
- (id)_init;
- (id)sessionForDropSession:(id)a3;
- (void)dragDidBeginWithSystemSession:(id)a3 info:(id)a4 reply:(id)a5;
- (void)dragDidEndWithSystemSession:(id)a3;
- (void)xpcQueue_acceptNewConnection:(id)a3;
@end

@implementation UIDraggingSystemMonitor

- (id)_init
{
  if (qword_1ED4A2420 != -1)
  {
    dispatch_once(&qword_1ED4A2420, &__block_literal_global_634);
  }

  if (_MergedGlobals_1338 == 1)
  {
    v13.receiver = self;
    v13.super_class = UIDraggingSystemMonitor;
    v3 = [(UIDraggingSystemMonitor *)&v13 init];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      sessionsBySessionInfo = v3->_sessionsBySessionInfo;
      v3->_sessionsBySessionInfo = v4;

      v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v7 = dispatch_queue_create("com.apple.UIKit.druid.system.xpcQueue", v6);
      xpcQueue = v3->_xpcQueue;
      v3->_xpcQueue = v7;

      v9 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.DragUI.druid.system"];
      systemListener = v3->_systemListener;
      v3->_systemListener = v9;

      [(NSXPCListener *)v3->_systemListener _setQueue:v3->_xpcQueue];
      [(NSXPCListener *)v3->_systemListener setDelegate:v3];
      [(NSXPCListener *)v3->_systemListener resume];
    }

    self = v3;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__UIDraggingSystemMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED4A2410 != -1)
  {
    dispatch_once(&qword_1ED4A2410, block);
  }

  v2 = qword_1ED4A2418;

  return v2;
}

void __41__UIDraggingSystemMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = qword_1ED4A2418;
  qword_1ED4A2418 = v1;
}

- (NSSet)sessions
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMapTable *)self->_sessionsBySessionInfo objectEnumerator];
  v4 = [v3 allObjects];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)sessionForDropSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 sessionDestination];
    v6 = [v5 sessionIdentifier];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NSMapTable *)self->_sessionsBySessionInfo keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 sessionIdentifier] == v6)
          {
            v13 = [(NSMapTable *)self->_sessionsBySessionInfo objectForKey:v12];
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)xpcQueue_shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForEntitlement:@"com.apple.druid"];
  v6 = [v5 isEqual:MEMORY[0x1E695E118]];

  if (v6)
  {
    [(UIDraggingSystemMonitor *)self xpcQueue_acceptNewConnection:v4];
    [v4 resume];
  }

  return v6;
}

- (void)xpcQueue_acceptNewConnection:(id)a3
{
  v4 = a3;
  [v4 _setQueue:self->_xpcQueue];
  v5 = _DUINewClientSystemAppInterface();
  [v4 setExportedInterface:v5];

  [v4 setExportedObject:self];
  [v4 setRemoteObjectInterface:0];
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__UIDraggingSystemMonitor_xpcQueue_acceptNewConnection___block_invoke;
  v8[3] = &unk_1E70F5A28;
  objc_copyWeak(&v9, &location);
  [v4 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__UIDraggingSystemMonitor_xpcQueue_acceptNewConnection___block_invoke_2;
  v6[3] = &unk_1E70F5A28;
  objc_copyWeak(&v7, &from);
  [v4 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __56__UIDraggingSystemMonitor_xpcQueue_acceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __56__UIDraggingSystemMonitor_xpcQueue_acceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[3] removeAllObjects];
    WeakRetained = v2;
  }
}

- (void)dragDidBeginWithSystemSession:(id)a3 info:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setServerSession:v10];

  [v11 setInfo:v8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__UIDraggingSystemMonitor_dragDidBeginWithSystemSession_info_reply___block_invoke;
  v15[3] = &unk_1E70F5F08;
  v15[4] = self;
  v16 = v11;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __68__UIDraggingSystemMonitor_dragDidBeginWithSystemSession_info_reply___block_invoke(id *a1)
{
  v2 = [a1[4] delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 touchRoutingPolicyForBeginningDragSessionWithInfo:a1[6]];
    [a1[5] setRoutingPolicy:v3];

    v4 = [a1[5] routingPolicy];
    v5 = [v4 isHitTestingDisabled];

    if (v5)
    {
      [a1[5] commandeerImmediately];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = *(a1 + 2);
  v6 = *(v11 + 16);
  block[2] = __68__UIDraggingSystemMonitor_dragDidBeginWithSystemSession_info_reply___block_invoke_2;
  block[3] = &unk_1E70F5F08;
  v7 = *(&v11 + 1);
  v8 = a1[6];
  v9 = a1[7];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  dispatch_async(v6, block);
  if (objc_opt_respondsToSelector())
  {
    [v2 dragSessionDidBegin:a1[5]];
  }
}

void __68__UIDraggingSystemMonitor_dragDidBeginWithSystemSession_info_reply___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 40) routingPolicy];
  (*(v2 + 16))(v2, v3);
}

- (void)dragDidEndWithSystemSession:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_sessionsBySessionInfo objectForKey:v4];
  if (v5)
  {
    [(NSMapTable *)self->_sessionsBySessionInfo removeObjectForKey:v4];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__UIDraggingSystemMonitor_dragDidEndWithSystemSession___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __55__UIDraggingSystemMonitor_dragDidEndWithSystemSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 dragSessionDidEnd:*(a1 + 40)];
  }
}

- (UIDraggingSystemMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end