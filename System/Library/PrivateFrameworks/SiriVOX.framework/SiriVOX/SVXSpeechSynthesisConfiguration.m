@interface SVXSpeechSynthesisConfiguration
+ (SVXSpeechSynthesisConfiguration)configurationWithLocale:(id)a3;
+ (SVXSpeechSynthesisConfiguration)configurationWithOutputVoiceInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXSpeechSynthesisConfiguration)initWithLocale:(id)a3 outputVoiceInfo:(id)a4 audioSessionID:(unsigned int)a5;
@end

@implementation SVXSpeechSynthesisConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SVXSpeechSynthesisConfiguration *)v5 locale];
      locale = self->_locale;
      if (locale == v6 || [(NSLocale *)locale isEqual:v6])
      {
        v8 = [(SVXSpeechSynthesisConfiguration *)v5 outputVoiceInfo];
        outputVoiceInfo = self->_outputVoiceInfo;
        if (outputVoiceInfo == v8 || [(AFVoiceInfo *)outputVoiceInfo isEqual:v8])
        {
          audioSessionID = self->_audioSessionID;
          v11 = audioSessionID == [(SVXSpeechSynthesisConfiguration *)v5 audioSessionID];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SVXSpeechSynthesisConfiguration)initWithLocale:(id)a3 outputVoiceInfo:(id)a4 audioSessionID:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SVXSpeechSynthesisConfiguration;
  v10 = [(SVXSpeechSynthesisConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    locale = v10->_locale;
    v10->_locale = v11;

    v13 = [v9 copy];
    outputVoiceInfo = v10->_outputVoiceInfo;
    v10->_outputVoiceInfo = v13;

    v10->_audioSessionID = a5;
  }

  return v10;
}

+ (SVXSpeechSynthesisConfiguration)configurationWithOutputVoiceInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithLocale:0 outputVoiceInfo:v3 audioSessionID:0];

  return v4;
}

+ (SVXSpeechSynthesisConfiguration)configurationWithLocale:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithLocale:v3 outputVoiceInfo:0 audioSessionID:0];

  return v4;
}

@end