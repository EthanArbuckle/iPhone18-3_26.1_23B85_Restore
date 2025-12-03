@interface SCSharingReminderPeerService
+ (id)interface;
- (id)initConnection;
- (void)disconnect;
- (void)handleSignals:(id)signals completion:(id)completion;
- (void)userOpenedSafetyCheckWithCompletion:(id)completion;
@end

@implementation SCSharingReminderPeerService

- (id)initConnection
{
  v7.receiver = self;
  v7.super_class = SCSharingReminderPeerService;
  v2 = [(SCSharingReminderPeerService *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.safetycheckd" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    interface = [objc_opt_class() interface];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:interface];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_5];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_3];
    [(NSXPCConnection *)v2->_xpcConnection activate];
  }

  return v2;
}

void __46__SCSharingReminderPeerService_initConnection__block_invoke()
{
  v0 = SCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __49__SCSharingReminderFeatureService_initConnection__block_invoke_cold_1(v0);
  }
}

void __46__SCSharingReminderPeerService_initConnection__block_invoke_1()
{
  v0 = SCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __49__SCSharingReminderFeatureService_initConnection__block_invoke_2_cold_1(v0);
  }
}

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287523EC8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_handleSignals_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)userOpenedSafetyCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(SCSharingReminderPeerService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy userOpenedSafetyCheckWithCompletion:completionCopy];
}

- (void)handleSignals:(id)signals completion:(id)completion
{
  completionCopy = completion;
  signalsCopy = signals;
  xpcConnection = [(SCSharingReminderPeerService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy handleSignals:signalsCopy completion:completionCopy];
}

- (void)disconnect
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

@end