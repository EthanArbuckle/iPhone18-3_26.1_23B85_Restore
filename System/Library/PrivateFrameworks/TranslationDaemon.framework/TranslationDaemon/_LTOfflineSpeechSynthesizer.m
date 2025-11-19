@interface _LTOfflineSpeechSynthesizer
- (_LTOfflineSpeechSynthesizer)initWithCompletion:(id)a3;
- (void)cancel;
- (void)speak:(id)a3 withContext:(id)a4;
@end

@implementation _LTOfflineSpeechSynthesizer

- (_LTOfflineSpeechSynthesizer)initWithCompletion:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTOfflineSpeechSynthesizer;
  v5 = [(_LTOfflineSpeechSynthesizer *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D613F8]);
    session = v5->_session;
    v5->_session = v6;

    v8 = [v4 copy];
    completion = v5->_completion;
    v5->_completion = v8;

    v10 = objc_alloc_init(MEMORY[0x277CE1AC8]);
    audioDecoder = v5->_audioDecoder;
    v5->_audioDecoder = v10;

    v12 = v5;
  }

  return v5;
}

- (void)speak:(id)a3 withContext:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentAudioData = self->_currentAudioData;
  self->_currentAudioData = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentWordTimingInfo = self->_currentWordTimingInfo;
  self->_currentWordTimingInfo = v11;

  v13 = [v7 localePair];
  v14 = [v13 targetLocale];
  v15 = _LTLocaleMappedForTTS();

  if ([v6 length] <= 0x14)
  {
    v17 = v6;
  }

  else
  {
    v16 = [v6 substringToIndex:20];
    v17 = [v16 stringByAppendingString:@"..."];
  }

  v18 = _LTOSLogTTS();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v15 localeIdentifier];
    *buf = 138740227;
    v39 = v17;
    v40 = 2114;
    v41 = v20;
    _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Speaking: %{sensitive}@ language code %{public}@", buf, 0x16u);
  }

  if ([v6 length])
  {
    v21 = [v15 localeIdentifier];
    v22 = [_LTDTTSAssetService voiceForLocaleIdentifier:v21];

    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D61468]) initWithText:v6 voice:v22];
      v24 = [v7 outputFileURL];
      [v23 setOutputPath:v24];

      [v7 ttsPlaybackRate];
      *&v25 = v25;
      [v23 setRate:v25];
      [v23 setPrivacySensitive:1];
      [v23 setDidReportInstrument:&__block_literal_global_22];
      objc_storeStrong(&self->_currentRequest, v23);
      objc_initWeak(buf, self);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_9;
      v36[3] = &unk_2789B6F78;
      objc_copyWeak(&v37, buf);
      [(SiriTTSSynthesisRequest *)self->_currentRequest setDidGenerateAudio:v36];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_11;
      v34[3] = &unk_2789B6FA0;
      objc_copyWeak(&v35, buf);
      [(SiriTTSSynthesisRequest *)self->_currentRequest setDidGenerateWordTimings:v34];
      session = self->_session;
      v26 = self->_currentRequest;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2;
      v31[3] = &unk_2789B6FF0;
      objc_copyWeak(&v33, buf);
      v32 = v6;
      [(SiriTTSDaemonSession *)session synthesizeWithRequest:v26 didFinish:v31];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }

    else
    {
      v29 = _LTOSLogTTS();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineSpeechSynthesizer speak:v29 withContext:v15];
      }
    }
  }

  else
  {
    v28 = _LTOSLogTTS();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Received zero-length or nil text speak request", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v3 = _LTOSLogTTS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "TTS cancelled", v4, 2u);
  }

  [(SiriTTSDaemonSession *)self->_session cancelWithRequest:self->_currentRequest];
}

- (void)speak:(void *)a1 withContext:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localeIdentifier];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "No synthesis voice found for %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end