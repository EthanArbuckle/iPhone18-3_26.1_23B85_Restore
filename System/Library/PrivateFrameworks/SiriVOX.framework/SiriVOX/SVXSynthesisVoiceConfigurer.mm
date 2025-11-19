@interface SVXSynthesisVoiceConfigurer
- (SVXSynthesisVoiceConfigurer)initWithConfigurationManager:(id)a3 speechSynthesisUtils:(id)a4 sessionUtils:(id)a5 voiceGenderConverter:(id)a6;
- (id)_determineLanguageCodeWithContext:(id)a3 outputVoiceInfo:(id)a4 preferences:(id)a5;
- (id)_determineVoiceNameWithContext:(id)a3 languageCode:(id)a4 outputVoiceInfo:(id)a5 gender:(int64_t)a6;
- (id)voiceForContext:(id)a3 preferences:(id)a4;
- (int64_t)_determineGenderWithContext:(id)a3 outputVoiceInfo:(id)a4 languageCode:(id)a5;
@end

@implementation SVXSynthesisVoiceConfigurer

- (id)_determineVoiceNameWithContext:(id)a3 languageCode:(id)a4 outputVoiceInfo:(id)a5 gender:(int64_t)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v13 = [v10 voiceName];
  }

  else
  {
    v13 = 0;
  }

  if ([(__CFString *)v13 length])
  {
    v14 = v13;
    goto LABEL_16;
  }

  v15 = MEMORY[0x277CEF098];
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v12 description];
    v32 = 136315906;
    v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
    v34 = 2112;
    v35 = v11;
    v36 = 2048;
    v37 = a6;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_DEFAULT, "%s languageCode: %@, gender: %ld, outputVoiceInfo: %@", &v32, 0x2Au);
  }

  v19 = [v12 languageCode];
  if ([v19 isEqualToString:v11])
  {
    v20 = [(SVXVoiceGenderConverter *)self->_voiceGenderConverter getSpeechGenderFromVoiceInfo:v12];

    if (v20 == a6)
    {
      v14 = [v12 name];

      v21 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315906;
        v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = v11;
        v38 = 2048;
        v39 = a6;
        _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_DEFAULT, "%s Using voice name %@ for %@, %ld", &v32, 0x2Au);
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v22 = AFOutputVoiceLanguageForRecognitionLanguage();
  v23 = [(SVXVoiceGenderConverter *)self->_voiceGenderConverter getAFVoiceGenderFromTTSAssetVoiceGender:a6];
  v24 = [MEMORY[0x277CEF2D8] sharedInstance];
  v25 = [v24 voiceNamesForOutputLanguageCode:v22 gender:v23];
  v14 = [v25 firstObject];

  v26 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136316162;
    v33 = "[SVXSynthesisVoiceConfigurer _determineVoiceNameWithContext:languageCode:outputVoiceInfo:gender:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v22;
    v40 = 2048;
    v41 = a6;
    _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_DEFAULT, "%s Using fallback voice name %@ for language code: %@ outputLanguageCode: %@, %ld", &v32, 0x34u);
  }

LABEL_16:
  if ([(__CFString *)v14 isEqualToString:@"hattori"])
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
    if (![(__CFString *)v14 isEqualToString:@"oren"])
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

  v14 = v28;
LABEL_24:

  v30 = *MEMORY[0x277D85DE8];

  return v14;
}

- (int64_t)_determineGenderWithContext:(id)a3 outputVoiceInfo:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (v11 = -[SVXVoiceGenderConverter getSpeechGenderFromGender:](self->_voiceGenderConverter, "getSpeechGenderFromGender:", [v8 gender])) != 0 || (v11 = -[SVXVoiceGenderConverter getSpeechGenderFromVoiceInfo:](self->_voiceGenderConverter, "getSpeechGenderFromVoiceInfo:", v9)) != 0)
  {
    v12 = v11;
  }

  else if ([MEMORY[0x277CEF528] defaultGenderForOutputVoiceLanguageCode:v10] == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  return v12;
}

- (id)_determineLanguageCodeWithContext:(id)a3 outputVoiceInfo:(id)a4 preferences:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 languageCode];
  }

  else
  {
    v11 = 0;
  }

  if (![v11 length])
  {
    v12 = [v9 languageCode];

    v11 = v12;
  }

  if (![v11 length])
  {
    v13 = [(SVXSessionUtils *)self->_sessionUtils getLanguageCodeWithAllowsFallback:1 preferences:v10];

    v11 = v13;
  }

  return v11;
}

- (id)voiceForContext:(id)a3 preferences:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  configurationManager = self->_configurationManager;
  v8 = a3;
  v9 = [(SVXSpeechSynthesisConfigurationStateManager *)configurationManager currentConfiguration];
  v10 = [v9 outputVoiceInfo];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:1 preferences:v6];
  }

  v13 = v12;

  v14 = [(SVXSynthesisVoiceConfigurer *)self _determineLanguageCodeWithContext:v8 outputVoiceInfo:v13 preferences:v6];
  v15 = [(SVXSynthesisVoiceConfigurer *)self _determineGenderWithContext:v8 outputVoiceInfo:v13 languageCode:v14];
  v16 = [(SVXSynthesisVoiceConfigurer *)self _determineVoiceNameWithContext:v8 languageCode:v14 outputVoiceInfo:v13 gender:v15];

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

- (SVXSynthesisVoiceConfigurer)initWithConfigurationManager:(id)a3 speechSynthesisUtils:(id)a4 sessionUtils:(id)a5 voiceGenderConverter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SVXSynthesisVoiceConfigurer;
  v15 = [(SVXSynthesisVoiceConfigurer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configurationManager, a3);
    objc_storeStrong(&v16->_speechSynthesisUtils, a4);
    objc_storeStrong(&v16->_sessionUtils, a5);
    objc_storeStrong(&v16->_voiceGenderConverter, a6);
  }

  return v16;
}

@end