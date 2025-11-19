@interface TVPAudioOption
- (BOOL)hasAudioDescriptions;
- (BOOL)hasMediaCharacteristic:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)mediaCharacteristics;
- (NSString)languageCodeBCP47;
- (NSString)languageCodeFromLocale;
- (NSString)localizedDisplayString;
- (NSString)title;
- (TVPAudioOption)initWithOption:(id)a3;
- (TVPAudioOption)initWithPropertyListRepresentation:(id)a3;
- (TVPAudioOption)initWithSavedTrackID:(int)a3 savedLocaleLanguageCode:(id)a4;
- (id)description;
- (id)propertyListRepresentation;
- (int)trackID;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TVPAudioOption

- (TVPAudioOption)initWithPropertyListRepresentation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVPAudioOption;
  v6 = [(TVPAudioOption *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_propertyListRepresentation, a3);
    v7->_trackID = 0;
  }

  return v7;
}

- (TVPAudioOption)initWithSavedTrackID:(int)a3 savedLocaleLanguageCode:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TVPAudioOption;
  v7 = [(TVPAudioOption *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackID = a3;
    v9 = [v6 copy];
    savedLocaleLanguageCode = v8->_savedLocaleLanguageCode;
    v8->_savedLocaleLanguageCode = v9;
  }

  return v8;
}

- (TVPAudioOption)initWithOption:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TVPAudioOption;
  v6 = [(TVPAudioOption *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avMediaSelectionOption, a3);
    v7->_trackID = 0;
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
  v4.super_class = TVPAudioOption;
  [(TVPAudioOption *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TVPAudioOption *)self avMediaSelectionOption];
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
  v2 = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [v2 hash];

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
      v5 = [(TVPAudioOption *)self avMediaSelectionOption];
      v6 = [v5 locale];

      v7 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
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
    v4 = [(TVPAudioOption *)self avMediaSelectionOption];
    v5 = [v4 extendedLanguageTag];
    v6 = [v5 copy];
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
    v4 = [(TVPAudioOption *)self avMediaSelectionOption];
    v5 = [v4 tvp_localizedDisplayString];
    v6 = [v5 copy];
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
    v5 = [(TVPAudioOption *)self avMediaSelectionOption];
    v6 = [v5 commonMetadata];
    v7 = [v4 metadataItemsFromArray:v6 filteredByIdentifier:*MEMORY[0x277CE5EF0]];
    v8 = [v7 firstObject];
    v9 = [v8 stringValue];
    v10 = [v9 copy];
    v11 = self->_title;
    self->_title = v10;

    title = self->_title;
  }

  return title;
}

- (id)propertyListRepresentation
{
  v3 = self->_propertyListRepresentation;
  if (!v3)
  {
    v4 = [(TVPAudioOption *)self avMediaSelectionOption];
    v3 = [v4 propertyList];
  }

  return v3;
}

- (BOOL)hasAudioDescriptions
{
  v2 = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [v2 hasMediaCharacteristic:*MEMORY[0x277CE5E08]];

  return v3;
}

- (NSArray)mediaCharacteristics
{
  v2 = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [v2 mediaCharacteristics];

  return v3;
}

- (id)description
{
  v2 = [(TVPAudioOption *)self avMediaSelectionOption];
  v3 = [v2 description];

  return v3;
}

- (int)trackID
{
  v2 = self;
  LODWORD(self) = self->_trackID;
  if (!self)
  {
    self = [(TVPAudioOption *)v2 avMediaSelectionOption];
    if (self)
    {
      v3 = self;
      v4 = [(TVPAudioOption *)v2 avMediaSelectionOption];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = [(TVPAudioOption *)v2 avMediaSelectionOption];
        v7 = [v6 trackID];

        LODWORD(self) = v7;
      }

      else
      {
        LODWORD(self) = 0;
      }
    }
  }

  return self;
}

- (BOOL)hasMediaCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(TVPAudioOption *)self avMediaSelectionOption];
  v6 = [v5 hasMediaCharacteristic:v4];

  return v6;
}

@end