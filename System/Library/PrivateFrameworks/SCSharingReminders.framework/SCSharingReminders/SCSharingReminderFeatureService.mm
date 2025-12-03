@interface SCSharingReminderFeatureService
+ (id)interface;
- (id)initConnection;
- (void)disconnect;
- (void)fetchStatusWithCompletion:(id)completion;
- (void)postWifiSyncNotificationWithCompletion:(id)completion;
- (void)resetFeatureWithCompletion:(id)completion;
- (void)setReminderDelays:(id)delays completion:(id)completion;
@end

@implementation SCSharingReminderFeatureService

- (id)initConnection
{
  v7.receiver = self;
  v7.super_class = SCSharingReminderFeatureService;
  v2 = [(SCSharingReminderFeatureService *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.safetycheckd" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = +[SCSharingReminderFeatureService interface];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_4];
    [(NSXPCConnection *)v2->_xpcConnection activate];
  }

  return v2;
}

void __49__SCSharingReminderFeatureService_initConnection__block_invoke()
{
  v0 = SCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __49__SCSharingReminderFeatureService_initConnection__block_invoke_cold_1(v0);
  }
}

void __49__SCSharingReminderFeatureService_initConnection__block_invoke_2()
{
  v0 = SCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __49__SCSharingReminderFeatureService_initConnection__block_invoke_2_cold_1(v0);
  }
}

- (void)disconnect
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287523BD0];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_fetchStatusWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)fetchStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(SCSharingReminderFeatureService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy fetchStatusWithCompletion:completionCopy];
}

- (void)resetFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(SCSharingReminderFeatureService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy resetFeatureWithCompletion:completionCopy];
}

- (void)setReminderDelays:(id)delays completion:(id)completion
{
  completionCopy = completion;
  delaysCopy = delays;
  xpcConnection = [(SCSharingReminderFeatureService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy setReminderDelays:delaysCopy completion:completionCopy];
}

- (void)postWifiSyncNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(SCSharingReminderFeatureService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy postWifiSyncNotificationWithCompletion:completionCopy];
}

void __49__SCSharingReminderFeatureService_initConnection__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.safetycheckd";
  _os_log_debug_impl(&dword_262556000, log, OS_LOG_TYPE_DEBUG, "@Connection with %@ interrupted.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__SCSharingReminderFeatureService_initConnection__block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.safetycheckd";
  _os_log_debug_impl(&dword_262556000, log, OS_LOG_TYPE_DEBUG, "@Connection with %@ invalidated.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end