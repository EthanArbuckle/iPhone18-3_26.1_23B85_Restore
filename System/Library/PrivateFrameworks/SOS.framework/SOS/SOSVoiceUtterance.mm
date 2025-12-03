@interface SOSVoiceUtterance
+ (id)_localizedStringForKey:(id)key forLocalization:(id)localization tableName:(id)name;
+ (id)localizedStringForKey:(id)key forLocalization:(id)localization;
+ (id)silentUtterance;
- (NSString)localizedMessageInVoiceLanguage;
- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)string voiceLanguage:(id)language;
- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)string voiceLanguage:(id)language volume:(float)volume rateMultiplier:(float)multiplier;
- (SOSVoiceUtterance)initWithMessageKey:(id)key voiceLanguage:(id)language;
- (SOSVoiceUtterance)initWithMessageKey:(id)key voiceLanguage:(id)language volume:(float)volume rateMultiplier:(float)multiplier;
- (id)_voiceOverAttributes;
- (id)attributedSpeechString;
- (id)avSpeechUtterance;
- (id)description;
- (id)voice;
@end

@implementation SOSVoiceUtterance

- (SOSVoiceUtterance)initWithMessageKey:(id)key voiceLanguage:(id)language volume:(float)volume rateMultiplier:(float)multiplier
{
  keyCopy = key;
  languageCopy = language;
  v16.receiver = self;
  v16.super_class = SOSVoiceUtterance;
  v13 = [(SOSVoiceUtterance *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_messageKey, key);
    objc_storeStrong(&v14->_voiceLanguage, language);
    v14->_volume = volume;
    v14->_rateMultiplier = multiplier;
  }

  return v14;
}

- (SOSVoiceUtterance)initWithMessageKey:(id)key voiceLanguage:(id)language
{
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  return [(SOSVoiceUtterance *)self initWithMessageKey:key voiceLanguage:language volume:v4 rateMultiplier:v5];
}

- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)string voiceLanguage:(id)language volume:(float)volume rateMultiplier:(float)multiplier
{
  stringCopy = string;
  *&v12 = volume;
  *&v13 = multiplier;
  v14 = [(SOSVoiceUtterance *)self initWithMessageKey:&stru_2875C9CD8 voiceLanguage:language volume:v12 rateMultiplier:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_precomposedLocalizedMessageString, string);
  }

  return v15;
}

- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)string voiceLanguage:(id)language
{
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  return [(SOSVoiceUtterance *)self initWithLocalizedMessageString:string voiceLanguage:language volume:v4 rateMultiplier:v5];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  messageKey = [(SOSVoiceUtterance *)self messageKey];
  voiceLanguage = [(SOSVoiceUtterance *)self voiceLanguage];
  [(SOSVoiceUtterance *)self volume];
  v8 = v7;
  [(SOSVoiceUtterance *)self rateMultiplier];
  v10 = v9;
  precomposedLocalizedMessageString = [(SOSVoiceUtterance *)self precomposedLocalizedMessageString];
  v12 = [v3 stringWithFormat:@"<%@ %p messageKey=%@ voiceLanguage=%@ volume=%0.3f rateMultiplier=%0.3f precomposedLMS=%@>", v4, self, messageKey, voiceLanguage, *&v8, *&v10, precomposedLocalizedMessageString];

  return v12;
}

+ (id)silentUtterance
{
  v2 = [objc_alloc(objc_opt_class()) initWithLocalizedMessageString:&stru_2875C9CD8 voiceLanguage:&stru_2875C9CD8];

  return v2;
}

- (NSString)localizedMessageInVoiceLanguage
{
  precomposedLocalizedMessageString = [(SOSVoiceUtterance *)self precomposedLocalizedMessageString];
  v4 = precomposedLocalizedMessageString;
  if (precomposedLocalizedMessageString)
  {
    v5 = precomposedLocalizedMessageString;
  }

  else
  {
    messageKey = [(SOSVoiceUtterance *)self messageKey];
    if (messageKey)
    {
      v7 = objc_opt_class();
      voiceLanguage = [(SOSVoiceUtterance *)self voiceLanguage];
      v5 = [v7 localizedStringForKey:messageKey forLocalization:voiceLanguage];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)localizedStringForKey:(id)key forLocalization:(id)localization
{
  localizationCopy = localization;
  keyCopy = key;
  if ([keyCopy containsString:@"KAPPA"])
  {
    v8 = @"Localizable-kappa";
  }

  else
  {
    v8 = 0;
  }

  v9 = [self _localizedStringForKey:keyCopy forLocalization:localizationCopy tableName:v8];

  return v9;
}

+ (id)_localizedStringForKey:(id)key forLocalization:(id)localization tableName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  localizationCopy = localization;
  nameCopy = name;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [v10 _cfBundle];
  v11 = CFBundleCopyLocalizedStringForLocalization();

  v12 = sos_voice_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 138544130;
    v16 = keyCopy;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = localizationCopy;
    v21 = 2114;
    v22 = nameCopy;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_INFO, "stringToLocalize: %{public}@ localizedString: %{public}@ localization: %{public}@ table: %{public}@", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)attributedSpeechString
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  localizedMessageInVoiceLanguage = [(SOSVoiceUtterance *)self localizedMessageInVoiceLanguage];
  _voiceOverAttributes = [(SOSVoiceUtterance *)self _voiceOverAttributes];
  v6 = [v3 initWithString:localizedMessageInVoiceLanguage attributes:_voiceOverAttributes];

  v7 = sos_voice_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_INFO, "attributedSpeechString: %@, from %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_voiceOverAttributes
{
  voiceLanguage = [(SOSVoiceUtterance *)self voiceLanguage];
  [(SOSVoiceUtterance *)self rateMultiplier];
  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v7 = v6;
  if (voiceLanguage)
  {
    [v6 setObject:voiceLanguage forKey:@"AXSpeakTypingPayloadKeyLanguage"];
  }

  v8 = MEMORY[0x277CCABB0];
  [(SOSVoiceUtterance *)self volume];
  v9 = [v8 numberWithFloat:?];
  [v7 setObject:v9 forKey:@"AXSpeakTypingPayloadKeyVolume"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v5 * 0.5];
  [v7 setObject:v10 forKey:@"AXSpeakTypingPayloadKeyRate"];

  return v7;
}

- (id)avSpeechUtterance
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB84C0];
  localizedMessageInVoiceLanguage = [(SOSVoiceUtterance *)self localizedMessageInVoiceLanguage];
  v5 = [v3 speechUtteranceWithString:localizedMessageInVoiceLanguage];

  voice = [(SOSVoiceUtterance *)self voice];
  [v5 setVoice:voice];

  [(SOSVoiceUtterance *)self volume];
  [v5 setVolume:?];
  [(SOSVoiceUtterance *)self rateMultiplier];
  *&v8 = v7 * 0.5;
  [v5 setRate:v8];
  v9 = sos_voice_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "avSpeechUtterance: %@, from %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)voice
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB84A8];
  voiceLanguage = [(SOSVoiceUtterance *)self voiceLanguage];
  v5 = [v3 voiceWithLanguage:voiceLanguage];

  v6 = sos_voice_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    voiceLanguage2 = [(SOSVoiceUtterance *)self voiceLanguage];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = voiceLanguage2;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Voice retrieved: %{public}@ for voiceLanguage: %{public}@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end