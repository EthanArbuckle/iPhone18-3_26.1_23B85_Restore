@interface VSVoiceResourceAsset
+ (id)resourceFromTrial:(id)a3;
- (NSArray)resourceList;
- (NSDictionary)resourceMimeTypes;
- (NSDictionary)vocalizerConfig;
- (NSDictionary)voiceConfig;
- (VSVoiceResourceAsset)initWithCoder:(id)a3;
- (float)pitch;
- (float)rate;
- (float)volume;
- (id)_defaultVoices;
- (id)defaultVoice;
- (id)defaultVoiceNameForGender:(int64_t)a3;
- (id)description;
- (id)key;
- (int64_t)defaultVoiceGender;
- (int64_t)defaultVoiceType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSVoiceResourceAsset

+ (id)resourceFromTrial:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setStorage:3];
  v5 = [v3 language];
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v4 setLanguages:v6];

  v7 = [v3 path];

  if (v7)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v3 path];
    v10 = [v8 fileURLWithPath:v9];
    [v4 setSearchPathURL:v10];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "version")}];
  [v4 setContentVersion:v11];

  [v4 setCompatibilityVersion:&unk_2881E0DE8];
  [v4 setIsPurgeable:1];

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)defaultVoice
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
  }

  v4 = [(VSVoiceResourceAsset *)self _defaultVoices];
  v5 = [v4 objectForKeyedSubscript:@"default"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = @"Gender";
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int64_t)defaultVoiceType
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
  }

  v4 = [(VSVoiceResourceAsset *)self defaultVoiceNameForGender:2];
  v5 = [(VSVoiceResourceAsset *)self defaultVoiceNameForGender:1];
  v6 = v5;
  if (v4 && v5 && ![v4 isEqualToString:v5])
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)defaultVoiceNameForGender:(int64_t)a3
{
  v4 = [(VSVoiceResourceAsset *)self _defaultVoices];
  v5 = [VSVoiceAsset genderStringFromGender:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (int64_t)defaultVoiceGender
{
  v2 = [(VSVoiceResourceAsset *)self _defaultVoices];
  v3 = [v2 objectForKeyedSubscript:@"default"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [VSVoiceAsset genderFromString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultVoices
{
  v3 = [(VSVoiceResourceAsset *)self voiceConfig];

  if (v3)
  {
    v4 = [(VSVoiceResourceAsset *)self voiceConfig];
    v5 = [v4 objectForKeyedSubscript:@"_voices"];

    if (v5)
    {
      v6 = v5;
      v7 = v6;
      goto LABEL_10;
    }

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "voice_configs.plist does not have key '_voices'", v10, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Unable to read voice_configs.plist", buf, 2u);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (NSArray)resourceList
{
  resourceList = self->_resourceList;
  if (!resourceList)
  {
    v4 = [(VSVoiceResourceAsset *)self voiceConfig];
    v5 = [v4 objectForKeyedSubscript:@"vocalizer_resource_order"];
    v6 = self->_resourceList;
    self->_resourceList = v5;

    resourceList = self->_resourceList;
  }

  return resourceList;
}

- (NSDictionary)resourceMimeTypes
{
  resourceMimeTypes = self->_resourceMimeTypes;
  if (!resourceMimeTypes)
  {
    v4 = [(VSVoiceResourceAsset *)self voiceConfig];
    v5 = [v4 objectForKeyedSubscript:@"vocalizer_resources"];
    v6 = self->_resourceMimeTypes;
    self->_resourceMimeTypes = v5;

    resourceMimeTypes = self->_resourceMimeTypes;
  }

  return resourceMimeTypes;
}

- (NSDictionary)voiceConfig
{
  v17 = *MEMORY[0x277D85DE8];
  voiceConfig = self->_voiceConfig;
  if (!voiceConfig)
  {
    v4 = [(VSVoiceResourceAsset *)self searchPathURL];
    v5 = [v4 URLByAppendingPathComponent:@"voice_configs.plist"];

    v12 = 0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v12];
    v7 = v12;
    v8 = self->_voiceConfig;
    self->_voiceConfig = v6;

    if (v7)
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = v5;
        v15 = 2114;
        v16 = v7;
        _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "Unable to load plist at '%{public}@', error: %{public}@", buf, 0x16u);
      }
    }

    voiceConfig = self->_voiceConfig;
  }

  v10 = *MEMORY[0x277D85DE8];

  return voiceConfig;
}

- (NSDictionary)vocalizerConfig
{
  vocalizerConfig = self->_vocalizerConfig;
  if (!vocalizerConfig)
  {
    v4 = MEMORY[0x277CBEAC0];
    v5 = [(VSVoiceResourceAsset *)self searchPathURL];
    v6 = [v5 URLByAppendingPathComponent:@"VoiceServices-Config.plist"];
    v7 = [v4 dictionaryWithContentsOfURL:v6];
    v8 = self->_vocalizerConfig;
    self->_vocalizerConfig = v7;

    vocalizerConfig = self->_vocalizerConfig;
  }

  return vocalizerConfig;
}

- (float)volume
{
  result = self->_volume;
  if (result == 0.0)
  {
    v4 = [(VSVoiceResourceAsset *)self vocalizerConfig];
    v5 = [v4 objectForKeyedSubscript:@"voice_speech_volume"];

    [v5 floatValue];
    self->_volume = v6;

    return self->_volume;
  }

  return result;
}

- (float)pitch
{
  result = self->_pitch;
  if (result == 0.0)
  {
    v4 = [(VSVoiceResourceAsset *)self vocalizerConfig];
    v5 = [v4 objectForKeyedSubscript:@"voice_speech_pitch"];

    [v5 floatValue];
    self->_pitch = v6;

    return self->_pitch;
  }

  return result;
}

- (float)rate
{
  result = self->_rate;
  if (result == 0.0)
  {
    v4 = [(VSVoiceResourceAsset *)self vocalizerConfig];
    v5 = [v4 objectForKeyedSubscript:@"voice_speech_rate"];

    [v5 floatValue];
    self->_rate = v6;

    return self->_rate;
  }

  return result;
}

- (id)key
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(VSVoiceResourceAsset *)self languages];
  v5 = [v4 firstObject];
  v6 = [(VSAssetBase *)self masteredVersion];
  v7 = [(VSAssetBase *)self contentVersion];
  v8 = [v3 stringWithFormat:@"%@:%@:%@", v5, v6, v7];

  return v8;
}

- (VSVoiceResourceAsset)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VSVoiceResourceAsset;
  v5 = [(VSAssetBase *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_languages"];
    languages = v5->_languages;
    v5->_languages = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_searchPathURL"];
    searchPathURL = v5->_searchPathURL;
    v5->_searchPathURL = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VSVoiceResourceAsset;
  v4 = a3;
  [(VSAssetBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_languages forKey:{@"_languages", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_searchPathURL forKey:@"_searchPathURL"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSArray *)self->_languages componentsJoinedByString:@", "];
  v5 = [(VSAssetBase *)self contentVersion];
  v6 = [v3 stringWithFormat:@"VoiceResource: %@_CV%@", v4, v5];

  return v6;
}

@end