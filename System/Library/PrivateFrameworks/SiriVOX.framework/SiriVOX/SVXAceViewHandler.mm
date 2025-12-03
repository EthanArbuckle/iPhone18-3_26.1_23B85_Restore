@interface SVXAceViewHandler
- (SVXAceViewHandler)initWithModule:(id)module instrumentationUtils:(id)utils modeProvider:(id)provider speechSynthesizer:(id)synthesizer synthesisResultConverter:(id)converter;
- (SVXAceViewHandler)initWithModule:(id)module instrumentationUtils:(id)utils modeProvider:(id)provider speechSynthesizer:(id)synthesizer synthesisResultConverter:(id)converter speakableTextExtractor:(id)extractor afUtilitiesWrapper:(id)wrapper;
- (void)handleAceView:(id)view isExpository:(BOOL)expository taskTracker:(id)tracker completion:(id)completion;
@end

@implementation SVXAceViewHandler

- (void)handleAceView:(id)view isExpository:(BOOL)expository taskTracker:(id)tracker completion:(id)completion
{
  expositoryCopy = expository;
  v80 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = mach_absolute_time();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = MEMORY[0x277CEF098];
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    dialogIdentifier = [viewCopy dialogIdentifier];
  }

  else
  {
    dialog = [viewCopy dialog];

    if (dialog)
    {
      v49 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        v51 = v49;
        dialog2 = [viewCopy dialog];
        dialogIdentifier2 = [dialog2 dialogIdentifier];
        *buf = 136315394;
        v77 = "[SVXAceViewHandler handleAceView:isExpository:taskTracker:completion:]";
        v78 = 2112;
        v79 = dialogIdentifier2;
        _os_log_debug_impl(&dword_2695B9000, v51, OS_LOG_TYPE_DEBUG, "%s AceView has an SADialog...using the identifier for that: %@", buf, 0x16u);
      }

      dialog3 = [viewCopy dialog];
      dialogIdentifier = [dialog3 dialogIdentifier];
    }

    else
    {
      dialogIdentifier = 0;
    }
  }

  if ([(SVXAFUtilitiesWrapper *)self->_afUtilitiesWrapper af_IsInternalInstall])
  {
    v74[0] = @"dialogPhase";
    context = [trackerCopy context];
    dialogPhase = [context dialogPhase];
    v17 = dialogPhase;
    v18 = &stru_287A1C130;
    if (dialogPhase)
    {
      v19 = dialogPhase;
    }

    else
    {
      v19 = &stru_287A1C130;
    }

    v74[1] = @"dialogIdentifier";
    v75[0] = v19;
    if (dialogIdentifier)
    {
      v18 = dialogIdentifier;
    }

    v75[1] = v18;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v75;
    v22 = v74;
    v23 = 2;
  }

  else
  {
    v72 = @"dialogPhase";
    context = [trackerCopy context];
    dialogPhase2 = [context dialogPhase];
    v17 = dialogPhase2;
    v25 = &stru_287A1C130;
    if (dialogPhase2)
    {
      v25 = dialogPhase2;
    }

    v73 = v25;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v73;
    v22 = &v72;
    v23 = 1;
  }

  v56 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];

  context2 = [trackerCopy context];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __71__SVXAceViewHandler_handleAceView_isExpository_taskTracker_completion___block_invoke;
  v67[3] = &unk_279C67D50;
  v71 = v11;
  v27 = dialogIdentifier;
  v68 = v27;
  v28 = viewCopy;
  v69 = v28;
  selfCopy = self;
  v29 = [context2 mutatedCopyWithMutator:v67];

  v55 = v29;
  v54 = [trackerCopy beginChildWithContext:v29];
  v30 = [(SVXAceViewSpeakableTextExtractor *)self->_speakableTextExtractor extractWithAceView:v28];
  v31 = v13;
  v32 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v77 = "[SVXAceViewHandler handleAceView:isExpository:taskTracker:completion:]";
    v78 = 2112;
    v79 = v30;
    _os_log_impl(&dword_2695B9000, v32, OS_LOG_TYPE_INFO, "%s speakableText = %@", buf, 0x16u);
  }

  instrumentationUtils = self->_instrumentationUtils;
  instrumentationContext = [trackerCopy instrumentationContext];
  dialogPhase3 = [trackerCopy dialogPhase];
  [(SVXInstrumentationUtilities *)instrumentationUtils emitUUFRSaidWithModeSupport:instrumentationContext dialogIdentifier:v27 dialogPhase:dialogPhase3 speakableText:v30 currentMode:[(MDModeProviding *)self->_modeProvider currentMode]];

  if ([v28 disableDeviceRacing])
  {
    v36 = *v31;
    if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v77 = "[SVXAceViewHandler handleAceView:isExpository:taskTracker:completion:]";
      _os_log_impl(&dword_2695B9000, v36, OS_LOG_TYPE_DEFAULT, "%s disableDeviceRacing found to prefer server side TTS synthesis for music domain. minimizeDeviceUsage in SVXSpeechSynthesisOptions will be set", buf, 0xCu);
    }
  }

  canUseServerTTS = [v28 canUseServerTTS];
  if ([v28 disableDeviceRacing])
  {
    v38 = 2;
  }

  else
  {
    v38 = 0;
  }

  v39 = [SVXSpeechSynthesisRequest alloc];
  if (expositoryCopy)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  speakableContextInfo = [v28 speakableContextInfo];
  v42 = [(SVXSpeechSynthesisRequest *)v39 initWithPriority:v40 options:v38 | canUseServerTTS speakableText:v30 speakableContext:speakableContextInfo localizationKey:0 presynthesizedAudio:0 streamID:0];

  speechSynthesizer = self->_speechSynthesizer;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __71__SVXAceViewHandler_handleAceView_isExpository_taskTracker_completion___block_invoke_13;
  v64[3] = &unk_279C68FE8;
  v65 = v42;
  v66 = v28;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __71__SVXAceViewHandler_handleAceView_isExpository_taskTracker_completion___block_invoke_15;
  v59[3] = &unk_279C67D78;
  v60 = v65;
  v61 = v66;
  selfCopy2 = self;
  v63 = completionCopy;
  v44 = completionCopy;
  v45 = v66;
  v46 = v65;
  [(SVXSpeechSynthesizer *)speechSynthesizer enqueueRequest:v46 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:v64 finalization:v59 taskTracker:v54 analyticsContext:v56];

  v47 = *MEMORY[0x277D85DE8];
}

void __71__SVXAceViewHandler_handleAceView_isExpository_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setTimestamp:*(a1 + 56)];
  [v3 setDialogIdentifier:*(a1 + 32)];
  v4 = [*(a1 + 40) aceId];
  [v3 setAceId:v4];

  v5 = [*(a1 + 40) refId];
  [v3 setRefId:v5];

  v6 = [*(a1 + 40) listenAfterSpeaking];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [*(*(a1 + 48) + 16) preferences];
    v9 = [v8 listenAfterSpeakingDisabled];

    if (!v9)
    {
      v11 = 1;
      goto LABEL_7;
    }

    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SVXAceViewHandler handleAceView:isExpository:taskTracker:completion:]_block_invoke";
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEFAULT, "%s Overriding listenAfterSpeaking due to defaults", &v14, 0xCu);
    }
  }

  v11 = 0;
LABEL_7:
  [v3 setListensAfterSpeaking:v11];
  v12 = [*(a1 + 40) listenAfterSpeakingBehavior];
  [v3 setListenAfterSpeakingBehavior:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __71__SVXAceViewHandler_handleAceView_isExpository_taskTracker_completion___block_invoke_13(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[SVXAceViewHandler handleAceView:isExpository:taskTracker:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Begin TTS request %@ for %@.", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __71__SVXAceViewHandler_handleAceView_isExpository_taskTracker_completion___block_invoke_15(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[SVXAceViewHandler handleAceView:isExpository:taskTracker:completion:]_block_invoke";
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
    v8 = [*(a1[6] + 56) toServiceCommandResult:v3];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (SVXAceViewHandler)initWithModule:(id)module instrumentationUtils:(id)utils modeProvider:(id)provider speechSynthesizer:(id)synthesizer synthesisResultConverter:(id)converter speakableTextExtractor:(id)extractor afUtilitiesWrapper:(id)wrapper
{
  moduleCopy = module;
  utilsCopy = utils;
  providerCopy = provider;
  synthesizerCopy = synthesizer;
  converterCopy = converter;
  extractorCopy = extractor;
  wrapperCopy = wrapper;
  v26.receiver = self;
  v26.super_class = SVXAceViewHandler;
  v18 = [(SVXAceViewHandler *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_speakableTextExtractor, extractor);
    objc_storeStrong(&v19->_module, module);
    objc_storeStrong(&v19->_instrumentationUtils, utils);
    objc_storeStrong(&v19->_modeProvider, provider);
    objc_storeStrong(&v19->_synthesisResultConverter, converter);
    objc_storeStrong(&v19->_speechSynthesizer, synthesizer);
    objc_storeStrong(&v19->_afUtilitiesWrapper, wrapper);
  }

  return v19;
}

- (SVXAceViewHandler)initWithModule:(id)module instrumentationUtils:(id)utils modeProvider:(id)provider speechSynthesizer:(id)synthesizer synthesisResultConverter:(id)converter
{
  converterCopy = converter;
  synthesizerCopy = synthesizer;
  providerCopy = provider;
  utilsCopy = utils;
  moduleCopy = module;
  v17 = objc_alloc_init(SVXAceViewSpeakableTextExtractor);
  v18 = objc_alloc_init(SVXAFUtilitiesWrapper);
  v19 = [(SVXAceViewHandler *)self initWithModule:moduleCopy instrumentationUtils:utilsCopy modeProvider:providerCopy speechSynthesizer:synthesizerCopy synthesisResultConverter:converterCopy speakableTextExtractor:v17 afUtilitiesWrapper:v18];

  return v19;
}

@end