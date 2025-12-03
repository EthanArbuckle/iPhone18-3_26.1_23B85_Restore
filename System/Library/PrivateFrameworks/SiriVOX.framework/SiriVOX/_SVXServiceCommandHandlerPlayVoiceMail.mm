@interface _SVXServiceCommandHandlerPlayVoiceMail
- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)manager module:(id)module;
- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)manager module:(id)module playVoicemailExpressionParserProvider:(id)provider audioFileDecoder:(id)decoder voicemailMarkAsReadHandler:(id)handler;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation _SVXServiceCommandHandlerPlayVoiceMail

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = commandCopy;
    targetDevice = [v10 targetDevice];
    v12 = [_SVXRemoteExpressionParsingService alloc];
    v13 = objc_alloc_init(MEMORY[0x277CEF1D8]);
    v14 = [(_SVXRemoteExpressionParsingService *)v12 initWithAceHandler:v13];

    playVoicemailExpressionParserProvider = self->_playVoicemailExpressionParserProvider;
    preferences = [(SVXModule *)self->_module preferences];
    v17 = [(SVXPlayVoicemailExpressionParserProvider *)playVoicemailExpressionParserProvider getWithParsingService:v14 preferences:preferences];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke;
    v20[3] = &unk_279C67390;
    v20[4] = self;
    v21 = v10;
    v22 = v21;
    v23 = targetDevice;
    v24 = completionCopy;
    v18 = targetDevice;
    [v17 parsePlayVoicemail:v21 reply:v20];
  }

  else if (completionCopy)
  {
    v19 = +[SVXServiceCommandResult resultIgnored];
    (*(completionCopy + 2))(completionCopy, v19);
  }
}

- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)manager module:(id)module playVoicemailExpressionParserProvider:(id)provider audioFileDecoder:(id)decoder voicemailMarkAsReadHandler:(id)handler
{
  managerCopy = manager;
  moduleCopy = module;
  providerCopy = provider;
  decoderCopy = decoder;
  handlerCopy = handler;
  if (managerCopy)
  {
    if (moduleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerPlayVoiceMail.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"sessionManager != nil"}];

    if (moduleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerPlayVoiceMail.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = _SVXServiceCommandHandlerPlayVoiceMail;
  v17 = [(_SVXServiceCommandHandlerPlayVoiceMail *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sessionManager, manager);
    objc_storeStrong(&v18->_module, module);
    objc_storeStrong(&v18->_playVoicemailExpressionParserProvider, provider);
    objc_storeStrong(&v18->_audioFileDecoder, decoder);
    objc_storeStrong(&v18->_voiceMailMarkAsReadHandler, handler);
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v21 = NSStringFromClass(supportedCommandClass);
    v22 = [v19 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v21];
    identifier = v18->_identifier;
    v18->_identifier = v22;
  }

  return v18;
}

- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)manager module:(id)module
{
  moduleCopy = module;
  managerCopy = manager;
  v8 = objc_alloc_init(SVXPlayVoicemailExpressionParserProvider);
  v9 = objc_alloc_init(SVXAudioFileDecoder);
  v10 = objc_alloc_init(SVXVoiceMailMarkAsReadHandler);
  v11 = [(_SVXServiceCommandHandlerPlayVoiceMail *)self initWithSessionManager:managerCopy module:moduleCopy playVoicemailExpressionParserProvider:v8 audioFileDecoder:v9 voicemailMarkAsReadHandler:v10];

  return v11;
}

@end