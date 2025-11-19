@interface _SVXServiceCommandHandlerSmsPlayAudio
- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)a3 module:(id)a4;
- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)a3 module:(id)a4 expressionParserProvider:(id)a5;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
@end

@implementation _SVXServiceCommandHandlerSmsPlayAudio

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [_SVXRemoteExpressionParsingService alloc];
    v12 = objc_alloc_init(MEMORY[0x277CEF1D8]);
    v13 = [(_SVXRemoteExpressionParsingService *)v11 initWithAceHandler:v12];

    expressionParserProvider = self->_expressionParserProvider;
    v15 = [(SVXModule *)self->_module preferences];
    v16 = [(_SVXPlayAudioExpressionParserProvider *)expressionParserProvider getWithParsingService:v13 preferences:v15];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90___SVXServiceCommandHandlerSmsPlayAudio_handleCommand_withContext_taskTracker_completion___block_invoke;
    v19[3] = &unk_279C66E78;
    v19[4] = self;
    v20 = v10;
    v21 = v9;
    v17 = v10;
    [v16 parsePlayAudio:v17 reply:v19];
  }

  else if (v9)
  {
    v18 = +[SVXServiceCommandResult resultIgnored];
    (*(v9 + 2))(v9, v18);
  }
}

- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)a3 module:(id)a4 expressionParserProvider:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerSmsPlayAudio.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerSmsPlayAudio.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"sessionManager != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerSmsPlayAudio.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"expressionParserProvider != nil"}];

LABEL_4:
  v24.receiver = self;
  v24.super_class = _SVXServiceCommandHandlerSmsPlayAudio;
  v13 = [(_SVXServiceCommandHandlerSmsPlayAudio *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sessionManager, a3);
    objc_storeStrong(&v14->_module, a4);
    objc_storeStrong(&v14->_expressionParserProvider, a5);
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = [objc_opt_class() supportedCommandClass];
    v17 = NSStringFromClass(v16);
    v18 = [v15 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v17];
    identifier = v14->_identifier;
    v14->_identifier = v18;
  }

  return v14;
}

- (_SVXServiceCommandHandlerSmsPlayAudio)initWithSessionManager:(id)a3 module:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_SVXPlayAudioExpressionParserProvider);
  v9 = [(_SVXServiceCommandHandlerSmsPlayAudio *)self initWithSessionManager:v7 module:v6 expressionParserProvider:v8];

  return v9;
}

@end