@interface SACSYSController
- (SACSYSController)init;
- (void)handleServiceCrash;
- (void)setSYSConfig:(id)config;
- (void)startServiceConnection;
@end

@implementation SACSYSController

- (SACSYSController)init
{
  v7.receiver = self;
  v7.super_class = SACSYSController;
  v2 = [(SACSYSController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    mServiceConnection = v2->mServiceConnection;
    v2->mServiceConnection = 0;

    mProxyInterface = v3->mProxyInterface;
    v3->mProxyInterface = 0;

    [(SACSYSController *)v3 startServiceConnection];
  }

  return v3;
}

- (void)startServiceConnection
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SACSYSController startServiceConnection]";
    *&buf[12] = 2080;
    *&buf[14] = "com.apple.internal.soundautoconfigservice";
    _os_log_impl(&dword_26B240000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s Starting xpc conn with: %s\n", buf, 0x16u);
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.internal.soundautoconfigservice"];
  mServiceConnection = self->mServiceConnection;
  self->mServiceConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BC6EA8];
  [(NSXPCConnection *)self->mServiceConnection setRemoteObjectInterface:v5];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3042000000;
  v16 = sub_26B241D7C;
  v17 = sub_26B241D88;
  objc_initWeak(v18, self);
  v6 = self->mServiceConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26B241D90;
  v14[3] = &unk_279CD4D30;
  v14[4] = buf;
  [(NSXPCConnection *)v6 setInterruptionHandler:v14];
  v7 = self->mServiceConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26B241DF4;
  v13[3] = &unk_279CD4D30;
  v13[4] = buf;
  [(NSXPCConnection *)v7 setInvalidationHandler:v13];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BC6800];
  [(NSXPCConnection *)self->mServiceConnection setExportedInterface:v8];

  [(NSXPCConnection *)self->mServiceConnection setExportedObject:self];
  [(NSXPCConnection *)self->mServiceConnection resume];
  remoteObjectProxy = [(NSXPCConnection *)self->mServiceConnection remoteObjectProxy];
  mProxyInterface = self->mProxyInterface;
  p_mProxyInterface = &self->mProxyInterface;
  *p_mProxyInterface = remoteObjectProxy;

  [*p_mProxyInterface registerAsClientWithConnectionType:1];
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(v18);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleServiceCrash
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26B240000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delaying checking in with service a few seconds...\n", buf, 2u);
  }

  mServiceConnection = self->mServiceConnection;
  if (mServiceConnection)
  {
    [(NSXPCConnection *)mServiceConnection setExportedObject:0];
    [(NSXPCConnection *)self->mServiceConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->mServiceConnection setInterruptionHandler:0];
    [(NSXPCConnection *)self->mServiceConnection invalidate];
    v4 = self->mServiceConnection;
    self->mServiceConnection = 0;
  }

  v5 = dispatch_time(0, 20000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26B241F68;
  block[3] = &unk_279CD4D58;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)setSYSConfig:(id)config
{
  configCopy = config;
  delegate = [(SACSYSController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SACSYSController *)self delegate];
    [delegate2 setSYSConfig:configCopy];
  }
}

@end