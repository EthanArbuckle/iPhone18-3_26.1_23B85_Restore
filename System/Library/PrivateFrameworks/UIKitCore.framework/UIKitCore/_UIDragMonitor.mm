@interface _UIDragMonitor
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_UIDragMonitor)initWithMachServiceName:(id)a3;
- (_UIDragMonitorDelegate)delegate;
- (void)_tearDownConnections;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)a3;
@end

@implementation _UIDragMonitor

- (_UIDragMonitor)initWithMachServiceName:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UIDragMonitor;
  v5 = [(_UIDragMonitor *)&v18 init];
  if (v5)
  {
    v6 = [v4 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v4];
    xpcListener = v5->_xpcListener;
    v5->_xpcListener = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.UIKit.uidragmonitor.xpcQueue", v10);
    xpcQueue = v5->_xpcQueue;
    v5->_xpcQueue = v11;

    [(NSXPCListener *)v5->_xpcListener _setQueue:v5->_xpcQueue];
    v13 = [MEMORY[0x1E695DF70] array];
    activeConnections = v5->_activeConnections;
    v5->_activeConnections = v13;

    v15 = [[_UIDragMonitorSessionLifecyleListener alloc] initWithDragMonitor:v5];
    lifecycleListener = v5->_lifecycleListener;
    v5->_lifecycleListener = v15;
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _DUIDragSessionLifecycleListeningInterface();
  [v7 setExportedInterface:v8];

  v9 = [(_UIDragMonitor *)self activeConnections];
  [v9 addObject:v7];

  v10 = [(_UIDragMonitor *)self lifecycleListener];
  [v7 setExportedObject:v10];

  v11 = [(_UIDragMonitor *)self xpcQueue];
  [v7 _setQueue:v11];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __53___UIDragMonitor_listener_shouldAcceptNewConnection___block_invoke;
  v16 = &unk_1E70F3DA0;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  [v7 setInvalidationHandler:&v13];
  [v7 resume];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = [(_UIDragMonitor *)self lifecycleListener];
  [v5 setDelegate:v4];
}

- (void)activate
{
  v3 = [(_UIDragMonitor *)self xpcListener];
  [v3 setDelegate:self];

  v4 = [(_UIDragMonitor *)self xpcListener];
  [v4 activate];
}

- (void)invalidate
{
  v3 = [(_UIDragMonitor *)self xpcListener];
  [v3 invalidate];

  [(_UIDragMonitor *)self _tearDownConnections];
}

- (void)_tearDownConnections
{
  v3 = [(_UIDragMonitor *)self xpcQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___UIDragMonitor__tearDownConnections__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)dealloc
{
  [(_UIDragMonitor *)self _tearDownConnections];
  v3.receiver = self;
  v3.super_class = _UIDragMonitor;
  [(_UIDragMonitor *)&v3 dealloc];
}

- (_UIDragMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end