@interface TVPSubtitleOption
+ (id)autoSubtitleOption;
+ (id)offSubtitleOption;
+ (id)offSubtitleOptionWithAVMediaSelectionOption:(id)a3;
- (BOOL)containsOnlyForcedSubtitles;
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (NSString)languageCodeBCP47;
- (NSString)languageCodeFromLocale;
- (NSString)localizedDisplayString;
- (TVPSubtitleOption)initWithAVMediaSelectionOption:(id)a3;
- (id)description;
- (int64_t)subtitleType;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TVPSubtitleOption

+ (id)offSubtitleOption
{
  v2 = [(TVPSubtitleOption *)[TVPOffSubtitleOption alloc] initWithAVMediaSelectionOption:0];

  return v2;
}

+ (id)offSubtitleOptionWithAVMediaSelectionOption:(id)a3
{
  v3 = a3;
  v4 = [(TVPSubtitleOption *)[TVPOffSubtitleOption alloc] initWithAVMediaSelectionOption:v3];

  return v4;
}

+ (id)autoSubtitleOption
{
  v2 = [(TVPSubtitleOption *)[TVPAutoSubtitleOption alloc] initWithAVMediaSelectionOption:0];

  return v2;
}

- (TVPSubtitleOption)initWithAVMediaSelectionOption:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TVPSubtitleOption;
  v6 = [(TVPSubtitleOption *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avMediaSelectionOption, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPSubtitleOption;
  [(TVPSubtitleOption *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v6 = [v4 avMediaSelectionOption];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(TVPSubtitleOption *)self avMediaSelectionOption];
  v3 = [v2 hash];

  return v3;
}

- (NSString)languageCodeFromLocale
{
  if (!self->_languageCodeFromLocale)
  {
    v3 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v4 = [v3 locale];
    v5 = [v4 tvp_subtitleLanguageCode];
    languageCodeFromLocale = self->_languageCodeFromLocale;
    self->_languageCodeFromLocale = v5;

    if (!self->_languageCodeFromLocale && [(TVPSubtitleOption *)self subtitleType]== 2)
    {
      v7 = self->_languageCodeFromLocale;
      self->_languageCodeFromLocale = @"en";
    }
  }

  v8 = self->_languageCodeFromLocale;

  return v8;
}

- (NSString)languageCodeBCP47
{
  languageCodeBCP47 = self->_languageCodeBCP47;
  if (!languageCodeBCP47)
  {
    v4 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v5 = [v4 extendedLanguageTag];
    v6 = [v5 copy];
    v7 = self->_languageCodeBCP47;
    self->_languageCodeBCP47 = v6;

    languageCodeBCP47 = self->_languageCodeBCP47;
  }

  return languageCodeBCP47;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = MEMORY[0x277CE6520];
    v5 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v6 = [v5 commonMetadata];
    v7 = [v4 metadataItemsFromArray:v6 withKey:*MEMORY[0x277CE5F28] keySpace:*MEMORY[0x277CE5F98]];

    v8 = [v7 firstObject];
    v9 = [v8 stringValue];
    v10 = [v9 copy];
    v11 = self->_identifier;
    self->_identifier = v10;

    if (!self->_identifier)
    {
      self->_identifier = &stru_287E49338;
    }

    identifier = self->_identifier;
  }

  return identifier;
}

- (NSString)localizedDisplayString
{
  localizedDisplayString = self->_localizedDisplayString;
  if (!localizedDisplayString)
  {
    v4 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v5 = [v4 tvp_localizedDisplayString];
    v6 = [v5 copy];
    v7 = self->_localizedDisplayString;
    self->_localizedDisplayString = v6;

    localizedDisplayString = self->_localizedDisplayString;
  }

  return localizedDisplayString;
}

- (BOOL)containsOnlyForcedSubtitles
{
  cachedContainsOnlyForcedSubtitles = self->_cachedContainsOnlyForcedSubtitles;
  if (!cachedContainsOnlyForcedSubtitles)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "hasMediaCharacteristic:", *MEMORY[0x277CE5DF8])}];
    v7 = self->_cachedContainsOnlyForcedSubtitles;
    self->_cachedContainsOnlyForcedSubtitles = v6;

    cachedContainsOnlyForcedSubtitles = self->_cachedContainsOnlyForcedSubtitles;
  }

  return [(NSNumber *)cachedContainsOnlyForcedSubtitles BOOLValue];
}

- (int64_t)subtitleType
{
  cachedSubtitleType = self->_cachedSubtitleType;
  if (!cachedSubtitleType)
  {
    v4 = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v5 = [v4 mediaType];
    v6 = [v5 isEqualToString:*MEMORY[0x277CE5E58]];

    if (v6)
    {
      v7 = 2;
    }

    else if ([v4 hasMediaCharacteristic:*MEMORY[0x277CE5E00]] && (objc_msgSend(v4, "hasMediaCharacteristic:", *MEMORY[0x277CE5E38]) & 1) != 0)
    {
      v7 = 1;
    }

    else if ([v4 hasMediaCharacteristic:*MEMORY[0x277CE5E10]])
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    v9 = self->_cachedSubtitleType;
    self->_cachedSubtitleType = v8;

    cachedSubtitleType = self->_cachedSubtitleType;
  }

  return [(NSNumber *)cachedSubtitleType integerValue];
}

- (id)description
{
  v2 = [(TVPSubtitleOption *)self avMediaSelectionOption];
  v3 = [v2 description];

  return v3;
}

@end