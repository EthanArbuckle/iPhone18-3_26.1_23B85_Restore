@interface TVPAudioOption
- (BOOL)hasAudioDescriptions;
- (BOOL)hasMediaCharacteristic:(id)characteristic;
- (BOOL)isEqual:(id)equal;
- (NSArray)mediaCharacteristics;
- (NSString)languageCodeBCP47;
- (NSString)languageCodeFromLocale;
- (NSString)localizedDisplayString;
- (NSString)title;
- (TVPAudioOption)initWithOption:(id)option;
- (TVPAudioOption)initWithPropertyListRepresentation:(id)representation;
- (TVPAudioOption)initWithSavedTrackID:(int)d savedLocaleLanguageCode:(id)code;
- (id)description;
- (id)propertyListRepresentation;
- (int)trackID;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TVPAudioOption

- (TVPAudioOption)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = TVPAudioOption;
  v6 = [(TVPAudioOption *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_propertyListRepresentation, representation);
    v7->_trackID = 0;
  }

  return v7;
}

- (TVPAudioOption)initWithSavedTrackID:(int)d savedLocaleLanguageCode:(id)code
{
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = TVPAudioOption;
  v7 = [(TVPAudioOption *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackID = d;
    v9 = [codeCopy copy];
    savedLocaleLanguageCode = v8->_savedLocaleLanguageCode;
    v8->_savedLocaleLanguageCode = v9;
  }

  return v8;
}

- (TVPAudioOption)initWithOption:(id)option
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = TVPAudioOption;
  v6 = [(TVPAudioOption *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avMediaSelectionOption, option);
    v7->_trackID = 0;
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
  v4.super_class = TVPAudioOption;
  [(TVPAudioOption *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
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
  avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [avMediaSelectionOption hash];

  return v3;
}

- (NSString)languageCodeFromLocale
{
  p_languageCodeFromLocale = &self->_languageCodeFromLocale;
  languageCodeFromLocale = self->_languageCodeFromLocale;
  if (!languageCodeFromLocale)
  {
    objc_storeStrong(p_languageCodeFromLocale, self->_savedLocaleLanguageCode);
    languageCodeFromLocale = self->_languageCodeFromLocale;
    if (!languageCodeFromLocale)
    {
      avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
      locale = [avMediaSelectionOption locale];

      v7 = [locale objectForKey:*MEMORY[0x277CBE6C8]];
      v8 = [v7 copy];
      v9 = self->_languageCodeFromLocale;
      self->_languageCodeFromLocale = v8;

      languageCodeFromLocale = self->_languageCodeFromLocale;
    }
  }

  return languageCodeFromLocale;
}

- (NSString)languageCodeBCP47
{
  languageCodeBCP47 = self->_languageCodeBCP47;
  if (!languageCodeBCP47)
  {
    avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
    extendedLanguageTag = [avMediaSelectionOption extendedLanguageTag];
    v6 = [extendedLanguageTag copy];
    v7 = self->_languageCodeBCP47;
    self->_languageCodeBCP47 = v6;

    languageCodeBCP47 = self->_languageCodeBCP47;
  }

  return languageCodeBCP47;
}

- (NSString)localizedDisplayString
{
  localizedDisplayString = self->_localizedDisplayString;
  if (!localizedDisplayString)
  {
    avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
    tvp_localizedDisplayString = [avMediaSelectionOption tvp_localizedDisplayString];
    v6 = [tvp_localizedDisplayString copy];
    v7 = self->_localizedDisplayString;
    self->_localizedDisplayString = v6;

    localizedDisplayString = self->_localizedDisplayString;
  }

  return localizedDisplayString;
}

- (NSString)title
{
  title = self->_title;
  if (!title)
  {
    v4 = MEMORY[0x277CE6520];
    avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
    commonMetadata = [avMediaSelectionOption commonMetadata];
    v7 = [v4 metadataItemsFromArray:commonMetadata filteredByIdentifier:*MEMORY[0x277CE5EF0]];
    firstObject = [v7 firstObject];
    stringValue = [firstObject stringValue];
    v10 = [stringValue copy];
    v11 = self->_title;
    self->_title = v10;

    title = self->_title;
  }

  return title;
}

- (id)propertyListRepresentation
{
  propertyList = self->_propertyListRepresentation;
  if (!propertyList)
  {
    avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
    propertyList = [avMediaSelectionOption propertyList];
  }

  return propertyList;
}

- (BOOL)hasAudioDescriptions
{
  avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [avMediaSelectionOption hasMediaCharacteristic:*MEMORY[0x277CE5E08]];

  return v3;
}

- (NSArray)mediaCharacteristics
{
  avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
  mediaCharacteristics = [avMediaSelectionOption mediaCharacteristics];

  return mediaCharacteristics;
}

- (id)description
{
  avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [avMediaSelectionOption description];

  return v3;
}

- (int)trackID
{
  selfCopy = self;
  LODWORD(self) = self->_trackID;
  if (!self)
  {
    self = [(TVPAudioOption *)selfCopy avMediaSelectionOption];
    if (self)
    {
      selfCopy2 = self;
      avMediaSelectionOption = [(TVPAudioOption *)selfCopy avMediaSelectionOption];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        avMediaSelectionOption2 = [(TVPAudioOption *)selfCopy avMediaSelectionOption];
        trackID = [avMediaSelectionOption2 trackID];

        LODWORD(self) = trackID;
      }

      else
      {
        LODWORD(self) = 0;
      }
    }
  }

  return self;
}

- (BOOL)hasMediaCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  avMediaSelectionOption = [(TVPAudioOption *)self avMediaSelectionOption];
  v6 = [avMediaSelectionOption hasMediaCharacteristic:characteristicCopy];

  return v6;
}

@end