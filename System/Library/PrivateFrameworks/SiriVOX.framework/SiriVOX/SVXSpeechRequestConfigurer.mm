@interface SVXSpeechRequestConfigurer
- (SVXSpeechRequestConfigurer)initWithConfigurationManager:(id)manager voiceConfigurer:(id)configurer;
- (id)speechRequestForContext:(id)context preferences:(id)preferences;
@end

@implementation SVXSpeechRequestConfigurer

- (id)speechRequestForContext:(id)context preferences:(id)preferences
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [(SVXSynthesisVoiceConfigurer *)self->_voiceConfigurer voiceForContext:contextCopy preferences:preferences];
  request = [contextCopy request];
  v9 = [objc_alloc(MEMORY[0x277D61458]) initWithText:&stru_287A1C130 voice:v7];
  speakableContext = [request speakableContext];
  [v9 setContextInfo:speakableContext];

  audioSessionID = [contextCopy audioSessionID];
  if (!audioSessionID)
  {
    audioSessionAssertion = [contextCopy audioSessionAssertion];
    audioSessionID = [audioSessionAssertion audioSessionID];
    if (!audioSessionID)
    {
      currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
      audioSessionID = [currentConfiguration audioSessionID];
    }
  }

  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[SVXSpeechRequestConfigurer speechRequestForContext:preferences:]";
    v19 = 2048;
    v20 = audioSessionID;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s audioSessionID = %lu", &v17, 0x16u);
  }

  [v9 setAudioSessionId:audioSessionID];

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (SVXSpeechRequestConfigurer)initWithConfigurationManager:(id)manager voiceConfigurer:(id)configurer
{
  managerCopy = manager;
  configurerCopy = configurer;
  v12.receiver = self;
  v12.super_class = SVXSpeechRequestConfigurer;
  v9 = [(SVXSpeechRequestConfigurer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationManager, manager);
    objc_storeStrong(&v10->_voiceConfigurer, configurer);
  }

  return v10;
}

@end