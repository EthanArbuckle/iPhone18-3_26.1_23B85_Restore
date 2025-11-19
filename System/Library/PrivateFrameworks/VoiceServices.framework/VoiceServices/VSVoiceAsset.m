@interface VSVoiceAsset
+ (id)compatibilityVersionFromMobileAssetAttributes:(id)a3;
+ (id)footprintStringFromFootprint:(int64_t)a3;
+ (id)genderStringFromGender:(int64_t)a3;
+ (id)languagesFromMobileAssetAttributes:(id)a3;
+ (id)typeStringFromType:(int64_t)a3;
+ (int64_t)footprintFromString:(id)a3;
+ (int64_t)genderFromString:(id)a3;
+ (int64_t)typeFromString:(id)a3;
- (VSVoiceAsset)initWithCoder:(id)a3;
- (VSVoiceAsset)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)descriptiveKey;
- (id)dictionaryRepresentation;
- (id)initFromMobileAssetAttributes:(id)a3;
- (id)nameKey;
- (id)voiceKey;
- (void)amendNameVersionAndSizeWithMobileAssetAttributes:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSVoiceAsset

- (void)amendNameVersionAndSizeWithMobileAssetAttributes:(id)a3
{
  v16 = a3;
  v4 = [(VSVoiceAsset *)self name];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = [v16 objectForKeyedSubscript:@"Name"];
    [(VSVoiceAsset *)self setName:v6];
  }

  v7 = [(VSAssetBase *)self masteredVersion];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = [v16 objectForKeyedSubscript:*MEMORY[0x277D28918]];
    [(VSAssetBase *)self setMasteredVersion:v9];
  }

  v10 = [(VSAssetBase *)self contentVersion];

  if (!v10)
  {
    v11 = [v16 objectForKeyedSubscript:*MEMORY[0x277D28900]];
    [(VSAssetBase *)self setContentVersion:v11];
  }

  v12 = [(VSAssetBase *)self compatibilityVersion];

  if (!v12)
  {
    v13 = [VSVoiceAsset compatibilityVersionFromMobileAssetAttributes:v16];
    [(VSAssetBase *)self setCompatibilityVersion:v13];
  }

  v14 = [(VSAssetBase *)self downloadSize];

  if (!v14)
  {
    v15 = [v16 objectForKeyedSubscript:*MEMORY[0x277D28908]];
    [(VSAssetBase *)self setDownloadSize:v15];
  }
}

- (id)initFromMobileAssetAttributes:(id)a3
{
  v10.receiver = self;
  v10.super_class = VSVoiceAsset;
  v3 = a3;
  v4 = [(VSVoiceAsset *)&v10 init];
  v5 = [VSVoiceAsset languagesFromMobileAssetAttributes:v3, v10.receiver, v10.super_class];
  [(VSVoiceAsset *)v4 setLanguages:v5];

  v6 = [v3 objectForKeyedSubscript:@"Gender"];
  [(VSVoiceAsset *)v4 setGender:[VSVoiceAsset genderFromString:v6]];

  v7 = [v3 objectForKeyedSubscript:@"Type"];
  [(VSVoiceAsset *)v4 setType:[VSVoiceAsset typeFromString:v7]];

  v8 = [v3 objectForKeyedSubscript:@"Footprint"];
  [(VSVoiceAsset *)v4 setFootprint:[VSVoiceAsset footprintFromString:v8]];

  [(VSVoiceAsset *)v4 amendNameVersionAndSizeWithMobileAssetAttributes:v3];
  return v4;
}

+ (id)compatibilityVersionFromMobileAssetAttributes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D288E8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v3 objectForKeyedSubscript:@"Name"];
      v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D28900]];
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_debug_impl(&dword_272850000, v5, OS_LOG_TYPE_DEBUG, "ASAttributeCompatibilityVersion should be NSNumber, got NSString for %@\tCV: %@\tCompatibility: %@", &v12, 0x20u);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)languagesFromMobileAssetAttributes:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"LanguagesCompatibility"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"LanguagesCompatibility"];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"_" withString:{@"-", v17}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v13 = [v3 objectForKeyedSubscript:@"Languages"];
    if (v13)
    {
      v7 = v13;
      v6 = v7;
    }

    else
    {
      v14 = [v3 objectForKeyedSubscript:@"Language"];
      v21 = v14;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

      v7 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"Name"];
  }

  languages = self->_languages;
  if (languages)
  {
    [v4 setObject:languages forKey:@"Languages"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithLong:self->_gender];
  [v4 setObject:v7 forKey:@"Gender"];

  if (self->_type)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLong:?];
    [v4 setObject:v8 forKey:@"Type"];
  }

  v9 = [(VSAssetBase *)self masteredVersion];

  if (v9)
  {
    v10 = [(VSAssetBase *)self masteredVersion];
    [v4 setObject:v10 forKey:@"MasteredVersion"];
  }

  v11 = [(VSAssetBase *)self contentVersion];

  if (v11)
  {
    v12 = [(VSAssetBase *)self contentVersion];
    [v4 setObject:v12 forKey:@"ContentVersion"];
  }

  return v4;
}

- (VSVoiceAsset)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = VSVoiceAsset;
  v5 = [(VSVoiceAsset *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [(VSVoiceAsset *)v5 setName:v7];
    v8 = [v4 objectForKey:@"Languages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3476];
      v10 = [v8 filteredArrayUsingPredicate:v9];
      [(VSVoiceAsset *)v5 setLanguages:v10];
    }

    else
    {
      [(VSVoiceAsset *)v5 setLanguages:0];
    }

    v11 = [v4 objectForKey:@"Gender"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 integerValue];
    }

    else
    {
      v12 = 0;
    }

    [(VSVoiceAsset *)v5 setGender:v12];
    v13 = [v4 objectForKey:@"Type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 integerValue];
    }

    else
    {
      v14 = 0;
    }

    [(VSVoiceAsset *)v5 setType:v14];
    v15 = [v4 objectForKey:@"MasteredVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [(VSAssetBase *)v5 setMasteredVersion:v16];
    v17 = [v4 objectForKey:@"ContentVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    [(VSAssetBase *)v5 setContentVersion:v18];
    v19 = v5;
  }

  return v5;
}

uint64_t __49__VSVoiceAsset_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (VSVoiceAsset)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VSVoiceAsset;
  v5 = [(VSAssetBase *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_languages"];
    languages = v5->_languages;
    v5->_languages = v11;

    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_gender = [v4 decodeIntegerForKey:@"_gender"];
    v5->_footprint = [v4 decodeIntegerForKey:@"_footprint"];
    v5->_isInstalled = [v4 decodeBoolForKey:@"_isInstalled"];
    v5->_isBuiltInVoice = [v4 decodeBoolForKey:@"_isBuiltInVoice"];
    v5->_isVoiceReadyToUse = [v4 decodeBoolForKey:@"_isVoiceReadyToUse"];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VSVoiceAsset;
  v4 = a3;
  [(VSAssetBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_languages forKey:@"_languages"];
  [v4 encodeInteger:self->_type forKey:@"_type"];
  [v4 encodeInteger:self->_gender forKey:@"_gender"];
  [v4 encodeInteger:self->_footprint forKey:@"_footprint"];
  [v4 encodeBool:self->_isInstalled forKey:@"_isInstalled"];
  [v4 encodeBool:self->_isBuiltInVoice forKey:@"_isBuiltInVoice"];
  [v4 encodeBool:self->_isVoiceReadyToUse forKey:@"_isVoiceReadyToUse"];
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [VSVoiceAsset typeStringFromType:[(VSVoiceAsset *)self type]];
  name = self->_name;
  v4 = [(NSArray *)self->_languages componentsJoinedByString:@", "];
  v5 = [VSVoiceAsset genderStringFromGender:[(VSVoiceAsset *)self gender]];
  v6 = [VSVoiceAsset footprintStringFromFootprint:[(VSVoiceAsset *)self footprint]];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstalled];
  v8 = [(VSAssetBase *)self contentVersion];
  v9 = [(VSAssetBase *)self masteredVersion];
  v10 = [(VSAssetBase *)self downloadSize];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBuiltInVoice];
  v12 = [v15 stringWithFormat:@"Type:%@, Name: %@, Languages: %@, Gender: %@, Footprint: %@, Installed: %@, ContentVersion: %@, MasteredVersion: %@, downloadSize: %@, isBuiltIn: %@", v3, name, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)descriptiveKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSArray *)self->_languages componentsJoinedByString:@", "];
  v5 = [VSVoiceAsset typeStringFromType:[(VSVoiceAsset *)self type]];
  v6 = [VSVoiceAsset genderStringFromGender:[(VSVoiceAsset *)self gender]];
  v7 = [(VSVoiceAsset *)self nameKey];
  v8 = [VSVoiceAsset footprintStringFromFootprint:[(VSVoiceAsset *)self footprint]];
  v9 = [(VSAssetBase *)self contentVersion];
  v10 = [(VSAssetBase *)self masteredVersion];
  v11 = [(VSAssetBase *)self compatibilityVersion];
  v12 = [v3 stringWithFormat:@"%@:%@:%@:%@:%@:CV%@:MV%@:Compatibility%@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)voiceKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSArray *)self->_languages firstObject];
  v5 = [VSVoiceAsset typeStringFromType:self->_type];
  v6 = [VSVoiceAsset genderStringFromGender:self->_gender];
  v7 = [(VSVoiceAsset *)self nameKey];
  v8 = [VSVoiceAsset footprintStringFromFootprint:self->_footprint];
  v9 = [(VSAssetBase *)self contentVersion];
  v10 = [v3 stringWithFormat:@"%@:%@:%@:%@:%@:%@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)nameKey
{
  name = self->_name;
  if (!name)
  {
    if (self->_isBuiltInVoice)
    {
      return @"builtin";
    }

    name = 0;
  }

  return name;
}

+ (int64_t)typeFromString:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [@"vocalizer" lowercaseString];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [@"custom" lowercaseString];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v9 = [@"gryphon" lowercaseString];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v11 = [@"neural" lowercaseString];
        v12 = [v3 isEqualToString:v11];

        if (v12)
        {
          v6 = 4;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

+ (id)typeStringFromType:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4F9F0[a3];
  }
}

+ (int64_t)footprintFromString:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [@"compact" lowercaseString];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [@"premium" lowercaseString];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v9 = [@"premiumhigh" lowercaseString];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v11 = [@"beta" lowercaseString];
        v12 = [v3 isEqualToString:v11];

        v6 = v12 << 63 >> 63;
      }
    }
  }

  return v6;
}

+ (id)footprintStringFromFootprint:(int64_t)a3
{
  if ((a3 + 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4F9C8[a3 + 1];
  }
}

+ (int64_t)genderFromString:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [@"male" lowercaseString];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [@"female" lowercaseString];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v9 = [@"neutral" lowercaseString];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)genderStringFromGender:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4F9A8[a3];
  }
}

@end