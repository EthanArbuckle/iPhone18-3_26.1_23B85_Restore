@interface SVXSessionUtils
- (BOOL)isSpeechRecordingAllowedWithActivationContext:(id)a3;
- (BOOL)isVoiceTriggerWithActivationContext:(id)a3;
- (id)getLanguageCodeWithAllowsFallback:(BOOL)a3 preferences:(id)a4;
@end

@implementation SVXSessionUtils

- (BOOL)isVoiceTriggerWithActivationContext:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  if (v4 == 6)
  {
    v7 = 1;
  }

  else if (v4 == 7)
  {
    v5 = [v3 requestInfo];
    v6 = [v5 speechRequestOptions];
    v7 = [v6 isVoiceTrigger];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSpeechRecordingAllowedWithActivationContext:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  v5 = 0;
  if (v4 <= 8)
  {
    if (((1 << v4) & 0x156) != 0)
    {
      v5 = 1;
    }

    else if (v4 == 7)
    {
      v7 = [v3 requestInfo];
      v5 = [v7 isSpeechRequest];
    }
  }

  return v5;
}

- (id)getLanguageCodeWithAllowsFallback:(BOOL)a3 preferences:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]"];
    [v16 handleFailureInFunction:v17 file:@"SVXSessionUtils.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
  }

  v6 = [v5 languageCode];
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
    goto LABEL_19;
  }

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_18:

    v7 = 0;
    goto LABEL_19;
  }

  *buf = 136315138;
  v19 = "[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]";
  _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s Siri language code is nil.", buf, 0xCu);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_7:
  v7 = [v5 bestSupportedLanguageCodeForLanguageCode:0];

  v10 = [(__CFString *)v7 length];
  v11 = *v8;
  if (v10)
  {
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v19 = "[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]";
    v20 = 2112;
    v21 = v7;
    v12 = "%s Best supported Siri language is %@.";
  }

  else
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]";
      _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, "%s Best supported Siri language is nil.", buf, 0xCu);
    }

    v11 = *v8;
    v7 = @"en-US";
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v19 = "[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]";
    v20 = 2112;
    v21 = @"en-US";
    v12 = "%s Default Siri language is %@.";
  }

  _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, v12, buf, 0x16u);
LABEL_15:
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Resolved Siri language code is %@.", buf, 0x16u);
  }

LABEL_19:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

@end