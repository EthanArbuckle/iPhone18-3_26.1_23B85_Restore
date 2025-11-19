@interface SVXSynthesisManager
- (SVXSynthesisManager)initWithModule:(id)a3;
- (SVXSynthesisManager)initWithPerformer:(id)a3 remoteDelegateSupplier:(id)a4;
- (id)_createGroup;
- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4;
- (void)stopWithModuleInstanceProvider:(id)a3;
- (void)synthesizeRequest:(id)a3 xpcConnection:(id)a4 handlerUUID:(id)a5 completion:(id)a6;
@end

@implementation SVXSynthesisManager

- (id)_createGroup
{
  v2 = dispatch_group_create();

  return v2;
}

- (void)synthesizeRequest:(id)a3 xpcConnection:(id)a4 handlerUUID:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(SVXSynthesisManager *)self _createGroup];
  speechSynthesizer = self->_speechSynthesizer;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke;
  v24[3] = &unk_279C67D00;
  v25 = v11;
  v26 = v14;
  v27 = self;
  v28 = v10;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_8;
  v20[3] = &unk_279C67D28;
  v21 = v26;
  v22 = self;
  v23 = v12;
  v16 = v12;
  v17 = v26;
  v18 = v10;
  v19 = v11;
  [(SVXSpeechSynthesizer *)speechSynthesizer synthesizeRequest:v13 audioChunkHandler:v24 taskTracker:0 analyticsContext:0 completion:v20];
}

void __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 audioChunkIndex];
  v5 = [v3 audioChunkData];

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v25 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke";
      v26 = 2112;
      v27 = v6;
      v28 = 2048;
      v29 = v4;
      v30 = 2112;
      v31 = v5;
      _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s handlerUUID = %@, audioChunkIndex = %tu, audioChunkData = %@", buf, 0x2Au);
    }

    dispatch_group_enter(*(a1 + 40));
    v8 = objc_alloc(MEMORY[0x277CEF380]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_2;
    v22[3] = &unk_279C67CB0;
    v23 = *(a1 + 40);
    v9 = [v8 initWithBlock:v22];
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(v11 + 8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_2;
    v16[3] = &unk_279C67CD8;
    v16[4] = v11;
    v17 = v10;
    v18 = v9;
    v19 = *(a1 + 32);
    v20 = v5;
    v21 = v4;
    v13 = v9;
    [v12 performBlock:v16];
  }

  else if (!v4)
  {
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke";
      _os_log_debug_impl(&dword_2695B9000, v14, OS_LOG_TYPE_DEBUG, "%s Not sending audio chunks to client because the handler UUID is nil.", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s result = %@", buf, 0x16u);
  }

  if (*(a1 + 32))
  {
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke";
      _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s Waiting for pending audio chunks to be sent to the client and acknowledged by the client...", buf, 0xCu);
    }

    v7 = *(*(a1 + 40) + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_9;
    v10[3] = &unk_279C68EF8;
    v12 = *(a1 + 48);
    v11 = v3;
    [v7 performBlock:v10 afterGroup:*(a1 + 32)];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v3);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_9(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke";
    _os_log_debug_impl(&dword_2695B9000, v2, OS_LOG_TYPE_DEBUG, "%s Finished waiting for pending audio chunks to be sent to the client and acknowledged by the client.", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 32));
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_2(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
}

{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_3;
  v10[3] = &unk_279C68108;
  v11 = *(a1 + 48);
  v4 = [v3 remoteServiceDelegateWithConnection:v2 errorHandler:v10];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_4;
  v8[3] = &unk_279C68CD8;
  v9 = *(a1 + 48);
  [v4 handleSpeechSynthesisSynthesizedBufferForHandlerUUID:v5 audioChunkData:v6 audioChunkIndex:v7 reply:v8];
}

void __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
  }

  [*(a1 + 32) invokeWithSignal:-4];

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __78__SVXSynthesisManager_synthesizeRequest_xpcConnection_handlerUUID_completion___block_invoke_4(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[SVXSynthesisManager synthesizeRequest:xpcConnection:handlerUUID:completion:]_block_invoke";
    v9 = 1024;
    v10 = a2;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s handled = %d", &v7, 0x12u);
  }

  result = [*(a1 + 32) invokeWithSignal:0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopWithModuleInstanceProvider:(id)a3
{
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = 0;
  MEMORY[0x2821F96F8]();
}

- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4
{
  v5 = [a3 speechSynthesizer];
  speechSynthesizer = self->_speechSynthesizer;
  self->_speechSynthesizer = v5;

  MEMORY[0x2821F96F8]();
}

- (SVXSynthesisManager)initWithModule:(id)a3
{
  v4 = [a3 performer];
  v5 = objc_alloc_init(SVXClientServiceRemoteDelegateSupplier);
  v6 = [(SVXSynthesisManager *)self initWithPerformer:v4 remoteDelegateSupplier:v5];

  return v6;
}

- (SVXSynthesisManager)initWithPerformer:(id)a3 remoteDelegateSupplier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SVXSynthesisManager;
  v9 = [(SVXSynthesisManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_performer, a3);
    objc_storeStrong(&v10->_remoteDelegateSupplier, a4);
  }

  return v10;
}

@end