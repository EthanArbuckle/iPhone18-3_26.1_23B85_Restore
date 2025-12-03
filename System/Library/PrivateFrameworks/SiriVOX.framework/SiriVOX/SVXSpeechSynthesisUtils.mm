@interface SVXSpeechSynthesisUtils
- (BOOL)requestHasSpeakableContents:(id)contents;
- (SVXSpeechSynthesisUtils)init;
- (SVXSpeechSynthesisUtils)initWithLocaleFactory:(id)factory sessionUtils:(id)utils;
- (id)createAudioFromUIAudioData:(id)data;
- (id)createLocaleFromLanguageCode:(id)code;
- (id)createPhaticPrompt;
- (id)getOutputVoiceInfoWithAllowsFallback:(BOOL)fallback preferences:(id)preferences;
- (int64_t)getGenderFromVoiceGender:(int64_t)gender;
@end

@implementation SVXSpeechSynthesisUtils

- (id)createPhaticPrompt
{
  v2 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:2 options:0 speakableText:@"\x1B\\mrk=play=phat\\"" speakableContext:0 localizationKey:0 presynthesizedAudio:0 streamID:0];

  return v2;
}

- (BOOL)requestHasSpeakableContents:(id)contents
{
  contentsCopy = contents;
  speakableText = [contentsCopy speakableText];
  v5 = [speakableText length];

  if (v5 || ([contentsCopy presynthesizedAudio], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "data"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 1;
  }

  else
  {
    localizationKey = [contentsCopy localizationKey];
    v9 = [localizationKey length] != 0;
  }

  return v9;
}

- (id)createAudioFromUIAudioData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = [SVXSpeechSynthesisAudio alloc];
    audioBuffer = [dataCopy audioBuffer];
    decoderStreamDescription = [dataCopy decoderStreamDescription];
    v7 = SVXAudioStreamBasicDescriptionCreateFromUIAudioDescription(decoderStreamDescription);
    playerStreamDescription = [dataCopy playerStreamDescription];

    v9 = SVXAudioStreamBasicDescriptionCreateFromUIAudioDescription(playerStreamDescription);
    v10 = [(SVXSpeechSynthesisAudio *)v4 initWithData:audioBuffer decoderASBD:v7 playerASBD:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getOutputVoiceInfoWithAllowsFallback:(BOOL)fallback preferences:(id)preferences
{
  fallbackCopy = fallback;
  v28 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXSpeechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:preferences:]"];
    [currentHandler handleFailureInFunction:v23 file:@"SVXSpeechSynthesisUtils.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
  }

  outputVoice = [preferencesCopy outputVoice];
  languageCode = [outputVoice languageCode];
  v9 = [languageCode length];

  if (!v9)
  {
    v10 = MEMORY[0x277CEF098];
    v11 = *MEMORY[0x277CEF098];
    v12 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR);
    if (outputVoice)
    {
      if (v12)
      {
        *buf = 136315138;
        v25 = "[SVXSpeechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:preferences:]";
        v13 = "%s Output voice info does not have language code.";
        goto LABEL_17;
      }
    }

    else if (v12)
    {
      *buf = 136315138;
      v25 = "[SVXSpeechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:preferences:]";
      v13 = "%s Output voice info is nil.";
LABEL_17:
      _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
      if (!fallbackCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if (!fallbackCopy)
    {
LABEL_18:
      v18 = 0;
      v14 = outputVoice;
LABEL_19:

      outputVoice = v18;
      goto LABEL_20;
    }

LABEL_9:
    v14 = [(SVXSessionUtils *)self->_sessionUtils getLanguageCodeWithAllowsFallback:1 preferences:preferencesCopy];
    v15 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[SVXSpeechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:preferences:]";
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Siri language code is %@.", buf, 0x16u);
    }

    v16 = AFOutputVoiceLanguageForRecognitionLanguage();
    v17 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[SVXSpeechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:preferences:]";
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s Output voice language code is %@.", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CEF528]) initWithLanguageCode:v16 gender:objc_msgSend(outputVoice isCustom:"gender") name:1 footprint:0 contentVersion:0 masteredVersion:{0, 0}];

    v19 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[SVXSpeechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:preferences:]";
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_INFO, "%s Resolved output voice info is %@.", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return outputVoice;
}

- (id)createLocaleFromLanguageCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if ([codeCopy length])
  {
    v5 = [(SVXNSLocaleFactory *)self->_localeFactory canonicalLocaleIdentifierFromString:codeCopy];
    if (v5)
    {
      localeFactory = self->_localeFactory;
      v7 = v5;
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:]";
        v15 = 2112;
        v16 = codeCopy;
        _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, "%s Canonical locale identifier is nil, fallback to use language code %@ directly.", &v13, 0x16u);
      }

      localeFactory = self->_localeFactory;
      v7 = codeCopy;
    }

    v9 = [(SVXNSLocaleFactory *)localeFactory localeWithLocaleIdentifier:v7];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:]";
      _os_log_error_impl(&dword_2695B9000, v8, OS_LOG_TYPE_ERROR, "%s No language code.", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int64_t)getGenderFromVoiceGender:(int64_t)gender
{
  if ((gender - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return gender;
  }
}

- (SVXSpeechSynthesisUtils)initWithLocaleFactory:(id)factory sessionUtils:(id)utils
{
  factoryCopy = factory;
  utilsCopy = utils;
  v12.receiver = self;
  v12.super_class = SVXSpeechSynthesisUtils;
  v9 = [(SVXSpeechSynthesisUtils *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localeFactory, factory);
    objc_storeStrong(&v10->_sessionUtils, utils);
  }

  return v10;
}

- (SVXSpeechSynthesisUtils)init
{
  v3 = objc_alloc_init(SVXNSLocaleFactory);
  v4 = objc_alloc_init(SVXSessionUtils);
  v5 = [(SVXSpeechSynthesisUtils *)self initWithLocaleFactory:v3 sessionUtils:v4];

  return v5;
}

@end