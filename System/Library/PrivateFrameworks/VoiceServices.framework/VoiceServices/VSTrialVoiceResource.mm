@interface VSTrialVoiceResource
- (VSTrialVoiceResource)initWithFactorLevel:(id)level;
- (VSTrialVoiceResource)initWithFactorName:(id)name;
- (VSTrialVoiceResource)initWithLanguage:(id)language;
- (id)factorName;
@end

@implementation VSTrialVoiceResource

- (VSTrialVoiceResource)initWithFactorLevel:(id)level
{
  v22 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  factor = [levelCopy factor];
  name = [factor name];
  v7 = [(VSTrialVoiceResource *)self initWithFactorName:name];

  if (v7 && [levelCopy hasLevel])
  {
    level = [levelCopy level];
    directoryValue = [level directoryValue];

    if (directoryValue)
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
      factor2 = [metadata objectForKeyedSubscript:@"ttsContentVersion"];

      if (factor2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7->_version = [factor2 integerValue];
        }
      }
    }

    else
    {
      directoryValue = VSGetLogDefault();
      if (!os_log_type_enabled(directoryValue, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      factor2 = [levelCopy factor];
      name2 = [factor2 name];
      v20 = 138412290;
      v21 = name2;
      _os_log_error_impl(&dword_272850000, directoryValue, OS_LOG_TYPE_ERROR, "#Trial Error: resource should be as directory. Factor name: %@", &v20, 0xCu);
    }

LABEL_12:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (VSTrialVoiceResource)initWithFactorName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy hasPrefix:@"com.apple.siri.tts.resource"] && (objc_msgSend(nameCopy, "hasSuffix:", @".version") & 1) == 0)
  {
    v6 = [nameCopy componentsSeparatedByString:@"."];
    if ([v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:5];
      v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

      self = [(VSTrialVoiceResource *)self initWithLanguage:v8];
      selfCopy = self;
    }

    else
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = nameCopy;
        _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "#Trial Unexpected resource factor name: %@", &v12, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (VSTrialVoiceResource)initWithLanguage:(id)language
{
  languageCopy = language;
  v9.receiver = self;
  v9.super_class = VSTrialVoiceResource;
  v5 = [(VSTrialVoiceResource *)&v9 init];
  if (v5)
  {
    v6 = [languageCopy copy];
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