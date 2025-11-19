@interface VMClientWrapper
+ (BOOL)isVMXPCAvailable;
+ (id)voicemailClientXPCInterface;
+ (id)voicemailServerXPCInterface;
- (NSXPCConnection)clientConnection;
- (VMClientWrapper)init;
- (VMClientXPCProtocol)manager;
- (id)asynchronousServerConnectionWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)setClientConnection:(id)a3;
- (void)setPingRetry:(BOOL)a3;
@end

@implementation VMClientWrapper

- (VMClientWrapper)init
{
  if ([objc_opt_class() isVMXPCAvailable])
  {
    v6.receiver = self;
    v6.super_class = VMClientWrapper;
    self = [(VMClientWrapper *)&v6 init];
    v3 = self;
  }

  else
  {
    v4 = vm_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "VMD is not available", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

+ (BOOL)isVMXPCAvailable
{
  if (isVMXPCAvailable_onceToken != -1)
  {
    +[VMClientWrapper isVMXPCAvailable];
  }

  return isVMXPCAvailable_isVMXPCAvailable;
}

uint64_t __35__VMClientWrapper_isVMXPCAvailable__block_invoke()
{
  result = MGGetBoolAnswer();
  isVMXPCAvailable_isVMXPCAvailable = result;
  return result;
}

- (NSXPCConnection)clientConnection
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  clientConnection = v2->_clientConnection;
  if (!clientConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.voicemail.vmd" options:4096];
    v5 = v2->_clientConnection;
    v2->_clientConnection = v4;

    v6 = [objc_opt_class() voicemailClientXPCInterface];
    [(NSXPCConnection *)v2->_clientConnection setExportedInterface:v6];

    v7 = [objc_opt_class() voicemailServerXPCInterface];
    [(NSXPCConnection *)v2->_clientConnection setRemoteObjectInterface:v7];

    v8 = [(VMClientWrapper *)v2 manager];
    [(NSXPCConnection *)v2->_clientConnection setExportedObject:v8];

    v2->_pingRetry = 0;
    v9 = vm_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v2->_clientConnection;
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_2721BA000, v9, OS_LOG_TYPE_DEFAULT, "XPC connection created %@", buf, 0xCu);
    }

    objc_initWeak(buf, v2);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __35__VMClientWrapper_clientConnection__block_invoke;
    v19[3] = &unk_279E3D0E0;
    objc_copyWeak(&v20, buf);
    [(NSXPCConnection *)v2->_clientConnection setInvalidationHandler:v19];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __35__VMClientWrapper_clientConnection__block_invoke_202;
    v17 = &unk_279E3D0E0;
    objc_copyWeak(&v18, buf);
    [(NSXPCConnection *)v2->_clientConnection setInterruptionHandler:&v14];
    [(NSXPCConnection *)v2->_clientConnection resume:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
    clientConnection = v2->_clientConnection;
  }

  v11 = clientConnection;
  objc_sync_exit(v2);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)voicemailServerXPCInterface
{
  if (voicemailServerXPCInterface_onceToken != -1)
  {
    +[VMClientWrapper voicemailServerXPCInterface];
  }

  v3 = voicemailServerXPCInterface_xpcInterface;

  return v3;
}

+ (id)voicemailClientXPCInterface
{
  if (voicemailClientXPCInterface_onceToken != -1)
  {
    +[VMClientWrapper voicemailClientXPCInterface];
  }

  v3 = voicemailClientXPCInterface_xpcInterface;

  return v3;
}

void __46__VMClientWrapper_voicemailClientXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28817D630];
  v1 = voicemailClientXPCInterface_xpcInterface;
  voicemailClientXPCInterface_xpcInterface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [voicemailClientXPCInterface_xpcInterface setClasses:v8 forSelector:sel_voicemailsUpdated_ argumentIndex:0 ofReply:0];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [voicemailClientXPCInterface_xpcInterface setClasses:v7 forSelector:sel_updateAccounts_ argumentIndex:0 ofReply:0];
}

void __46__VMClientWrapper_voicemailServerXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288181098];
  v1 = voicemailServerXPCInterface_xpcInterface;
  voicemailServerXPCInterface_xpcInterface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v64 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [voicemailServerXPCInterface_xpcInterface setClasses:v64 forSelector:sel_requestInitialState_ argumentIndex:1 ofReply:1];
  [voicemailServerXPCInterface_xpcInterface setClasses:v64 forSelector:sel_allVoicemails_ argumentIndex:0 ofReply:1];
  [voicemailServerXPCInterface_xpcInterface setClasses:v64 forSelector:sel_requestTranscriptionProgress_ argumentIndex:0 ofReply:1];
  [voicemailServerXPCInterface_xpcInterface setClasses:v64 forSelector:sel_insertVoicemail_ argumentIndex:0 ofReply:0];
  v9 = voicemailServerXPCInterface_xpcInterface;
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v9 setClasses:v10 forSelector:sel_createTranscription_transcription_reply_ argumentIndex:0 ofReply:1];

  v11 = voicemailServerXPCInterface_xpcInterface;
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v11 setClasses:v12 forSelector:sel_createTranscription_transcription_reply_ argumentIndex:0 ofReply:0];

  v13 = voicemailServerXPCInterface_xpcInterface;
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v13 setClasses:v14 forSelector:sel_createPersonalizedTranscript_reply_ argumentIndex:0 ofReply:1];

  v15 = voicemailServerXPCInterface_xpcInterface;
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_createPersonalizedTranscript_reply_ argumentIndex:0 ofReply:0];

  v17 = voicemailServerXPCInterface_xpcInterface;
  v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v17 setClasses:v18 forSelector:sel_sendStateRequestForAccountUUID_ argumentIndex:0 ofReply:0];

  v19 = voicemailServerXPCInterface_xpcInterface;
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v19 setClasses:v20 forSelector:sel_getServiceInfoForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [voicemailServerXPCInterface_xpcInterface setClasses:v23 forSelector:sel_accounts_ argumentIndex:0 ofReply:1];
  v24 = voicemailServerXPCInterface_xpcInterface;
  v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v24 setClasses:v25 forSelector:sel_isAccountSubscribed_reply_ argumentIndex:0 ofReply:0];

  v26 = voicemailServerXPCInterface_xpcInterface;
  v27 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v26 setClasses:v27 forSelector:sel_isAccountOnline_reply_ argumentIndex:0 ofReply:0];

  v28 = voicemailServerXPCInterface_xpcInterface;
  v29 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v28 setClasses:v29 forSelector:sel_isPasscodeChangeSupportedForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v30 = voicemailServerXPCInterface_xpcInterface;
  v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v30 setClasses:v31 forSelector:sel_minimumPasscodeLengthForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v32 = voicemailServerXPCInterface_xpcInterface;
  v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_maximumPasscodeLengthForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v34 = voicemailServerXPCInterface_xpcInterface;
  v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v34 setClasses:v35 forSelector:sel_setPasscode_forAccountUUID_reply_ argumentIndex:0 ofReply:1];

  v36 = voicemailServerXPCInterface_xpcInterface;
  v37 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v36 setClasses:v37 forSelector:sel_setPasscode_forAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v38 = voicemailServerXPCInterface_xpcInterface;
  v39 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v38 setClasses:v39 forSelector:sel_setPasscode_forAccountUUID_reply_ argumentIndex:1 ofReply:0];

  v40 = voicemailServerXPCInterface_xpcInterface;
  v41 = MEMORY[0x277CBEB98];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  [v40 setClasses:v43 forSelector:sel_greetingForAccountUUID_reply_ argumentIndex:0 ofReply:1];

  v44 = voicemailServerXPCInterface_xpcInterface;
  v45 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v44 setClasses:v45 forSelector:sel_greetingForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v46 = voicemailServerXPCInterface_xpcInterface;
  v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v46 setClasses:v47 forSelector:sel_isGreetingChangeSupportedForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v48 = voicemailServerXPCInterface_xpcInterface;
  v49 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v48 setClasses:v49 forSelector:sel_maximumGreetingDurationForAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v50 = voicemailServerXPCInterface_xpcInterface;
  v51 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v50 setClasses:v51 forSelector:sel_setGreeting_forAccountUUID_reply_ argumentIndex:0 ofReply:1];

  v52 = voicemailServerXPCInterface_xpcInterface;
  v53 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v52 setClasses:v53 forSelector:sel_setGreeting_forAccountUUID_reply_ argumentIndex:0 ofReply:0];

  v54 = voicemailServerXPCInterface_xpcInterface;
  v55 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v54 setClasses:v55 forSelector:sel_setGreeting_forAccountUUID_reply_ argumentIndex:1 ofReply:0];

  v56 = voicemailServerXPCInterface_xpcInterface;
  v57 = MEMORY[0x277CBEB98];
  v58 = objc_opt_class();
  v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
  [v56 setClasses:v59 forSelector:sel_messagesForMailboxType_limit_offset_reply_ argumentIndex:0 ofReply:1];

  v60 = voicemailServerXPCInterface_xpcInterface;
  v61 = MEMORY[0x277CBEB98];
  v62 = objc_opt_class();
  v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
  [v60 setClasses:v63 forSelector:sel_messagesForMailboxType_read_limit_offset_reply_ argumentIndex:0 ofReply:1];
}

- (VMClientXPCProtocol)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (id)asynchronousServerConnectionWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(VMClientWrapper *)self clientConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__VMClientWrapper_asynchronousServerConnectionWithErrorHandler___block_invoke;
  v9[3] = &unk_279E3D078;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __64__VMClientWrapper_asynchronousServerConnectionWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__VMClientWrapper_asynchronousServerConnectionWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __35__VMClientWrapper_clientConnection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", &v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    [v5 setClientConnection:0];
    if ([v5 pingRetry])
    {
      [v5 setPingRetry:0];
      v6 = vm_framework_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 clientConnection];
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_2721BA000, v6, OS_LOG_TYPE_DEFAULT, "XPC attempting to ping connection %@", &v10, 0xCu);
      }

      v8 = [v5 asynchronousServerConnectionWithErrorHandler:&__block_literal_global_195];
      [v8 ping:&__block_literal_global_199];
    }

    else
    {
      v8 = vm_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_2721BA000, v8, OS_LOG_TYPE_DEFAULT, "XPC connection deallocated", &v10, 2u);
      }
    }

    objc_sync_exit(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __35__VMClientWrapper_clientConnection__block_invoke_193(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__VMClientWrapper_clientConnection__block_invoke_193_cold_1(v2, v3);
  }
}

void __35__VMClientWrapper_clientConnection__block_invoke_196(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = vm_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_2721BA000, v3, OS_LOG_TYPE_DEFAULT, "XPC connection reestablished with ping response %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __35__VMClientWrapper_clientConnection__block_invoke_202(uint64_t a1)
{
  v2 = vm_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2721BA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v4, 2u);
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(v3);
  if (v3)
  {
    [v3[2] invalidate];
    [v3 setClientConnection:0];
  }

  objc_sync_exit(v3);
}

- (void)setClientConnection:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_clientConnection != v6)
  {
    objc_storeStrong(&v5->_clientConnection, a3);
  }

  objc_sync_exit(v5);
}

- (void)setPingRetry:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_pingRetry != v3)
  {
    obj->_pingRetry = v3;
  }

  objc_sync_exit(obj);
}

- (void)dealloc
{
  self->_pingRetry = 0;
  [(NSXPCConnection *)self->_clientConnection invalidate];
  v3.receiver = self;
  v3.super_class = VMClientWrapper;
  [(VMClientWrapper *)&v3 dealloc];
}

void __64__VMClientWrapper_asynchronousServerConnectionWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "Failed to create remote object proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __35__VMClientWrapper_clientConnection__block_invoke_193_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "XPC connection failed to ping after interruption %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end