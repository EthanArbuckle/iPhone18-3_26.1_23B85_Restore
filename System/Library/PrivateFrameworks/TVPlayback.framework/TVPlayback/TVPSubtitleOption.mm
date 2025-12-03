@interface TVPSubtitleOption
+ (id)autoSubtitleOption;
+ (id)offSubtitleOption;
+ (id)offSubtitleOptionWithAVMediaSelectionOption:(id)option;
- (BOOL)containsOnlyForcedSubtitles;
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (NSString)languageCodeBCP47;
- (NSString)languageCodeFromLocale;
- (NSString)localizedDisplayString;
- (TVPSubtitleOption)initWithAVMediaSelectionOption:(id)option;
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

+ (id)offSubtitleOptionWithAVMediaSelectionOption:(id)option
{
  optionCopy = option;
  v4 = [(TVPSubtitleOption *)[TVPOffSubtitleOption alloc] initWithAVMediaSelectionOption:optionCopy];

  return v4;
}

+ (id)autoSubtitleOption
{
  v2 = [(TVPSubtitleOption *)[TVPAutoSubtitleOption alloc] initWithAVMediaSelectionOption:0];

  return v2;
}

- (TVPSubtitleOption)initWithAVMediaSelectionOption:(id)option
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = TVPSubtitleOption;
  v6 = [(TVPSubtitleOption *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avMediaSelectionOption, option);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPSubtitleOption;
  [(TVPSubtitleOption *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    avMediaSelectionOption2 = [equalCopy avMediaSelectionOption];
    v7 = [avMediaSelectionOption isEqual:avMediaSelectionOption2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
  v3 = [avMediaSelectionOption hash];

  return v3;
}

- (NSString)languageCodeFromLocale
{
  if (!self->_languageCodeFromLocale)
  {
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    locale = [avMediaSelectionOption locale];
    tvp_subtitleLanguageCode = [locale tvp_subtitleLanguageCode];
    languageCodeFromLocale = self->_languageCodeFromLocale;
    self->_languageCodeFromLocale = tvp_subtitleLanguageCode;

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
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    extendedLanguageTag = [avMediaSelectionOption extendedLanguageTag];
    v6 = [extendedLanguageTag copy];
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
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    commonMetadata = [avMediaSelectionOption commonMetadata];
    v7 = [v4 metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x277CE5F28] keySpace:*MEMORY[0x277CE5F98]];

    firstObject = [v7 firstObject];
    stringValue = [firstObject stringValue];
    v10 = [stringValue copy];
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
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    tvp_localizedDisplayString = [avMediaSelectionOption tvp_localizedDisplayString];
    v6 = [tvp_localizedDisplayString copy];
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
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    v6 = [v4 numberWithBool:{objc_msgSend(avMediaSelectionOption, "hasMediaCharacteristic:", *MEMORY[0x277CE5DF8])}];
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
    avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
    mediaType = [avMediaSelectionOption mediaType];
    v6 = [mediaType isEqualToString:*MEMORY[0x277CE5E58]];

    if (v6)
    {
      v7 = 2;
    }

    else if ([avMediaSelectionOption hasMediaCharacteristic:*MEMORY[0x277CE5E00]] && (objc_msgSend(avMediaSelectionOption, "hasMediaCharacteristic:", *MEMORY[0x277CE5E38]) & 1) != 0)
    {
      v7 = 1;
    }

    else if ([avMediaSelectionOption hasMediaCharacteristic:*MEMORY[0x277CE5E10]])
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
  avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
  v3 = [avMediaSelectionOption description];

  return v3;
}

@end