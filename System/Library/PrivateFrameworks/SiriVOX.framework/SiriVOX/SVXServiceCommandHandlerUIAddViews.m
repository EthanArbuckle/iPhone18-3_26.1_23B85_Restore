@interface SVXServiceCommandHandlerUIAddViews
- (BOOL)isCommandUUFR:(id)a3;
- (BOOL)shouldDependOnCommand:(id)a3;
- (SVXServiceCommandHandlerUIAddViews)initWithModule:(id)a3 instrumentationUtils:(id)a4 dialogTransformer:(id)a5 aceViewHandler:(id)a6 expressionParserProvider:(id)a7;
- (SVXServiceCommandHandlerUIAddViews)initWithSpeechSynthesizer:(id)a3 module:(id)a4 instrumentationUtils:(id)a5 modeProvider:(id)a6 dialogTransformer:(id)a7 synthesisResultConverter:(id)a8;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
- (void)prepareToHandleCommand:(id)a3 completion:(id)a4;
@end

@implementation SVXServiceCommandHandlerUIAddViews

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v41 = a6;
  v13 = mach_absolute_time();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddViews class]]"}];
  }

  v14 = v10;
  v15 = [v14 af_dialogPhase];
  v16 = [v15 isExpository];

  v43 = v16;
  if ((v16 & 1) == 0)
  {
    kdebug_trace();
  }

  v17 = [v12 context];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke;
  v54[3] = &unk_279C687B8;
  v56 = v13;
  v18 = v14;
  v55 = v18;
  v19 = [v17 mutatedCopyWithMutator:v54];

  v39 = v19;
  v44 = [v12 beginChildWithContext:v19];
  objc_opt_class();
  v42 = v11;
  v40 = v18;
  if (objc_opt_isKindOfClass())
  {
    v20 = v11;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;
  v22 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v23 = v22;
    v24 = [v21 patternId];
    v25 = [v21 patternType];
    *buf = 136315906;
    v59 = "[SVXServiceCommandHandlerUIAddViews handleCommand:withContext:taskTracker:completion:]";
    v60 = 2112;
    v61 = v21;
    v62 = 2112;
    v63 = v24;
    v64 = 2112;
    v65 = v25;
    _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s preparedAddViews = %@, patternId = %@, patternType = %@", buf, 0x2Au);
  }

  instrumentationUtils = self->_instrumentationUtils;
  v27 = [v12 instrumentationContext];
  [(SVXInstrumentationUtilities *)instrumentationUtils emitPatternExecutedEvent:v27 addViews:v21];

  v28 = dispatch_group_create();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v29 = [v21 views];
  v30 = [v29 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v51;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v50 + 1) + 8 * i);
        dispatch_group_enter(v28);
        aceViewHandler = self->_aceViewHandler;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke_30;
        v48[3] = &unk_279C67888;
        v49 = v28;
        [(SVXAceViewHandler *)aceViewHandler handleAceView:v34 isExpository:v43 taskTracker:v44 completion:v48];
      }

      v31 = [v29 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v31);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke_2;
  block[3] = &unk_279C68220;
  v47 = v41;
  v36 = v41;
  dispatch_group_notify(v28, MEMORY[0x277D85CD0], block);

  v37 = *MEMORY[0x277D85DE8];
}

void __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setTimestamp:v3];
  v5 = [*(a1 + 32) dialogPhase];
  [v4 setDialogPhase:v5];
}

void __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[SVXServiceCommandResult resultSuccess];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)prepareToHandleCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddViews class]]"}];
  }

  v9 = [(SVXDialogTransformer *)self->_dialogTransformer transformAddViews:v7];
  v10 = [_SVXRemoteExpressionParsingService alloc];
  v11 = objc_alloc_init(MEMORY[0x277CEF1D8]);
  v12 = [(_SVXRemoteExpressionParsingService *)v10 initWithAceHandler:v11];

  expressionParserProvider = self->_expressionParserProvider;
  v14 = [(SVXModule *)self->_module preferences];
  v15 = [(_SVXAddViewsExpressionParserProvider *)expressionParserProvider getWithParsingService:v12 preferences:v14];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SVXServiceCommandHandlerUIAddViews_prepareToHandleCommand_completion___block_invoke;
  v18[3] = &unk_279C67860;
  v19 = v8;
  v16 = v8;
  [v15 parseAddViews:v9 reply:v18];
}

uint64_t __72__SVXServiceCommandHandlerUIAddViews_prepareToHandleCommand_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)shouldDependOnCommand:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isCommandUUFR:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddViews class]]"}];
  }

  v6 = [v5 af_dialogPhase];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isExpository] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (SVXServiceCommandHandlerUIAddViews)initWithModule:(id)a3 instrumentationUtils:(id)a4 dialogTransformer:(id)a5 aceViewHandler:(id)a6 expressionParserProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v29 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"instrumentationUtils != nil"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_9:
  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"dialogTransformer != nil"}];

LABEL_4:
  v30.receiver = self;
  v30.super_class = SVXServiceCommandHandlerUIAddViews;
  v17 = [(SVXServiceCommandHandlerUIAddViews *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_module, a3);
    objc_storeStrong(&v18->_instrumentationUtils, a4);
    objc_storeStrong(&v18->_dialogTransformer, a5);
    objc_storeStrong(&v18->_aceViewHandler, a6);
    objc_storeStrong(&v18->_expressionParserProvider, a7);
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [objc_opt_class() supportedCommandClass];
    v21 = NSStringFromClass(v20);
    v22 = [v19 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v21];
    identifier = v18->_identifier;
    v18->_identifier = v22;
  }

  return v18;
}

- (SVXServiceCommandHandlerUIAddViews)initWithSpeechSynthesizer:(id)a3 module:(id)a4 instrumentationUtils:(id)a5 modeProvider:(id)a6 dialogTransformer:(id)a7 synthesisResultConverter:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[SVXAceViewHandler alloc] initWithModule:v18 instrumentationUtils:v17 modeProvider:v16 speechSynthesizer:v19 synthesisResultConverter:v14];

  v21 = objc_alloc_init(_SVXAddViewsExpressionParserProvider);
  v22 = [(SVXServiceCommandHandlerUIAddViews *)self initWithModule:v18 instrumentationUtils:v17 dialogTransformer:v15 aceViewHandler:v20 expressionParserProvider:v21];

  return v22;
}

@end