@interface SVXServiceCommandHandlerUIAddViews
- (BOOL)isCommandUUFR:(id)r;
- (BOOL)shouldDependOnCommand:(id)command;
- (SVXServiceCommandHandlerUIAddViews)initWithModule:(id)module instrumentationUtils:(id)utils dialogTransformer:(id)transformer aceViewHandler:(id)handler expressionParserProvider:(id)provider;
- (SVXServiceCommandHandlerUIAddViews)initWithSpeechSynthesizer:(id)synthesizer module:(id)module instrumentationUtils:(id)utils modeProvider:(id)provider dialogTransformer:(id)transformer synthesisResultConverter:(id)converter;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
- (void)prepareToHandleCommand:(id)command completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerUIAddViews

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  contextCopy = context;
  trackerCopy = tracker;
  completionCopy = completion;
  v13 = mach_absolute_time();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddViews class]]"}];
  }

  v14 = commandCopy;
  af_dialogPhase = [v14 af_dialogPhase];
  isExpository = [af_dialogPhase isExpository];

  v43 = isExpository;
  if ((isExpository & 1) == 0)
  {
    kdebug_trace();
  }

  context = [trackerCopy context];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke;
  v54[3] = &unk_279C687B8;
  v56 = v13;
  v18 = v14;
  v55 = v18;
  v19 = [context mutatedCopyWithMutator:v54];

  v39 = v19;
  v44 = [trackerCopy beginChildWithContext:v19];
  objc_opt_class();
  v42 = contextCopy;
  v40 = v18;
  if (objc_opt_isKindOfClass())
  {
    v20 = contextCopy;
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
    patternId = [v21 patternId];
    patternType = [v21 patternType];
    *buf = 136315906;
    v59 = "[SVXServiceCommandHandlerUIAddViews handleCommand:withContext:taskTracker:completion:]";
    v60 = 2112;
    v61 = v21;
    v62 = 2112;
    v63 = patternId;
    v64 = 2112;
    v65 = patternType;
    _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s preparedAddViews = %@, patternId = %@, patternType = %@", buf, 0x2Au);
  }

  instrumentationUtils = self->_instrumentationUtils;
  instrumentationContext = [trackerCopy instrumentationContext];
  [(SVXInstrumentationUtilities *)instrumentationUtils emitPatternExecutedEvent:instrumentationContext addViews:v21];

  v28 = dispatch_group_create();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  views = [v21 views];
  v30 = [views countByEnumeratingWithState:&v50 objects:v57 count:16];
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
          objc_enumerationMutation(views);
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

      v31 = [views countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v31);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SVXServiceCommandHandlerUIAddViews_handleCommand_withContext_taskTracker_completion___block_invoke_2;
  block[3] = &unk_279C68220;
  v47 = completionCopy;
  v36 = completionCopy;
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

- (void)prepareToHandleCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddViews class]]"}];
  }

  v9 = [(SVXDialogTransformer *)self->_dialogTransformer transformAddViews:commandCopy];
  v10 = [_SVXRemoteExpressionParsingService alloc];
  v11 = objc_alloc_init(MEMORY[0x277CEF1D8]);
  v12 = [(_SVXRemoteExpressionParsingService *)v10 initWithAceHandler:v11];

  expressionParserProvider = self->_expressionParserProvider;
  preferences = [(SVXModule *)self->_module preferences];
  v15 = [(_SVXAddViewsExpressionParserProvider *)expressionParserProvider getWithParsingService:v12 preferences:preferences];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SVXServiceCommandHandlerUIAddViews_prepareToHandleCommand_completion___block_invoke;
  v18[3] = &unk_279C67860;
  v19 = completionCopy;
  v16 = completionCopy;
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

- (BOOL)shouldDependOnCommand:(id)command
{
  commandCopy = command;
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

- (BOOL)isCommandUUFR:(id)r
{
  rCopy = r;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddViews class]]"}];
  }

  af_dialogPhase = [rCopy af_dialogPhase];
  v7 = af_dialogPhase;
  if (af_dialogPhase)
  {
    v8 = [af_dialogPhase isExpository] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (SVXServiceCommandHandlerUIAddViews)initWithModule:(id)module instrumentationUtils:(id)utils dialogTransformer:(id)transformer aceViewHandler:(id)handler expressionParserProvider:(id)provider
{
  moduleCopy = module;
  utilsCopy = utils;
  transformerCopy = transformer;
  handlerCopy = handler;
  providerCopy = provider;
  if (moduleCopy)
  {
    if (utilsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"instrumentationUtils != nil"}];

    if (transformerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

  if (!utilsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (transformerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddViews.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"dialogTransformer != nil"}];

LABEL_4:
  v30.receiver = self;
  v30.super_class = SVXServiceCommandHandlerUIAddViews;
  v17 = [(SVXServiceCommandHandlerUIAddViews *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_module, module);
    objc_storeStrong(&v18->_instrumentationUtils, utils);
    objc_storeStrong(&v18->_dialogTransformer, transformer);
    objc_storeStrong(&v18->_aceViewHandler, handler);
    objc_storeStrong(&v18->_expressionParserProvider, provider);
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v21 = NSStringFromClass(supportedCommandClass);
    v22 = [v19 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v21];
    identifier = v18->_identifier;
    v18->_identifier = v22;
  }

  return v18;
}

- (SVXServiceCommandHandlerUIAddViews)initWithSpeechSynthesizer:(id)synthesizer module:(id)module instrumentationUtils:(id)utils modeProvider:(id)provider dialogTransformer:(id)transformer synthesisResultConverter:(id)converter
{
  converterCopy = converter;
  transformerCopy = transformer;
  providerCopy = provider;
  utilsCopy = utils;
  moduleCopy = module;
  synthesizerCopy = synthesizer;
  v20 = [[SVXAceViewHandler alloc] initWithModule:moduleCopy instrumentationUtils:utilsCopy modeProvider:providerCopy speechSynthesizer:synthesizerCopy synthesisResultConverter:converterCopy];

  v21 = objc_alloc_init(_SVXAddViewsExpressionParserProvider);
  v22 = [(SVXServiceCommandHandlerUIAddViews *)self initWithModule:moduleCopy instrumentationUtils:utilsCopy dialogTransformer:transformerCopy aceViewHandler:v20 expressionParserProvider:v21];

  return v22;
}

@end