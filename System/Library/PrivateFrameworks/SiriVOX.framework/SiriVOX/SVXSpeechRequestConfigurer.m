@interface SVXSpeechRequestConfigurer
- (SVXSpeechRequestConfigurer)initWithConfigurationManager:(id)a3 voiceConfigurer:(id)a4;
- (id)speechRequestForContext:(id)a3 preferences:(id)a4;
@end

@implementation SVXSpeechRequestConfigurer

- (id)speechRequestForContext:(id)a3 preferences:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SVXSynthesisVoiceConfigurer *)self->_voiceConfigurer voiceForContext:v6 preferences:a4];
  v8 = [v6 request];
  v9 = [objc_alloc(MEMORY[0x277D61458]) initWithText:&stru_287A1C130 voice:v7];
  v10 = [v8 speakableContext];
  [v9 setContextInfo:v10];

  v11 = [v6 audioSessionID];
  if (!v11)
  {
    v12 = [v6 audioSessionAssertion];
    v11 = [v12 audioSessionID];
    if (!v11)
    {
      v13 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
      v11 = [v13 audioSessionID];
    }
  }

  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[SVXSpeechRequestConfigurer speechRequestForContext:preferences:]";
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s audioSessionID = %lu", &v17, 0x16u);
  }

  [v9 setAudioSessionId:v11];

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (SVXSpeechRequestConfigurer)initWithConfigurationManager:(id)a3 voiceConfigurer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SVXSpeechRequestConfigurer;
  v9 = [(SVXSpeechRequestConfigurer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationManager, a3);
    objc_storeStrong(&v10->_voiceConfigurer, a4);
  }

  return v10;
}

@end