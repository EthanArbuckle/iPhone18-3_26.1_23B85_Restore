@interface SSRVoiceProfileMetadataManager
+ (BOOL)isUtteranceImplicitlyTrained:(id)trained;
+ (BOOL)isUtteranceImplicitlyTrainedFromMetaDict:(id)dict;
+ (id)_getBaseMetaDictionaryForUtterancePath:(id)path;
+ (id)getUtteranceEnrollmentType:(id)type;
+ (id)getUtterancePhIdFromMetaDict:(id)dict;
+ (id)loadMetadataJsonObjectFromMetadataFile:(id)file;
+ (id)readVoiceTriggerRePromptMetadata:(id)metadata;
+ (id)recordedTimeStampFromFileName:(id)name;
+ (id)recordedTimeStampOfFile:(id)file;
+ (void)_writeMetaDict:(id)dict forUtterancePath:(id)path;
+ (void)saveUtteranceMetadataForUtterance:(id)utterance enrollmentType:(id)type isHandheldEnrollment:(BOOL)enrollment triggerSource:(id)source audioInput:(id)input otherBiometricResult:(unint64_t)result containsPayload:(BOOL)payload;
+ (void)saveVoiceTriggeRePromptMetadata:(id)metadata;
@end

@implementation SSRVoiceProfileMetadataManager

+ (id)loadMetadataJsonObjectFromMetadataFile:(id)file
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy];
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
        v16 = fileCopy;
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
      v16 = fileCopy;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)recordedTimeStampFromFileName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    lastPathComponent = [nameCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v7 setLocale:v8];

    [v7 setDateFormat:@"yyyyMMdd-HHmmss"];
    v9 = [v7 dateFromString:stringByDeletingPathExtension];
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

+ (id)recordedTimeStampOfFile:(id)file
{
  v21 = *MEMORY[0x277D85DE8];
  path = [file path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  v6 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"json"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(stringByDeletingPathExtension) = [defaultManager fileExistsAtPath:v6];

  if (stringByDeletingPathExtension)
  {
    v8 = [self loadMetadataJsonObjectFromMetadataFile:v6];
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

+ (id)getUtteranceEnrollmentType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    uRLByDeletingPathExtension = [typeCopy URLByDeletingPathExtension];
    v6 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

    path = [v6 path];
    v8 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:path];

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

      mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
      [mEMORY[0x277D01708] submitVoiceIdIssueReport:*MEMORY[0x277D01A88]];
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

+ (BOOL)isUtteranceImplicitlyTrained:(id)trained
{
  v14 = *MEMORY[0x277D85DE8];
  trainedCopy = trained;
  v5 = trainedCopy;
  if (trainedCopy)
  {
    path = [trainedCopy path];
    v7 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:path];

    if (v7)
    {
      v8 = [self isUtteranceImplicitlyTrainedFromMetaDict:v7];
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

+ (id)getUtterancePhIdFromMetaDict:(id)dict
{
  if (dict)
  {
    v4 = [dict objectForKeyedSubscript:@"phId"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isUtteranceImplicitlyTrainedFromMetaDict:(id)dict
{
  if (!dict)
  {
    return 0;
  }

  v3 = [dict objectForKeyedSubscript:@"trainingType"];
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

+ (void)_writeMetaDict:(id)dict forUtterancePath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  pathCopy = path;
  if (pathCopy)
  {
    if (dictCopy)
    {
      v15 = 0;
      v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictCopy options:1 error:&v15];
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
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v17 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
        v18 = 2114;
        v19 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ::: Error creating json Metadata: %{public}@", buf, 0x16u);
      }

      else
      {
        v10 = [pathCopy stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
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

+ (id)_getBaseMetaDictionaryForUtterancePath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
    v12[0] = deviceProductType;
    v11[1] = @"productVersion";
    deviceProductVersion = [MEMORY[0x277D018F8] deviceProductVersion];
    v12[1] = deviceProductVersion;
    v11[2] = @"buildVersion";
    deviceBuildVersion = [MEMORY[0x277D018F8] deviceBuildVersion];
    v11[3] = @"utteranceWav";
    v12[2] = deviceBuildVersion;
    v12[3] = pathCopy;
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

+ (void)saveUtteranceMetadataForUtterance:(id)utterance enrollmentType:(id)type isHandheldEnrollment:(BOOL)enrollment triggerSource:(id)source audioInput:(id)input otherBiometricResult:(unint64_t)result containsPayload:(BOOL)payload
{
  enrollmentCopy = enrollment;
  v31 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  typeCopy = type;
  sourceCopy = source;
  inputCopy = input;
  if (utteranceCopy)
  {
    v19 = MEMORY[0x277CBEB38];
    v20 = [self _getBaseMetaDictionaryForUtterancePath:utteranceCopy];
    v21 = [v19 dictionaryWithDictionary:v20];

    if (typeCopy)
    {
      v22 = typeCopy;
    }

    else
    {
      v22 = @"explicit";
    }

    [v21 setObject:v22 forKeyedSubscript:@"trainingType"];
    if (enrollmentCopy)
    {
      v23 = @"near-field";
    }

    else
    {
      v23 = @"far-field";
    }

    [v21 setObject:v23 forKeyedSubscript:@"handheld"];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:result];
    [v21 setObject:v24 forKeyedSubscript:@"otherSourceProfileMatch"];

    [v21 setObject:sourceCopy forKeyedSubscript:@"triggerSource"];
    [v21 setObject:inputCopy forKeyedSubscript:@"audioInputSource"];
    timeStampWithSaltGrain = [MEMORY[0x277D018F8] timeStampWithSaltGrain];
    [v21 setObject:timeStampWithSaltGrain forKeyedSubscript:@"grainedDate"];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:payload];
    [v21 setObject:v26 forKeyedSubscript:@"containsPayload"];

    [self _writeMetaDict:v21 forUtterancePath:utteranceCopy];
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

+ (id)readVoiceTriggerRePromptMetadata:(id)metadata
{
  v21 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:metadataCopy];
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
        v18 = metadataCopy;
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
      v18 = metadataCopy;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)saveVoiceTriggeRePromptMetadata:(id)metadata
{
  v21 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v4 setLocale:v5];

    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"TRUE" forKeyedSubscript:@"RePrompt_Finished"];
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [v4 stringFromDate:v7];
    [dictionary setObject:v8 forKeyedSubscript:@"RePrompt_Date"];

    v16 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:1 error:&v16];
    v10 = v16;
    if (v10)
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        localizedDescription = [v10 localizedDescription];
        *buf = 136315394;
        v18 = "+[SSRVoiceProfileMetadataManager saveVoiceTriggeRePromptMetadata:]";
        v19 = 2114;
        v20 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ::: Error creating json RePrompt Metadata: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [v9 writeToFile:metadataCopy atomically:0];
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