@interface _LTCombinedEngine
- (BOOL)translatesPair:(id)a3;
- (_LTCombinedEngine)init;
- (void)addSpeechAudioData:(id)a3;
- (void)endAudio;
- (void)endpoint;
- (void)hybridEndpointerFoundEndpoint;
- (void)serverEndpointerFeatures:(id)a3 locale:(id)a4;
- (void)setLanguagesRecognized:(id)a3 context:(id)a4;
- (void)speak:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)speechRecognitionResult:(id)a3;
- (void)startSpeechTranslationWithContext:(id)a3 delegate:(id)a4;
- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4 delegate:(id)a5;
- (void)translate:(id)a3 withContext:(id)a4 paragraphResult:(id)a5 completion:(id)a6;
- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)translationDidFinishWithError:(id)a3;
- (void)translatorDidTranslate:(id)a3;
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

- (BOOL)translatesPair:(id)a3
{
  v4 = a3;
  v5 = [(_LTCombinedEngine *)self offlineEngine];
  if ([v5 translatesPair:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(_LTCombinedEngine *)self onlineEngine];
    v6 = [v7 translatesPair:v4];
  }

  return v6;
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  v5 = [(_LTCombinedEngine *)self offlineEngine];
  [v5 addSpeechAudioData:v4];

  v6 = [(_LTCombinedEngine *)self onlineEngine];
  [v6 addSpeechAudioData:v4];
}

- (void)endAudio
{
  v3 = [(_LTCombinedEngine *)self offlineEngine];
  [v3 endAudio];

  v4 = [(_LTCombinedEngine *)self onlineEngine];
  [v4 endAudio];
}

- (void)setLanguagesRecognized:(id)a3 context:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(_LTCombinedEngine *)self offlineEngine];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(_LTCombinedEngine *)self offlineEngine];
    [v9 setLanguagesRecognized:v13 context:v6];
  }

  v10 = [(_LTCombinedEngine *)self onlineEngine];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(_LTCombinedEngine *)self onlineEngine];
    [v12 setLanguagesRecognized:v13 context:v6];
  }
}

- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTCombinedEngine startTextToSpeechTranslationWithContext:v11 text:? delegate:?];
  }

  objc_storeWeak(&self->_delegate, v8);
  self->_onlineTranslationStarted = 0;
  v12 = objc_alloc_init(_LTSpeechTranslationResultsBuffer);
  offlineDelegateBuffer = self->_offlineDelegateBuffer;
  self->_offlineDelegateBuffer = v12;

  [(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer setDelegate:v8];
  v14 = [(_LTCombinedEngine *)self onlineEngine];
  [v14 startTextToSpeechTranslationWithContext:v10 text:v9 delegate:self];

  v15 = [(_LTCombinedEngine *)self offlineEngine];
  [v15 startTextToSpeechTranslationWithContext:v10 text:v9 delegate:self->_offlineDelegateBuffer];
}

- (void)startSpeechTranslationWithContext:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_storeWeak(&self->_delegate, v6);
  self->_onlineTranslationStarted = 0;
  v8 = objc_alloc_init(_LTSpeechTranslationResultsBuffer);
  offlineDelegateBuffer = self->_offlineDelegateBuffer;
  self->_offlineDelegateBuffer = v8;

  [(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer setDelegate:v6];
  v10 = [(_LTCombinedEngine *)self onlineEngine];
  [v10 startSpeechTranslationWithContext:v7 delegate:self];

  v11 = [(_LTCombinedEngine *)self offlineEngine];
  [v11 startSpeechTranslationWithContext:v7 delegate:self->_offlineDelegateBuffer];
}

- (void)speak:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  onlineEngine = self->_onlineEngine;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50___LTCombinedEngine_speak_withContext_completion___block_invoke;
  v15[3] = &unk_2789B5558;
  objc_copyWeak(&v19, &location);
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [(_LTTranslationEngine *)onlineEngine speak:v12 withContext:v13 completion:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)translate:(id)a3 withContext:(id)a4 paragraphResult:(id)a5 completion:(id)a6
{
  v10 = a3;
  v33 = a4;
  v11 = a5;
  v32 = a6;
  v12 = [v10 _ltCompactMap:&__block_literal_global];
  v13 = [v12 mutableCopy];

  v14 = [MEMORY[0x277CBEB38] dictionary];
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
  v17 = [(_LTCombinedEngine *)self offlineEngine];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_6;
  v52[3] = &unk_2789B55C8;
  v18 = v16;
  v53 = v18;
  v57 = v60;
  v19 = v13;
  v54 = v19;
  v20 = v11;
  v56 = v20;
  v21 = v14;
  v55 = v21;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_3;
  v49[3] = &unk_2789B55F0;
  v51 = v58;
  v22 = v15;
  v50 = v22;
  [v17 translate:v10 withContext:v33 paragraphResult:v52 completion:v49];

  dispatch_group_enter(v22);
  v23 = [(_LTCombinedEngine *)self onlineEngine];
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
  [v23 translate:v10 withContext:v33 paragraphResult:v45 completion:v42];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_7;
  block[3] = &unk_2789B5668;
  v39 = v62;
  v40 = v58;
  v41 = v60;
  v35 = v25;
  v36 = v21;
  v37 = v32;
  v38 = v26;
  v28 = v26;
  v29 = v21;
  v30 = v25;
  v31 = v32;
  dispatch_group_notify(v27, v24, block);

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
}

- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v13 = [(_LTCombinedEngine *)self offlineEngine];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke;
  v28[3] = &unk_2789B5690;
  v30 = v36;
  v31 = v34;
  v14 = v11;
  v29 = v14;
  [v13 translateSentence:v8 withContext:v9 completion:v28];

  dispatch_group_enter(v14);
  v15 = [(_LTCombinedEngine *)self onlineEngine];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke_2;
  v24[3] = &unk_2789B56B8;
  v27 = v38;
  v16 = v10;
  v26 = v16;
  v17 = v14;
  v25 = v17;
  [v15 translateSentence:v8 withContext:v9 completion:v24];

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

- (void)serverEndpointerFeatures:(id)a3 locale:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 serverEndpointerFeatures:v10 locale:v6];
  }
}

- (void)speechRecognitionResult:(id)a3
{
  v7 = a3;
  self->_onlineTranslationStarted = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 speechRecognitionResult:v7];
  }
}

- (void)translatorDidTranslate:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 translatorDidTranslate:v7];
  }
}

- (void)translationDidFinishWithError:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_LTCombinedEngine *)v4 translationDidFinishWithError:v6];
    }

    if (![(_LTSpeechTranslationResultsBuffer *)self->_offlineDelegateBuffer hasFailed])
    {
      v7 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Online translation failed, continue with offline", v12, 2u);
      }

      v8 = [(_LTCombinedEngine *)self onlineEngine];
      [v8 cancelSpeechTranslation:0];

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
    [v11 translationDidFinishWithError:v4];
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