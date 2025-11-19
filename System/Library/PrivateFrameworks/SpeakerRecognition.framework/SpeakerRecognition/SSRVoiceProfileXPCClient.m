@interface SSRVoiceProfileXPCClient
- (SSRVoiceProfileXPCClient)init;
- (SSRVoiceProfileXPCClientDelegate)delegate;
- (void)_handleListenerDisconnectedError:(id)a3;
- (void)_handleListenerError:(id)a3;
- (void)_handleListenerEvent:(id)a3;
- (void)connect;
- (void)dealloc;
- (void)fetchEnrollmentStatusForSiriProfileId:(id)a3 forLanguageCode:(id)a4 completion:(id)a5;
@end

@implementation SSRVoiceProfileXPCClient

- (SSRVoiceProfileXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchEnrollmentStatusForSiriProfileId:(id)a3 forLanguageCode:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  *keys = xmmword_278578910;
  v31 = "siriProfileId";
  values[0] = xpc_int64_create(1);
  if (v9)
  {
    v11 = xpc_string_create([v9 UTF8String]);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v12 = v11;
  values[1] = v11;
  if (v8)
  {
    v13 = xpc_string_create([v8 UTF8String]);
  }

  else
  {
    v13 = xpc_null_create();
  }

  values[2] = v13;

  v14 = xpc_dictionary_create(keys, values, 3uLL);
  *v28 = xmmword_278578928;
  v27[0] = xpc_int64_create(2);
  v15 = v14;
  v27[1] = v15;
  v16 = xpc_dictionary_create(v28, v27, 2uLL);
  v17 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SSRVoiceProfileXPCClient fetchEnrollmentStatusForSiriProfileId:forLanguageCode:completion:]";
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Sending xpc message", buf, 0xCu);
  }

  xpcConnection = self->_xpcConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __93__SSRVoiceProfileXPCClient_fetchEnrollmentStatusForSiriProfileId_forLanguageCode_completion___block_invoke;
  handler[3] = &unk_278578940;
  v19 = v10;
  v24 = v19;
  xpc_connection_send_message_with_reply(xpcConnection, v16, 0, handler);

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __93__SSRVoiceProfileXPCClient_fetchEnrollmentStatusForSiriProfileId_forLanguageCode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "result");
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v4, 0);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1101 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[SSRVoiceProfileXPCClient dealloc]";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s disconnect VoiceProfileXPCClient", buf, 0xCu);
      xpcConnection = self->_xpcConnection;
    }

    xpc_connection_cancel(xpcConnection);
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v7.receiver = self;
  v7.super_class = SSRVoiceProfileXPCClient;
  [(SSRVoiceProfileXPCClient *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleListenerDisconnectedError:(id)a3
{
  v4 = [(SSRVoiceProfileXPCClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained ssrVoiceProfileXPCClient:self didDisconnect:1];
  }
}

- (void)_handleListenerError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "[SSRVoiceProfileXPCClient _handleListenerError:]";
    v15 = 2050;
    v16 = 0;
    v8 = "%s cannot handle error : error = %{public}p";
    goto LABEL_15;
  }

  if (v4 != MEMORY[0x277D863F8] && v4 != MEMORY[0x277D863F0])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
    v10 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "[SSRVoiceProfileXPCClient _handleListenerError:]";
    v15 = 2082;
    v16 = string;
    v8 = "%s connection error: %{public}s";
LABEL_15:
    _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, v8, &v13, 0x16u);
    goto LABEL_13;
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SSRVoiceProfileXPCClient _handleListenerError:]";
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Listener connection disconnected", &v13, 0xCu);
  }

  [(SSRVoiceProfileXPCClient *)self _handleListenerDisconnectedError:v5];
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleListenerEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x22AA717E0](v4) == MEMORY[0x277D86480])
    {
      [(SSRVoiceProfileXPCClient *)self _handleListenerError:v5];
      goto LABEL_9;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[SSRVoiceProfileXPCClient _handleListenerEvent:]";
      v7 = "%s ignore unknown types of message ";
      v8 = v6;
      v9 = 12;
LABEL_7:
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  else
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[SSRVoiceProfileXPCClient _handleListenerEvent:]";
      v14 = 2050;
      v15 = 0;
      v7 = "%s cannot handle event : event = %{public}p";
      v8 = v10;
      v9 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  mach_service = xpc_connection_create_mach_service("com.apple.private.ssr.voiceprofileservice", 0, 0);
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = mach_service;

  objc_initWeak(&location, self);
  v5 = self->_xpcConnection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SSRVoiceProfileXPCClient_connect__block_invoke;
  v6[3] = &unk_2785788F0;
  objc_copyWeak(&v7, &location);
  xpc_connection_set_event_handler(v5, v6);
  xpc_connection_activate(self->_xpcConnection);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __35__SSRVoiceProfileXPCClient_connect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (SSRVoiceProfileXPCClient)init
{
  v4.receiver = self;
  v4.super_class = SSRVoiceProfileXPCClient;
  v2 = [(SSRVoiceProfileXPCClient *)&v4 init];
  if (v2)
  {
    SSRLogInitIfNeeded();
  }

  return v2;
}

@end