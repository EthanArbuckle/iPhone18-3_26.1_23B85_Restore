@interface SVXSessionUtils
- (BOOL)isSpeechRecordingAllowedWithActivationContext:(id)context;
- (BOOL)isVoiceTriggerWithActivationContext:(id)context;
- (id)getLanguageCodeWithAllowsFallback:(BOOL)fallback preferences:(id)preferences;
@end

@implementation SVXSessionUtils

- (BOOL)isVoiceTriggerWithActivationContext:(id)context
{
  contextCopy = context;
  source = [contextCopy source];
  if (source == 6)
  {
    isVoiceTrigger = 1;
  }

  else if (source == 7)
  {
    requestInfo = [contextCopy requestInfo];
    speechRequestOptions = [requestInfo speechRequestOptions];
    isVoiceTrigger = [speechRequestOptions isVoiceTrigger];
  }

  else
  {
    isVoiceTrigger = 0;
  }

  return isVoiceTrigger;
}

- (BOOL)isSpeechRecordingAllowedWithActivationContext:(id)context
{
  contextCopy = context;
  source = [contextCopy source];
  isSpeechRequest = 0;
  if (source <= 8)
  {
    if (((1 << source) & 0x156) != 0)
    {
      isSpeechRequest = 1;
    }

    else if (source == 7)
    {
      requestInfo = [contextCopy requestInfo];
      isSpeechRequest = [requestInfo isSpeechRequest];
    }
  }

  return isSpeechRequest;
}

- (id)getLanguageCodeWithAllowsFallback:(BOOL)fallback preferences:(id)preferences
{
  fallbackCopy = fallback;
  v22 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXSessionUtils getLanguageCodeWithAllowsFallback:preferences:]"];
    [currentHandler handleFailureInFunction:v17 file:@"SVXSessionUtils.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
  }

  languageCode = [preferencesCopy languageCode];
  if ([(__CFString *)languageCode length])
  {
    v7 = languageCode;
    goto LABEL_19;
  }

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    if (fallbackCopy)
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
  if (!fallbackCopy)
  {
    goto LABEL_18;
  }

LABEL_7:
  v7 = [preferencesCopy bestSupportedLanguageCodeForLanguageCode:0];

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