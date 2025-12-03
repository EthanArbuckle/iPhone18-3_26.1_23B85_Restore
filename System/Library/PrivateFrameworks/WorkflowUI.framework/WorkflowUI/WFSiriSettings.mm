@interface WFSiriSettings
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isSiriEnabled;
+ (id)localizedTriggerPhrase;
+ (id)localizedTriggerPhraseWithMessage:(id)message;
@end

@implementation WFSiriSettings

+ (BOOL)isHeySiriEnabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

+ (id)localizedTriggerPhrase
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  if (![mEMORY[0x277D7A8D0] isCompactVoiceTriggerAvailableForLanguageCode:languageCode])
  {
    v8 = [mEMORY[0x277D7A8D0] localizedTriggerPhraseForLanguageCode:languageCode];
    goto LABEL_14;
  }

  v11 = 0;
  v5 = [mEMORY[0x277D7A8D0] getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "+[WFSiriSettings localizedTriggerPhrase]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_274719000, v7, OS_LOG_TYPE_ERROR, "%s Error getting Siri phrase type: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (v5 == 1)
  {
    v9 = [mEMORY[0x277D7A8D0] localizedCompactTriggerPhraseForLanguageCode:languageCode];
    goto LABEL_12;
  }

  if (!v5)
  {
    v9 = [mEMORY[0x277D7A8D0] localizedTriggerPhraseForLanguageCode:languageCode];
LABEL_12:
    v8 = v9;
    goto LABEL_13;
  }

LABEL_6:
  v8 = 0;
LABEL_13:

LABEL_14:

  return v8;
}

+ (id)localizedTriggerPhraseWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[WFSiriSettings localizedTriggerPhrase];
  v5 = WFLocalizedStringWithKey(@"SIRI_TRIGGER_PHRASE_FORMAT", @"%@, %@");
  messageCopy = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, v4, messageCopy];

  return messageCopy;
}

+ (BOOL)isSiriEnabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  return assistantIsEnabled;
}

@end