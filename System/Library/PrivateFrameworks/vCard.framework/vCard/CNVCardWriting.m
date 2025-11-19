@interface CNVCardWriting
+ (id)dataWithPeople:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)dataWithPerson:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)excludedFieldsForPerson:(id)a3 options:(id)a4;
+ (id)scopeForPerson:(id)a3 options:(id)a4;
+ (id)stringWithPeople:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)stringWithPerson:(id)a3 options:(id)a4 error:(id *)a5;
+ (void)makevCardWithBuilder:(id)a3 serializer:(id)a4 options:(id)a5;
+ (void)serializePerson:(id)a3 withSerializer:(id)a4 options:(id)a5;
@end

@implementation CNVCardWriting

+ (id)stringWithPeople:(id)a3 options:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v25 = a5;
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
        v19 = [a1 stringWithPerson:v17 options:v9 error:&v27];
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
    a5 = v25;
  }

  else
  {
    v13 = 0;
  }

  v20 = v10;
  v21 = v20;
  if (a5 && !v20)
  {
    v22 = v13;
    *a5 = v13;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)stringWithPerson:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAB68] string];
  if ([v8 outputVersion] == 1)
  {
    v10 = [v8 availableEncodings];
    v11 = [CNVCardLineSerializationStrategy version21StrategyWithStringStorage:v9 encodings:v10];
  }

  else
  {
    v11 = [CNVCardLineSerializationStrategy version30StrategyWithStringStorage:v9];
  }

  [a1 serializePerson:v7 withSerializer:v11 options:v8];

  return v9;
}

+ (id)dataWithPeople:(id)a3 options:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v25 = a5;
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
        v19 = [a1 dataWithPerson:v17 options:v9 error:&v27];
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
    a5 = v25;
  }

  else
  {
    v13 = 0;
  }

  v20 = v10;
  v21 = v20;
  if (a5 && !v20)
  {
    v22 = v13;
    *a5 = v13;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)dataWithPerson:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB28] data];
  if ([v8 outputVersion] == 1)
  {
    v10 = [v8 availableEncodings];
    v11 = [CNVCardLineSerializationStrategy version21StrategyWithDataStorage:v9 encodings:v10];
  }

  else
  {
    v11 = [CNVCardLineSerializationStrategy version30StrategyWithDataStorage:v9];
  }

  [a1 serializePerson:v7 withSerializer:v11 options:v8];

  return v9;
}

+ (id)excludedFieldsForPerson:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  if (([v5 includeNotes] & 1) == 0)
  {
    [v6 addObject:@"Note"];
  }

  if (([v5 includePhotos] & 1) == 0)
  {
    [v6 addObject:@"com.apple.image.thumbnail"];
  }

  if (([v5 includeWallpaper] & 1) == 0)
  {
    [v6 addObject:@"wallpaper"];
    [v6 addObject:@"watchWallpaperImageData"];
  }

  if (([v5 includePosterIdentifiers] & 1) == 0)
  {
    [v6 addObject:@"posterIdentifier"];
  }

  if (([v5 includeUserSettings] & 1) == 0)
  {
    [v6 addObject:@"GuardianWhitelisted"];
    [v6 addObject:@"ActivityAlert"];
    [v6 addObject:@"imageType"];
    [v6 addObject:@"imageHash"];
    [v6 addObject:@"memojiMetadata"];
    [v6 addObject:@"sharedPhotoDisplayPreference"];
  }

  if (([v5 includePronouns] & 1) == 0)
  {
    [v6 addObject:@"AddressingGrammar"];
  }

  if (([v5 includeMeCardOnlySharingProperties] & 1) == 0)
  {
    [v6 addObject:@"ABRelatedNames"];
  }

  if (([v5 includePrivateFields] & 1) == 0 && +[CNVCardUserDefaults isPrivateVCardFieldsEnabled](CNVCardUserDefaults, "isPrivateVCardFieldsEnabled"))
  {
    v7 = [a1 excludedMeCardFields];
    [v6 addObjectsFromArray:v7];
  }

  return v6;
}

+ (id)scopeForPerson:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 excludedFieldsForPerson:a3 options:v6];
  LODWORD(a1) = [v6 includePrivateBundleIdentifiers];

  v8 = [[CNVCardFilteredPersonScope alloc] initWithExcludedFields:v7 options:a1];

  return v8;
}

+ (void)serializePerson:(id)a3 withSerializer:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [a1 scopeForPerson:v10 options:v8];
  v11 = [CNVCardFilteredPerson filteredPersonWithPerson:v10 scope:v13];

  v12 = [CNVCard30CardBuilder builderWithPerson:v11];
  [a1 makevCardWithBuilder:v12 serializer:v9 options:v8];
}

+ (void)makevCardWithBuilder:(id)a3 serializer:(id)a4 options:(id)a5
{
  v10 = a3;
  v7 = a5;
  v8 = a4;
  [v10 addBeginningOfCard];
  [v10 addNameLines];
  [v10 addEmailAddresses];
  [v10 addPhoneNumbers];
  [v10 addAddressingGrammar];
  [v10 addPostalAddresses];
  [v10 addSocialProfiles];
  [v10 addActivityAlerts];
  [v10 addNote];
  [v10 addURLs];
  [v10 addCalendarURIs];
  [v10 addBirthday];
  [v10 addAlternateBirthday];
  [v10 addInstantMessagingInfo];
  [v10 addPhotoWithOptions:v7];
  [v10 addWallpaper];
  [v10 addWatchWallpaperImageData];
  [v10 addPosterIdentifier];
  [v10 addImageBackgroundColorsData];
  [v10 addSensitiveContentConfiguration];
  [v10 addOtherDates];
  [v10 addRelatedNames];
  [v10 addNameOrderMarker];
  [v10 addCompanyMarker];
  [v10 addSharedPhotoDisplayPreference];
  v9 = [v7 treatAsUnknownProperties];

  LOBYTE(v7) = [v9 containsObject:@"CATEGORIES"];
  if ((v7 & 1) == 0)
  {
    [v10 addCategories];
  }

  [v10 addCardDAVUID];
  [v10 addUID];
  [v10 addPhonemeData];
  [v10 addDowntimeWhitelist];
  [v10 addPreferredLikenessSource];
  [v10 addPreferredApplePersonaIdentifier];
  [v10 addUnknownProperties];
  [v10 addEndOfCard];
  [v10 buildWithSerializer:v8];
}

@end