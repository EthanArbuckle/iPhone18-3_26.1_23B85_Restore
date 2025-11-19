@interface SVXClientSpeechSynthesisService
- (BOOL)_handleSynthesizedBufferForHandlerUUID:(id)a3 audioChunkData:(id)a4 audioChunkIndex:(unint64_t)a5;
- (SVXClientSpeechSynthesisService)initWithClientServiceProvider:(id)a3 analytics:(id)a4 performer:(id)a5;
- (void)_addAudioChunkHandler:(id)a3 forUUID:(id)a4;
- (void)_removeAudioChunkHandlerForUUID:(id)a3;
- (void)cancelPendingRequest:(id)a3;
- (void)enqueueRequest:(id)a3 completion:(id)a4;
- (void)handleSynthesizedBufferForHandlerUUID:(id)a3 audioChunkData:(id)a4 audioChunkIndex:(unint64_t)a5 reply:(id)a6;
- (void)prewarmRequest:(id)a3;
- (void)stopRequest:(id)a3;
- (void)synthesizeRequest:(id)a3 audioChunkHandler:(id)a4 completion:(id)a5;
- (void)synthesizeRequest:(id)a3 completion:(id)a4;
@end

@implementation SVXClientSpeechSynthesisService

- (BOOL)_handleSynthesizedBufferForHandlerUUID:(id)a3 audioChunkData:(id)a4 audioChunkIndex:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315906;
    v20 = "[SVXClientSpeechSynthesisService _handleSynthesizedBufferForHandlerUUID:audioChunkData:audioChunkIndex:]";
    v21 = 2112;
    v22 = v8;
    v23 = 2048;
    v24 = a5;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s handlerUUID = %@, audioChunkIndex = %tu, audioChunkData = %@", &v19, 0x2Au);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
  {
LABEL_3:
    v12 = [(NSMutableDictionary *)self->_audioChunkHandlersByUUID objectForKey:v8];
    v13 = v12;
    v14 = v12 != 0;
    if (v12)
    {
      (*(v12 + 16))(v12, v9, a5);
    }

    else
    {
      v15 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[SVXClientSpeechSynthesisService _handleSynthesizedBufferForHandlerUUID:audioChunkData:audioChunkIndex:]";
        _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s Audio chunk handler is nil.", &v19, 0xCu);
      }
    }

    goto LABEL_12;
  }

  v16 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315138;
    v20 = "[SVXClientSpeechSynthesisService _handleSynthesizedBufferForHandlerUUID:audioChunkData:audioChunkIndex:]";
    _os_log_error_impl(&dword_2695B9000, v16, OS_LOG_TYPE_ERROR, "%s Audio chunk handler UUID is nil.", &v19, 0xCu);
  }

  v14 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_removeAudioChunkHandlerForUUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[SVXClientSpeechSynthesisService _removeAudioChunkHandlerForUUID:]";
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s handlerUUID = %@", &v7, 0x16u);
  }

  [(NSMutableDictionary *)self->_audioChunkHandlersByUUID removeObjectForKey:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addAudioChunkHandler:(id)a3 forUUID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if (!self->_audioChunkHandlersByUUID)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      audioChunkHandlersByUUID = self->_audioChunkHandlersByUUID;
      self->_audioChunkHandlersByUUID = v9;
    }

    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "[SVXClientSpeechSynthesisService _addAudioChunkHandler:forUUID:]";
      v17 = 2112;
      v18 = v8;
      _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s handlerUUID = %@", &v15, 0x16u);
    }

    v12 = self->_audioChunkHandlersByUUID;
    v13 = MEMORY[0x26D642680](v6);
    [(NSMutableDictionary *)v12 setObject:v13 forKey:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopRequest:(id)a3
{
  v4 = a3;
  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SVXClientSpeechSynthesisService_stopRequest___block_invoke;
  v7[3] = &unk_279C67900;
  v8 = v4;
  v6 = v4;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v7 errorHandler:&__block_literal_global_9];
}

void __47__SVXClientSpeechSynthesisService_stopRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientSpeechSynthesisService stopRequest:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingRequest:(id)a3
{
  v4 = a3;
  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SVXClientSpeechSynthesisService_cancelPendingRequest___block_invoke;
  v7[3] = &unk_279C67900;
  v8 = v4;
  v6 = v4;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v7 errorHandler:&__block_literal_global_7];
}

void __56__SVXClientSpeechSynthesisService_cancelPendingRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientSpeechSynthesisService cancelPendingRequest:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)enqueueRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke;
  v13[3] = &unk_279C675A0;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke_4;
  v11[3] = &unk_279C680E0;
  v12 = v16;
  v9 = v16;
  v10 = v6;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v13 errorHandler:v11];
}

void __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke_2;
  v6[3] = &unk_279C673E8;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 enqueueSpeechSynthesisRequest:v4 completion:v6];
}

void __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[SVXClientSpeechSynthesisService enqueueRequest:completion:]_block_invoke_4";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [[SVXSpeechSynthesisResult alloc] initWithType:4 utteranceInfo:0 error:v3];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)synthesizeRequest:(id)a3 audioChunkHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
  performer = self->_performer;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke;
  v27[3] = &unk_279C68EA8;
  v27[4] = self;
  v29 = v9;
  v13 = v11;
  v28 = v13;
  v14 = v9;
  [(SVXPerforming *)performer performBlock:v27];
  clientServiceProvider = self->_clientServiceProvider;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_2;
  v22[3] = &unk_279C67410;
  v23 = v8;
  v24 = v13;
  v25 = self;
  v26 = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_6;
  v19[3] = &unk_279C68360;
  v19[4] = self;
  v20 = v24;
  v21 = v26;
  v16 = v26;
  v17 = v24;
  v18 = v8;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v22 errorHandler:v19];
}

void __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_3;
  v7[3] = &unk_279C67D28;
  v6 = *(a1 + 40);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 56);
  [a2 synthesizeRequest:v4 handlerUUID:v5 completion:v7];
}

void __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_6(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "[SVXClientSpeechSynthesisService synthesizeRequest:audioChunkHandler:completion:]_block_invoke_6";
    v20 = 2112;
    v21 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *(v6 + 8);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_5;
  v15 = &unk_279C68FE8;
  v16 = v6;
  v17 = v5;
  [v7 performBlock:&v12];
  v8 = a1[6];
  if (v8)
  {
    v9 = [SVXSpeechSynthesisResult alloc];
    v10 = [(SVXSpeechSynthesisResult *)v9 initWithType:4 utteranceInfo:0 error:v3, v12, v13, v14, v15, v16];
    (*(v8 + 16))(v8, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_5(uint64_t a1)
{
  return [*(a1 + 32) _removeAudioChunkHandlerForUUID:*(a1 + 40)];
}

{
  return (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
}

void __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_4;
  v12[3] = &unk_279C68FE8;
  v12[4] = v5;
  v13 = v4;
  [v6 performBlock:v12];
  v7 = a1[6];
  if (v7)
  {
    v8 = *(a1[4] + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_5;
    v9[3] = &unk_279C68EF8;
    v11 = v7;
    v10 = v3;
    [v8 performBlock:v9];
  }
}

- (void)synthesizeRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke;
  v13[3] = &unk_279C675A0;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke_4;
  v11[3] = &unk_279C680E0;
  v12 = v16;
  v9 = v16;
  v10 = v6;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v13 errorHandler:v11];
}

void __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke_2;
  v6[3] = &unk_279C673E8;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 synthesizeRequest:v4 handlerUUID:0 completion:v6];
}

void __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[SVXClientSpeechSynthesisService synthesizeRequest:completion:]_block_invoke_4";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [[SVXSpeechSynthesisResult alloc] initWithType:4 utteranceInfo:0 error:v3];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke_3;
    v6[3] = &unk_279C68EF8;
    v8 = v4;
    v7 = v3;
    [v5 performBlock:v6];
  }
}

- (void)prewarmRequest:(id)a3
{
  v4 = a3;
  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SVXClientSpeechSynthesisService_prewarmRequest___block_invoke;
  v7[3] = &unk_279C67900;
  v8 = v4;
  v6 = v4;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v7 errorHandler:&__block_literal_global_5052];
}

void __50__SVXClientSpeechSynthesisService_prewarmRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientSpeechSynthesisService prewarmRequest:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (SVXClientSpeechSynthesisService)initWithClientServiceProvider:(id)a3 analytics:(id)a4 performer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SVXClientSpeechSynthesisService;
  v10 = [(SVXClientSpeechSynthesisService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, a5);
    objc_storeStrong(&v11->_clientServiceProvider, a3);
  }

  return v11;
}

- (void)handleSynthesizedBufferForHandlerUUID:(id)a3 audioChunkData:(id)a4 audioChunkIndex:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__SVXClientSpeechSynthesisService_handleSynthesizedBufferForHandlerUUID_audioChunkData_audioChunkIndex_reply___block_invoke;
  v17[3] = &unk_279C67FC0;
  v17[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [(SVXPerforming *)performer performBlock:v17];
}

uint64_t __110__SVXClientSpeechSynthesisService_handleSynthesizedBufferForHandlerUUID_audioChunkData_audioChunkIndex_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleSynthesizedBufferForHandlerUUID:*(a1 + 40) audioChunkData:*(a1 + 48) audioChunkIndex:*(a1 + 64)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end