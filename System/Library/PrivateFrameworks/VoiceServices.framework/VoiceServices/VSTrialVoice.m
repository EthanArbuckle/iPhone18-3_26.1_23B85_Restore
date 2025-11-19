@interface VSTrialVoice
- (VSTrialVoice)initWithFactorLevel:(id)a3;
- (VSTrialVoice)initWithFactorName:(id)a3;
- (VSTrialVoice)initWithLanguage:(id)a3 name:(id)a4;
- (double)preferenceScore;
- (id)description;
- (id)factorName;
@end

@implementation VSTrialVoice

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(VSTrialVoice *)self factorName];
  v4 = [v2 stringWithFormat:@"Voice factor name: %@", v3];

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

- (VSTrialVoice)initWithFactorLevel:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 factor];
  v6 = [v5 name];
  v7 = [(VSTrialVoice *)self initWithFactorName:v6];

  if (v7)
  {
    if ([v4 hasLevel])
    {
      v8 = [v4 level];
      v9 = [v8 directoryValue];

      if (v9)
      {
        if (([v9 hasAsset]& 1) != 0)
        {
          if ([v9 hasPath])
          {
            v10 = [v9 path];
            v11 = [v10 length];

            if (v11)
            {
              v12 = [v9 path];
              path = v7->_path;
              v7->_path = v12;
            }
          }

          v14 = [v4 level];
          v15 = [v14 metadata];
          v16 = [v15 objectForKeyedSubscript:@"assetSize"];

          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_assetSize = [v16 longLongValue];
            }
          }

          v17 = [v4 level];
          v18 = [v17 metadata];
          v19 = [v18 objectForKeyedSubscript:@"ttsCompatibilityVersion"];

          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_compatibilityVersion = [v19 integerValue];
            }
          }

          v20 = [v4 level];
          v21 = [v20 metadata];
          v22 = [v21 objectForKeyedSubscript:@"ttsContentVersion"];

          if (v22)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7->_version = [v22 integerValue];
            }
          }

          v23 = [v4 level];
          v24 = [v23 metadata];
          v25 = [v24 objectForKeyedSubscript:@"gender"];

          if (v25)
          {
            v7->_gender = [VSVoiceAsset genderFromString:v25];
          }

          goto LABEL_20;
        }

        v27 = VSGetLogDefault();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v28 = [v4 factor];
        v29 = [v28 name];
        v33 = 138412290;
        v34 = v29;
        v30 = "#Trial Error: voice is not deployed. It will be ignored. Factor name: %@";
      }

      else
      {
        v27 = VSGetLogDefault();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_29:

          goto LABEL_30;
        }

        v28 = [v4 factor];
        v29 = [v28 name];
        v33 = 138412290;
        v34 = v29;
        v30 = "#Trial Error: voice should be as directory. Factor name: %@";
      }

      _os_log_error_impl(&dword_272850000, v27, OS_LOG_TYPE_ERROR, v30, &v33, 0xCu);
    }

    else
    {
      v9 = VSGetLogDefault();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_30:

        v26 = 0;
        goto LABEL_31;
      }

      v27 = [v4 factor];
      v28 = [v27 name];
      v33 = 138412290;
      v34 = v28;
      _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "#Trial Error: Factor has no level. It will be ignored. Factor name: %@", &v33, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_20:
  v26 = v7;
LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

- (VSTrialVoice)initWithFactorName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasPrefix:@"com.apple.siri.tts.voice"] && (objc_msgSend(v4, "hasSuffix:", @".version") & 1) == 0)
  {
    v6 = [v4 componentsSeparatedByString:@"."];
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

      v5 = self;
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_error_impl(&dword_272850000, v13, OS_LOG_TYPE_ERROR, "#Trial Unexpected voice factor name: %@", &v16, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (VSTrialVoice)initWithLanguage:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VSTrialVoice;
  v9 = [(VSTrialVoice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_language, a3);
    objc_storeStrong(&v10->_name, a4);
  }

  return v10;
}

@end