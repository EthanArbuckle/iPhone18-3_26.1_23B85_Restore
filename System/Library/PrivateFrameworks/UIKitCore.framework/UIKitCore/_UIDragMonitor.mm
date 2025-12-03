@interface _UIDragMonitor
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_UIDragMonitor)initWithMachServiceName:(id)name;
- (_UIDragMonitorDelegate)delegate;
- (void)_tearDownConnections;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIDragMonitor

- (_UIDragMonitor)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = _UIDragMonitor;
  v5 = [(_UIDragMonitor *)&v18 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
    xpcListener = v5->_xpcListener;
    v5->_xpcListener = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.UIKit.uidragmonitor.xpcQueue", v10);
    xpcQueue = v5->_xpcQueue;
    v5->_xpcQueue = v11;

    [(NSXPCListener *)v5->_xpcListener _setQueue:v5->_xpcQueue];
    array = [MEMORY[0x1E695DF70] array];
    activeConnections = v5->_activeConnections;
    v5->_activeConnections = array;

    v15 = [[_UIDragMonitorSessionLifecyleListener alloc] initWithDragMonitor:v5];
    lifecycleListener = v5->_lifecycleListener;
    v5->_lifecycleListener = v15;
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = _DUIDragSessionLifecycleListeningInterface();
  [connectionCopy setExportedInterface:v8];

  activeConnections = [(_UIDragMonitor *)self activeConnections];
  [activeConnections addObject:connectionCopy];

  lifecycleListener = [(_UIDragMonitor *)self lifecycleListener];
  [connectionCopy setExportedObject:lifecycleListener];

  xpcQueue = [(_UIDragMonitor *)self xpcQueue];
  [connectionCopy _setQueue:xpcQueue];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __53___UIDragMonitor_listener_shouldAcceptNewConnection___block_invoke;
  v16 = &unk_1E70F3DA0;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  [connectionCopy setInvalidationHandler:&v13];
  [connectionCopy resume];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  lifecycleListener = [(_UIDragMonitor *)self lifecycleListener];
  [lifecycleListener setDelegate:delegateCopy];
}

- (void)activate
{
  xpcListener = [(_UIDragMonitor *)self xpcListener];
  [xpcListener setDelegate:self];

  xpcListener2 = [(_UIDragMonitor *)self xpcListener];
  [xpcListener2 activate];
}

- (void)invalidate
{
  xpcListener = [(_UIDragMonitor *)self xpcListener];
  [xpcListener invalidate];

  [(_UIDragMonitor *)self _tearDownConnections];
}

- (void)_tearDownConnections
{
  xpcQueue = [(_UIDragMonitor *)self xpcQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___UIDragMonitor__tearDownConnections__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(xpcQueue, block);
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