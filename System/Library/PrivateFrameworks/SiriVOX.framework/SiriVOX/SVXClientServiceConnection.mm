@interface SVXClientServiceConnection
- (SVXClientServiceConnection)initWithComponents:(unint64_t)components delegate:(id)delegate;
- (SVXClientServiceConnection)initWithComponents:(unint64_t)components instanceContext:(id)context delegate:(id)delegate;
- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 connectionFactory:(id)self3 delegate:(id)self4;
- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 delegate:(id)self3;
- (id)_clientServiceWithErrorHandler:(id)handler;
- (id)_connection;
- (void)_cleanUpComponents;
- (void)_cleanUpConnection;
- (void)_invalidate;
- (void)activateWithContext:(id)context completion:(id)completion;
- (void)cancelPendingSpeechSynthesisRequest:(id)request;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)deactivateWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)enqueueSpeechSynthesisRequest:(id)request completion:(id)completion;
- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion;
- (void)fetchAudioPowerWithType:(int64_t)type completion:(id)completion;
- (void)fetchSessionActivityStateWithCompletion:(id)completion;
- (void)fetchSessionStateWithCompletion:(id)completion;
- (void)getClientServiceUsingBlock:(id)block errorHandler:(id)handler;
- (void)getInstanceInfoWithCompletion:(id)completion;
- (void)handleSpeechSynthesisSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index reply:(id)reply;
- (void)invalidate;
- (void)notifyDidActivateWithContext:(id)context;
- (void)notifyDidChangeSessionStateFrom:(int64_t)from to:(int64_t)to;
- (void)notifyDidDeactivateWithContext:(id)context;
- (void)notifyDidEndUpdateAudioPowerWithType:(int64_t)type;
- (void)notifyDidNotActivateWithContext:(id)context error:(id)error;
- (void)notifySessionDidBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)notifySessionDidResignActiveWithDeactivationContext:(id)context;
- (void)notifySessionDidStartSoundWithID:(int64_t)d;
- (void)notifySessionDidStopSoundWithID:(int64_t)d error:(id)error;
- (void)notifySessionWillBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)notifySessionWillPresentFeedbackWithDialogIdentifier:(id)identifier;
- (void)notifySessionWillResignActiveWithOptions:(unint64_t)options duration:(double)duration;
- (void)notifySessionWillStartSoundWithID:(int64_t)d;
- (void)notifyWillActivateWithContext:(id)context;
- (void)notifyWillBeginUpdateAudioPowerWithType:(int64_t)type wrapper:(id)wrapper;
- (void)notifyWillChangeSessionStateFrom:(int64_t)from to:(int64_t)to;
- (void)notifyWillDeactivateWithContext:(id)context;
- (void)performManualEndpointing;
- (void)pingWithReply:(id)reply;
- (void)preheatWithActivationSource:(int64_t)source;
- (void)prepareForDeviceSetupWithContext:(id)context completion:(id)completion;
- (void)prewarmRequest:(id)request;
- (void)prewarmWithContext:(id)context completion:(id)completion;
- (void)requestPermissionToActivateWithContext:(id)context completion:(id)completion;
- (void)setDeviceSetupContext:(id)context;
- (void)stopSpeechSynthesisRequest:(id)request;
- (void)synthesizeRequest:(id)request handlerUUID:(id)d completion:(id)completion;
- (void)transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp;
@end

@implementation SVXClientServiceConnection

- (void)_cleanUpComponents
{
  activationService = self->_activationService;
  self->_activationService = 0;

  audioSystemService = self->_audioSystemService;
  self->_audioSystemService = 0;

  deviceService = self->_deviceService;
  self->_deviceService = 0;

  inputAudioPowerService = self->_inputAudioPowerService;
  self->_inputAudioPowerService = 0;

  outputAudioPowerService = self->_outputAudioPowerService;
  self->_outputAudioPowerService = 0;

  sessionService = self->_sessionService;
  self->_sessionService = 0;

  speechSynthesisService = self->_speechSynthesisService;
  self->_speechSynthesisService = 0;

  keepAliveService = self->_keepAliveService;
  self->_keepAliveService = 0;
}

- (void)_cleanUpConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setExportedObject:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[SVXClientServiceConnection connectionInvalidated]";
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SVXClientServiceConnection_connectionInvalidated__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SVXClientServiceConnection_connectionInvalidated__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) != 0 || !*(v2 + 88))
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke";
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEFAULT, "%s Invalidate", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    result = [v2 _invalidate];
  }

  else
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEFAULT, "%s KeepAlive", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    [v2 _cleanUpConnection];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_28;
    v9[3] = &unk_279C68108;
    v9[4] = v4;
    result = [v5 connectWithCompletion:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_2;
  v7[3] = &unk_279C68FE8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

uint64_t __51__SVXClientServiceConnection_connectionInvalidated__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Failed KeepAlive (error = %@)", &v7, 0x16u);
    }

    result = [*(a1 + 40) _invalidate];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SVXClientServiceConnection connectionInvalidated]_block_invoke";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEFAULT, "%s Done KeepAlive", &v7, 0xCu);
    }

    result = [*(a1 + 40) _clientServiceDidChange:1];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)connectionInterrupted
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[SVXClientServiceConnection connectionInterrupted]";
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SVXClientServiceConnection_connectionInterrupted__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SVXClientServiceConnection_connectionInterrupted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpConnection];
  v2 = *(a1 + 32);

  return [v2 _clientServiceDidChange:0];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(SVXXPCConnectionFactory *)self->_connectionFactory createWithMachServiceName:@"com.apple.SiriVOXService.client" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    queue = [(SVXQueuePerformer *)self->_queuePerformer queue];
    [(NSXPCConnection *)v6 _setQueue:queue];

    v8 = self->_connection;
    v9 = SVXClientServiceCreateXPCInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v10 = self->_connection;
    v11 = SVXClientServiceDelegateCreateXPCInterface();
    [(NSXPCConnection *)v10 setExportedInterface:v11];

    objc_initWeak(&location, self);
    v12 = self->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__SVXClientServiceConnection__connection__block_invoke;
    v17[3] = &unk_279C69088;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v17];
    v13 = self->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__SVXClientServiceConnection__connection__block_invoke_2;
    v15[3] = &unk_279C69088;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v15];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __41__SVXClientServiceConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInterrupted];
}

void __41__SVXClientServiceConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (id)_clientServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!self->_isInvalid)
  {
    _connection = [(SVXClientServiceConnection *)self _connection];
    v7 = [_connection remoteObjectProxyWithErrorHandler:v5];
    goto LABEL_5;
  }

  if (handlerCopy)
  {
    _connection = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    (v5)[2](v5, _connection);
    v7 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)_invalidate
{
  if (!self->_isInvalid)
  {
    self->_isInvalid = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientServiceConnectionDidInvalidate:self];
  }

  [(SVXClientServiceConnection *)self _cleanUpComponents];

  [(SVXClientServiceConnection *)self _cleanUpConnection];
}

- (void)getClientServiceUsingBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  queuePerformer = self->_queuePerformer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SVXClientServiceConnection_getClientServiceUsingBlock_errorHandler___block_invoke;
  v11[3] = &unk_279C666B8;
  v11[4] = self;
  v12 = handlerCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = handlerCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v11];
}

void __70__SVXClientServiceConnection_getClientServiceUsingBlock_errorHandler___block_invoke(void *a1)
{
  if (*(a1[4] + 24) == 1)
  {
    v1 = a1[5];
    if (v1)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
      (*(v1 + 16))(v1, v4);
    }
  }

  else
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }
}

- (void)handleSpeechSynthesisSynthesizedBufferForHandlerUUID:(id)d audioChunkData:(id)data audioChunkIndex:(unint64_t)index reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315906;
    v16 = "[SVXClientServiceConnection handleSpeechSynthesisSynthesizedBufferForHandlerUUID:audioChunkData:audioChunkIndex:reply:]";
    v17 = 2112;
    v18 = dCopy;
    v19 = 2048;
    indexCopy = index;
    v21 = 2112;
    v22 = dataCopy;
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s handlerUUID = %@, audioChunkIndex = %tu, audioChunkData = %@", &v15, 0x2Au);
  }

  [(SVXClientSpeechSynthesisService *)self->_speechSynthesisService handleSynthesizedBufferForHandlerUUID:dCopy audioChunkData:dataCopy audioChunkIndex:index reply:replyCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidEndUpdateAudioPowerWithType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (type > 2)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C67430[type];
    }

    v8 = v7;
    v11 = 136315394;
    v12 = "[SVXClientServiceConnection notifyDidEndUpdateAudioPowerWithType:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s type = %@", &v11, 0x16u);
  }

  if (type == 1)
  {
    v9 = 48;
    goto LABEL_10;
  }

  if (type == 2)
  {
    v9 = 56;
LABEL_10:
    [*(&self->super.isa + v9) handleDidEndUpdateAudioPower];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyWillBeginUpdateAudioPowerWithType:(int64_t)type wrapper:(id)wrapper
{
  v20 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (type > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67430[type];
    }

    v10 = v9;
    v14 = 136315650;
    v15 = "[SVXClientServiceConnection notifyWillBeginUpdateAudioPowerWithType:wrapper:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = wrapperCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s type = %@, wrapper = %@", &v14, 0x20u);
  }

  if (type == 1)
  {
    v11 = 48;
    goto LABEL_10;
  }

  if (type == 2)
  {
    v11 = 56;
LABEL_10:
    v12 = [objc_alloc(MEMORY[0x277CEF198]) initWithXPCWrapper:wrapperCopy];
    [*(&self->super.isa + v11) handleWillBeginUpdateAudioPowerWithProvider:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionDidResignActiveWithDeactivationContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection notifySessionDidResignActiveWithDeactivationContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deactivationContext = %@", &v7, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidResignActiveWithDeactivationContext:contextCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionWillResignActiveWithOptions:(unint64_t)options duration:(double)duration
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = SVXSessionResignActiveOptionsGetNames(options);
    v11 = 136315650;
    v12 = "[SVXClientServiceConnection notifySessionWillResignActiveWithOptions:duration:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s options = %@, duration = %f", &v11, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillResignActiveWithOptions:options duration:duration];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionDidBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[SVXClientServiceConnection notifySessionDidBecomeActiveWithActivationContext:turnID:]";
    v12 = 2112;
    v13 = contextCopy;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activationContext = %@, turnID = %@", &v10, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidBecomeActiveWithActivationContext:contextCopy turnID:dCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionWillBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[SVXClientServiceConnection notifySessionWillBecomeActiveWithActivationContext:turnID:]";
    v12 = 2112;
    v13 = contextCopy;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activationContext = %@, turnID = %@", &v10, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillBecomeActiveWithActivationContext:contextCopy turnID:dCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionDidStopSoundWithID:(int64_t)d error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (d > 6)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C677F8[d];
    }

    v10 = v9;
    v12 = 136315650;
    v13 = "[SVXClientServiceConnection notifySessionDidStopSoundWithID:error:]";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s soundID = %@, error = %@", &v12, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidStopSoundWithID:d error:errorCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionDidStartSoundWithID:(int64_t)d
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (d > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C677F8[d];
    }

    v8 = v7;
    v10 = 136315394;
    v11 = "[SVXClientServiceConnection notifySessionDidStartSoundWithID:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s soundID = %@", &v10, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidStartSoundWithID:d];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionWillStartSoundWithID:(int64_t)d
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (d > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C677F8[d];
    }

    v8 = v7;
    v10 = 136315394;
    v11 = "[SVXClientServiceConnection notifySessionWillStartSoundWithID:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s soundID = %@", &v10, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillStartSoundWithID:d];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifySessionWillPresentFeedbackWithDialogIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection notifySessionWillPresentFeedbackWithDialogIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s dialogIdentifier = %@", &v7, 0x16u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillPresentFeedbackWithDialogIdentifier:identifierCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidChangeSessionStateFrom:(int64_t)from to:(int64_t)to
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (from > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[from];
    }

    v10 = v9;
    if (to > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[to];
    }

    v12 = v11;
    v14 = 136315650;
    v15 = "[SVXClientServiceConnection notifyDidChangeSessionStateFrom:to:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", &v14, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleDidChangeStateFrom:from to:to];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyWillChangeSessionStateFrom:(int64_t)from to:(int64_t)to
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (from > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[from];
    }

    v10 = v9;
    if (to > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[to];
    }

    v12 = v11;
    v14 = 136315650;
    v15 = "[SVXClientServiceConnection notifyWillChangeSessionStateFrom:to:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", &v14, 0x20u);
  }

  [(SVXClientSessionService *)self->_sessionService handleWillChangeStateFrom:from to:to];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidDeactivateWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection notifyDidDeactivateWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v7, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleDidDeactivateWithContext:contextCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyWillDeactivateWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection notifyWillDeactivateWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v7, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleWillDeactivateWithContext:contextCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidNotActivateWithContext:(id)context error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  errorCopy = error;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[SVXClientServiceConnection notifyDidNotActivateWithContext:error:]";
    v12 = 2112;
    v13 = contextCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@, error = %@", &v10, 0x20u);
  }

  [(SVXClientActivationService *)self->_activationService handleDidNotActivateWithContext:contextCopy error:errorCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidActivateWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection notifyDidActivateWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v7, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleDidActivateWithContext:contextCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyWillActivateWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection notifyWillActivateWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v7, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleWillActivateWithContext:contextCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestPermissionToActivateWithContext:(id)context completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SVXClientServiceConnection requestPermissionToActivateWithContext:completion:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", &v10, 0x16u);
  }

  [(SVXClientActivationService *)self->_activationService handleRequestPermissionToActivateWithContext:contextCopy completion:completionCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getInstanceInfoWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SVXClientServiceConnection getInstanceInfoWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  if (completionCopy)
  {
    info = [(AFInstanceContext *)self->_instanceContext info];
    completionCopy[2](completionCopy, info, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareForDeviceSetupWithContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SVXClientServiceConnection prepareForDeviceSetupWithContext:completion:]";
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke;
  v13[3] = &unk_279C68EA8;
  v14 = contextCopy;
  v15 = completionCopy;
  v13[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 prepareForDeviceSetupWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __74__SVXClientServiceConnection_prepareForDeviceSetupWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection prepareForDeviceSetupWithContext:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceSetupContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceConnection setDeviceSetupContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SVXClientServiceConnection_setDeviceSetupContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __52__SVXClientServiceConnection_setDeviceSetupContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_25];
  [v2 setDeviceSetupContext:*(a1 + 40)];
}

void __52__SVXClientServiceConnection_setDeviceSetupContext___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceConnection setDeviceSetupContext:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopSpeechSynthesisRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceConnection stopSpeechSynthesisRequest:]";
    v13 = 2112;
    v14 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SVXClientServiceConnection_stopSpeechSynthesisRequest___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = requestCopy;
  v7 = requestCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __57__SVXClientServiceConnection_stopSpeechSynthesisRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_23];
  [v2 stopSpeechSynthesisRequest:*(a1 + 40)];
}

void __57__SVXClientServiceConnection_stopSpeechSynthesisRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceConnection stopSpeechSynthesisRequest:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingSpeechSynthesisRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceConnection cancelPendingSpeechSynthesisRequest:]";
    v13 = 2112;
    v14 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SVXClientServiceConnection_cancelPendingSpeechSynthesisRequest___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = requestCopy;
  v7 = requestCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __66__SVXClientServiceConnection_cancelPendingSpeechSynthesisRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_21];
  [v2 cancelPendingSpeechSynthesisRequest:*(a1 + 40)];
}

void __66__SVXClientServiceConnection_cancelPendingSpeechSynthesisRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceConnection cancelPendingSpeechSynthesisRequest:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)enqueueSpeechSynthesisRequest:(id)request completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SVXClientServiceConnection enqueueSpeechSynthesisRequest:completion:]";
    v18 = 2112;
    v19 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke;
  v13[3] = &unk_279C68EA8;
  v14 = requestCopy;
  v15 = completionCopy;
  v13[4] = self;
  v10 = requestCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 enqueueSpeechSynthesisRequest:*(a1 + 40) completion:*(a1 + 48)];
}

void __71__SVXClientServiceConnection_enqueueSpeechSynthesisRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[SVXClientServiceConnection enqueueSpeechSynthesisRequest:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [[SVXSpeechSynthesisResult alloc] initWithType:4 utteranceInfo:0 error:v3];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)synthesizeRequest:(id)request handlerUUID:(id)d completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[SVXClientServiceConnection synthesizeRequest:handlerUUID:completion:]";
    v23 = 2112;
    v24 = requestCopy;
    v25 = 2112;
    v26 = dCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s request = %@, handlerUUID = %@", buf, 0x20u);
  }

  queuePerformer = self->_queuePerformer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke;
  v17[3] = &unk_279C69038;
  v17[4] = self;
  v18 = requestCopy;
  v19 = dCopy;
  v20 = completionCopy;
  v13 = dCopy;
  v14 = requestCopy;
  v15 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 56);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 synthesizeRequest:*(a1 + 40) handlerUUID:*(a1 + 48) completion:*(a1 + 56)];
}

void __71__SVXClientServiceConnection_synthesizeRequest_handlerUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[SVXClientServiceConnection synthesizeRequest:handlerUUID:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [[SVXSpeechSynthesisResult alloc] initWithType:4 utteranceInfo:0 error:v3];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prewarmRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientServiceConnection prewarmRequest:]";
    v13 = 2112;
    v14 = requestCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s request = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SVXClientServiceConnection_prewarmRequest___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = requestCopy;
  v7 = requestCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SVXClientServiceConnection_prewarmRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_18];
  [v2 prewarmRequest:*(a1 + 40)];
}

void __45__SVXClientServiceConnection_prewarmRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceConnection prewarmRequest:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchAudioPowerWithType:(int64_t)type completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (type > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67430[type];
    }

    v10 = v9;
    *buf = 136315394;
    v18 = "[SVXClientServiceConnection fetchAudioPowerWithType:completion:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s type = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke;
  v14[3] = &unk_279C68D70;
  v14[4] = self;
  v15 = completionCopy;
  typeCopy = type;
  v12 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchAudioPowerWithType:*(a1 + 48) completion:*(a1 + 40)];
}

void __65__SVXClientServiceConnection_fetchAudioPowerWithType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection fetchAudioPowerWithType:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)prewarmWithContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SVXClientServiceConnection prewarmWithContext:completion:]";
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke;
  v13[3] = &unk_279C68EA8;
  v14 = contextCopy;
  v15 = completionCopy;
  v13[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 prewarmWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __60__SVXClientServiceConnection_prewarmWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection prewarmWithContext:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)preheatWithActivationSource:(int64_t)source
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (source > 9)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C67C58[source];
    }

    v8 = v7;
    *buf = 136315394;
    v13 = "[SVXClientServiceConnection preheatWithActivationSource:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s activationSource = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SVXClientServiceConnection_preheatWithActivationSource___block_invoke;
  v11[3] = &unk_279C68C68;
  v11[4] = self;
  v11[5] = source;
  [(SVXQueuePerformer *)queuePerformer performBlock:v11];
  v10 = *MEMORY[0x277D85DE8];
}

void __58__SVXClientServiceConnection_preheatWithActivationSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_16];
  [v2 preheatWithActivationSource:*(a1 + 40)];
}

void __58__SVXClientServiceConnection_preheatWithActivationSource___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceConnection preheatWithActivationSource:]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion
{
  completionCopy = completion;
  queuePerformer = self->_queuePerformer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v7];
}

void __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchAlarmAndTimerFiringContextWithCompletion:*(a1 + 40)];
}

void __76__SVXClientServiceConnection_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchSessionActivityStateWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXClientServiceConnection fetchSessionActivityStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke;
  v9[3] = &unk_279C68EF8;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchSessionActivityStateWithCompletion:*(a1 + 40)];
}

void __70__SVXClientServiceConnection_fetchSessionActivityStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection fetchSessionActivityStateWithCompletion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchSessionStateWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXClientServiceConnection fetchSessionStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke;
  v9[3] = &unk_279C68EF8;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 fetchSessionStateWithCompletion:*(a1 + 40)];
}

void __62__SVXClientServiceConnection_fetchSessionStateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection fetchSessionStateWithCompletion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)transitToAutomaticEndpointingWithTimestamp:(unint64_t)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[SVXClientServiceConnection transitToAutomaticEndpointingWithTimestamp:]";
    v11 = 2048;
    timestampCopy = timestamp;
    _os_log_debug_impl(&dword_2695B9000, v5, OS_LOG_TYPE_DEBUG, "%s timestamp = %lld", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke;
  v8[3] = &unk_279C68C68;
  v8[4] = self;
  v8[5] = timestamp;
  [(SVXQueuePerformer *)queuePerformer performBlock:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_2;
  v4[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v4[4] = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 transitToAutomaticEndpointingWithTimestamp:*(a1 + 40)];
}

void __73__SVXClientServiceConnection_transitToAutomaticEndpointingWithTimestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[SVXClientServiceConnection transitToAutomaticEndpointingWithTimestamp:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    v11 = 2048;
    v12 = v6;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@, timestamp = %lld", &v7, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)performManualEndpointing
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXClientServiceConnection performManualEndpointing]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SVXClientServiceConnection_performManualEndpointing__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

void __54__SVXClientServiceConnection_performManualEndpointing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _clientServiceWithErrorHandler:&__block_literal_global_621];
  [v1 performManualEndpointing];
}

void __54__SVXClientServiceConnection_performManualEndpointing__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientServiceConnection performManualEndpointing]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deactivateWithContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SVXClientServiceConnection deactivateWithContext:completion:]";
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke;
  v13[3] = &unk_279C68EA8;
  v14 = contextCopy;
  v15 = completionCopy;
  v13[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 deactivateWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __63__SVXClientServiceConnection_deactivateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection deactivateWithContext:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)activateWithContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SVXClientServiceConnection activateWithContext:completion:]";
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queuePerformer = self->_queuePerformer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke;
  v13[3] = &unk_279C68EA8;
  v14 = contextCopy;
  v15 = completionCopy;
  v13[4] = self;
  v10 = contextCopy;
  v11 = completionCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v5 = *(a1 + 48);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 activateWithContext:*(a1 + 40) completion:*(a1 + 48)];
}

void __61__SVXClientServiceConnection_activateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection activateWithContext:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pingWithReply:(id)reply
{
  v13 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXClientServiceConnection pingWithReply:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queuePerformer = self->_queuePerformer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SVXClientServiceConnection_pingWithReply___block_invoke;
  v9[3] = &unk_279C68EF8;
  v9[4] = self;
  v10 = replyCopy;
  v7 = replyCopy;
  [(SVXQueuePerformer *)queuePerformer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __44__SVXClientServiceConnection_pingWithReply___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SVXClientServiceConnection_pingWithReply___block_invoke_2;
  v4[3] = &unk_279C680E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientServiceWithErrorHandler:v4];
  [v3 pingWithReply:*(a1 + 40)];
}

void __44__SVXClientServiceConnection_pingWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientServiceConnection pingWithReply:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queuePerformer = self->_queuePerformer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__SVXClientServiceConnection_invalidate__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXQueuePerformer *)queuePerformer performBlock:v3];
}

- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 connectionFactory:(id)self3 delegate:(id)self4
{
  v48 = *MEMORY[0x277D85DE8];
  performerCopy = performer;
  serviceCopy = service;
  serviceCopy2 = service;
  systemServiceCopy = systemService;
  systemServiceCopy2 = systemService;
  deviceServiceCopy = deviceService;
  powerServiceCopy = powerService;
  audioPowerServiceCopy = audioPowerService;
  sessionServiceCopy = sessionService;
  synthesisServiceCopy = synthesisService;
  aliveServiceCopy = aliveService;
  contextCopy = context;
  factoryCopy = factory;
  delegateCopy = delegate;
  v45.receiver = self;
  v45.super_class = SVXClientServiceConnection;
  v22 = [(SVXClientServiceConnection *)&v45 init];
  if (v22)
  {
    v33 = factoryCopy;
    v23 = delegateCopy;
    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[SVXClientServiceConnection initWithQueuePerformer:activationService:audioSystemService:deviceService:inputAudioPowerService:outputAudioPowerService:sessionService:speechSynthesisService:keepAliveService:instanceContext:connectionFactory:delegate:]";
      _os_log_impl(&dword_2695B9000, v24, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    objc_storeStrong(&v22->_queuePerformer, performer);
    objc_storeStrong(&v22->_activationService, serviceCopy);
    objc_storeStrong(&v22->_audioSystemService, systemServiceCopy);
    objc_storeStrong(&v22->_deviceService, deviceService);
    objc_storeStrong(&v22->_inputAudioPowerService, powerService);
    objc_storeStrong(&v22->_outputAudioPowerService, audioPowerService);
    objc_storeStrong(&v22->_sessionService, sessionService);
    objc_storeStrong(&v22->_speechSynthesisService, synthesisService);
    objc_storeStrong(&v22->_keepAliveService, aliveService);
    if (contextCopy)
    {
      defaultContext = contextCopy;
    }

    else
    {
      defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
    }

    instanceContext = v22->_instanceContext;
    v22->_instanceContext = defaultContext;
    delegateCopy = v23;

    objc_storeStrong(&v22->_connectionFactory, factory);
    objc_storeWeak(&v22->_delegate, v23);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __249__SVXClientServiceConnection_initWithQueuePerformer_activationService_audioSystemService_deviceService_inputAudioPowerService_outputAudioPowerService_sessionService_speechSynthesisService_keepAliveService_instanceContext_connectionFactory_delegate___block_invoke;
    v43[3] = &unk_279C68108;
    v44 = v22;
    [(SVXClientServiceConnection *)v44 pingWithReply:v43];

    factoryCopy = v33;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

void __249__SVXClientServiceConnection_initWithQueuePerformer_activationService_audioSystemService_deviceService_inputAudioPowerService_outputAudioPowerService_sessionService_speechSynthesisService_keepAliveService_instanceContext_connectionFactory_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __249__SVXClientServiceConnection_initWithQueuePerformer_activationService_audioSystemService_deviceService_inputAudioPowerService_outputAudioPowerService_sessionService_speechSynthesisService_keepAliveService_instanceContext_connectionFactory_delegate___block_invoke_2;
  v7[3] = &unk_279C68FE8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

- (SVXClientServiceConnection)initWithQueuePerformer:(id)performer activationService:(id)service audioSystemService:(id)systemService deviceService:(id)deviceService inputAudioPowerService:(id)powerService outputAudioPowerService:(id)audioPowerService sessionService:(id)sessionService speechSynthesisService:(id)self0 keepAliveService:(id)self1 instanceContext:(id)self2 delegate:(id)self3
{
  delegateCopy = delegate;
  contextCopy = context;
  aliveServiceCopy = aliveService;
  synthesisServiceCopy = synthesisService;
  sessionServiceCopy = sessionService;
  audioPowerServiceCopy = audioPowerService;
  powerServiceCopy = powerService;
  deviceServiceCopy = deviceService;
  systemServiceCopy = systemService;
  serviceCopy = service;
  performerCopy = performer;
  v31 = objc_alloc_init(SVXXPCConnectionFactory);
  v33 = [(SVXClientServiceConnection *)self initWithQueuePerformer:performerCopy activationService:serviceCopy audioSystemService:systemServiceCopy deviceService:deviceServiceCopy inputAudioPowerService:powerServiceCopy outputAudioPowerService:audioPowerServiceCopy sessionService:sessionServiceCopy speechSynthesisService:synthesisServiceCopy keepAliveService:aliveServiceCopy instanceContext:contextCopy connectionFactory:v31 delegate:delegateCopy];

  return v33;
}

- (SVXClientServiceConnection)initWithComponents:(unint64_t)components instanceContext:(id)context delegate:(id)delegate
{
  v56 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v53 = "[SVXClientServiceConnection initWithComponents:instanceContext:delegate:]";
    v54 = 2048;
    componentsCopy = components;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s components = %lu", buf, 0x16u);
  }

  v11 = [[SVXQueuePerformer alloc] initWithIdentifier:@"Client Service Connection" qosClass:33 relativePriority:0 options:2];
  v51 = [objc_alloc(MEMORY[0x277CEF158]) initWithInstanceContext:contextCopy];
  if ((components & 2) != 0)
  {
    v14 = [SVXClientActivationService alloc];
    v15 = [delegateCopy clientServiceConnection:self performerForComponent:1];
    if (v15)
    {
      v50 = [(SVXClientActivationService *)v14 initWithClientServiceProvider:self analytics:v51 performer:v15];
    }

    else
    {
      v19 = +[SVXQueuePerformer sharedMainQueuePerformer];
      v50 = [(SVXClientActivationService *)v14 initWithClientServiceProvider:self analytics:v51 performer:v19];
    }

    if ((components & 4) != 0)
    {
LABEL_5:
      v12 = [SVXClientAudioSystemService alloc];
      v13 = [delegateCopy clientServiceConnection:self performerForComponent:2];
      if (v13)
      {
        v49 = [(SVXClientAudioSystemService *)v12 initWithClientServiceProvider:self analytics:v51 performer:v13];
      }

      else
      {
        v16 = +[SVXQueuePerformer sharedMainQueuePerformer];
        v49 = [(SVXClientAudioSystemService *)v12 initWithClientServiceProvider:self analytics:v51 performer:v16];
      }

      if ((components & 8) != 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      v48 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v50 = 0;
    if ((components & 4) != 0)
    {
      goto LABEL_5;
    }
  }

  v49 = 0;
  if ((components & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v17 = [SVXClientDeviceService alloc];
  v18 = [delegateCopy clientServiceConnection:self performerForComponent:3];
  if (v18)
  {
    v48 = [(SVXClientDeviceService *)v17 initWithClientServiceProvider:self analytics:v51 performer:v18];
  }

  else
  {
    v20 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v48 = [(SVXClientDeviceService *)v17 initWithClientServiceProvider:self analytics:v51 performer:v20];
  }

LABEL_19:
  if ((components & 0x10) == 0)
  {
    v47 = 0;
    if ((components & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v46 = 0;
    if ((components & 0x40) != 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v28 = 0;
    if ((components & 0x80) == 0)
    {
      goto LABEL_37;
    }

LABEL_33:
    v30 = [SVXClientSpeechSynthesisService alloc];
    v31 = [delegateCopy clientServiceConnection:self performerForComponent:7];
    if (v31)
    {
      v32 = [(SVXClientSpeechSynthesisService *)v30 initWithClientServiceProvider:self analytics:v51 performer:v31];
    }

    else
    {
      +[SVXQueuePerformer sharedMainQueuePerformer];
      v43 = v11;
      v38 = v37 = contextCopy;
      v32 = [(SVXClientSpeechSynthesisService *)v30 initWithClientServiceProvider:self analytics:v51 performer:v38];

      contextCopy = v37;
      v11 = v43;
    }

    if ((components & 0x100) != 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    v36 = 0;
    goto LABEL_45;
  }

  v23 = [SVXClientAudioPowerService alloc];
  v24 = [delegateCopy clientServiceConnection:self performerForComponent:4];
  if (v24)
  {
    v47 = [(SVXClientAudioPowerService *)v23 initWithType:1 clientServiceProvider:self analytics:v51 performer:v24];
  }

  else
  {
    v29 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v47 = [(SVXClientAudioPowerService *)v23 initWithType:1 clientServiceProvider:self analytics:v51 performer:v29];
  }

  if ((components & 0x20) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v21 = [SVXClientAudioPowerService alloc];
  v22 = [delegateCopy clientServiceConnection:self performerForComponent:5];
  if (v22)
  {
    v46 = [(SVXClientAudioPowerService *)v21 initWithType:2 clientServiceProvider:self analytics:v51 performer:v22];
  }

  else
  {
    v25 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v46 = [(SVXClientAudioPowerService *)v21 initWithType:2 clientServiceProvider:self analytics:v51 performer:v25];
  }

  if ((components & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v26 = [SVXClientSessionService alloc];
  v27 = [delegateCopy clientServiceConnection:self performerForComponent:6];
  if (v27)
  {
    v28 = [(SVXClientSessionService *)v26 initWithClientServiceProvider:self analytics:v51 performer:v27];
  }

  else
  {
    v33 = +[SVXQueuePerformer sharedMainQueuePerformer];
    v28 = [(SVXClientSessionService *)v26 initWithClientServiceProvider:self analytics:v51 performer:v33];
  }

  if ((components & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  v32 = 0;
  if ((components & 0x100) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v34 = [SVXClientKeepAliveService alloc];
  v35 = [delegateCopy clientServiceConnection:self performerForComponent:8];
  if (v35)
  {
    v36 = [(SVXClientKeepAliveService *)v34 initWithClientServiceProvider:self analytics:v51 performer:v35];
  }

  else
  {
    +[SVXQueuePerformer sharedMainQueuePerformer];
    v44 = v11;
    v40 = v39 = contextCopy;
    v36 = [(SVXClientKeepAliveService *)v34 initWithClientServiceProvider:self analytics:v51 performer:v40];

    contextCopy = v39;
    v11 = v44;
  }

LABEL_45:
  v45 = [(SVXClientServiceConnection *)self initWithQueuePerformer:v11 activationService:v50 audioSystemService:v49 deviceService:v48 inputAudioPowerService:v47 outputAudioPowerService:v46 sessionService:v28 speechSynthesisService:v32 keepAliveService:v36 instanceContext:contextCopy delegate:delegateCopy];

  v41 = *MEMORY[0x277D85DE8];
  return v45;
}

- (SVXClientServiceConnection)initWithComponents:(unint64_t)components delegate:(id)delegate
{
  v6 = MEMORY[0x277CEF2C8];
  delegateCopy = delegate;
  currentContext = [v6 currentContext];
  v9 = [(SVXClientServiceConnection *)self initWithComponents:components instanceContext:currentContext delegate:delegateCopy];

  return v9;
}

- (void)dealloc
{
  [(SVXClientServiceConnection *)self _invalidate];
  v3.receiver = self;
  v3.super_class = SVXClientServiceConnection;
  [(SVXClientServiceConnection *)&v3 dealloc];
}

@end