@interface VSTrialVoice
- (VSTrialVoice)initWithFactorLevel:(id)level;
- (VSTrialVoice)initWithFactorName:(id)name;
- (VSTrialVoice)initWithLanguage:(id)language name:(id)name;
- (double)preferenceScore;
- (id)description;
- (id)factorName;
@end

@implementation VSTrialVoice

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  factorName = [(VSTrialVoice *)self factorName];
  v4 = [v2 stringWithFormat:@"Voice factor name: %@", factorName];

  return v4;
}

- (double)preferenceScore
{
  v6 = self->_type - 1;
  v7 = 0.0;
  if (v6 <= 3)
  {
    v7 = dbl_272896FD8[v6];
  }

  v13 = v4;
  footprint = self->_footprint;
  if (footprint == 3)
  {
    v10 = v7 + 300.0;
  }

  else
  {
    v9 = v7 + 200.0;
    if (footprint == 1)
    {
      v7 = v7 + 100.0;
    }

    if (footprint == 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }
  }

  v11 = [(VSTrialVoice *)self isLocal:v5];
  result = v10 + 10.0;
  if (!v11)
  {
    return v10;
  }

  return result;
}

- (id)factorName
{
  v3 = [(NSString *)self->_language stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v4 = [VSVoiceAsset typeStringFromType:self->_type];
  v5 = [VSVoiceAsset footprintStringFromFootprint:self->_footprint];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.voice.%@.%@.%@.%@", @"com.apple.siri.tts", v3, self->_name, v4, v5];

  return v6;
}

- (VSTrialVoice)initWithFactorLevel:(id)level
{
  v35 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  factor = [levelCopy factor];
  name = [factor name];
  v7 = [(VSTrialVoice *)self initWithFactorName:name];

  if (v7)
  {
    if ([levelCopy hasLevel])
    {
      level = [levelCopy level];
      directoryValue = [level directoryValue];

      if (directoryValue)
      {
        if (([directoryValue hasAsset]& 1) != 0)
        {
          if ([directoryValue hasPath])
          {
            path = [directoryValue path];
            v11 = [path length];

            if (v11)
            {
              path2 = [directoryValue path];
              path = v7->_path;
              v7->_path = path2;
            }
          }

          level2 = [levelCopy level];
          metadata = [level2 metadata];
          v16 = [metadata objectForKeyedSubscript:@"assetSize"];

          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_assetSize = [v16 longLongValue];
            }
          }

          level3 = [levelCopy level];
          metadata2 = [level3 metadata];
          v19 = [metadata2 objectForKeyedSubscript:@"ttsCompatibilityVersion"];

          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_compatibilityVersion = [v19 integerValue];
            }
          }

          level4 = [levelCopy level];
          metadata3 = [level4 metadata];
          v22 = [metadata3 objectForKeyedSubscript:@"ttsContentVersion"];

          if (v22)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_version = [v22 integerValue];
            }
          }

          level5 = [levelCopy level];
          metadata4 = [level5 metadata];
          v25 = [metadata4 objectForKeyedSubscript:@"gender"];

          if (v25)
          {
            v7->_gender = [VSVoiceAsset genderFromString:v25];
          }

          goto LABEL_20;
        }

        factor3 = VSGetLogDefault();
        if (!os_log_type_enabled(factor3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        factor2 = [levelCopy factor];
        name2 = [factor2 name];
        v33 = 138412290;
        v34 = name2;
        v30 = "#Trial Error: voice is not deployed. It will be ignored. Factor name: %@";
      }

      else
      {
        factor3 = VSGetLogDefault();
        if (!os_log_type_enabled(factor3, OS_LOG_TYPE_ERROR))
        {
LABEL_29:

          goto LABEL_30;
        }

        factor2 = [levelCopy factor];
        name2 = [factor2 name];
        v33 = 138412290;
        v34 = name2;
        v30 = "#Trial Error: voice should be as directory. Factor name: %@";
      }

      _os_log_error_impl(&dword_272850000, factor3, OS_LOG_TYPE_ERROR, v30, &v33, 0xCu);
    }

    else
    {
      directoryValue = VSGetLogDefault();
      if (!os_log_type_enabled(directoryValue, OS_LOG_TYPE_ERROR))
      {
LABEL_30:

        v26 = 0;
        goto LABEL_31;
      }

      factor3 = [levelCopy factor];
      factor2 = [factor3 name];
      v33 = 138412290;
      v34 = factor2;
      _os_log_error_impl(&dword_272850000, directoryValue, OS_LOG_TYPE_ERROR, "#Trial Error: Factor has no level. It will be ignored. Factor name: %@", &v33, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_20:
  v26 = v7;
LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

- (VSTrialVoice)initWithFactorName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy hasPrefix:@"com.apple.siri.tts.voice"] && (objc_msgSend(nameCopy, "hasSuffix:", @".version") & 1) == 0)
  {
    v6 = [nameCopy componentsSeparatedByString:@"."];
    if ([v6 count] == 9)
    {
      v7 = [v6 objectAtIndexedSubscript:5];
      v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

      v9 = [v6 objectAtIndexedSubscript:6];
      v10 = [(VSTrialVoice *)self initWithLanguage:v8 name:v9];
      if (v10)
      {
        v11 = [v6 objectAtIndexedSubscript:7];
        v10->_type = [VSVoiceAsset typeFromString:v11];

        v12 = [v6 objectAtIndexedSubscript:8];
        v10->_footprint = [VSVoiceAsset footprintFromString:v12];
      }

      self = v10;

      selfCopy = self;
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = nameCopy;
        _os_log_error_impl(&dword_272850000, v13, OS_LOG_TYPE_ERROR, "#Trial Unexpected voice factor name: %@", &v16, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (VSTrialVoice)initWithLanguage:(id)language name:(id)name
{
  languageCopy = language;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = VSTrialVoice;
  v9 = [(VSTrialVoice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_language, language);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end