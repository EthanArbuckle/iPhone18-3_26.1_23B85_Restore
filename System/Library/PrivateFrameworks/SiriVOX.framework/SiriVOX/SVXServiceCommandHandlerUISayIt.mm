@interface SVXServiceCommandHandlerUISayIt
- (BOOL)shouldDependOnCommand:(id)a3;
- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)a3 module:(id)a4 instrumentationUtils:(id)a5 synthesisResultConverter:(id)a6 speechSynthesisUtils:(id)a7;
- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)a3 module:(id)a4 instrumentationUtils:(id)a5 synthesisResultConverter:(id)a6 speechSynthesisUtils:(id)a7 utteranceParserProvider:(id)a8 expressionParsingServiceProvider:(id)a9 parseableExpressionFactory:(id)a10 sayItChildTaskFactory:(id)a11 afUtilities:(id)a12;
- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6;
- (void)prepareToHandleCommand:(id)a3 completion:(id)a4;
@end

@implementation SVXServiceCommandHandlerUISayIt

- (void)handleCommand:(id)a3 withContext:(id)a4 taskTracker:(id)a5 completion:(id)a6
{
  v59[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v42 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUISayIt class]]"}];
  }

  v14 = v11;
  kdebug_trace();
  sayItChildTaskFactory = self->_sayItChildTaskFactory;
  v16 = [(SVXModule *)self->_module preferences];
  v43 = -[SVXSayItChildTaskProvider createWithCommand:taskTracker:listenAfterSpeakingDisabled:](sayItChildTaskFactory, "createWithCommand:taskTracker:listenAfterSpeakingDisabled:", v14, v13, [v16 listenAfterSpeakingDisabled]);

  v17 = [v14 dialogIdentifier];
  v18 = [(SVXAFUtilitiesWrapper *)self->_afUtilities af_IsInternalInstall];
  v19 = 0;
  if (v18)
  {
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = &stru_287A1C130;
    }

    v58 = @"dialogIdentifier";
    v59[0] = v20;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  }

  v41 = v19;
  v21 = v13;
  objc_opt_class();
  v44 = v12;
  v45 = v17;
  if (objc_opt_isKindOfClass())
  {
    v22 = v12;
  }

  else
  {
    v22 = [v14 message];
  }

  v23 = v22;
  v24 = MEMORY[0x277CEF098];
  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v55 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]";
    v56 = 2112;
    v57 = v23;
    _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s preparedSpeakableText = %@", buf, 0x16u);
  }

  speechSynthesisUtils = self->_speechSynthesisUtils;
  v27 = [v14 audioData];
  v28 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils createAudioFromUIAudioData:v27];

  v29 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v55 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]";
    v56 = 2112;
    v57 = v28;
    _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s presynthesizedAudio = %@", buf, 0x16u);
  }

  instrumentationUtils = self->_instrumentationUtils;
  v31 = [v21 instrumentationContext];
  v32 = [v21 context];
  v33 = [v32 dialogPhase];
  [(SVXInstrumentationUtilities *)instrumentationUtils emitUUFRSaid:v31 dialogIdentifier:v45 dialogPhase:v33];

  v34 = -[SVXSpeechSynthesisRequest initWithPriority:options:speakableText:speakableContext:localizationKey:presynthesizedAudio:streamID:]([SVXSpeechSynthesisRequest alloc], "initWithPriority:options:speakableText:speakableContext:localizationKey:presynthesizedAudio:streamID:", 2, [v14 canUseServerTTS], v23, 0, 0, v28, 0);
  speechSynthesizer = self->_speechSynthesizer;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke;
  v51[3] = &unk_279C68FE8;
  v52 = v34;
  v53 = v14;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke_41;
  v46[3] = &unk_279C67D78;
  v47 = v52;
  v48 = v14;
  v49 = self;
  v50 = v42;
  v36 = v52;
  v37 = v42;
  v38 = v14;
  [(SVXSpeechSynthesizer *)speechSynthesizer enqueueRequest:v36 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:v51 finalization:v46 taskTracker:v43 analyticsContext:v41];

  v39 = *MEMORY[0x277D85DE8];
}

void __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Begin TTS request %@ for %@.", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke_41(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
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
    v8 = [*(a1[6] + 72) toServiceCommandResult:v3];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareToHandleCommand:(id)a3 completion:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUISayIt class]]"}];
  }

  v9 = v7;
  v10 = [v9 context];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 svx_isDeferredExpressionContextObject])
  {
    v11 = objc_alloc(MEMORY[0x277CBEAF8]);
    v12 = [(SVXModule *)self->_module preferences];
    v13 = [v12 languageCode];
    v14 = [v11 initWithLocaleIdentifier:v13];

    v15 = [(SVXAFSpeakableUtteranceParserProvider *)self->_utteranceParserProvider getWithLocale:v14];
    v16 = [v10 groupIdentifier];
    v17 = [_SVXSpeakableNamespaceDomainOccurrenceProvider providerForDomain:v16];

    [v15 registerProvider:v17 forNamespace:*MEMORY[0x277CEF568]];
    v18 = [v9 message];
    v37 = 0;
    v19 = [v15 parseStringWithFormat:v18 error:&v37];
    v20 = v37;

    if (v20 || ![v17 count])
    {
      if (v8)
      {
        v8[2](v8, 1, 0);
      }
    }

    else
    {
      expressionParsingServiceProvider = self->_expressionParsingServiceProvider;
      v22 = objc_alloc_init(MEMORY[0x277CEF1D8]);
      v32 = [(_SVXRemoteExpressionParsingServiceProvider *)expressionParsingServiceProvider getWithAceHandler:v22];

      parseableExpressionFactory = self->_parseableExpressionFactory;
      v24 = [MEMORY[0x277CCAD78] UUID];
      v25 = [v24 UUIDString];
      [v9 message];
      v26 = v33 = v14;
      v27 = [(SVXSAUILParseableExpressionProvider *)parseableExpressionFactory createWithAceId:v25 context:v10 expressionString:v26];

      v38[0] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __69__SVXServiceCommandHandlerUISayIt_prepareToHandleCommand_completion___block_invoke;
      v34[3] = &unk_279C67720;
      v35 = v27;
      v36 = v8;
      v29 = v27;
      [v32 parseExpressions:v28 targetDevice:0 reply:v34];

      v14 = v33;
    }
  }

  else if (v8)
  {
    v8[2](v8, 1, 0);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __69__SVXServiceCommandHandlerUISayIt_prepareToHandleCommand_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 firstObject];
  v6 = v5;
  if (a2 && ([v5 parseableExpression], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", *(a1 + 32)), v7, v8))
  {
    v9 = [v6 parsedOutput];
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v11);
  }
}

- (BOOL)shouldDependOnCommand:(id)a3
{
  v3 = a3;
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

- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)a3 module:(id)a4 instrumentationUtils:(id)a5 synthesisResultConverter:(id)a6 speechSynthesisUtils:(id)a7 utteranceParserProvider:(id)a8 expressionParsingServiceProvider:(id)a9 parseableExpressionFactory:(id)a10 sayItChildTaskFactory:(id)a11 afUtilities:(id)a12
{
  v18 = a3;
  v35 = a4;
  v19 = a4;
  v36 = a5;
  v45 = a5;
  v37 = a6;
  v20 = a6;
  v21 = self;
  v44 = v20;
  v43 = a7;
  v38 = a8;
  v42 = a8;
  v41 = a9;
  v40 = a10;
  v39 = a11;
  v22 = a12;
  if (v18)
  {
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:v21 file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"speechSynthesizer != nil"}];

    if (v19)
    {
      goto LABEL_3;
    }
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:v21 file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

LABEL_3:
  v46.receiver = v21;
  v46.super_class = SVXServiceCommandHandlerUISayIt;
  v23 = [(SVXServiceCommandHandlerUISayIt *)&v46 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_speechSynthesizer, a3);
    objc_storeStrong(&v24->_module, v35);
    objc_storeStrong(&v24->_instrumentationUtils, v36);
    objc_storeStrong(&v24->_synthesisResultConverter, v37);
    objc_storeStrong(&v24->_speechSynthesisUtils, a7);
    objc_storeStrong(&v24->_utteranceParserProvider, v38);
    objc_storeStrong(&v24->_expressionParsingServiceProvider, a9);
    objc_storeStrong(&v24->_parseableExpressionFactory, a10);
    objc_storeStrong(&v24->_sayItChildTaskFactory, a11);
    objc_storeStrong(&v24->_afUtilities, a12);
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = [objc_opt_class() supportedCommandClass];
    v27 = NSStringFromClass(v26);
    v28 = [v25 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v27];
    identifier = v24->_identifier;
    v24->_identifier = v28;
  }

  return v24;
}

- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)a3 module:(id)a4 instrumentationUtils:(id)a5 synthesisResultConverter:(id)a6 speechSynthesisUtils:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v22 = objc_alloc_init(SVXAFSpeakableUtteranceParserProvider);
  v16 = objc_alloc_init(_SVXRemoteExpressionParsingServiceProvider);
  v17 = objc_alloc_init(SVXSAUILParseableExpressionProvider);
  v18 = objc_alloc_init(SVXSayItChildTaskProvider);
  v19 = objc_alloc_init(SVXAFUtilitiesWrapper);
  v20 = [(SVXServiceCommandHandlerUISayIt *)self initWithSpeechSynthesizer:v15 module:v14 instrumentationUtils:v13 synthesisResultConverter:v12 speechSynthesisUtils:v11 utteranceParserProvider:v22 expressionParsingServiceProvider:v16 parseableExpressionFactory:v17 sayItChildTaskFactory:v18 afUtilities:v19];

  return v20;
}

@end