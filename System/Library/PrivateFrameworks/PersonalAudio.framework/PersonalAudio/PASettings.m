@interface PASettings
+ (id)sharedInstance;
- (BOOL)personalMediaEnabledForRouteUID:(id)a3;
- (BOOL)transparencyAutobeamformerForAddress:(id)a3;
- (BOOL)transparencyBeamformingForAddress:(id)a3;
- (BOOL)transparencyCustomizedForAddress:(id)a3;
- (NSDictionary)accommodationTypesByRouteUID;
- (NSDictionary)audiogramConfigurationByRouteUID;
- (NSDictionary)personalMediaConfigurationByRouteUID;
- (NSDictionary)personalMediaEnabledByRouteUID;
- (NSDictionary)sslEnabled;
- (NSDictionary)transparencyAmplification;
- (NSDictionary)transparencyAutobeamformer;
- (NSDictionary)transparencyBalance;
- (NSDictionary)transparencyBeamforming;
- (NSDictionary)transparencyCustomized;
- (NSDictionary)transparencyNoiseSupressor;
- (NSDictionary)transparencyOwnVoice;
- (NSDictionary)transparencyTone;
- (double)transparencyAmplificationForAddress:(id)a3;
- (double)transparencyBalanceForAddress:(id)a3;
- (double)transparencyNoiseSupressorForAddress:(id)a3;
- (double)transparencyOwnVoiceForAddress:(id)a3;
- (double)transparencyToneForAddress:(id)a3;
- (id)archivedDataFromConfiguration:(id)a3;
- (id)audiogramConfigurationForRouteUID:(id)a3;
- (id)configurationFromData:(id)a3;
- (id)keysToSync;
- (id)personalMediaConfigurationForRouteUID:(id)a3;
- (id)preferenceKeyForSelector:(SEL)a3;
- (id)sanitizedRouteUID:(id)a3;
- (id)valueForRouteUID:(id)a3 fromCombinedValue:(id)a4;
- (unint64_t)accommodationTypesForRouteUID:(id)a3;
- (void)logMessage:(id)a3;
- (void)resetValueForSelector:(SEL)a3 forAddress:(id)a4;
- (void)setAccommodationTypes:(unint64_t)a3 forRouteUID:(id)a4;
- (void)setAudiogramConfiguration:(id)a3 forRouteUID:(id)a4;
- (void)setCurrentEnrollmentProgress:(unint64_t)a3;
- (void)setPersonalMediaConfiguration:(id)a3;
- (void)setPersonalMediaConfiguration:(id)a3 forRouteUID:(id)a4;
- (void)setTransparencyAmplification:(double)a3 forAddress:(id)a4;
- (void)setTransparencyBalance:(double)a3 forAddress:(id)a4;
- (void)setTransparencyNoiseSupressor:(double)a3 forAddress:(id)a4;
- (void)setTransparencyOwnVoice:(double)a3 forAddress:(id)a4;
- (void)setTransparencyTone:(double)a3 forAddress:(id)a4;
- (void)updateConfiguration:(id *)a3 forRouteID:(id)a4;
@end

@implementation PASettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PASettings sharedInstance];
  }

  v3 = sharedInstance_Settings;

  return v3;
}

- (NSDictionary)personalMediaConfigurationByRouteUID
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"personalMediaConfigurationByRouteUID" withClass:v3 andDefaultValue:0];
}

uint64_t __28__PASettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings = objc_alloc_init(PASettings);

  return MEMORY[0x2821F96F8]();
}

- (id)keysToSync
{
  if (keysToSync_onceToken != -1)
  {
    [PASettings keysToSync];
  }

  v3 = keysToSync_KeysToSync;

  return v3;
}

void __24__PASettings_keysToSync__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D81F08];
  v6 = NSStringFromSelector(sel_personalAudioAccommodationTypes);
  v2 = NSStringFromSelector(sel_personalMediaConfigurationByRouteUID);
  v3 = NSStringFromSelector(sel_accommodationTypesByRouteUID);
  v4 = [v0 setWithObjects:{v1, v6, v2, v3, 0}];
  v5 = keysToSync_KeysToSync;
  keysToSync_KeysToSync = v4;
}

- (NSDictionary)personalMediaEnabledByRouteUID
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"personalMediaEnabledByRouteUID" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)accommodationTypesByRouteUID
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"accommodationTypesByRouteUID" withClass:v3 andDefaultValue:0];
}

- (id)preferenceKeyForSelector:(SEL)a3
{
  if (preferenceKeyForSelector__onceToken != -1)
  {
    [PASettings preferenceKeyForSelector:];
  }

  v5 = preferenceKeyForSelector__SelectorMap;
  v6 = NSStringFromSelector(a3);
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PASettings;
    v8 = [(HCSettings *)&v11 preferenceKeyForSelector:a3];
  }

  v9 = v8;

  return v9;
}

void __39__PASettings_preferenceKeyForSelector___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = NSStringFromSelector(sel_personalMediaEnabled);
  v1 = *MEMORY[0x277D81F08];
  v2 = NSStringFromSelector(sel_personalMediaConfiguration);
  v3 = NSStringFromSelector(sel_personalMediaDebugMode);
  v4 = NSStringFromSelector(sel_audiogramConfiguration);
  v5 = NSStringFromSelector(sel_personalMediaAutomationSkipHeadphoneRequirement);
  v6 = [v0 initWithObjectsAndKeys:{@"PersonalMediaEnabled", v8, v1, v2, @"PersonalMediaDebug", v3, @"PersonalMediaAudiogram", v4, @"PersonalMediaAutomationSkipHeadphoneRequirementPreference", v5, 0}];
  v7 = preferenceKeyForSelector__SelectorMap;
  preferenceKeyForSelector__SelectorMap = v6;
}

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetValueForSelector:(SEL)a3 forAddress:(id)a4
{
  v10 = a4;
  v6 = [(PASettings *)self preferenceKeyForSelector:a3];
  v7 = [(HCSettings *)self objectValueForKey:v6 withClass:objc_opt_class() andDefaultValue:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectForKey:v10];
    [(HCSettings *)self setValue:v9 forPreferenceKey:v6];
  }
}

- (NSDictionary)audiogramConfigurationByRouteUID
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"audiogramConfigurationByRouteUID" withClass:v3 andDefaultValue:0];
}

- (void)setCurrentEnrollmentProgress:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:@"currentEnrollmentProgress"];
}

- (NSDictionary)transparencyCustomized
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyCustomized" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyAmplification
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyAmplification" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyBalance
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyBalance" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyTone
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyTone" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyBeamforming
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyBeamforming" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyNoiseSupressor
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyNoiseSupressor" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyAutobeamformer
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyAutobeamformer" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)transparencyOwnVoice
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"transparencyOwnVoice" withClass:v3 andDefaultValue:0];
}

- (NSDictionary)sslEnabled
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"sslEnabled" withClass:v3 andDefaultValue:0];
}

- (id)configurationFromData:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v11];
  v5 = v11;
  v6 = 0;
  if (!v5)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v6 = [v4 decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCA308]];
  }

  return v6;
}

- (id)archivedDataFromConfiguration:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v4 encodeObject:v3 forKey:*MEMORY[0x277CCA308]];
    [v4 finishEncoding];
    v5 = [v4 encodedData];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sanitizedRouteUID:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"-"];
  v4 = [v3 firstObject];

  return v4;
}

- (id)valueForRouteUID:(id)a3 fromCombinedValue:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForKey:a3];
  if (!v6)
  {
    v6 = [v5 valueForKey:@"PAConfigurationWildcard"];
  }

  return v6;
}

- (void)setPersonalMediaConfiguration:(id)a3
{
  [(PASettings *)self setPersonalMediaConfiguration:a3 forRouteUID:@"PAConfigurationWildcard"];
  v4 = [(PASettings *)self personalMediaEnabled];

  [(PASettings *)self setPersonalMediaEnabled:v4];
}

- (BOOL)personalMediaEnabledForRouteUID:(id)a3
{
  v4 = [(PASettings *)self sanitizedRouteUID:a3];
  if ([v4 length])
  {
    v5 = [(PASettings *)self personalMediaEnabledByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)personalMediaConfigurationForRouteUID:(id)a3
{
  v4 = [(PASettings *)self sanitizedRouteUID:a3];
  if ([v4 length])
  {
    v5 = [(PASettings *)self personalMediaConfigurationByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(PASettings *)self configurationFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPersonalMediaConfiguration:(id)a3 forRouteUID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PASettings *)self sanitizedRouteUID:a4];
  v8 = [(PASettings *)self archivedDataFromConfiguration:v6];

  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v9 = MEMORY[0x277CBEB38];
    v10 = [(PASettings *)self personalMediaConfigurationByRouteUID];
    v11 = [v9 dictionaryWithDictionary:v10];

    [v11 setValue:v8 forKey:v7];
    [(PASettings *)self setPersonalMediaConfigurationByRouteUID:v11];
    v12 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_25E445000, v12, OS_LOG_TYPE_DEFAULT, "Updating configs %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)audiogramConfigurationForRouteUID:(id)a3
{
  v4 = [(PASettings *)self sanitizedRouteUID:a3];
  if ([v4 length])
  {
    v5 = [(PASettings *)self audiogramConfigurationByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(PASettings *)self configurationFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAudiogramConfiguration:(id)a3 forRouteUID:(id)a4
{
  v6 = a3;
  v11 = [(PASettings *)self sanitizedRouteUID:a4];
  v7 = [(PASettings *)self archivedDataFromConfiguration:v6];

  if ([v11 length] && objc_msgSend(v7, "length"))
  {
    v8 = MEMORY[0x277CBEB38];
    v9 = [(PASettings *)self audiogramConfigurationByRouteUID];
    v10 = [v8 dictionaryWithDictionary:v9];

    [v10 setValue:v7 forKey:v11];
    [(PASettings *)self setAudiogramConfigurationByRouteUID:v10];
  }
}

- (unint64_t)accommodationTypesForRouteUID:(id)a3
{
  v4 = [(PASettings *)self sanitizedRouteUID:a3];
  if ([v4 length])
  {
    v5 = [(PASettings *)self accommodationTypesByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 unsignedIntegerValue];
    }

    else
    {
      v7 = 6;
    }
  }

  else
  {
    v7 = 6;
  }

  return v7;
}

- (void)setAccommodationTypes:(unint64_t)a3 forRouteUID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [(PASettings *)self sanitizedRouteUID:a4];
  if ([v6 length])
  {
    v7 = MEMORY[0x277CBEB38];
    v8 = [(PASettings *)self accommodationTypesByRouteUID];
    v9 = [v7 dictionaryWithDictionary:v8];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v9 setValue:v10 forKey:v6];

    [(PASettings *)self setAccommodationTypesByRouteUID:v9];
    v11 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25E445000, v11, OS_LOG_TYPE_DEFAULT, "Updating types %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)transparencyCustomizedForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyCustomized];
    v6 = [v5 valueForKey:v4];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)transparencyAmplificationForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyAmplification];
    v6 = [v5 valueForKey:v4];
    v7 = 0.5;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 doubleValue];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.5;
  }

  return v7;
}

- (void)setTransparencyAmplification:(double)a3 forAddress:(id)a4
{
  v10 = a4;
  if ([v10 length])
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [(PASettings *)self transparencyAmplification];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v8 setValue:v9 forKey:v10];

    [(PASettings *)self setTransparencyAmplification:v8];
  }
}

- (double)transparencyBalanceForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyBalance];
    v6 = [v5 valueForKey:v4];
    v7 = 0.5;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 doubleValue];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.5;
  }

  return v7;
}

- (void)setTransparencyBalance:(double)a3 forAddress:(id)a4
{
  v10 = a4;
  if ([v10 length])
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [(PASettings *)self transparencyBalance];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v8 setValue:v9 forKey:v10];

    [(PASettings *)self setTransparencyBalance:v8];
  }
}

- (double)transparencyToneForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyTone];
    v6 = [v5 valueForKey:v4];
    v7 = 0.5;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 doubleValue];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.5;
  }

  return v7;
}

- (void)setTransparencyTone:(double)a3 forAddress:(id)a4
{
  v10 = a4;
  if ([v10 length])
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [(PASettings *)self transparencyTone];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v8 setValue:v9 forKey:v10];

    [(PASettings *)self setTransparencyTone:v8];
  }
}

- (BOOL)transparencyBeamformingForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyBeamforming];
    v6 = [v5 valueForKey:v4];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)transparencyNoiseSupressorForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyNoiseSupressor];
    v6 = [v5 valueForKey:v4];
    v7 = 0.0;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 doubleValue];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)setTransparencyNoiseSupressor:(double)a3 forAddress:(id)a4
{
  v10 = a4;
  if ([v10 length])
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [(PASettings *)self transparencyNoiseSupressor];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v8 setValue:v9 forKey:v10];

    [(PASettings *)self setTransparencyNoiseSupressor:v8];
  }
}

- (BOOL)transparencyAutobeamformerForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyAutobeamformer];
    v6 = [v5 valueForKey:v4];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)transparencyOwnVoiceForAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PASettings *)self transparencyOwnVoice];
    v6 = [v5 valueForKey:v4];
    v7 = 0.0;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 doubleValue];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)setTransparencyOwnVoice:(double)a3 forAddress:(id)a4
{
  v10 = a4;
  if ([v10 length])
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [(PASettings *)self transparencyOwnVoice];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v8 setValue:v9 forKey:v10];

    [(PASettings *)self setTransparencyOwnVoice:v8];
  }
}

- (void)updateConfiguration:(id *)a3 forRouteID:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 length])
  {
    [(PASettings *)self setShouldUpdateAccessory:0];
    v7 = [PAConfiguration configurationWithLeftMediaLoss:a3->var4 rightMediaLoss:a3->var5 leftSpeechLoss:a3->var2 andRightSpeechLoss:a3->var3];
    v8 = [(PASettings *)self personalMediaConfigurationByRouteUID];
    v9 = [(PASettings *)self valueForRouteUID:v6 fromCombinedValue:v8];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [(PASettings *)self configurationFromData:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 isEqual:v7];
    v12 = HCLogAudioAccommodations();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    v31 = v9;
    if (v11)
    {
      if (v13)
      {
        *buf = 138412546;
        *v33 = v6;
        *&v33[8] = 2112;
        *&v33[10] = v10;
        _os_log_impl(&dword_25E445000, v12, OS_LOG_TYPE_DEFAULT, "Skipping update. Configuration didn't change %@ = %@", buf, 0x16u);
      }
    }

    else
    {
      if (v13)
      {
        *buf = 138412546;
        *v33 = v6;
        *&v33[8] = 2112;
        *&v33[10] = v7;
        _os_log_impl(&dword_25E445000, v12, OS_LOG_TYPE_DEFAULT, "Updating config for %@ = %@", buf, 0x16u);
      }

      [(PASettings *)self setPersonalMediaConfiguration:v7 forRouteUID:v6];
    }

    v14 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:a3->var0];
      *buf = 138412290;
      *v33 = v15;
      _os_log_impl(&dword_25E445000, v14, OS_LOG_TYPE_DEFAULT, "Speech enabled %@", buf, 0xCu);
    }

    v16 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
      *buf = 138412290;
      *v33 = v17;
      _os_log_impl(&dword_25E445000, v16, OS_LOG_TYPE_DEFAULT, "Media enabled %@", buf, 0xCu);
    }

    v18 = 2;
    if (!a3->var0)
    {
      v18 = 0;
    }

    if (a3->var1)
    {
      v19 = v18 | 4;
    }

    else
    {
      v19 = v18;
    }

    v20 = [(PASettings *)self accommodationTypesByRouteUID];

    v21 = [(PASettings *)self valueForRouteUID:v6 fromCombinedValue:v20];
    v30 = v10;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = [v21 unsignedIntegerValue];
    }

    else
    {
      v22 = 0;
    }

    v23 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      *buf = 67109634;
      *v33 = v22 != v19;
      *&v33[4] = 2112;
      *&v33[6] = v24;
      *&v33[14] = 2112;
      *&v33[16] = v25;
      _os_log_impl(&dword_25E445000, v23, OS_LOG_TYPE_DEFAULT, "Setting types %d = %@ - %@", buf, 0x1Cu);
    }

    if (v22 == v19)
    {
      v26 = HCLogAudioAccommodations();
      v28 = v30;
      v27 = v31;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E445000, v26, OS_LOG_TYPE_DEFAULT, "Skipping update. Types didn't change", buf, 2u);
      }
    }

    else
    {
      [(PASettings *)self setAccommodationTypes:v19 forRouteUID:v6];
      v28 = v30;
      v27 = v31;
    }

    [(PASettings *)self setShouldUpdateAccessory:1];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)configurationFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E445000, a2, OS_LOG_TYPE_ERROR, "Exception decoding data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)archivedDataFromConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E445000, a2, OS_LOG_TYPE_ERROR, "Exception encoding data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end