@interface SVXSpeechSynthesisConfigurer
- (SVXSpeechSynthesisConfigurer)initWithVoiceConfigurer:(id)a3;
- (id)synthesisRequestForContext:(id)a3 preferences:(id)a4;
- (id)synthesisRequestForText:(id)a3 voice:(id)a4;
@end

@implementation SVXSpeechSynthesisConfigurer

- (id)synthesisRequestForContext:(id)a3 preferences:(id)a4
{
  voiceConfigurer = self->_voiceConfigurer;
  v6 = a3;
  v7 = [(SVXSynthesisVoiceConfigurer *)voiceConfigurer voiceForContext:v6 preferences:a4];
  v8 = [v6 request];

  v9 = [objc_alloc(MEMORY[0x277D61468]) initWithText:&stru_287A1C130 voice:v7];
  v10 = [v8 speakableContext];
  [v9 setContextInfo:v10];

  return v9;
}

- (id)synthesisRequestForText:(id)a3 voice:(id)a4
{
  v5 = MEMORY[0x277D61468];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithText:v7 voice:v6];

  return v8;
}

- (SVXSpeechSynthesisConfigurer)initWithVoiceConfigurer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SVXSpeechSynthesisConfigurer;
  v6 = [(SVXSpeechSynthesisConfigurer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_voiceConfigurer, a3);
  }

  return v7;
}

@end