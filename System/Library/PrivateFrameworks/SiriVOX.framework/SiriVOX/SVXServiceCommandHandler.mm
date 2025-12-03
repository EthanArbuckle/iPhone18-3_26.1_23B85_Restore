@interface SVXServiceCommandHandler
- (BOOL)isCommandUUFR:(id)r;
- (SVXServiceCommandHandler)initWithModule:(id)module;
- (SVXServiceCommandHandler)initWithModule:(id)module fallbackHandler:(id)handler commandHandlerRegistryFactory:(id)factory delayedActionStoreFactory:(id)storeFactory;
- (id)fallbackModeProvider;
- (void)_handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion;
- (void)_reset;
- (void)handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion;
- (void)handleResult:(id)result forCommand:(id)command completion:(id)completion;
- (void)reset;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopWithModuleInstanceProvider:(id)provider;
@end

@implementation SVXServiceCommandHandler

- (void)handleResult:(id)result forCommand:(id)command completion:(id)completion
{
  resultCopy = result;
  commandCopy = command;
  completionCopy = completion;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke;
  v42[3] = &unk_279C68EF8;
  v11 = completionCopy;
  v44 = v11;
  v12 = commandCopy;
  v43 = v12;
  v13 = MEMORY[0x26D642680](v42);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_2;
  v39[3] = &unk_279C68EF8;
  v14 = v11;
  v41 = v14;
  v15 = v12;
  v40 = v15;
  v16 = MEMORY[0x26D642680](v39);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_3;
  v36[3] = &unk_279C667D0;
  v17 = v14;
  v37 = v15;
  v38 = v17;
  v18 = v15;
  v19 = MEMORY[0x26D642680](v36);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_4;
  v34[3] = &unk_279C667F8;
  v35 = v17;
  v20 = v17;
  v21 = MEMORY[0x26D642680](v34);
  performer = [(SVXModule *)self->_module performer];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_5;
  v28[3] = &unk_279C66820;
  v29 = resultCopy;
  v30 = v13;
  v31 = v16;
  v32 = v19;
  v33 = v21;
  v23 = v21;
  v24 = v19;
  v25 = v16;
  v26 = v13;
  v27 = resultCopy;
  [performer performBlock:v28];
}

void __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = objc_alloc_init(MEMORY[0x277D47210]);
    v2 = [*(a1 + 32) aceId];
    [v3 setRefId:v2];

    (*(*(a1 + 40) + 16))();
  }
}

void __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = objc_alloc_init(MEMORY[0x277D47218]);
    v2 = [*(a1 + 32) aceId];
    [v3 setRefId:v2];

    (*(*(a1 + 40) + 16))();
  }
}

void __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = MEMORY[0x277D47208];
    v6 = a3;
    v8 = objc_alloc_init(v5);
    [v8 setErrorCode:a2];
    [v8 setReason:v6];

    v7 = [*(a1 + 32) aceId];
    [v8 setRefId:v7];

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion
{
  v28[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = [(SVXServiceCommandHandlerRegistry *)self->_handlerRegistry handlersForCommand:commandCopy];
  if (![v11 count])
  {
    v28[0] = self->_fallbackHandler;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

    v11 = v12;
  }

  objc_initWeak(&location, self);
  v13 = [SVXServiceCommandTransaction alloc];
  performer = [(SVXModule *)self->_module performer];
  v15 = [(NSMutableSet *)self->_transactions copy];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __66__SVXServiceCommandHandler__handleCommand_taskTracker_completion___block_invoke;
  v23 = &unk_279C667A8;
  objc_copyWeak(&v26, &location);
  v16 = commandCopy;
  v24 = v16;
  v17 = completionCopy;
  v25 = v17;
  v18 = [(SVXServiceCommandTransaction *)v13 initWithPerformer:performer command:v16 handlers:v11 taskTracker:trackerCopy dependencies:v15 completion:&v20];

  [(NSMutableSet *)self->_transactions addObject:v18, v20, v21, v22, v23];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __66__SVXServiceCommandHandler__handleCommand_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleResult:v3 forCommand:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_reset
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    transactions = self->_transactions;
    v6 = v4;
    *buf = 136315394;
    v23 = "[SVXServiceCommandHandler _reset]";
    v24 = 2048;
    v25 = [(NSMutableSet *)transactions count];
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Invalidating %tu transactions...", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_transactions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v17 + 1) + 8 * v11++) invalidate];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v13 = self->_transactions;
    v14 = v12;
    v15 = [(NSMutableSet *)v13 count];
    *buf = 136315394;
    v23 = "[SVXServiceCommandHandler _reset]";
    v24 = 2048;
    v25 = v15;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s Removing %tu transactions...", buf, 0x16u);
  }

  [(NSMutableSet *)self->_transactions removeAllObjects];
  [(SVXServiceCommandDelayedActionStore *)self->_delayedActionStore removeAllActions];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  performer = [(SVXModule *)self->_module performer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SVXServiceCommandHandler_stopWithModuleInstanceProvider___block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [performer performBlock:v5];
}

void __59__SVXServiceCommandHandler_stopWithModuleInstanceProvider___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reset];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  v81 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dependenciesCopy = dependencies;
  create = [(SVXServiceCommandDelayedActionStoreProvider *)self->_delayedActionStoreFactory create];
  delayedActionStore = self->_delayedActionStore;
  self->_delayedActionStore = create;

  sessionManager = [providerCopy sessionManager];
  v67 = providerCopy;
  speechSynthesizer = [providerCopy speechSynthesizer];
  v66 = dependenciesCopy;
  v68 = speechSynthesizer;
  v69 = sessionManager;
  if (![dependenciesCopy count])
  {
    v12 = 0;
    goto LABEL_22;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v13 = dependenciesCopy;
  v14 = [v13 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v14)
  {

    goto LABEL_22;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v73;
  v18 = MEMORY[0x277CEF090];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v73 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v72 + 1) + 8 * i);
      if ([v20 type] == 1)
      {
        serviceCommandHandler = [v20 serviceCommandHandler];
        if (serviceCommandHandler)
        {
          [v12 addObject:serviceCommandHandler];
        }
      }

      else
      {
        if ([v20 type] != 4)
        {
          continue;
        }

        if (v16)
        {
          v22 = *v18;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v79 = "[SVXServiceCommandHandler startWithModuleInstanceProvider:platformDependencies:]";
            _os_log_error_impl(&dword_2695B9000, v22, OS_LOG_TYPE_ERROR, "%s More than one platform dependency of type SVXPlatformDependencyTypeSiriModesManager has been provided. Will pick the last one in the array.", buf, 0xCu);
          }
        }

        [v20 siriModesManager];
        v16 = serviceCommandHandler = v16;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v72 objects:v80 count:16];
  }

  while (v15);

  speechSynthesizer = v68;
  if (v16)
  {
    modeProvider = [v16 modeProvider];
    goto LABEL_23;
  }

LABEL_22:
  modeProvider = self->_fallbackModeProvider;
  v16 = 0;
LABEL_23:
  v24 = objc_alloc_init(SVXInstrumentationUtilities);
  v25 = [[SVXDialogTransformer alloc] initWithModeProvider:modeProvider];
  v26 = objc_alloc_init(SVXSpeechSynthesisResultConverter);
  v70 = v24;
  v65 = modeProvider;
  v27 = [[SVXServiceCommandHandlerUIAddViews alloc] initWithSpeechSynthesizer:speechSynthesizer module:self->_module instrumentationUtils:v24 modeProvider:modeProvider dialogTransformer:v25 synthesisResultConverter:v26];
  v28 = objc_alloc_init(SVXSpeechSynthesisUtils);
  v29 = [[SVXServiceCommandHandlerUISayIt alloc] initWithSpeechSynthesizer:speechSynthesizer module:self->_module instrumentationUtils:v24 synthesisResultConverter:v26 speechSynthesisUtils:v28];
  v77[0] = v27;
  v77[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v61 = v28;
  v58 = [[SVXServiceCommandHandlerPreSynthesizeTTS alloc] initWithSpeechSynthesizer:speechSynthesizer speechSynthesisUtils:v28];
  v76[0] = v58;
  v59 = v30;
  v64 = v25;
  v57 = [[SVXServiceCommandHandlerUIAddDialogs alloc] initWithHandlers:v30 dialogTransformer:v25];
  v76[1] = v57;
  v76[2] = v27;
  v62 = v27;
  v56 = [[SVXServiceCommandHandlerUICloseAssistant alloc] initWithSessionManager:v69];
  v76[3] = v56;
  v31 = [SVXServiceCommandHandlerUIDelayedActionCancelCommand alloc];
  v32 = self->_delayedActionStore;
  performer = [(SVXModule *)self->_module performer];
  v54 = [(SVXServiceCommandHandlerUIDelayedActionCancelCommand *)v31 initWithDelayedActionStore:v32 performer:performer];
  v76[4] = v54;
  v33 = [SVXServiceCommandHandlerUIDelayedActionCommand alloc];
  v34 = self->_delayedActionStore;
  performer2 = [(SVXModule *)self->_module performer];
  v52 = [(SVXServiceCommandHandlerUIDelayedActionCommand *)v33 initWithDelayedActionStore:v34 sessionManager:v69 performer:performer2];
  v76[5] = v52;
  v35 = [SVXServiceCommandHandlerUIRepeatIt alloc];
  performer3 = [(SVXModule *)self->_module performer];
  v63 = v26;
  v36 = [(SVXServiceCommandHandlerUIRepeatIt *)v35 initWithSpeechSynthesizer:speechSynthesizer performer:performer3 instrumentationUtils:v70 synthesisResultConverter:v26];
  v76[6] = v36;
  v76[7] = v29;
  v60 = v29;
  v37 = [SVXServiceCommandHandlerUIShowRequestHandlingStatus alloc];
  performer4 = [(SVXModule *)self->_module performer];
  v39 = [(SVXServiceCommandHandlerUIShowRequestHandlingStatus *)v37 initWithSessionManager:v69 performer:performer4];
  v76[8] = v39;
  v40 = [[SVXServiceCommandHandlerClientCoordinationPhoneCall alloc] initWithSessionManager:v69];
  v76[9] = v40;
  v41 = [[_SVXServiceCommandHandlerSmsPlayAudio alloc] initWithSessionManager:v69 module:self->_module];
  v76[10] = v41;
  v42 = [[_SVXServiceCommandHandlerPlayVoiceMail alloc] initWithSessionManager:v69 module:self->_module];
  v76[11] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:12];

  v44 = v43;
  if ([v12 count])
  {
    v45 = [v43 arrayByAddingObjectsFromArray:v12];
  }

  else
  {
    v45 = v43;
  }

  v46 = v45;
  v47 = [(SVXServiceCommandHandlerRegistryProvider *)self->_commandHandlerRegistryFactory createWithHandlers:v45];
  handlerRegistry = self->_handlerRegistry;
  self->_handlerRegistry = v47;

  performer5 = [(SVXModule *)self->_module performer];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __81__SVXServiceCommandHandler_startWithModuleInstanceProvider_platformDependencies___block_invoke;
  v71[3] = &unk_279C68FC0;
  v71[4] = self;
  [performer5 performBlock:v71];

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __81__SVXServiceCommandHandler_startWithModuleInstanceProvider_platformDependencies___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)fallbackModeProvider
{
  fallbackModeProvider = self->_fallbackModeProvider;
  if (!fallbackModeProvider)
  {
    v4 = [objc_alloc(MEMORY[0x277D5DA00]) initWithFixedMode:1];
    v5 = self->_fallbackModeProvider;
    self->_fallbackModeProvider = v4;

    fallbackModeProvider = self->_fallbackModeProvider;
  }

  return fallbackModeProvider;
}

- (SVXServiceCommandHandler)initWithModule:(id)module fallbackHandler:(id)handler commandHandlerRegistryFactory:(id)factory delayedActionStoreFactory:(id)storeFactory
{
  moduleCopy = module;
  handlerCopy = handler;
  factoryCopy = factory;
  storeFactoryCopy = storeFactory;
  v18.receiver = self;
  v18.super_class = SVXServiceCommandHandler;
  v15 = [(SVXServiceCommandHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_module, module);
    objc_storeStrong(&v16->_fallbackHandler, handler);
    objc_storeStrong(&v16->_commandHandlerRegistryFactory, factory);
    objc_storeStrong(&v16->_delayedActionStoreFactory, storeFactory);
  }

  return v16;
}

- (SVXServiceCommandHandler)initWithModule:(id)module
{
  moduleCopy = module;
  v5 = [SVXServiceCommandHandlerFallback alloc];
  v6 = +[SVXServiceCommandResult resultIgnored];
  v7 = [(SVXServiceCommandHandlerFallback *)v5 initWithResult:v6];
  v8 = objc_alloc_init(SVXServiceCommandHandlerRegistryProvider);
  v9 = objc_alloc_init(SVXServiceCommandDelayedActionStoreProvider);
  v10 = [(SVXServiceCommandHandler *)self initWithModule:moduleCopy fallbackHandler:v7 commandHandlerRegistryFactory:v8 delayedActionStoreFactory:v9];

  return v10;
}

- (void)handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  performer = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SVXServiceCommandHandler_handleCommand_taskTracker_completion___block_invoke;
  v15[3] = &unk_279C69038;
  v15[4] = self;
  v16 = commandCopy;
  v17 = trackerCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = trackerCopy;
  v14 = commandCopy;
  [performer performBlock:v15];
}

- (BOOL)isCommandUUFR:(id)r
{
  v16 = *MEMORY[0x277D85DE8];
  rCopy = r;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SVXServiceCommandHandlerRegistry *)self->_handlerRegistry handlersForCommand:rCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isCommandUUFR:rCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)reset
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SVXServiceCommandHandler_reset__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

@end