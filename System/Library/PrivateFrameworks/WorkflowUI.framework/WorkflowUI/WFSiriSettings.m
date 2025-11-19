@interface WFSiriSettings
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isSiriEnabled;
+ (id)localizedTriggerPhrase;
+ (id)localizedTriggerPhraseWithMessage:(id)a3;
@end

@implementation WFSiriSettings

+ (BOOL)isHeySiriEnabled
{
  v2 = [MEMORY[0x277D7A8D0] sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  return v3;
}

+ (id)localizedTriggerPhrase
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 languageCode];

  v4 = [MEMORY[0x277D7A8D0] sharedPreferences];
  if (![v4 isCompactVoiceTriggerAvailableForLanguageCode:v3])
  {
    v8 = [v4 localizedTriggerPhraseForLanguageCode:v3];
    goto LABEL_14;
  }

  v11 = 0;
  v5 = [v4 getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v11];
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
    v9 = [v4 localizedCompactTriggerPhraseForLanguageCode:v3];
    goto LABEL_12;
  }

  if (!v5)
  {
    v9 = [v4 localizedTriggerPhraseForLanguageCode:v3];
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

+ (id)localizedTriggerPhraseWithMessage:(id)a3
{
  v3 = a3;
  v4 = +[WFSiriSettings localizedTriggerPhrase];
  v5 = WFLocalizedStringWithKey(@"SIRI_TRIGGER_PHRASE_FORMAT", @"%@, %@");
  v6 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, v4, v3];

  return v6;
}

+ (BOOL)isSiriEnabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

@end