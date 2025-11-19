@interface SSRSysdiagnoseFileHandler
+ (BOOL)_isDirectory:(id)a3;
+ (BOOL)personalizedSiriEnrollmentAudioLoggingEnabledFromRoot;
+ (id)fetchVoiceProfileFilePathsWithError:(id *)a3;
@end

@implementation SSRSysdiagnoseFileHandler

+ (BOOL)personalizedSiriEnrollmentAudioLoggingEnabledFromRoot
{
  if (personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_onceToken != -1)
  {
    dispatch_once(&personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_onceToken, &__block_literal_global_6193);
  }

  return personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_audioLoggingEnabled;
}

void __82__SSRSysdiagnoseFileHandler_personalizedSiriEnrollmentAudioLoggingEnabledFromRoot__block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.voicetrigger.notbackedup.plist"];
  if (v0)
  {
    v3 = v0;
    v1 = [v0 objectForKeyedSubscript:@"Personalized Siri Enrollment Audio Logging Enabled"];

    v0 = v3;
    if (v1)
    {
      v2 = [v3 objectForKeyedSubscript:@"Personalized Siri Enrollment Audio Logging Enabled"];
      personalizedSiriEnrollmentAudioLoggingEnabledFromRoot_audioLoggingEnabled = [v2 BOOLValue];

      v0 = v3;
    }
  }
}

+ (BOOL)_isDirectory:(id)a3
{
  v7 = 0;
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  [v5 fileExistsAtPath:v4 isDirectory:&v7];

  return v7;
}

+ (id)fetchVoiceProfileFilePathsWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  SSRLogInitIfNeeded();
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "+[SSRSysdiagnoseFileHandler fetchVoiceProfileFilePathsWithError:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if ((CSIsIOS() & 1) == 0)
  {
    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "+[SSRSysdiagnoseFileHandler fetchVoiceProfileFilePathsWithError:]";
      _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Voice Profile copying is not supported in this platform yet", buf, 0xCu);
    }

    if (a3)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = 1301;
LABEL_29:
      [v22 errorWithDomain:@"com.apple.speakerrecognition" code:v23 userInfo:0];
      *a3 = v30 = 0;
      goto LABEL_37;
    }

LABEL_30:
    v30 = 0;
    goto LABEL_37;
  }

  if (!+[SSRSysdiagnoseFileHandler personalizedSiriEnrollmentAudioLoggingEnabledFromRoot])
  {
    v24 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "+[SSRSysdiagnoseFileHandler fetchVoiceProfileFilePathsWithError:]";
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s The enrollment profile is not installed, we are not allowed to collect Voice Profile in sysdiagnose", buf, 0xCu);
    }

    if (a3)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = 1302;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v5 = +[SSRVoiceProfileManager sharedInstance];
  v6 = v5;
  if (v5)
  {
    v29 = v5;
    v28 = [v5 SSRBasePathForAppDomain:@"com.apple.siri"];
    v7 = [v28 stringByReplacingOccurrencesOfString:@"/var/root/" withString:@"/private/var/mobile/" options:8 range:{0, objc_msgSend(v28, "length")}];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 enumeratorAtPath:v7];

    v30 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v7 stringByAppendingPathComponent:*(*(&v31 + 1) + 8 * i)];
          if (![SSRSysdiagnoseFileHandler _isDirectory:v15])
          {
            v16 = [v15 pathExtension];
            if (([v16 isEqualToString:@"json"] & 1) == 0)
            {
              [v30 addObject:v15];
              v17 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v36 = "+[SSRSysdiagnoseFileHandler fetchVoiceProfileFilePathsWithError:]";
                v37 = 2112;
                v38 = v15;
                _os_log_debug_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEBUG, "%s added %@ into list", buf, 0x16u);
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v12);
    }

    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v30 count];
      *buf = 136315394;
      v36 = "+[SSRSysdiagnoseFileHandler fetchVoiceProfileFilePathsWithError:]";
      v37 = 2050;
      v38 = v20;
      _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s Send %{public}lu files under Voice Profile directory to sysdiagnose", buf, 0x16u);
    }

    v6 = v29;
  }

  else if (a3)
  {
    v25 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "+[SSRSysdiagnoseFileHandler fetchVoiceProfileFilePathsWithError:]";
      _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, "%s No Voice Profile available in device", buf, 0xCu);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1301 userInfo:0];
    *a3 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_37:
  v26 = *MEMORY[0x277D85DE8];

  return v30;
}

@end