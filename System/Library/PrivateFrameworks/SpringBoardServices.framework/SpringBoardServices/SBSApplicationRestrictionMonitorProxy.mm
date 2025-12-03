@interface SBSApplicationRestrictionMonitorProxy
- (id)initWithMonitor:(id *)monitor;
- (id)makeConnection;
- (uint64_t)connection;
- (uint64_t)monitor;
- (uint64_t)queue;
- (void)dealloc;
- (void)didInvalidate;
- (void)invalidate;
- (void)observeUpdateWithApplicationRestrictState:(id)state;
@end

@implementation SBSApplicationRestrictionMonitorProxy

- (void)dealloc
{
  [(SBSApplicationRestrictionMonitorProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSApplicationRestrictionMonitorProxy;
  [(SBSApplicationRestrictionMonitorProxy *)&v3 dealloc];
}

- (id)makeConnection
{
  if (self)
  {
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v3 = +[SBSApplicationRestrictionMonitoringServiceInterfaceSpecification identifier];
    v4 = [MEMORY[0x1E698F498] endpointForMachName:defaultShellMachName service:v3 instance:0];
    v5 = [MEMORY[0x1E698F490] connectionWithEndpoint:v4];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__SBSApplicationRestrictionMonitorProxy_makeConnection__block_invoke;
    v7[3] = &unk_1E735F0A8;
    v7[4] = self;
    objc_copyWeak(&v8, &location);
    [v5 configureConnection:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeUpdateWithApplicationRestrictState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__SBSApplicationRestrictionMonitorProxy_observeUpdateWithApplicationRestrictState___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v6[4] = self;
  v7 = stateCopy;
  v5 = stateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __83__SBSApplicationRestrictionMonitorProxy_observeUpdateWithApplicationRestrictState___block_invoke(uint64_t a1)
{
  v2 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "Notifying monitor of an application restriction update", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) monitorDidUpdateApplicationRestrictionState:*(a1 + 40)];
}

- (void)invalidate
{
  v3 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Client invalidated connection", v5, 2u);
  }

  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

void __55__SBSApplicationRestrictionMonitorProxy_makeConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSApplicationRestrictionMonitoringServiceInterfaceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBSApplicationRestrictionMonitoringServiceInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  [v3 setTargetQueue:v7];
  [v3 setActivationHandler:&__block_literal_global_31];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__SBSApplicationRestrictionMonitorProxy_makeConnection__block_invoke_8;
  v8[3] = &unk_1E735ED60;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  objc_destroyWeak(&v9);
}

void __55__SBSApplicationRestrictionMonitorProxy_makeConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __55__SBSApplicationRestrictionMonitorProxy_makeConnection__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogApplicationRestrictionMonitoring();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBSApplicationRestrictionMonitorProxy *)WeakRetained didInvalidate];
}

- (id)initWithMonitor:(id *)monitor
{
  v4 = a2;
  if (monitor)
  {
    v14.receiver = monitor;
    v14.super_class = SBSApplicationRestrictionMonitorProxy;
    v5 = objc_msgSendSuper2(&v14, sel_init);
    monitor = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      monitor = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.springboard.application-restriction-monitoring-service.connectionQueue-%p", monitor];
      uTF8String = [monitor UTF8String];
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create(uTF8String, v8);
      v10 = monitor[2];
      monitor[2] = v9;

      makeConnection = [(SBSApplicationRestrictionMonitorProxy *)monitor makeConnection];
      v12 = monitor[3];
      monitor[3] = makeConnection;

      [monitor[3] activate];
    }
  }

  return monitor;
}

- (uint64_t)queue
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)didInvalidate
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SBSApplicationRestrictionMonitorProxy_didInvalidate__block_invoke;
    block[3] = &unk_1E735F9D0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (uint64_t)monitor
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)connection
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end