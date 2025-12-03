@interface SVXSpeechInstrumentationUtilities
- (void)emitTextToSpeechRequestReceived:(id)received instrumentMetrics:(id)metrics;
@end

@implementation SVXSpeechInstrumentationUtilities

- (void)emitTextToSpeechRequestReceived:(id)received instrumentMetrics:(id)metrics
{
  v17 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v6 = MEMORY[0x277D5A998];
  receivedCopy = received;
  v8 = objc_alloc_init(v6);
  voice = [metricsCopy voice];
  assetKey = [voice assetKey];
  [v8 setVoiceAssetKey:assetKey];

  resource = [metricsCopy resource];
  assetKey2 = [resource assetKey];
  [v8 setVoiceResourceAssetKey:assetKey2];

  [v8 setIsWarmStart:{objc_msgSend(metricsCopy, "isWarmStart")}];
  [v8 setIsSynthesisCached:{objc_msgSend(metricsCopy, "sourceOfTTS") == 8}];
  [v8 setSourceOfTTS:{objc_msgSend(metricsCopy, "sourceOfTTS")}];
  [v8 setSpeechError:{objc_msgSend(metricsCopy, "errorCode")}];
  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[SVXSpeechInstrumentationUtilities emitTextToSpeechRequestReceived:instrumentMetrics:]";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit TTS Request Received event", &v15, 0xCu);
  }

  [receivedCopy emitInstrumentation:v8 machAbsoluteTime:{objc_msgSend(metricsCopy, "requestCreatedTime")}];

  v14 = *MEMORY[0x277D85DE8];
}

@end