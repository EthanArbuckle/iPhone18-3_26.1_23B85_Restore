@interface SVXServiceCommandHandlerUIRepeatIt
- (BOOL)shouldDependOnCommand:(id)command;
- (SVXServiceCommandHandlerUIRepeatIt)initWithSpeechSynthesizer:(id)synthesizer performer:(id)performer instrumentationUtils:(id)utils synthesisResultConverter:(id)converter;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
- (void)speechSynthesizerWillStartRequest:(id)request taskTracker:(id)tracker;
@end

@implementation SVXServiceCommandHandlerUIRepeatIt

- (void)speechSynthesizerWillStartRequest:(id)request taskTracker:(id)tracker
{
  requestCopy = request;
  speakableText = [requestCopy speakableText];
  v7 = [speakableText length];

  if (v7)
  {
    performer = self->_performer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__SVXServiceCommandHandlerUIRepeatIt_speechSynthesizerWillStartRequest_taskTracker___block_invoke;
    v9[3] = &unk_279C68FE8;
    v9[4] = self;
    v10 = requestCopy;
    [(SVXPerforming *)performer performBlock:v9];
  }
}

uint64_t __84__SVXServiceCommandHandlerUIRepeatIt_speechSynthesizerWillStartRequest_taskTracker___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIRepeatIt.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIRepeatIt class]]"}];
  }

  v13 = commandCopy;
  kdebug_trace();
  contingency = [v13 contingency];
  performer = self->_performer;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__SVXServiceCommandHandlerUIRepeatIt_handleCommand_withContext_taskTracker_completion___block_invoke;
  v21[3] = &unk_279C68388;
  v21[4] = self;
  v22 = contingency;
  v23 = trackerCopy;
  v24 = v13;
  v25 = completionCopy;
  v16 = completionCopy;
  v17 = v13;
  v18 = trackerCopy;
  v19 = contingency;
  [(SVXPerforming *)performer performBlock:v21];
}

void __87__SVXServiceCommandHandlerUIRepeatIt_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v3 = [v2 copy];
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_9;
    }

    v3 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:2 options:1 speakableText:*(a1 + 40) speakableContext:0 localizationKey:0 presynthesizedAudio:0 streamID:0];
  }

  v4 = v3;
  if (v3)
  {
    v5 = [*(a1 + 48) context];
    v6 = [v5 dialogPhase];

    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(SVXSpeechSynthesisRequest *)v4 speakableText];
      *buf = 136315650;
      v29 = "[SVXServiceCommandHandlerUIRepeatIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speakableText = %@ dialogPhase = %@", buf, 0x20u);
    }

    v10 = *(*(a1 + 32) + 24);
    v11 = [*(a1 + 48) instrumentationContext];
    [v10 emitUUFRSaid:v11 dialogIdentifier:0 dialogPhase:v6];

    v12 = *(*(a1 + 32) + 8);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__SVXServiceCommandHandlerUIRepeatIt_handleCommand_withContext_taskTracker_completion___block_invoke_15;
    v25[3] = &unk_279C68FE8;
    v26 = v4;
    v27 = *(a1 + 56);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__SVXServiceCommandHandlerUIRepeatIt_handleCommand_withContext_taskTracker_completion___block_invoke_17;
    v20[3] = &unk_279C67D78;
    v21 = v26;
    v22 = *(a1 + 56);
    v13 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = v13;
    v14 = *(a1 + 48);
    v15 = v26;
    [v12 enqueueRequest:v15 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:v25 finalization:v20 taskTracker:v14 analyticsContext:0];

    goto LABEL_13;
  }

LABEL_9:
  v16 = *(a1 + 64);
  if (!v16)
  {
LABEL_13:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v19 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:0];
  (*(v16 + 16))(v16);
  v17 = *MEMORY[0x277D85DE8];
}

void __87__SVXServiceCommandHandlerUIRepeatIt_handleCommand_withContext_taskTracker_completion___block_invoke_15(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[SVXServiceCommandHandlerUIRepeatIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Begin TTS request %@ for %@.", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __87__SVXServiceCommandHandlerUIRepeatIt_handleCommand_withContext_taskTracker_completion___block_invoke_17(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[SVXServiceCommandHandlerUIRepeatIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s End TTS request %@ for %@ with result %@.", &v10, 0x2Au);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = [*(a1[6] + 40) toServiceCommandResult:v3];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDependOnCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
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

- (SVXServiceCommandHandlerUIRepeatIt)initWithSpeechSynthesizer:(id)synthesizer performer:(id)performer instrumentationUtils:(id)utils synthesisResultConverter:(id)converter
{
  synthesizerCopy = synthesizer;
  performerCopy = performer;
  utilsCopy = utils;
  converterCopy = converter;
  v23.receiver = self;
  v23.super_class = SVXServiceCommandHandlerUIRepeatIt;
  v15 = [(SVXServiceCommandHandlerUIRepeatIt *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_speechSynthesizer, synthesizer);
    [(SVXSpeechSynthesizer *)v16->_speechSynthesizer addListener:v16];
    objc_storeStrong(&v16->_performer, performer);
    objc_storeStrong(&v16->_instrumentationUtils, utils);
    objc_storeStrong(&v16->_synthesisResultConverter, converter);
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v19 = NSStringFromClass(supportedCommandClass);
    v20 = [v17 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v19];
    identifier = v16->_identifier;
    v16->_identifier = v20;
  }

  return v16;
}

@end