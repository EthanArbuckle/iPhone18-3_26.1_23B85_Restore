@interface SACInfoListener
- (SACInfoListener)init;
- (void)handleSACInfo:(id)info;
- (void)handleServiceCrash;
- (void)setListenerVerbosity:(unint64_t)verbosity;
- (void)startServiceConnection;
@end

@implementation SACInfoListener

- (SACInfoListener)init
{
  v7.receiver = self;
  v7.super_class = SACInfoListener;
  v2 = [(SACInfoListener *)&v7 init];
  v3 = v2;
  if (v2)
  {
    mServiceConnection = v2->mServiceConnection;
    v2->mServiceConnection = 0;

    mProxyInterface = v3->mProxyInterface;
    v3->mProxyInterface = 0;

    v3->mVerbosity = 1;
    [(SACInfoListener *)v3 startServiceConnection];
  }

  return v3;
}

- (void)startServiceConnection
{
  NSLog(&cfstr_SStartingXpcCo_0.isa, a2, "[SACInfoListener startServiceConnection]", "com.apple.internal.soundautoconfigservice");
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.internal.soundautoconfigservice"];
  mServiceConnection = self->mServiceConnection;
  self->mServiceConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BC6EA8];
  [(NSXPCConnection *)self->mServiceConnection setRemoteObjectInterface:v5];

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3042000000;
  v13[3] = sub_26B24171C;
  v13[4] = sub_26B241728;
  objc_initWeak(&v14, self);
  v6 = self->mServiceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26B241730;
  v12[3] = &unk_279CD4D30;
  v12[4] = v13;
  [(NSXPCConnection *)v6 setInterruptionHandler:v12];
  v7 = self->mServiceConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26B241794;
  v11[3] = &unk_279CD4D30;
  v11[4] = v13;
  [(NSXPCConnection *)v7 setInvalidationHandler:v11];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BC6768];
  [(NSXPCConnection *)self->mServiceConnection setExportedInterface:v8];

  [(NSXPCConnection *)self->mServiceConnection setExportedObject:self];
  [(NSXPCConnection *)self->mServiceConnection resume];
  remoteObjectProxy = [(NSXPCConnection *)self->mServiceConnection remoteObjectProxy];
  mProxyInterface = self->mProxyInterface;
  self->mProxyInterface = remoteObjectProxy;

  [(SACServiceDelegate *)self->mProxyInterface registerAsInfoListener];
  _Block_object_dispose(v13, 8);
  objc_destroyWeak(&v14);
}

- (void)handleServiceCrash
{
  NSLog(&cfstr_DelayingChecki_0.isa, a2);
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
  block[2] = sub_26B2418D4;
  block[3] = &unk_279CD4D58;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)setListenerVerbosity:(unint64_t)verbosity
{
  self->mVerbosity = verbosity;
  mProxyInterface = self->mProxyInterface;
  if (mProxyInterface)
  {
    MEMORY[0x2821F9670](mProxyInterface, sel_setVerbosityForClient_);
  }
}

- (void)handleSACInfo:(id)info
{
  infoCopy = info;
  delegate = [(SACInfoListener *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SACInfoListener *)self delegate];
    [delegate2 handleSACInfo:infoCopy];
  }
}

@end