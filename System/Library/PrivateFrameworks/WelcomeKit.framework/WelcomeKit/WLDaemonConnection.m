@interface WLDaemonConnection
- (WLDaemonConnection)init;
- (id)daemonConnection;
- (id)daemonWithErrorHandler:(id)a3;
- (void)invalidateDaemonConnection;
@end

@implementation WLDaemonConnection

- (WLDaemonConnection)init
{
  v6.receiver = self;
  v6.super_class = WLDaemonConnection;
  v2 = [(WLDaemonConnection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    daemonLock = v2->_daemonLock;
    v2->_daemonLock = v3;
  }

  return v2;
}

- (id)daemonConnection
{
  [(NSLock *)self->_daemonLock lock];
  daemonConn = self->_daemonConn;
  if (!daemonConn)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.matd" options:0];
    v5 = self->_daemonConn;
    self->_daemonConn = v4;

    v6 = self->_daemonConn;
    v7 = WLDaemonExportedInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_daemonConn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__WLDaemonConnection_daemonConnection__block_invoke;
    v14[3] = &unk_279EB40B0;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v8 setInvalidationHandler:v14];
    v9 = self->_daemonConn;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__WLDaemonConnection_daemonConnection__block_invoke_2;
    v12[3] = &unk_279EB40B0;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)v9 setInterruptionHandler:v12];
    [(NSXPCConnection *)self->_daemonConn resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    daemonConn = self->_daemonConn;
  }

  v10 = daemonConn;
  [(NSLock *)self->_daemonLock unlock];

  return v10;
}

void __38__WLDaemonConnection_daemonConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] lock];
    v2 = v3[2];
    v3[2] = 0;

    [v3[1] unlock];
    WeakRetained = v3;
  }
}

uint64_t __38__WLDaemonConnection_daemonConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _WLLog(v1, 0, @"WLDaemonConnection XPC connection interrupted for weak instance %@", v2, v3, v4, v5, v6, WeakRetained);
  if (WeakRetained)
  {
    [WeakRetained[1] lock];
    v7 = WeakRetained[2];
    WeakRetained[2] = 0;

    [WeakRetained[1] unlock];
    v8 = WeakRetained[3];
    if (v8)
    {
      v8[2]();
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)daemonWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(WLDaemonConnection *)self daemonConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)invalidateDaemonConnection
{
  v2 = [(WLDaemonConnection *)self daemonConnection];
  [v2 invalidate];
}

@end