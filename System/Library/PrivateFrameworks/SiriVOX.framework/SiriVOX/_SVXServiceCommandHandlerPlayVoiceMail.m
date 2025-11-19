@interface _SVXServiceCommandHandlerPlayVoiceMail
- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)a3 module:(id)a4;
- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)a3 module:(id)a4 playVoicemailExpressionParserProvider:(id)a5 audioFileDecoder:(id)a6 voicemailMarkAsReadHandler:(id)a7;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
@end

@implementation _SVXServiceCommandHandlerPlayVoiceMail

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v10 targetDevice];
    v12 = [_SVXRemoteExpressionParsingService alloc];
    v13 = objc_alloc_init(MEMORY[0x277CEF1D8]);
    v14 = [(_SVXRemoteExpressionParsingService *)v12 initWithAceHandler:v13];

    playVoicemailExpressionParserProvider = self->_playVoicemailExpressionParserProvider;
    v16 = [(SVXModule *)self->_module preferences];
    v17 = [(SVXPlayVoicemailExpressionParserProvider *)playVoicemailExpressionParserProvider getWithParsingService:v14 preferences:v16];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91___SVXServiceCommandHandlerPlayVoiceMail_handleCommand_withContext_taskTracker_completion___block_invoke;
    v20[3] = &unk_279C67390;
    v20[4] = self;
    v21 = v10;
    v22 = v21;
    v23 = v11;
    v24 = v9;
    v18 = v11;
    [v17 parsePlayVoicemail:v21 reply:v20];
  }

  else if (v9)
  {
    v19 = +[SVXServiceCommandResult resultIgnored];
    (*(v9 + 2))(v9, v19);
  }
}

- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)a3 module:(id)a4 playVoicemailExpressionParserProvider:(id)a5 audioFileDecoder:(id)a6 voicemailMarkAsReadHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v28 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerPlayVoiceMail.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"sessionManager != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"_SVXServiceCommandHandlerPlayVoiceMail.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = _SVXServiceCommandHandlerPlayVoiceMail;
  v17 = [(_SVXServiceCommandHandlerPlayVoiceMail *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sessionManager, a3);
    objc_storeStrong(&v18->_module, a4);
    objc_storeStrong(&v18->_playVoicemailExpressionParserProvider, a5);
    objc_storeStrong(&v18->_audioFileDecoder, a6);
    objc_storeStrong(&v18->_voiceMailMarkAsReadHandler, a7);
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [objc_opt_class() supportedCommandClass];
    v21 = NSStringFromClass(v20);
    v22 = [v19 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v21];
    identifier = v18->_identifier;
    v18->_identifier = v22;
  }

  return v18;
}

- (_SVXServiceCommandHandlerPlayVoiceMail)initWithSessionManager:(id)a3 module:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SVXPlayVoicemailExpressionParserProvider);
  v9 = objc_alloc_init(SVXAudioFileDecoder);
  v10 = objc_alloc_init(SVXVoiceMailMarkAsReadHandler);
  v11 = [(_SVXServiceCommandHandlerPlayVoiceMail *)self initWithSessionManager:v7 module:v6 playVoicemailExpressionParserProvider:v8 audioFileDecoder:v9 voicemailMarkAsReadHandler:v10];

  return v11;
}

@end