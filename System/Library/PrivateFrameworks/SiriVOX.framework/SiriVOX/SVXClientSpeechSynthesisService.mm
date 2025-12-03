@interface SVXClientSpeechSynthesisService
- (BOOL)_handleSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index;
- (SVXClientSpeechSynthesisService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (void)_addAudioChunkHandler:(id)handler forUUID:(id)d;
- (void)_removeAudioChunkHandlerForUUID:(id)d;
- (void)cancelPendingRequest:(id)request;
- (void)enqueueRequest:(id)request completion:(id)completion;
- (void)handleSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index reply:(id)reply;
- (void)prewarmRequest:(id)request;
- (void)stopRequest:(id)request;
- (void)synthesizeRequest:(id)request audioChunkHandler:(id)handler completion:(id)completion;
- (void)synthesizeRequest:(id)request completion:(id)completion;
@end

@implementation SVXClientSpeechSynthesisService

- (BOOL)_handleSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315906;
    v20 = "[SVXClientSpeechSynthesisService _handleSynthesizedBufferForHandlerUUID:audioChunkData:audioChunkIndex:]";
    v21 = 2112;
    v22 = dCopy;
    v23 = 2048;
    indexCopy = index;
    v25 = 2112;
    v26 = dataCopy;
    _os_log_debug_impl(&dword_2695B9000, v11, OS_LOG_TYPE_DEBUG, "%s handlerUUID = %@, audioChunkIndex = %tu, audioChunkData = %@", &v19, 0x2Au);
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else if (dCopy)
  {
LABEL_3:
    v12 = [(NSMutableDictionary *)self->_audioChunkHandlersByUUID objectForKey:dCopy];
    v13 = v12;
    v14 = v12 != 0;
    if (v12)
    {
      (*(v12 + 16))(v12, dataCopy, index);
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

- (void)_removeAudioChunkHandlerForUUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[SVXClientSpeechSynthesisService _removeAudioChunkHandlerForUUID:]";
    v9 = 2112;
    v10 = dCopy;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s handlerUUID = %@", &v7, 0x16u);
  }

  [(NSMutableDictionary *)self->_audioChunkHandlersByUUID removeObjectForKey:dCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addAudioChunkHandler:(id)handler forUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dCopy = d;
  v8 = dCopy;
  if (handlerCopy && dCopy)
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
    v13 = MEMORY[0x26D642680](handlerCopy);
    [(NSMutableDictionary *)v12 setObject:v13 forKey:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopRequest:(id)request
{
  requestCopy = request;
  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SVXClientSpeechSynthesisService_stopRequest___block_invoke;
  v7[3] = &unk_279C67900;
  v8 = requestCopy;
  v6 = requestCopy;
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

- (void)cancelPendingRequest:(id)request
{
  requestCopy = request;
  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SVXClientSpeechSynthesisService_cancelPendingRequest___block_invoke;
  v7[3] = &unk_279C67900;
  v8 = requestCopy;
  v6 = requestCopy;
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

- (void)enqueueRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke;
  v13[3] = &unk_279C675A0;
  v14 = requestCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SVXClientSpeechSynthesisService_enqueueRequest_completion___block_invoke_4;
  v11[3] = &unk_279C680E0;
  v12 = v16;
  v9 = v16;
  v10 = requestCopy;
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

- (void)synthesizeRequest:(id)request audioChunkHandler:(id)handler completion:(id)completion
{
  requestCopy = request;
  handlerCopy = handler;
  completionCopy = completion;
  v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
  performer = self->_performer;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke;
  v27[3] = &unk_279C68EA8;
  v27[4] = self;
  v29 = handlerCopy;
  v13 = v11;
  v28 = v13;
  v14 = handlerCopy;
  [(SVXPerforming *)performer performBlock:v27];
  clientServiceProvider = self->_clientServiceProvider;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_2;
  v22[3] = &unk_279C67410;
  v23 = requestCopy;
  v24 = v13;
  selfCopy = self;
  v26 = completionCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__SVXClientSpeechSynthesisService_synthesizeRequest_audioChunkHandler_completion___block_invoke_6;
  v19[3] = &unk_279C68360;
  v19[4] = self;
  v20 = v24;
  v21 = v26;
  v16 = v26;
  v17 = v24;
  v18 = requestCopy;
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

- (void)synthesizeRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke;
  v13[3] = &unk_279C675A0;
  v14 = requestCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SVXClientSpeechSynthesisService_synthesizeRequest_completion___block_invoke_4;
  v11[3] = &unk_279C680E0;
  v12 = v16;
  v9 = v16;
  v10 = requestCopy;
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

- (void)prewarmRequest:(id)request
{
  requestCopy = request;
  clientServiceProvider = self->_clientServiceProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SVXClientSpeechSynthesisService_prewarmRequest___block_invoke;
  v7[3] = &unk_279C67900;
  v8 = requestCopy;
  v6 = requestCopy;
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

- (SVXClientSpeechSynthesisService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientSpeechSynthesisService;
  v10 = [(SVXClientSpeechSynthesisService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

- (void)handleSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index reply:(id)reply
{
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__SVXClientSpeechSynthesisService_handleSynthesizedBufferForHandlerUUID_audioChunkData_audioChunkIndex_reply___block_invoke;
  v17[3] = &unk_279C67FC0;
  v17[4] = self;
  v18 = dCopy;
  v20 = replyCopy;
  indexCopy = index;
  v19 = dataCopy;
  v14 = replyCopy;
  v15 = dataCopy;
  v16 = dCopy;
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