@interface VSTrialVoiceResource
- (VSTrialVoiceResource)initWithFactorLevel:(id)a3;
- (VSTrialVoiceResource)initWithFactorName:(id)a3;
- (VSTrialVoiceResource)initWithLanguage:(id)a3;
- (id)factorName;
@end

@implementation VSTrialVoiceResource

- (VSTrialVoiceResource)initWithFactorLevel:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 factor];
  v6 = [v5 name];
  v7 = [(VSTrialVoiceResource *)self initWithFactorName:v6];

  if (v7 && [v4 hasLevel])
  {
    v8 = [v4 level];
    v9 = [v8 directoryValue];

    if (v9)
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
      v16 = [v15 objectForKeyedSubscript:@"ttsContentVersion"];

      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7->_version = [v16 integerValue];
        }
      }
    }

    else
    {
      v9 = VSGetLogDefault();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v16 = [v4 factor];
      v19 = [v16 name];
      v20 = 138412290;
      v21 = v19;
      _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "#Trial Error: resource should be as directory. Factor name: %@", &v20, 0xCu);
    }

LABEL_12:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (VSTrialVoiceResource)initWithFactorName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasPrefix:@"com.apple.siri.tts.resource"] && (objc_msgSend(v4, "hasSuffix:", @".version") & 1) == 0)
  {
    v6 = [v4 componentsSeparatedByString:@"."];
    if ([v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:5];
      v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

      self = [(VSTrialVoiceResource *)self initWithLanguage:v8];
      v5 = self;
    }

    else
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "#Trial Unexpected resource factor name: %@", &v12, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (VSTrialVoiceResource)initWithLanguage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSTrialVoiceResource;
  v5 = [(VSTrialVoiceResource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    language = v5->_language;
    v5->_language = v6;
  }

  return v5;
}

- (id)factorName
{
  v2 = [(NSString *)self->_language stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.resource.%@", @"com.apple.siri.tts", v2];

  return v3;
}

@end