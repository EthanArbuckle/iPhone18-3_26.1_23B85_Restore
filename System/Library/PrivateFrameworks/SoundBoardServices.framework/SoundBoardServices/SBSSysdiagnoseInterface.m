@interface SBSSysdiagnoseInterface
- (SBSSysdiagnoseInterface)initWithTarget:(id)a3;
- (void)airDropSysdiagnose:(id)a3 airDropID:(id)a4 completionHandler:(id)a5;
- (void)cancelSysdiagnose:(id)a3;
- (void)createSysdiagnose:(id)a3;
- (void)dealloc;
@end

@implementation SBSSysdiagnoseInterface

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSSysdiagnoseInterface;
  [(SBSSysdiagnoseInterface *)&v3 dealloc];
}

- (void)airDropSysdiagnose:(id)a3 airDropID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  sbProxy = self->_sbProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SBSSysdiagnoseInterface_airDropSysdiagnose_airDropID_completionHandler___block_invoke;
  v11[3] = &unk_279CD52E8;
  v12 = v8;
  v10 = v8;
  [(SBSImplementer *)sbProxy airDropSysdiagnose:a3 airDropID:a4 completionHandler:v11];
}

- (void)cancelSysdiagnose:(id)a3
{
  v4 = a3;
  sbProxy = self->_sbProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBSSysdiagnoseInterface_cancelSysdiagnose___block_invoke;
  v7[3] = &unk_279CD55F8;
  v8 = v4;
  v6 = v4;
  [(SBSImplementer *)sbProxy cancelCurrentSysdiagnose:v7];
}

- (void)createSysdiagnose:(id)a3
{
  v4 = a3;
  sbProxy = self->_sbProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBSSysdiagnoseInterface_createSysdiagnose___block_invoke;
  v7[3] = &unk_279CD52C0;
  v8 = v4;
  v6 = v4;
  [(SBSImplementer *)sbProxy createSysdiagnose:v7];
}

void __49__SBSSysdiagnoseInterface_sysdiagnoseHasStarted___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _SBSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v6;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_26B246000, v4, OS_LOG_TYPE_ERROR, "Failed to set sysdiagnose started to %d, %@", v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (SBSSysdiagnoseInterface)initWithTarget:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBSSysdiagnoseInterface;
  v5 = [(SBSSysdiagnoseInterface *)&v13 init];
  if (v5)
  {
    if ([v4 isEqualToString:@"localhost"])
    {
      v6 = [SBSUtils connectionWithExportedObject:0];
      sbConnection = v5->_sbConnection;
      v5->_sbConnection = v6;

      v8 = [(SBSSysdiagnoseInterface *)v5 sbConnection];
      v9 = [v8 remoteObjectProxy];
      sbProxy = v5->_sbProxy;
      v5->_sbProxy = v9;
    }

    else
    {
      v11 = [SBSUtils createProxyConnectionForRapportTarget:v4];
      v8 = v5->_sbProxy;
      v5->_sbProxy = v11;
    }
  }

  return v5;
}

@end