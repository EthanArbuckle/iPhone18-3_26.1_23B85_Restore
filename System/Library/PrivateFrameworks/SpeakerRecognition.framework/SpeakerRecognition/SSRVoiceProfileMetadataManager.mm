@interface SSRVoiceProfileMetadataManager
+ (BOOL)isUtteranceImplicitlyTrained:(id)a3;
+ (BOOL)isUtteranceImplicitlyTrainedFromMetaDict:(id)a3;
+ (id)_getBaseMetaDictionaryForUtterancePath:(id)a3;
+ (id)getUtteranceEnrollmentType:(id)a3;
+ (id)getUtterancePhIdFromMetaDict:(id)a3;
+ (id)loadMetadataJsonObjectFromMetadataFile:(id)a3;
+ (id)readVoiceTriggerRePromptMetadata:(id)a3;
+ (id)recordedTimeStampFromFileName:(id)a3;
+ (id)recordedTimeStampOfFile:(id)a3;
+ (void)_writeMetaDict:(id)a3 forUtterancePath:(id)a4;
+ (void)saveUtteranceMetadataForUtterance:(id)a3 enrollmentType:(id)a4 isHandheldEnrollment:(BOOL)a5 triggerSource:(id)a6 audioInput:(id)a7 otherBiometricResult:(unint64_t)a8 containsPayload:(BOOL)a9;
+ (void)saveVoiceTriggeRePromptMetadata:(id)a3;
@end

@implementation SSRVoiceProfileMetadataManager

+ (id)loadMetadataJsonObjectFromMetadataFile:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  if (v4)
  {
    v12 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "+[SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:]";
        v15 = 2114;
        v16 = v3;
        v17 = 2114;
        v18 = v6;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Json-Err reading metaVersionFile: %{public}@: err: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:]";
      v15 = 2114;
      v16 = v3;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)recordedTimeStampFromFileName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lastPathComponent];
    v6 = [v5 stringByDeletingPathExtension];

    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v7 setLocale:v8];

    [v7 setDateFormat:@"yyyyMMdd-HHmmss"];
    v9 = [v7 dateFromString:v6];
  }

  else
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "+[SSRVoiceProfileMetadataManager recordedTimeStampFromFileName:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: filePath is nil!", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)recordedTimeStampOfFile:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 path];
  v5 = [v4 stringByDeletingPathExtension];
  v6 = [v5 stringByAppendingPathExtension:@"json"];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(v5) = [v7 fileExistsAtPath:v6];

  if (v5)
  {
    v8 = [a1 loadMetadataJsonObjectFromMetadataFile:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"grainedDate"];
      if (v10)
      {
        v11 = objc_alloc_init(MEMORY[0x277CCA968]);
        v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
        [v11 setLocale:v12];

        [v11 setDateFormat:@"yyyyMMdd"];
        v13 = [v11 dateFromString:v10];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "+[SSRVoiceProfileMetadataManager recordedTimeStampOfFile:]";
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@ is not present", &v17, 0x16u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)getUtteranceEnrollmentType:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLByDeletingPathExtension];
    v6 = [v5 URLByAppendingPathExtension:@"json"];

    v7 = [v6 path];
    v8 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:v7];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"trainingType"];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        goto LABEL_14;
      }

      v13 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        v18 = "+[SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:]";
        v19 = 2114;
        v20 = v4;
        v21 = 2114;
        v22 = v8;
        _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: metaDict from file %{public}@ isnt a dictionary - %{public}@", &v17, 0x20u);
      }

      v14 = [MEMORY[0x277D01708] sharedInstance];
      [v14 submitVoiceIdIssueReport:*MEMORY[0x277D01A88]];
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v17 = 136315138;
    v18 = "+[SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:]";
    _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: uttMetaURL is nil - Bailing out", &v17, 0xCu);
  }

  v10 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)isUtteranceImplicitlyTrained:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 path];
    v7 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:v6];

    if (v7)
    {
      v8 = [a1 isUtteranceImplicitlyTrainedFromMetaDict:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "+[SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:]";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: uttMetaURL is nil, defaulting to NO", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)getUtterancePhIdFromMetaDict:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"phId"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isUtteranceImplicitlyTrainedFromMetaDict:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectForKeyedSubscript:@"trainingType"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"implicit"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_writeMetaDict:(id)a3 forUtterancePath:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
      v15 = 0;
      v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:1 error:&v15];
      v8 = v15;
      if (v8)
      {
        v9 = *MEMORY[0x277D01970];
        if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
LABEL_13:

          goto LABEL_14;
        }

        v10 = v9;
        v11 = [v8 localizedDescription];
        *buf = 136315394;
        v17 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
        v18 = 2114;
        v19 = v11;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ::: Error creating json Metadata: %{public}@", buf, 0x16u);
      }

      else
      {
        v10 = [v6 stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
        [v7 writeToFile:v10 atomically:0];
      }

      goto LABEL_13;
    }

    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
      v13 = "%s ERR: uttMeta is nil - Bailing out";
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
      v13 = "%s ERR: uttPath is nil - Bailing out";
LABEL_10:
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_getBaseMetaDictionaryForUtterancePath:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D018F8] deviceProductType];
    v12[0] = v4;
    v11[1] = @"productVersion";
    v5 = [MEMORY[0x277D018F8] deviceProductVersion];
    v12[1] = v5;
    v11[2] = @"buildVersion";
    v6 = [MEMORY[0x277D018F8] deviceBuildVersion];
    v11[3] = @"utteranceWav";
    v12[2] = v6;
    v12[3] = v3;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "+[SSRVoiceProfileMetadataManager _getBaseMetaDictionaryForUtterancePath:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: uttPath is nil - Bailing out", buf, 0xCu);
    }

    v7 = MEMORY[0x277CBEC10];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)saveUtteranceMetadataForUtterance:(id)a3 enrollmentType:(id)a4 isHandheldEnrollment:(BOOL)a5 triggerSource:(id)a6 audioInput:(id)a7 otherBiometricResult:(unint64_t)a8 containsPayload:(BOOL)a9
{
  v12 = a5;
  v31 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  if (v15)
  {
    v19 = MEMORY[0x277CBEB38];
    v20 = [a1 _getBaseMetaDictionaryForUtterancePath:v15];
    v21 = [v19 dictionaryWithDictionary:v20];

    if (v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = @"explicit";
    }

    [v21 setObject:v22 forKeyedSubscript:@"trainingType"];
    if (v12)
    {
      v23 = @"near-field";
    }

    else
    {
      v23 = @"far-field";
    }

    [v21 setObject:v23 forKeyedSubscript:@"handheld"];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
    [v21 setObject:v24 forKeyedSubscript:@"otherSourceProfileMatch"];

    [v21 setObject:v17 forKeyedSubscript:@"triggerSource"];
    [v21 setObject:v18 forKeyedSubscript:@"audioInputSource"];
    v25 = [MEMORY[0x277D018F8] timeStampWithSaltGrain];
    [v21 setObject:v25 forKeyedSubscript:@"grainedDate"];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:a9];
    [v21 setObject:v26 forKeyedSubscript:@"containsPayload"];

    [a1 _writeMetaDict:v21 forUtterancePath:v15];
  }

  else
  {
    v27 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v29 = 136315138;
      v30 = "+[SSRVoiceProfileMetadataManager saveUtteranceMetadataForUtterance:enrollmentType:isHandheldEnrollment:triggerSource:audioInput:otherBiometricResult:containsPayload:]";
      _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s ERR: uttPath is nil -  Bailing out", &v29, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)readVoiceTriggerRePromptMetadata:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  if (v4)
  {
    v14 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v14];
    v6 = v14;
    if (v6)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "+[SSRVoiceProfileMetadataManager readVoiceTriggerRePromptMetadata:]";
        v17 = 2114;
        v18 = v3;
        v19 = 2114;
        v20 = v6;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Json-Err reading metaVersionDict: %{public}@: err: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:@"RePrompt_Date"];
      if (v8)
      {
        v10 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v16 = "+[SSRVoiceProfileMetadataManager readVoiceTriggerRePromptMetadata:]";
          v17 = 2112;
          v18 = v8;
          _os_log_debug_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEBUG, "%s RePrompted on %@", buf, 0x16u);
        }

        v11 = v8;
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[SSRVoiceProfileMetadataManager readVoiceTriggerRePromptMetadata:]";
      v17 = 2114;
      v18 = v3;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)saveVoiceTriggeRePromptMetadata:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v4 setLocale:v5];

    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:@"TRUE" forKeyedSubscript:@"RePrompt_Finished"];
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [v4 stringFromDate:v7];
    [v6 setObject:v8 forKeyedSubscript:@"RePrompt_Date"];

    v16 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:1 error:&v16];
    v10 = v16;
    if (v10)
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v10 localizedDescription];
        *buf = 136315394;
        v18 = "+[SSRVoiceProfileMetadataManager saveVoiceTriggeRePromptMetadata:]";
        v19 = 2114;
        v20 = v13;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ::: Error creating json RePrompt Metadata: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [v9 writeToFile:v3 atomically:0];
    }
  }

  else
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "+[SSRVoiceProfileMetadataManager saveVoiceTriggeRePromptMetadata:]";
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: path is nil - Bailing out", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end