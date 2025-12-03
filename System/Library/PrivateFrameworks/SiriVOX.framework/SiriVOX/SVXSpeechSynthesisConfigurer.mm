@interface SVXSpeechSynthesisConfigurer
- (SVXSpeechSynthesisConfigurer)initWithVoiceConfigurer:(id)configurer;
- (id)synthesisRequestForContext:(id)context preferences:(id)preferences;
- (id)synthesisRequestForText:(id)text voice:(id)voice;
@end

@implementation SVXSpeechSynthesisConfigurer

- (id)synthesisRequestForContext:(id)context preferences:(id)preferences
{
  voiceConfigurer = self->_voiceConfigurer;
  contextCopy = context;
  v7 = [(SVXSynthesisVoiceConfigurer *)voiceConfigurer voiceForContext:contextCopy preferences:preferences];
  request = [contextCopy request];

  v9 = [objc_alloc(MEMORY[0x277D61468]) initWithText:&stru_287A1C130 voice:v7];
  speakableContext = [request speakableContext];
  [v9 setContextInfo:speakableContext];

  return v9;
}

- (id)synthesisRequestForText:(id)text voice:(id)voice
{
  v5 = MEMORY[0x277D61468];
  voiceCopy = voice;
  textCopy = text;
  v8 = [[v5 alloc] initWithText:textCopy voice:voiceCopy];

  return v8;
}

- (SVXSpeechSynthesisConfigurer)initWithVoiceConfigurer:(id)configurer
{
  configurerCopy = configurer;
  v9.receiver = self;
  v9.super_class = SVXSpeechSynthesisConfigurer;
  v6 = [(SVXSpeechSynthesisConfigurer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_voiceConfigurer, configurer);
  }

  return v7;
}

@end