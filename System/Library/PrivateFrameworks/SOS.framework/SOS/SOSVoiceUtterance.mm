@interface SOSVoiceUtterance
+ (id)_localizedStringForKey:(id)a3 forLocalization:(id)a4 tableName:(id)a5;
+ (id)localizedStringForKey:(id)a3 forLocalization:(id)a4;
+ (id)silentUtterance;
- (NSString)localizedMessageInVoiceLanguage;
- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)a3 voiceLanguage:(id)a4;
- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)a3 voiceLanguage:(id)a4 volume:(float)a5 rateMultiplier:(float)a6;
- (SOSVoiceUtterance)initWithMessageKey:(id)a3 voiceLanguage:(id)a4;
- (SOSVoiceUtterance)initWithMessageKey:(id)a3 voiceLanguage:(id)a4 volume:(float)a5 rateMultiplier:(float)a6;
- (id)_voiceOverAttributes;
- (id)attributedSpeechString;
- (id)avSpeechUtterance;
- (id)description;
- (id)voice;
@end

@implementation SOSVoiceUtterance

- (SOSVoiceUtterance)initWithMessageKey:(id)a3 voiceLanguage:(id)a4 volume:(float)a5 rateMultiplier:(float)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SOSVoiceUtterance;
  v13 = [(SOSVoiceUtterance *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_messageKey, a3);
    objc_storeStrong(&v14->_voiceLanguage, a4);
    v14->_volume = a5;
    v14->_rateMultiplier = a6;
  }

  return v14;
}

- (SOSVoiceUtterance)initWithMessageKey:(id)a3 voiceLanguage:(id)a4
{
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  return [(SOSVoiceUtterance *)self initWithMessageKey:a3 voiceLanguage:a4 volume:v4 rateMultiplier:v5];
}

- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)a3 voiceLanguage:(id)a4 volume:(float)a5 rateMultiplier:(float)a6
{
  v11 = a3;
  *&v12 = a5;
  *&v13 = a6;
  v14 = [(SOSVoiceUtterance *)self initWithMessageKey:&stru_2875C9CD8 voiceLanguage:a4 volume:v12 rateMultiplier:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_precomposedLocalizedMessageString, a3);
  }

  return v15;
}

- (SOSVoiceUtterance)initWithLocalizedMessageString:(id)a3 voiceLanguage:(id)a4
{
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  return [(SOSVoiceUtterance *)self initWithLocalizedMessageString:a3 voiceLanguage:a4 volume:v4 rateMultiplier:v5];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SOSVoiceUtterance *)self messageKey];
  v6 = [(SOSVoiceUtterance *)self voiceLanguage];
  [(SOSVoiceUtterance *)self volume];
  v8 = v7;
  [(SOSVoiceUtterance *)self rateMultiplier];
  v10 = v9;
  v11 = [(SOSVoiceUtterance *)self precomposedLocalizedMessageString];
  v12 = [v3 stringWithFormat:@"<%@ %p messageKey=%@ voiceLanguage=%@ volume=%0.3f rateMultiplier=%0.3f precomposedLMS=%@>", v4, self, v5, v6, *&v8, *&v10, v11];

  return v12;
}

+ (id)silentUtterance
{
  v2 = [objc_alloc(objc_opt_class()) initWithLocalizedMessageString:&stru_2875C9CD8 voiceLanguage:&stru_2875C9CD8];

  return v2;
}

- (NSString)localizedMessageInVoiceLanguage
{
  v3 = [(SOSVoiceUtterance *)self precomposedLocalizedMessageString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SOSVoiceUtterance *)self messageKey];
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [(SOSVoiceUtterance *)self voiceLanguage];
      v5 = [v7 localizedStringForKey:v6 forLocalization:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)localizedStringForKey:(id)a3 forLocalization:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 containsString:@"KAPPA"])
  {
    v8 = @"Localizable-kappa";
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 _localizedStringForKey:v7 forLocalization:v6 tableName:v8];

  return v9;
}

+ (id)_localizedStringForKey:(id)a3 forLocalization:(id)a4 tableName:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [v10 _cfBundle];
  v11 = CFBundleCopyLocalizedStringForLocalization();

  v12 = sos_voice_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 138544130;
    v16 = v7;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_INFO, "stringToLocalize: %{public}@ localizedString: %{public}@ localization: %{public}@ table: %{public}@", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)attributedSpeechString
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [(SOSVoiceUtterance *)self localizedMessageInVoiceLanguage];
  v5 = [(SOSVoiceUtterance *)self _voiceOverAttributes];
  v6 = [v3 initWithString:v4 attributes:v5];

  v7 = sos_voice_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_INFO, "attributedSpeechString: %@, from %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_voiceOverAttributes
{
  v3 = [(SOSVoiceUtterance *)self voiceLanguage];
  [(SOSVoiceUtterance *)self rateMultiplier];
  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v7 = v6;
  if (v3)
  {
    [v6 setObject:v3 forKey:@"AXSpeakTypingPayloadKeyLanguage"];
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
  v4 = [(SOSVoiceUtterance *)self localizedMessageInVoiceLanguage];
  v5 = [v3 speechUtteranceWithString:v4];

  v6 = [(SOSVoiceUtterance *)self voice];
  [v5 setVoice:v6];

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
    v15 = self;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "avSpeechUtterance: %@, from %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)voice
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB84A8];
  v4 = [(SOSVoiceUtterance *)self voiceLanguage];
  v5 = [v3 voiceWithLanguage:v4];

  v6 = sos_voice_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SOSVoiceUtterance *)self voiceLanguage];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Voice retrieved: %{public}@ for voiceLanguage: %{public}@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end