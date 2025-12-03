@interface _LTCombinedEngine
- (BOOL)translatesPair:(id)pair;
- (_LTCombinedEngine)init;
- (void)addSpeechAudioData:(id)data;
- (void)endAudio;
- (void)endpoint;
- (void)hybridEndpointerFoundEndpoint;
- (void)serverEndpointerFeatures:(id)features locale:(id)locale;
- (void)setLanguagesRecognized:(id)recognized context:(id)context;
- (void)speak:(id)speak withContext:(id)context completion:(id)completion;
- (void)speechRecognitionResult:(id)result;
- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate;
- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation _LTCombinedEngine

- (_LTCombinedEngine)init
{
  v6.receiver = self;
  v6.super_class = _LTCombinedEngine;
  v2 = [(_LTCombinedEngine *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_translationEnded = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)translatesPair:(id)pair
{
  pairCopy = pair;
  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  if ([offlineEngine translatesPair:pairCopy])
  {
    v6 = 1;
  }

  else
  {
    onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
    v6 = [onlineEngine translatesPair:pairCopy];
  }

  return v6;
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  [offlineEngine addSpeechAudioData:dataCopy];

  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  [onlineEngine addSpeechAudioData:dataCopy];
}

- (void)endAudio
{
  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  [offlineEngine endAudio];

  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  [onlineEngine endAudio];
}

- (void)setLanguagesRecognized:(id)recognized context:(id)context
{
  recognizedCopy = recognized;
  contextCopy = context;
  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    offlineEngine2 = [(_LTCombinedEngine *)self offlineEngine];
    [offlineEngine2 setLanguagesRecognized:recognizedCopy context:contextCopy];
  }

  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    onlineEngine2 = [(_LTCombinedEngine *)self onlineEngine];
    [onlineEngine2 setLanguagesRecognized:recognizedCopy context:contextCopy];
  }
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate
{
  delegateCopy = delegate;
  textCopy = text;
  contextCopy = context;
  v11 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTCombinedEngine startTextToSpeechTranslationWithContext:v11 text:? delegate:?];
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_onlineTranslationStarted = 0;
  v12 = objc_alloc_init(_LTSpeechTranslationResultsBuffer);
  offlineDelegateBuffer = self->_offlineDelegateBuffer;
  self->_offlineDelegateBuffer = v12;

  [(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer setDelegate:delegateCopy];
  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  [onlineEngine startTextToSpeechTranslationWithContext:contextCopy text:textCopy delegate:self];

  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  [offlineEngine startTextToSpeechTranslationWithContext:contextCopy text:textCopy delegate:self->_offlineDelegateBuffer];
}

- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate
{
  delegateCopy = delegate;
  contextCopy = context;
  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_onlineTranslationStarted = 0;
  v8 = objc_alloc_init(_LTSpeechTranslationResultsBuffer);
  offlineDelegateBuffer = self->_offlineDelegateBuffer;
  self->_offlineDelegateBuffer = v8;

  [(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer setDelegate:delegateCopy];
  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  [onlineEngine startSpeechTranslationWithContext:contextCopy delegate:self];

  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  [offlineEngine startSpeechTranslationWithContext:contextCopy delegate:self->_offlineDelegateBuffer];
}

- (void)speak:(id)speak withContext:(id)context completion:(id)completion
{
  speakCopy = speak;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  onlineEngine = self->_onlineEngine;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50___LTCombinedEngine_speak_withContext_completion___block_invoke;
  v15[3] = &unk_2789B5558;
  objc_copyWeak(&v19, &location);
  v12 = speakCopy;
  v16 = v12;
  v13 = contextCopy;
  v17 = v13;
  v14 = completionCopy;
  v18 = v14;
  [(_LTTranslationEngine *)onlineEngine speak:v12 withContext:v13 completion:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion
{
  translateCopy = translate;
  contextCopy = context;
  resultCopy = result;
  completionCopy = completion;
  v12 = [translateCopy _ltCompactMap:&__block_literal_global];
  v13 = [v12 mutableCopy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__1;
  v60[4] = __Block_byref_object_dispose__1;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__1;
  v58[4] = __Block_byref_object_dispose__1;
  v59 = 0;
  v15 = dispatch_group_create();
  v16 = dispatch_queue_create("com.apple.translation.combined", 0);
  dispatch_group_enter(v15);
  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_6;
  v52[3] = &unk_2789B55C8;
  v18 = v16;
  v53 = v18;
  v57 = v60;
  v19 = v13;
  v54 = v19;
  v20 = resultCopy;
  v56 = v20;
  v21 = dictionary;
  v55 = v21;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_3;
  v49[3] = &unk_2789B55F0;
  v51 = v58;
  v22 = v15;
  v50 = v22;
  [offlineEngine translate:translateCopy withContext:contextCopy paragraphResult:v52 completion:v49];

  dispatch_group_enter(v22);
  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_4;
  v45[3] = &unk_2789B5640;
  v24 = v18;
  v46 = v24;
  v25 = v19;
  v47 = v25;
  v26 = v20;
  v48 = v26;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_6;
  v42[3] = &unk_2789B55F0;
  v44 = v60;
  v27 = v22;
  v43 = v27;
  [onlineEngine translate:translateCopy withContext:contextCopy paragraphResult:v45 completion:v42];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_7;
  block[3] = &unk_2789B5668;
  v39 = v62;
  v40 = v58;
  v41 = v60;
  v35 = v25;
  v36 = v21;
  v37 = completionCopy;
  v38 = v26;
  v28 = v26;
  v29 = v21;
  v30 = v25;
  v31 = completionCopy;
  dispatch_group_notify(v27, v24, block);

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  sentenceCopy = sentence;
  contextCopy = context;
  completionCopy = completion;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__1;
  v36[4] = __Block_byref_object_dispose__1;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__1;
  v34[4] = __Block_byref_object_dispose__1;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__1;
  v32[4] = __Block_byref_object_dispose__1;
  v33 = 0;
  v11 = dispatch_group_create();
  v12 = dispatch_queue_create("com.apple.translation.combined", 0);
  dispatch_group_enter(v11);
  offlineEngine = [(_LTCombinedEngine *)self offlineEngine];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke;
  v28[3] = &unk_2789B5690;
  v30 = v36;
  v31 = v34;
  v14 = v11;
  v29 = v14;
  [offlineEngine translateSentence:sentenceCopy withContext:contextCopy completion:v28];

  dispatch_group_enter(v14);
  onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke_2;
  v24[3] = &unk_2789B56B8;
  v27 = v38;
  v16 = completionCopy;
  v26 = v16;
  v17 = v14;
  v25 = v17;
  [onlineEngine translateSentence:sentenceCopy withContext:contextCopy completion:v24];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke_3;
  v19[3] = &unk_2789B56E0;
  v20 = v16;
  v21 = v38;
  v22 = v34;
  v23 = v32;
  v18 = v16;
  dispatch_group_notify(v17, v12, v19);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

- (void)endpoint
{
  [(_LTTranslationEngine *)self->_onlineEngine endpoint];
  offlineEngine = self->_offlineEngine;

  [(_LTTranslationEngine *)offlineEngine endpoint];
}

- (void)hybridEndpointerFoundEndpoint
{
  v3 = _LTOSLogSpeech();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_LTCombinedEngine *)v3 hybridEndpointerFoundEndpoint];
  }

  [(_LTTranslationEngine *)self->_onlineEngine endpoint];
  [(_LTTranslationEngine *)self->_offlineEngine endpoint];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 hybridEndpointerFoundEndpoint];
  }
}

- (void)serverEndpointerFeatures:(id)features locale:(id)locale
{
  featuresCopy = features;
  localeCopy = locale;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 serverEndpointerFeatures:featuresCopy locale:localeCopy];
  }
}

- (void)speechRecognitionResult:(id)result
{
  resultCopy = result;
  self->_onlineTranslationStarted = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 speechRecognitionResult:resultCopy];
  }
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 translatorDidTranslate:translateCopy];
  }
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  v5 = _LTOSLogTranslationEngine();
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_LTCombinedEngine *)errorCopy translationDidFinishWithError:v6];
    }

    if (![(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer hasFailed])
    {
      v7 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Online translation failed, continue with offline", v12, 2u);
      }

      onlineEngine = [(_LTCombinedEngine *)self onlineEngine];
      [onlineEngine cancelSpeechTranslation:0];

      [(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer stopBuffering];
      goto LABEL_12;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Server translation finished successfully", buf, 2u);
  }

  self->_serverCompleted = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 translationDidFinishWithError:errorCopy];
  }

LABEL_12:
}

- (void)translationDidFinishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Server translation finished with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end