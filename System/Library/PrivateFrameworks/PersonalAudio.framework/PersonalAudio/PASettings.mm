@interface PASettings
+ (id)sharedInstance;
- (BOOL)personalMediaEnabledForRouteUID:(id)d;
- (BOOL)transparencyAutobeamformerForAddress:(id)address;
- (BOOL)transparencyBeamformingForAddress:(id)address;
- (BOOL)transparencyCustomizedForAddress:(id)address;
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
- (double)transparencyAmplificationForAddress:(id)address;
- (double)transparencyBalanceForAddress:(id)address;
- (double)transparencyNoiseSupressorForAddress:(id)address;
- (double)transparencyOwnVoiceForAddress:(id)address;
- (double)transparencyToneForAddress:(id)address;
- (id)archivedDataFromConfiguration:(id)configuration;
- (id)audiogramConfigurationForRouteUID:(id)d;
- (id)configurationFromData:(id)data;
- (id)keysToSync;
- (id)personalMediaConfigurationForRouteUID:(id)d;
- (id)preferenceKeyForSelector:(SEL)selector;
- (id)sanitizedRouteUID:(id)d;
- (id)valueForRouteUID:(id)d fromCombinedValue:(id)value;
- (unint64_t)accommodationTypesForRouteUID:(id)d;
- (void)logMessage:(id)message;
- (void)resetValueForSelector:(SEL)selector forAddress:(id)address;
- (void)setAccommodationTypes:(unint64_t)types forRouteUID:(id)d;
- (void)setAudiogramConfiguration:(id)configuration forRouteUID:(id)d;
- (void)setCurrentEnrollmentProgress:(unint64_t)progress;
- (void)setPersonalMediaConfiguration:(id)configuration;
- (void)setPersonalMediaConfiguration:(id)configuration forRouteUID:(id)d;
- (void)setTransparencyAmplification:(double)amplification forAddress:(id)address;
- (void)setTransparencyBalance:(double)balance forAddress:(id)address;
- (void)setTransparencyNoiseSupressor:(double)supressor forAddress:(id)address;
- (void)setTransparencyOwnVoice:(double)voice forAddress:(id)address;
- (void)setTransparencyTone:(double)tone forAddress:(id)address;
- (void)updateConfiguration:(id *)configuration forRouteID:(id)d;
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

- (id)preferenceKeyForSelector:(SEL)selector
{
  if (preferenceKeyForSelector__onceToken != -1)
  {
    [PASettings preferenceKeyForSelector:];
  }

  v5 = preferenceKeyForSelector__SelectorMap;
  v6 = NSStringFromSelector(selector);
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PASettings;
    v8 = [(HCSettings *)&v11 preferenceKeyForSelector:selector];
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

- (void)logMessage:(id)message
{
  v8 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = messageCopy;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetValueForSelector:(SEL)selector forAddress:(id)address
{
  addressCopy = address;
  v6 = [(PASettings *)self preferenceKeyForSelector:selector];
  v7 = [(HCSettings *)self objectValueForKey:v6 withClass:objc_opt_class() andDefaultValue:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectForKey:addressCopy];
    [(HCSettings *)self setValue:v9 forPreferenceKey:v6];
  }
}

- (NSDictionary)audiogramConfigurationByRouteUID
{
  v3 = objc_opt_class();

  return [(HCSettings *)self objectValueForKey:@"audiogramConfigurationByRouteUID" withClass:v3 andDefaultValue:0];
}

- (void)setCurrentEnrollmentProgress:(unint64_t)progress
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:progress];
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

- (id)configurationFromData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v11];
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

- (id)archivedDataFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v4 encodeObject:configurationCopy forKey:*MEMORY[0x277CCA308]];
    [v4 finishEncoding];
    encodedData = [v4 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)sanitizedRouteUID:(id)d
{
  v3 = [d componentsSeparatedByString:@"-"];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)valueForRouteUID:(id)d fromCombinedValue:(id)value
{
  valueCopy = value;
  v6 = [valueCopy valueForKey:d];
  if (!v6)
  {
    v6 = [valueCopy valueForKey:@"PAConfigurationWildcard"];
  }

  return v6;
}

- (void)setPersonalMediaConfiguration:(id)configuration
{
  [(PASettings *)self setPersonalMediaConfiguration:configuration forRouteUID:@"PAConfigurationWildcard"];
  personalMediaEnabled = [(PASettings *)self personalMediaEnabled];

  [(PASettings *)self setPersonalMediaEnabled:personalMediaEnabled];
}

- (BOOL)personalMediaEnabledForRouteUID:(id)d
{
  v4 = [(PASettings *)self sanitizedRouteUID:d];
  if ([v4 length])
  {
    personalMediaEnabledByRouteUID = [(PASettings *)self personalMediaEnabledByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:personalMediaEnabledByRouteUID];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)personalMediaConfigurationForRouteUID:(id)d
{
  v4 = [(PASettings *)self sanitizedRouteUID:d];
  if ([v4 length])
  {
    personalMediaConfigurationByRouteUID = [(PASettings *)self personalMediaConfigurationByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:personalMediaConfigurationByRouteUID];
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

- (void)setPersonalMediaConfiguration:(id)configuration forRouteUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = [(PASettings *)self sanitizedRouteUID:d];
  v8 = [(PASettings *)self archivedDataFromConfiguration:configurationCopy];

  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v9 = MEMORY[0x277CBEB38];
    personalMediaConfigurationByRouteUID = [(PASettings *)self personalMediaConfigurationByRouteUID];
    v11 = [v9 dictionaryWithDictionary:personalMediaConfigurationByRouteUID];

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

- (id)audiogramConfigurationForRouteUID:(id)d
{
  v4 = [(PASettings *)self sanitizedRouteUID:d];
  if ([v4 length])
  {
    audiogramConfigurationByRouteUID = [(PASettings *)self audiogramConfigurationByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:audiogramConfigurationByRouteUID];
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

- (void)setAudiogramConfiguration:(id)configuration forRouteUID:(id)d
{
  configurationCopy = configuration;
  v11 = [(PASettings *)self sanitizedRouteUID:d];
  v7 = [(PASettings *)self archivedDataFromConfiguration:configurationCopy];

  if ([v11 length] && objc_msgSend(v7, "length"))
  {
    v8 = MEMORY[0x277CBEB38];
    audiogramConfigurationByRouteUID = [(PASettings *)self audiogramConfigurationByRouteUID];
    v10 = [v8 dictionaryWithDictionary:audiogramConfigurationByRouteUID];

    [v10 setValue:v7 forKey:v11];
    [(PASettings *)self setAudiogramConfigurationByRouteUID:v10];
  }
}

- (unint64_t)accommodationTypesForRouteUID:(id)d
{
  v4 = [(PASettings *)self sanitizedRouteUID:d];
  if ([v4 length])
  {
    accommodationTypesByRouteUID = [(PASettings *)self accommodationTypesByRouteUID];
    v6 = [(PASettings *)self valueForRouteUID:v4 fromCombinedValue:accommodationTypesByRouteUID];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 6;
    }
  }

  else
  {
    unsignedIntegerValue = 6;
  }

  return unsignedIntegerValue;
}

- (void)setAccommodationTypes:(unint64_t)types forRouteUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [(PASettings *)self sanitizedRouteUID:d];
  if ([v6 length])
  {
    v7 = MEMORY[0x277CBEB38];
    accommodationTypesByRouteUID = [(PASettings *)self accommodationTypesByRouteUID];
    v9 = [v7 dictionaryWithDictionary:accommodationTypesByRouteUID];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:types];
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

- (BOOL)transparencyCustomizedForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyCustomized = [(PASettings *)self transparencyCustomized];
    v6 = [transparencyCustomized valueForKey:addressCopy];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (double)transparencyAmplificationForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyAmplification = [(PASettings *)self transparencyAmplification];
    v6 = [transparencyAmplification valueForKey:addressCopy];
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

- (void)setTransparencyAmplification:(double)amplification forAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x277CBEB38];
    transparencyAmplification = [(PASettings *)self transparencyAmplification];
    v8 = [v6 dictionaryWithDictionary:transparencyAmplification];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:amplification];
    [v8 setValue:v9 forKey:addressCopy];

    [(PASettings *)self setTransparencyAmplification:v8];
  }
}

- (double)transparencyBalanceForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyBalance = [(PASettings *)self transparencyBalance];
    v6 = [transparencyBalance valueForKey:addressCopy];
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

- (void)setTransparencyBalance:(double)balance forAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x277CBEB38];
    transparencyBalance = [(PASettings *)self transparencyBalance];
    v8 = [v6 dictionaryWithDictionary:transparencyBalance];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:balance];
    [v8 setValue:v9 forKey:addressCopy];

    [(PASettings *)self setTransparencyBalance:v8];
  }
}

- (double)transparencyToneForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyTone = [(PASettings *)self transparencyTone];
    v6 = [transparencyTone valueForKey:addressCopy];
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

- (void)setTransparencyTone:(double)tone forAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x277CBEB38];
    transparencyTone = [(PASettings *)self transparencyTone];
    v8 = [v6 dictionaryWithDictionary:transparencyTone];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:tone];
    [v8 setValue:v9 forKey:addressCopy];

    [(PASettings *)self setTransparencyTone:v8];
  }
}

- (BOOL)transparencyBeamformingForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyBeamforming = [(PASettings *)self transparencyBeamforming];
    v6 = [transparencyBeamforming valueForKey:addressCopy];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (double)transparencyNoiseSupressorForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyNoiseSupressor = [(PASettings *)self transparencyNoiseSupressor];
    v6 = [transparencyNoiseSupressor valueForKey:addressCopy];
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

- (void)setTransparencyNoiseSupressor:(double)supressor forAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x277CBEB38];
    transparencyNoiseSupressor = [(PASettings *)self transparencyNoiseSupressor];
    v8 = [v6 dictionaryWithDictionary:transparencyNoiseSupressor];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:supressor];
    [v8 setValue:v9 forKey:addressCopy];

    [(PASettings *)self setTransparencyNoiseSupressor:v8];
  }
}

- (BOOL)transparencyAutobeamformerForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyAutobeamformer = [(PASettings *)self transparencyAutobeamformer];
    v6 = [transparencyAutobeamformer valueForKey:addressCopy];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (double)transparencyOwnVoiceForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    transparencyOwnVoice = [(PASettings *)self transparencyOwnVoice];
    v6 = [transparencyOwnVoice valueForKey:addressCopy];
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

- (void)setTransparencyOwnVoice:(double)voice forAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v6 = MEMORY[0x277CBEB38];
    transparencyOwnVoice = [(PASettings *)self transparencyOwnVoice];
    v8 = [v6 dictionaryWithDictionary:transparencyOwnVoice];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:voice];
    [v8 setValue:v9 forKey:addressCopy];

    [(PASettings *)self setTransparencyOwnVoice:v8];
  }
}

- (void)updateConfiguration:(id *)configuration forRouteID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    [(PASettings *)self setShouldUpdateAccessory:0];
    v7 = [PAConfiguration configurationWithLeftMediaLoss:configuration->var4 rightMediaLoss:configuration->var5 leftSpeechLoss:configuration->var2 andRightSpeechLoss:configuration->var3];
    personalMediaConfigurationByRouteUID = [(PASettings *)self personalMediaConfigurationByRouteUID];
    v9 = [(PASettings *)self valueForRouteUID:dCopy fromCombinedValue:personalMediaConfigurationByRouteUID];
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
        *v33 = dCopy;
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
        *v33 = dCopy;
        *&v33[8] = 2112;
        *&v33[10] = v7;
        _os_log_impl(&dword_25E445000, v12, OS_LOG_TYPE_DEFAULT, "Updating config for %@ = %@", buf, 0x16u);
      }

      [(PASettings *)self setPersonalMediaConfiguration:v7 forRouteUID:dCopy];
    }

    v14 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:configuration->var0];
      *buf = 138412290;
      *v33 = v15;
      _os_log_impl(&dword_25E445000, v14, OS_LOG_TYPE_DEFAULT, "Speech enabled %@", buf, 0xCu);
    }

    v16 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:configuration->var1];
      *buf = 138412290;
      *v33 = v17;
      _os_log_impl(&dword_25E445000, v16, OS_LOG_TYPE_DEFAULT, "Media enabled %@", buf, 0xCu);
    }

    v18 = 2;
    if (!configuration->var0)
    {
      v18 = 0;
    }

    if (configuration->var1)
    {
      v19 = v18 | 4;
    }

    else
    {
      v19 = v18;
    }

    accommodationTypesByRouteUID = [(PASettings *)self accommodationTypesByRouteUID];

    v21 = [(PASettings *)self valueForRouteUID:dCopy fromCombinedValue:accommodationTypesByRouteUID];
    v30 = v10;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedIntegerValue = [v21 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v23 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      *buf = 67109634;
      *v33 = unsignedIntegerValue != v19;
      *&v33[4] = 2112;
      *&v33[6] = v24;
      *&v33[14] = 2112;
      *&v33[16] = v25;
      _os_log_impl(&dword_25E445000, v23, OS_LOG_TYPE_DEFAULT, "Setting types %d = %@ - %@", buf, 0x1Cu);
    }

    if (unsignedIntegerValue == v19)
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
      [(PASettings *)self setAccommodationTypes:v19 forRouteUID:dCopy];
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