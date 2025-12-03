@interface _SVXServiceCommandHandlerSmsPlayAudio
- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)manager module:(id)module;
- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)manager module:(id)module expressionParserProvider:(id)provider;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation _SVXServiceCommandHandlerSmsPlayAudio

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = commandCopy;
    v11 = [_SVXRemoteExpressionParsingService alloc];
    v12 = objc_alloc_init(MEMORY[0x277CEF1D8]);
    v13 = [(_SVXRemoteExpressionParsingService *)v11 initWithAceHandler:v12];

    expressionParserProvider = self->_expressionParserProvider;
    preferences = [(SVXModule *)self->_module preferences];
    v16 = [(_SVXPlayAudioExpressionParserProvider *)expressionParserProvider getWithParsingService:v13 preferences:preferences];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke;
    v19[3] = &unk_279C66E78;
    v19[4] = self;
    v20 = v10;
    v21 = completionCopy;
    v17 = v10;
    [v16 parsePlayAudio:v17 reply:v19];
  }

  else if (completionCopy)
  {
    v18 = +[SVXServiceCommandResult resultIgnored];
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)manager module:(id)module expressionParserProvider:(id)provider
{
  managerCopy = manager;
  moduleCopy = module;
  providerCopy = provider;
  if (managerCopy)
  {
    if (moduleCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerSmsPlayAudio.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

    if (providerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerSmsPlayAudio.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"sessionManager != nil"}];

  if (!moduleCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (providerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerSmsPlayAudio.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"expressionParserProvider != nil"}];

LABEL_4:
  v24.receiver = self;
  v24.super_class = _SVXServiceCommandHandlerSmsPlayAudio;
  v13 = [(_SVXServiceCommandHandlerSmsPlayAudio *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sessionManager, manager);
    objc_storeStrong(&v14->_module, module);
    objc_storeStrong(&v14->_expressionParserProvider, provider);
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v17 = NSStringFromClass(supportedCommandClass);
    v18 = [v15 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v17];
    identifier = v14->_identifier;
    v14->_identifier = v18;
  }

  return v14;
}

- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)manager module:(id)module
{
  moduleCopy = module;
  managerCopy = manager;
  v8 = objc_alloc_init(_SVXPlayAudioExpressionParserProvider);
  v9 = [(_SVXServiceCommandHandlerSmsPlayAudio *)self initWithSessionManager:managerCopy module:moduleCopy expressionParserProvider:v8];

  return v9;
}

@end