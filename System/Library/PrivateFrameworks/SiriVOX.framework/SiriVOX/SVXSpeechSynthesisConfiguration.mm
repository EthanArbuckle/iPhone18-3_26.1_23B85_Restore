@interface SVXSpeechSynthesisConfiguration
+ (SVXSpeechSynthesisConfiguration)configurationWithLocale:(id)locale;
+ (SVXSpeechSynthesisConfiguration)configurationWithOutputVoiceInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (SVXSpeechSynthesisConfiguration)initWithLocale:(id)locale outputVoiceInfo:(id)info audioSessionID:(unsigned int)d;
@end

@implementation SVXSpeechSynthesisConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      locale = [(SVXSpeechSynthesisConfiguration *)v5 locale];
      locale = self->_locale;
      if (locale == locale || [(NSLocale *)locale isEqual:locale])
      {
        outputVoiceInfo = [(SVXSpeechSynthesisConfiguration *)v5 outputVoiceInfo];
        outputVoiceInfo = self->_outputVoiceInfo;
        if (outputVoiceInfo == outputVoiceInfo || [(AFVoiceInfo *)outputVoiceInfo isEqual:outputVoiceInfo])
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

- (SVXSpeechSynthesisConfiguration)initWithLocale:(id)locale outputVoiceInfo:(id)info audioSessionID:(unsigned int)d
{
  localeCopy = locale;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = SVXSpeechSynthesisConfiguration;
  v10 = [(SVXSpeechSynthesisConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [localeCopy copy];
    locale = v10->_locale;
    v10->_locale = v11;

    v13 = [infoCopy copy];
    outputVoiceInfo = v10->_outputVoiceInfo;
    v10->_outputVoiceInfo = v13;

    v10->_audioSessionID = d;
  }

  return v10;
}

+ (SVXSpeechSynthesisConfiguration)configurationWithOutputVoiceInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_alloc(objc_opt_class()) initWithLocale:0 outputVoiceInfo:infoCopy audioSessionID:0];

  return v4;
}

+ (SVXSpeechSynthesisConfiguration)configurationWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = [objc_alloc(objc_opt_class()) initWithLocale:localeCopy outputVoiceInfo:0 audioSessionID:0];

  return v4;
}

@end