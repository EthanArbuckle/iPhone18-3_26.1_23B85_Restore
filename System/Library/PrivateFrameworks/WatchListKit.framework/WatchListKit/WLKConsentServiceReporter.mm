@interface WLKConsentServiceReporter
- (WLKConsentServiceReporter)init;
- (id)_connection;
- (void)_invalidationHandler;
@end

@implementation WLKConsentServiceReporter

- (WLKConsentServiceReporter)init
{
  v3.receiver = self;
  v3.super_class = WLKConsentServiceReporter;
  result = [(WLKConsentServiceReporter *)&v3 init];
  if (result)
  {
    result->_xpcLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_xpcLock);
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v7 = self->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_25];
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __40__WLKConsentServiceReporter__connection__block_invoke_2;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_xpcLock);
  v10 = self->_connection;

  return v10;
}

void __40__WLKConsentServiceReporter__connection__block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKConsentServiceReporter - Connection interrupted.", v1, 2u);
  }
}

void __40__WLKConsentServiceReporter__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidationHandler];
}

- (void)_invalidationHandler
{
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKConsentServiceReporter - Connection invalidated.", v5, 2u);
  }

  os_unfair_lock_lock(&self->_xpcLock);
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_xpcLock);
}

@end