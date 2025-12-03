@interface CNVCardWriting
+ (id)dataWithPeople:(id)people options:(id)options error:(id *)error;
+ (id)dataWithPerson:(id)person options:(id)options error:(id *)error;
+ (id)excludedFieldsForPerson:(id)person options:(id)options;
+ (id)scopeForPerson:(id)person options:(id)options;
+ (id)stringWithPeople:(id)people options:(id)options error:(id *)error;
+ (id)stringWithPerson:(id)person options:(id)options error:(id *)error;
+ (void)makevCardWithBuilder:(id)builder serializer:(id)serializer options:(id)options;
+ (void)serializePerson:(id)person withSerializer:(id)serializer options:(id)options;
@end

@implementation CNVCardWriting

+ (id)stringWithPeople:(id)people options:(id)options error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  optionsCopy = options;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = peopleCopy;
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    errorCopy = error;
    v13 = 0;
    v14 = *v29;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v27 = v16;
        v19 = [self stringWithPerson:v17 options:optionsCopy error:&v27];
        v13 = v27;

        if (!v19)
        {

          objc_autoreleasePoolPop(v18);
          v10 = 0;
          goto LABEL_11;
        }

        [v10 appendString:v19];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_11:
    error = errorCopy;
  }

  else
  {
    v13 = 0;
  }

  v20 = v10;
  v21 = v20;
  if (error && !v20)
  {
    v22 = v13;
    *error = v13;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)stringWithPerson:(id)person options:(id)options error:(id *)error
{
  personCopy = person;
  optionsCopy = options;
  string = [MEMORY[0x277CCAB68] string];
  if ([optionsCopy outputVersion] == 1)
  {
    availableEncodings = [optionsCopy availableEncodings];
    v11 = [CNVCardLineSerializationStrategy version21StrategyWithStringStorage:string encodings:availableEncodings];
  }

  else
  {
    v11 = [CNVCardLineSerializationStrategy version30StrategyWithStringStorage:string];
  }

  [self serializePerson:personCopy withSerializer:v11 options:optionsCopy];

  return string;
}

+ (id)dataWithPeople:(id)people options:(id)options error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  optionsCopy = options;
  v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = peopleCopy;
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    errorCopy = error;
    v13 = 0;
    v14 = *v29;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v27 = v16;
        v19 = [self dataWithPerson:v17 options:optionsCopy error:&v27];
        v13 = v27;

        if (!v19)
        {

          objc_autoreleasePoolPop(v18);
          v10 = 0;
          goto LABEL_11;
        }

        [v10 appendData:v19];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_11:
    error = errorCopy;
  }

  else
  {
    v13 = 0;
  }

  v20 = v10;
  v21 = v20;
  if (error && !v20)
  {
    v22 = v13;
    *error = v13;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)dataWithPerson:(id)person options:(id)options error:(id *)error
{
  personCopy = person;
  optionsCopy = options;
  data = [MEMORY[0x277CBEB28] data];
  if ([optionsCopy outputVersion] == 1)
  {
    availableEncodings = [optionsCopy availableEncodings];
    v11 = [CNVCardLineSerializationStrategy version21StrategyWithDataStorage:data encodings:availableEncodings];
  }

  else
  {
    v11 = [CNVCardLineSerializationStrategy version30StrategyWithDataStorage:data];
  }

  [self serializePerson:personCopy withSerializer:v11 options:optionsCopy];

  return data;
}

+ (id)excludedFieldsForPerson:(id)person options:(id)options
{
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  if (([optionsCopy includeNotes] & 1) == 0)
  {
    [array addObject:@"Note"];
  }

  if (([optionsCopy includePhotos] & 1) == 0)
  {
    [array addObject:@"com.apple.image.thumbnail"];
  }

  if (([optionsCopy includeWallpaper] & 1) == 0)
  {
    [array addObject:@"wallpaper"];
    [array addObject:@"watchWallpaperImageData"];
  }

  if (([optionsCopy includePosterIdentifiers] & 1) == 0)
  {
    [array addObject:@"posterIdentifier"];
  }

  if (([optionsCopy includeUserSettings] & 1) == 0)
  {
    [array addObject:@"GuardianWhitelisted"];
    [array addObject:@"ActivityAlert"];
    [array addObject:@"imageType"];
    [array addObject:@"imageHash"];
    [array addObject:@"memojiMetadata"];
    [array addObject:@"sharedPhotoDisplayPreference"];
  }

  if (([optionsCopy includePronouns] & 1) == 0)
  {
    [array addObject:@"AddressingGrammar"];
  }

  if (([optionsCopy includeMeCardOnlySharingProperties] & 1) == 0)
  {
    [array addObject:@"ABRelatedNames"];
  }

  if (([optionsCopy includePrivateFields] & 1) == 0 && +[CNVCardUserDefaults isPrivateVCardFieldsEnabled](CNVCardUserDefaults, "isPrivateVCardFieldsEnabled"))
  {
    excludedMeCardFields = [self excludedMeCardFields];
    [array addObjectsFromArray:excludedMeCardFields];
  }

  return array;
}

+ (id)scopeForPerson:(id)person options:(id)options
{
  optionsCopy = options;
  v7 = [self excludedFieldsForPerson:person options:optionsCopy];
  LODWORD(self) = [optionsCopy includePrivateBundleIdentifiers];

  v8 = [[CNVCardFilteredPersonScope alloc] initWithExcludedFields:v7 options:self];

  return v8;
}

+ (void)serializePerson:(id)person withSerializer:(id)serializer options:(id)options
{
  optionsCopy = options;
  serializerCopy = serializer;
  personCopy = person;
  v13 = [self scopeForPerson:personCopy options:optionsCopy];
  v11 = [CNVCardFilteredPerson filteredPersonWithPerson:personCopy scope:v13];

  v12 = [CNVCard30CardBuilder builderWithPerson:v11];
  [self makevCardWithBuilder:v12 serializer:serializerCopy options:optionsCopy];
}

+ (void)makevCardWithBuilder:(id)builder serializer:(id)serializer options:(id)options
{
  builderCopy = builder;
  optionsCopy = options;
  serializerCopy = serializer;
  [builderCopy addBeginningOfCard];
  [builderCopy addNameLines];
  [builderCopy addEmailAddresses];
  [builderCopy addPhoneNumbers];
  [builderCopy addAddressingGrammar];
  [builderCopy addPostalAddresses];
  [builderCopy addSocialProfiles];
  [builderCopy addActivityAlerts];
  [builderCopy addNote];
  [builderCopy addURLs];
  [builderCopy addCalendarURIs];
  [builderCopy addBirthday];
  [builderCopy addAlternateBirthday];
  [builderCopy addInstantMessagingInfo];
  [builderCopy addPhotoWithOptions:optionsCopy];
  [builderCopy addWallpaper];
  [builderCopy addWatchWallpaperImageData];
  [builderCopy addPosterIdentifier];
  [builderCopy addImageBackgroundColorsData];
  [builderCopy addSensitiveContentConfiguration];
  [builderCopy addOtherDates];
  [builderCopy addRelatedNames];
  [builderCopy addNameOrderMarker];
  [builderCopy addCompanyMarker];
  [builderCopy addSharedPhotoDisplayPreference];
  treatAsUnknownProperties = [optionsCopy treatAsUnknownProperties];

  LOBYTE(optionsCopy) = [treatAsUnknownProperties containsObject:@"CATEGORIES"];
  if ((optionsCopy & 1) == 0)
  {
    [builderCopy addCategories];
  }

  [builderCopy addCardDAVUID];
  [builderCopy addUID];
  [builderCopy addPhonemeData];
  [builderCopy addDowntimeWhitelist];
  [builderCopy addPreferredLikenessSource];
  [builderCopy addPreferredApplePersonaIdentifier];
  [builderCopy addUnknownProperties];
  [builderCopy addEndOfCard];
  [builderCopy buildWithSerializer:serializerCopy];
}

@end