@interface SVXSpeechInstrumentationUtilities
- (void)emitTextToSpeechRequestReceived:(id)a3 instrumentMetrics:(id)a4;
@end

@implementation SVXSpeechInstrumentationUtilities

- (void)emitTextToSpeechRequestReceived:(id)a3 instrumentMetrics:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277D5A998];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v5 voice];
  v10 = [v9 assetKey];
  [v8 setVoiceAssetKey:v10];

  v11 = [v5 resource];
  v12 = [v11 assetKey];
  [v8 setVoiceResourceAssetKey:v12];

  [v8 setIsWarmStart:{objc_msgSend(v5, "isWarmStart")}];
  [v8 setIsSynthesisCached:{objc_msgSend(v5, "sourceOfTTS") == 8}];
  [v8 setSourceOfTTS:{objc_msgSend(v5, "sourceOfTTS")}];
  [v8 setSpeechError:{objc_msgSend(v5, "errorCode")}];
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[SVXSpeechInstrumentationUtilities emitTextToSpeechRequestReceived:instrumentMetrics:]";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit TTS Request Received event", &v15, 0xCu);
  }

  [v7 emitInstrumentation:v8 machAbsoluteTime:{objc_msgSend(v5, "requestCreatedTime")}];

  v14 = *MEMORY[0x277D85DE8];
}

@end