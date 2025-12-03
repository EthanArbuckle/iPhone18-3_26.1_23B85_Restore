@interface SVXSynthesisVoiceConfigurer
- (SVXSynthesisVoiceConfigurer)initWithConfigurationManager:(id)manager speechSynthesisUtils:(id)utils sessionUtils:(id)sessionUtils voiceGenderConverter:(id)converter;
- (id)_determineLanguageCodeWithContext:(id)context outputVoiceInfo:(id)info preferences:(id)preferences;
- (id)_determineVoiceNameWithContext:(id)context languageCode:(id)code outputVoiceInfo:(id)info gender:(int64_t)gender;
- (id)voiceForContext:(id)context preferences:(id)preferences;
- (int64_t)_determineGenderWithContext:(id)context outputVoiceInfo:(id)info languageCode:(id)code;
@end

@implementation SVXSynthesisVoiceConfigurer

- (id)_determineVoiceNameWithContext:(id)context languageCode:(id)code outputVoiceInfo:(id)info gender:(int64_t)gender
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  codeCopy = code;
  infoCopy = info;
  if (contextCopy)
  {
    voiceName = [contextCopy voiceName];
  }

  else
  {
    voiceName = 0;
  }

  if ([(__CFString *)voiceName length])
  {
    name = voiceName;
    goto LABEL_16;
  }

  v15 = MEMORY[0x277CEF098];
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [infoCopy description];
    v32 = 136315906;
    v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
    v34 = 2112;
    v35 = codeCopy;
    v36 = 2048;
    genderCopy = gender;
    v38 = 2112;
    genderCopy2 = v18;
    _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_DEFAULT, "%s languageCode: %@, gender: %ld, outputVoiceInfo: %@", &v32, 0x2Au);
  }

  languageCode = [infoCopy languageCode];
  if ([languageCode isEqualToString:codeCopy])
  {
    v20 = [(SVXVoiceGenderConverter *)self->_voiceGenderConverter getSpeechGenderFromVoiceInfo:infoCopy];

    if (v20 == gender)
    {
      name = [infoCopy name];

      v21 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315906;
        v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
        v34 = 2112;
        v35 = name;
        v36 = 2112;
        genderCopy = codeCopy;
        v38 = 2048;
        genderCopy2 = gender;
        _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_DEFAULT, "%s Using voice name %@ for %@, %ld", &v32, 0x2Au);
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v22 = AFOutputVoiceLanguageForRecognitionLanguage();
  v23 = [(SVXVoiceGenderConverter *)self->_voiceGenderConverter getAFVoiceGenderFromTTSAssetVoiceGender:gender];
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v25 = [mEMORY[0x277CEF2D8] voiceNamesForOutputLanguageCode:v22 gender:v23];
  name = [v25 firstObject];

  v26 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136316162;
    v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
    v34 = 2112;
    v35 = name;
    v36 = 2112;
    genderCopy = codeCopy;
    v38 = 2112;
    genderCopy2 = v22;
    v40 = 2048;
    genderCopy3 = gender;
    _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_DEFAULT, "%s Using fallback voice name %@ for language code: %@ outputLanguageCode: %@, %ld", &v32, 0x34u);
  }

LABEL_16:
  if ([(__CFString *)name isEqualToString:@"hattori"])
  {
    v27 = *MEMORY[0x277CEF098];
    v28 = @"hiro";
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315394;
      v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
      v34 = 2112;
      v35 = @"hiro";
      _os_log_impl(&dword_2695B9000, v27, OS_LOG_TYPE_DEFAULT, "%s Old male voice name in ja-JP was used. Updating to %@", &v32, 0x16u);
    }
  }

  else
  {
    if (![(__CFString *)name isEqualToString:@"oren"])
    {
      goto LABEL_24;
    }

    v29 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315394;
      v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
      v34 = 2112;
      v35 = @"hiro";
      _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_DEFAULT, "%s Old female voice name in ja-JP was used. Updating to %@", &v32, 0x16u);
    }

    v28 = @"sakura";
  }

  name = v28;
LABEL_24:

  v30 = *MEMORY[0x277D85DE8];

  return name;
}

- (int64_t)_determineGenderWithContext:(id)context outputVoiceInfo:(id)info languageCode:(id)code
{
  contextCopy = context;
  infoCopy = info;
  codeCopy = code;
  if (contextCopy && (v11 = -[SVXVoiceGenderConverter getSpeechGenderFromGender:](self->_voiceGenderConverter, "getSpeechGenderFromGender:", [contextCopy gender])) != 0 || (v11 = -[SVXVoiceGenderConverter getSpeechGenderFromVoiceInfo:](self->_voiceGenderConverter, "getSpeechGenderFromVoiceInfo:", infoCopy)) != 0)
  {
    v12 = v11;
  }

  else if ([MEMORY[0x277CEF528] defaultGenderForOutputVoiceLanguageCode:codeCopy] == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  return v12;
}

- (id)_determineLanguageCodeWithContext:(id)context outputVoiceInfo:(id)info preferences:(id)preferences
{
  contextCopy = context;
  infoCopy = info;
  preferencesCopy = preferences;
  if (contextCopy)
  {
    languageCode = [contextCopy languageCode];
  }

  else
  {
    languageCode = 0;
  }

  if (![languageCode length])
  {
    languageCode2 = [infoCopy languageCode];

    languageCode = languageCode2;
  }

  if (![languageCode length])
  {
    v13 = [(SVXSessionUtils *)self->_sessionUtils getLanguageCodeWithAllowsFallback:1 preferences:preferencesCopy];

    languageCode = v13;
  }

  return languageCode;
}

- (id)voiceForContext:(id)context preferences:(id)preferences
{
  v29 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  configurationManager = self->_configurationManager;
  contextCopy = context;
  currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)configurationManager currentConfiguration];
  outputVoiceInfo = [currentConfiguration outputVoiceInfo];
  v11 = outputVoiceInfo;
  if (outputVoiceInfo)
  {
    v12 = outputVoiceInfo;
  }

  else
  {
    v12 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:1 preferences:preferencesCopy];
  }

  v13 = v12;

  v14 = [(SVXSynthesisVoiceConfigurer *)self _determineLanguageCodeWithContext:contextCopy outputVoiceInfo:v13 preferences:preferencesCopy];
  v15 = [(SVXSynthesisVoiceConfigurer *)self _determineGenderWithContext:contextCopy outputVoiceInfo:v13 languageCode:v14];
  v16 = [(SVXSynthesisVoiceConfigurer *)self _determineVoiceNameWithContext:contextCopy languageCode:v14 outputVoiceInfo:v13 gender:v15];

  v17 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315906;
    v22 = "[SVXSynthesisVoiceConfigurer voiceForContext:preferences:]";
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v14;
    v27 = 2048;
    v28 = v15;
    _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_DEFAULT, "%s Voice name %@ for %@, %ld", &v21, 0x2Au);
  }

  v18 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:v14 name:v16];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (SVXSynthesisVoiceConfigurer)initWithConfigurationManager:(id)manager speechSynthesisUtils:(id)utils sessionUtils:(id)sessionUtils voiceGenderConverter:(id)converter
{
  managerCopy = manager;
  utilsCopy = utils;
  sessionUtilsCopy = sessionUtils;
  converterCopy = converter;
  v18.receiver = self;
  v18.super_class = SVXSynthesisVoiceConfigurer;
  v15 = [(SVXSynthesisVoiceConfigurer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configurationManager, manager);
    objc_storeStrong(&v16->_speechSynthesisUtils, utils);
    objc_storeStrong(&v16->_sessionUtils, sessionUtils);
    objc_storeStrong(&v16->_voiceGenderConverter, converter);
  }

  return v16;
}

@end