@interface VTUIAudioHintPlayer
- (BOOL)_hasValidHints;
- (BOOL)_systemLanguageMatchesSiriLanguage:(id)a3 siriLanguage:(id)a4;
- (BOOL)_useCompactPhraseForInstruction:(int64_t)a3;
- (VTUIAudioHintPlayer)initWithLanguage:(id)a3 delegate:(id)a4;
- (VTUIAudioHintPlayerDelegate)delegate;
- (id)_audioHintPathForFileName:(id)a3;
- (id)_getTrainingPageAudioHintRequests;
- (void)_setupHints;
- (void)_timerFired;
- (void)cleanup;
- (void)sendError:(id)a3 toMainForCompletion:(id)a4;
- (void)setLanguage:(id)a3;
- (void)setOutputVoice:(id)a3;
- (void)speakAudioHint:(unint64_t)a3 completion:(id)a4;
- (void)speakConfirmationDialog:(id)a3;
- (void)updateIfNeededForUsesMultipleTriggers:(BOOL)a3;
@end

@implementation VTUIAudioHintPlayer

- (VTUIAudioHintPlayer)initWithLanguage:(id)a3 delegate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = VTUIAudioHintPlayer;
  v8 = [(VTUIAudioHintPlayer *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(VTUIAudioHintPlayer *)v8 setLanguage:v6];
    objc_storeWeak(&v9->_delegate, v7);
    v10 = objc_alloc_init(VTUISpeechSynthesizer);
    synth = v9->_synth;
    v9->_synth = v10;

    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[VTUIAudioHintPlayer initWithLanguage:delegate:]";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Audio Hint language: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setLanguage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_language, a3);
  v6 = [MEMORY[0x277CEF368] sharedPreferences];
  v7 = [v6 outputVoice];
  outputVoice = self->_outputVoice;
  self->_outputVoice = v7;

  if (!self->_outputVoice)
  {
    v9 = [MEMORY[0x277CEF528] voiceInfoForLanguageCode:self->_language];
    v10 = self->_outputVoice;
    self->_outputVoice = v9;
  }

  [(VTUIAudioHintPlayer *)self _setupHints];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[VTUIAudioHintPlayer setLanguage:]";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s Audio Hint language: %@", &v14, 0x16u);
  }

  if ([(VTUIAudioHintPlayer *)self _hasValidHints])
  {
    v12 = [MEMORY[0x277CBEAF8] _deviceLanguage];
    self->_shouldSpeakAudioHint = [(VTUIAudioHintPlayer *)self _systemLanguageMatchesSiriLanguage:v12 siriLanguage:self->_language];
  }

  else
  {
    self->_shouldSpeakAudioHint = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateIfNeededForUsesMultipleTriggers:(BOOL)a3
{
  if (self->_useCompactHints != a3)
  {
    self->_useCompactHints = a3;
    [(VTUIAudioHintPlayer *)self _setupHints];
    if ([(VTUIAudioHintPlayer *)self _hasValidHints])
    {
      v4 = [MEMORY[0x277CBEAF8] _deviceLanguage];
      self->_shouldSpeakAudioHint = [(VTUIAudioHintPlayer *)self _systemLanguageMatchesSiriLanguage:v4 siriLanguage:self->_language];
    }

    else
    {
      self->_shouldSpeakAudioHint = 0;
    }
  }
}

- (void)setOutputVoice:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_outputVoice, a3);
  [(VTUIAudioHintPlayer *)self _setupHints];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[VTUIAudioHintPlayer setOutputVoice:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Audio Hint output voice: %@", &v9, 0x16u);
  }

  if ([(VTUIAudioHintPlayer *)self _hasValidHints])
  {
    v7 = [MEMORY[0x277CBEAF8] _deviceLanguage];
    self->_shouldSpeakAudioHint = [(VTUIAudioHintPlayer *)self _systemLanguageMatchesSiriLanguage:v7 siriLanguage:self->_language];
  }

  else
  {
    self->_shouldSpeakAudioHint = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasValidHints
{
  v14 = *MEMORY[0x277D85DE8];
  if (-[NSArray count](self->_trainingPageAudioHintPreviews, "count") <= 4 && (-[NSArray count](self->_trainingPageAudioHintInstructions, "count") < 5 || (-[NSArray objectAtIndexedSubscript:](self->_trainingPageAudioHintInstructions, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:&stru_2881E5778], v4, v5)))
  {
    v6 = *MEMORY[0x277CEF098];
    v7 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      language = self->_language;
      v10 = 136315394;
      v11 = "[VTUIAudioHintPlayer _hasValidHints]";
      v12 = 2112;
      v13 = language;
      _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s No valid audio hints for language %@", &v10, 0x16u);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_systemLanguageMatchesSiriLanguage:(id)a3 siriLanguage:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:a3];
  v7 = [v6 languageCode];
  v8 = [v6 countryCode];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", v7, v8];
  v10 = [v6 scriptCode];
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "[VTUIAudioHintPlayer _systemLanguageMatchesSiriLanguage:siriLanguage:]";
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s System locale (language-scriptCode-countryCode): %@-%@-%@, Siri language: %@", buf, 0x34u);
  }

  if ([v5 isEqualToString:v9])
  {
    goto LABEL_4;
  }

  if ([v7 isEqualToString:@"zh"] && objc_msgSend(v10, "isEqualToString:", @"Hans"))
  {
    if ([v5 isEqualToString:@"zh-CN"])
    {
LABEL_4:
      v13 = 1;
      goto LABEL_21;
    }

    v14 = @"yue-CN";
LABEL_16:
    v13 = [v5 isEqualToString:v14];
    goto LABEL_21;
  }

  if ([v7 isEqualToString:@"zh"] && ((objc_msgSend(v8, "isEqualToString:", @"MO") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"HK")))
  {
    v14 = @"zh-HK";
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"zh"] && objc_msgSend(v10, "isEqualToString:", @"Hant"))
  {
    v14 = @"zh-TW";
    goto LABEL_16;
  }

  if (v10)
  {
    v15 = *v11;
    v13 = 0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[VTUIAudioHintPlayer _systemLanguageMatchesSiriLanguage:siriLanguage:]";
      _os_log_impl(&dword_2728BC000, v15, OS_LOG_TYPE_DEFAULT, "%s Not playing Audio Hint due to Siri language and system language mismatch", buf, 0xCu);
      v13 = 0;
    }
  }

  else
  {
    v16 = [v5 componentsSeparatedByString:@"-"];
    v17 = [v16 objectAtIndexedSubscript:0];

    v13 = [v17 isEqualToString:v7];
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_useCompactPhraseForInstruction:(int64_t)a3
{
  if (a3 != 1)
  {
    if (a3 == 5)
    {
      return 1;
    }

    if (a3 != 3)
    {
      return self->_useCompactHints;
    }
  }

  return 0;
}

- (void)_setupHints
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = +[VTUIStyle sharedStyle];
  v3 = [MEMORY[0x277CBEB18] array];
  for (i = 1; i != 6; ++i)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"AUDIO_INSTRUCTION_UTT%lu", i];
    v6 = +[VTUIStringsHelper sharedStringsHelper];
    v7 = [v2 VTUIDeviceSpecificString:v5];
    v8 = [v6 localizedAudioStringForKey:v7];

    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  v9 = +[VTUIStringsHelper sharedStringsHelper];
  v10 = [v9 localizedAudioStringForKey:@"AUDIO_INSTRUCTION_READY"];
  [v3 addObject:v10];

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  trainingPageAudioHintInstructions = self->_trainingPageAudioHintInstructions;
  self->_trainingPageAudioHintInstructions = v11;

  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    language = self->_language;
    *buf = 136315394;
    v25 = "[VTUIAudioHintPlayer _setupHints]";
    v26 = 2112;
    v27 = language;
    _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Audio Hint language: %@", buf, 0x16u);
  }

  v16 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    outputVoice = self->_outputVoice;
    v18 = v16;
    v19 = [(AFVoiceInfo *)outputVoice description];
    *buf = 136315394;
    v25 = "[VTUIAudioHintPlayer _setupHints]";
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&dword_2728BC000, v18, OS_LOG_TYPE_DEFAULT, "%s Audio Hint outputVoice: %@", buf, 0x16u);
  }

  v20 = [(VTUIAudioHintPlayer *)self _getTrainingPageAudioHintRequests];
  trainingPageAudioHintPreviews = self->_trainingPageAudioHintPreviews;
  self->_trainingPageAudioHintPreviews = v20;

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_getTrainingPageAudioHintRequests
{
  v3 = [MEMORY[0x277CBEB18] array];
  for (i = 1; i != 7; ++i)
  {
    v5 = objc_alloc(MEMORY[0x277D61478]);
    language = self->_language;
    v7 = [(AFVoiceInfo *)self->_outputVoice name];
    v8 = [v5 initWithLanguage:language name:v7];

    v9 = objc_alloc(MEMORY[0x277D613E0]);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[VTUIAudioHintPlayer useCompactHints](self, "useCompactHints")}];
    v11 = [v9 initWithVoice:v8 dialogNumber:i useCompactHints:v10 != 0];

    if ([v11 isValid])
    {
      [v3 addObject:v11];
    }
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v12;
}

- (id)_audioHintPathForFileName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v14 = 136315650;
    v15 = "[VTUIAudioHintPlayer _audioHintPathForFileName:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s %@: Finding path for filename: %@", &v14, 0x20u);
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 pathForResource:v4 ofType:@"opx"];
  if (!v10)
  {
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[VTUIAudioHintPlayer _audioHintPathForFileName:]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s No audio hint file %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)cleanup
{
  [(VTUISpeechSynthesizer *)self->_synth stopSpeaking];
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)speakConfirmationDialog:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSTimer *)self->_timer invalidate];
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:3.0];
  timer = self->_timer;
  self->_timer = v5;

  [MEMORY[0x277D7A8D8] requestPhraseSpotterBypassing:1 timeout:3.0];
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[VTUIAudioHintPlayer speakConfirmationDialog:]";
    v37 = 2048;
    v38 = 0x4008000000000000;
    _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s requestPhraseSpotterBypassing for %f seconds", buf, 0x16u);
  }

  if (self->_shouldSpeakAudioHint)
  {
    if ([(NSArray *)self->_trainingPageAudioHintPreviews count]== 5)
    {
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v36 = "[VTUIAudioHintPlayer speakConfirmationDialog:]";
        _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Locale only has training dialogs without a confirmation dialog", buf, 0xCu);
      }

      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v10 initWithDomain:*MEMORY[0x277CEF588] code:0 userInfo:0];
      [(VTUIAudioHintPlayer *)self sendError:v11 toMainForCompletion:v4];
    }

    else if ([(NSArray *)self->_trainingPageAudioHintPreviews count]== 6)
    {
      v12 = [(NSArray *)self->_trainingPageAudioHintPreviews lastObject];
      [v12 setUseCompactHints:{-[VTUIAudioHintPlayer _useCompactPhraseForInstruction:](self, "_useCompactPhraseForInstruction:", 5)}];
      v13 = MGGetBoolAnswer();
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = WeakRetained != 0;

      if ((v15 & v13) != 0)
      {
        objc_initWeak(buf, self);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke;
        v30[3] = &unk_279E54A80;
        v11 = v12;
        v31 = v11;
        objc_copyWeak(&v34, buf);
        v32 = self;
        v33 = v4;
        [v16 fetchaudioSessionID:v30];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }

      else
      {
        synth = self->_synth;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_69;
        v26[3] = &unk_279E54A58;
        v11 = v12;
        v27 = v11;
        v28 = self;
        v29 = v4;
        [(VTUISpeechSynthesizer *)synth speak:v11 completion:v26];
      }
    }

    else
    {
      v17 = [(NSArray *)self->_trainingPageAudioHintInstructions lastObject];
      v18 = self->_synth;
      language = self->_language;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_70;
      v22[3] = &unk_279E54A58;
      v23 = v17;
      v24 = self;
      v25 = v4;
      v11 = v17;
      [(VTUISpeechSynthesizer *)v18 speak:v11 language:language completion:v22];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting SiriTTSAudioHintRequest audioSessionID, id: %u", buf, 0x12u);
  }

  [*(a1 + 32) setAudioSessionId:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 8);
    v8 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_66;
    v13[3] = &unk_279E54A58;
    v9 = v8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v14 = v9;
    v15 = v10;
    v16 = v11;
    [v7 speak:v9 completion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_66(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
      *&v9[12] = 2112;
      *&v9[14] = v3;
      v6 = "%s Error speaking confirmation dialog %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v9 = 136315394;
    *&v9[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    *&v9[12] = 2112;
    *&v9[14] = v7;
    v6 = "%s Finished speaking confirmation dialog audioHintRequest %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v9, *&v9[16], v10}];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_69(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
      *&v9[12] = 2112;
      *&v9[14] = v3;
      v6 = "%s Error speaking confirmation dialog %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v9 = 136315394;
    *&v9[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    *&v9[12] = 2112;
    *&v9[14] = v7;
    v6 = "%s Finished speaking confirmation dialog audioHintRequest %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v9, *&v9[16], v10}];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_70(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
      *&v9[12] = 2112;
      *&v9[14] = v3;
      v6 = "%s Error speaking confirmation dialog %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v9 = 136315394;
    *&v9[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    *&v9[12] = 2112;
    *&v9[14] = v7;
    v6 = "%s Finished speaking confirmation dialog %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v9, *&v9[16], v10}];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_timerFired
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(VTUISpeechSynthesizer *)self->_synth isSpeaking];
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v11 = 136315394;
      v12 = "[VTUIAudioHintPlayer _timerFired]";
      v13 = 2048;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s requestPhraseSpotterBypassing for %f more seconds because synth is still speaking", &v11, 0x16u);
    }

    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:2.0];
    timer = self->_timer;
    self->_timer = v6;

    v8 = MEMORY[0x277D7A8D8];
    [(NSTimer *)self->_timer timeInterval];
    [v8 requestPhraseSpotterBypassing:1 timeout:?];
  }

  else
  {
    if (v5)
    {
      v11 = 136315138;
      v12 = "[VTUIAudioHintPlayer _timerFired]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Reenabling phrase spotter", &v11, 0xCu);
    }

    [(NSTimer *)self->_timer invalidate];
    v9 = self->_timer;
    self->_timer = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendError:(id)a3 toMainForCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VTUIAudioHintPlayer_sendError_toMainForCompletion___block_invoke;
  v9[3] = &unk_279E54AA8;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)speakAudioHint:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (self->_shouldSpeakAudioHint)
  {
    trainingPageAudioHintPreviews = self->_trainingPageAudioHintPreviews;
    if (trainingPageAudioHintPreviews && [(NSArray *)trainingPageAudioHintPreviews count]- 1 >= a3)
    {
      if ([(NSArray *)self->_trainingPageAudioHintPreviews count]> a3)
      {
        v10 = [(NSArray *)self->_trainingPageAudioHintPreviews objectAtIndexedSubscript:a3];
        [v10 setUseCompactHints:{-[VTUIAudioHintPlayer _useCompactPhraseForInstruction:](self, "_useCompactPhraseForInstruction:", a3)}];
        v11 = MGGetBoolAnswer();
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (WeakRetained && v11)
        {
          objc_initWeak(&location, self);
          v13 = objc_loadWeakRetained(&self->_delegate);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke;
          v27[3] = &unk_279E54A80;
          v14 = v10;
          v28 = v14;
          objc_copyWeak(&v31, &location);
          v29 = self;
          v30 = v6;
          [v13 fetchaudioSessionID:v27];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);
LABEL_16:

          goto LABEL_17;
        }

        synth = self->_synth;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_73;
        v23[3] = &unk_279E54A58;
        v24 = v10;
        v25 = self;
        v26 = v6;
        v14 = v10;
        [(VTUISpeechSynthesizer *)synth speak:v14 completion:v23];

        v17 = v24;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      trainingPageAudioHintInstructions = self->_trainingPageAudioHintInstructions;
      if (trainingPageAudioHintInstructions && [(NSArray *)trainingPageAudioHintInstructions count]- 1 > a3)
      {
        if ([(NSArray *)self->_trainingPageAudioHintInstructions count]<= a3)
        {
          v9 = 0;
        }

        else
        {
          v9 = [(NSArray *)self->_trainingPageAudioHintInstructions objectAtIndexedSubscript:a3];
        }

        v15 = self->_synth;
        language = self->_language;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_74;
        v19[3] = &unk_279E54A58;
        v20 = v9;
        v21 = self;
        v22 = v6;
        v14 = v9;
        [(VTUISpeechSynthesizer *)v15 speak:v14 language:language completion:v19];

        v17 = v20;
        goto LABEL_15;
      }
    }
  }

LABEL_17:
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting SiriTTSAudioHintRequest audioSessionID, id: %u", buf, 0x12u);
  }

  [*(a1 + 32) setAudioSessionId:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained[8];
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_72;
  v12[3] = &unk_279E54A58;
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  [v6 speak:v8 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_72(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
      *&v9[12] = 2112;
      *&v9[14] = v3;
      v6 = "%s Error speaking audio hint %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v9 = 136315394;
    *&v9[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    *&v9[12] = 2112;
    *&v9[14] = v7;
    v6 = "%s Finished speaking audio hint request %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v9, *&v9[16], v10}];

  v8 = *MEMORY[0x277D85DE8];
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_73(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
      *&v9[12] = 2112;
      *&v9[14] = v3;
      v6 = "%s Error speaking audio hint %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v9 = 136315394;
    *&v9[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    *&v9[12] = 2112;
    *&v9[14] = v7;
    v6 = "%s Finished speaking audio hint request %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v9, *&v9[16], v10}];

  v8 = *MEMORY[0x277D85DE8];
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_74(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 136315394;
      *&v9[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
      *&v9[12] = 2112;
      *&v9[14] = v3;
      v6 = "%s Error speaking audio hint %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v9 = 136315394;
    *&v9[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    *&v9[12] = 2112;
    *&v9[14] = v7;
    v6 = "%s Finished speaking audio hint with string %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v9, *&v9[16], v10}];

  v8 = *MEMORY[0x277D85DE8];
}

- (VTUIAudioHintPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end