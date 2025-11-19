@interface CNVCard30CardBuilder
+ (id)builderWithPerson:(id)a3;
+ (unint64_t)estimatedBytesAvailableForPhotoWithOptions:(id)a3 serializer:(id)a4;
- (BOOL)addPhotoReferences;
- (CNVCard30CardBuilder)initWithPerson:(id)a3;
- (void)_addAttributesForCropRects:(id)a3 imageHash:(id)a4 toLine:(id)a5;
- (void)addActivityAlerts;
- (void)addAddressingGrammar;
- (void)addAlternateBirthday;
- (void)addBeginningOfCard;
- (void)addBirthday;
- (void)addCalendarURIs;
- (void)addCardDAVUID;
- (void)addCategories;
- (void)addCompanyMarker;
- (void)addDowntimeWhitelist;
- (void)addEmailAddresses;
- (void)addFullName;
- (void)addImageBackgroundColorsData;
- (void)addImageHash;
- (void)addImageType;
- (void)addInstantMessagingHandles:(id)a3;
- (void)addInstantMessagingInfo;
- (void)addLegacyInstantMessagingHandles:(id)a3 forService:(id)a4 vCardProperty:(id)a5;
- (void)addLineWithName:(id)a3 value:(id)a4;
- (void)addNameComponents;
- (void)addNameLines;
- (void)addNameOrderMarker;
- (void)addNote;
- (void)addOrganization;
- (void)addOtherDates;
- (void)addPhoneNumbers;
- (void)addPhonemeData;
- (void)addPhotoWithOptions:(id)a3;
- (void)addPostalAddresses;
- (void)addPosterIdentifier;
- (void)addPreferredApplePersonaIdentifier;
- (void)addPreferredLikenessSource;
- (void)addPropertyLinesForValues:(id)a3 generator:(id)a4;
- (void)addRelatedNames;
- (void)addSensitiveContentConfiguration;
- (void)addSharedPhotoDisplayPreference;
- (void)addSocialProfiles;
- (void)addUID;
- (void)addURLs;
- (void)addUnknownProperties;
- (void)addWallpaper;
- (void)addWatchWallpaperImageData;
- (void)buildWithSerializer:(id)a3;
- (void)preparePhotoLineWithOptions:(id)a3;
- (void)removeUnknownPropertiesWithTag:(id)a3;
@end

@implementation CNVCard30CardBuilder

+ (id)builderWithPerson:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPerson:v4];

  return v5;
}

- (CNVCard30CardBuilder)initWithPerson:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CNVCard30CardBuilder;
  v6 = [(CNVCard30CardBuilder *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lines = v7->_lines;
    v7->_lines = v8;

    v7->_groupCount = 0;
    v10 = [v5 unknownProperties];
    v11 = [v10 mutableCopy];
    unknownProperties = v7->_unknownProperties;
    v7->_unknownProperties = v11;

    v7->_countOfLinesBeforePhoto = -1;
    v13 = +[CNVCardLineFactory version30LineFactory];
    lineFactory = v7->_lineFactory;
    v7->_lineFactory = v13;

    v15 = v7;
  }

  return v7;
}

- (void)buildWithSerializer:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  lines = self->_lines;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CNVCard30CardBuilder_buildWithSerializer___block_invoke;
  v9[3] = &unk_27A710EC8;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(NSMutableArray *)lines enumerateObjectsUsingBlock:v9];
  retrofitPhoto = self->_retrofitPhoto;
  if (retrofitPhoto)
  {
    retrofitPhoto[2](retrofitPhoto, v6, v13[5]);
    v8 = self->_retrofitPhoto;
    self->_retrofitPhoto = 0;
  }

  _Block_object_dispose(&v12, 8);
}

void __44__CNVCard30CardBuilder_buildWithSerializer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if ([*(a1 + 32) countOfLinesBeforePhoto] == a3)
  {
    v5 = [*(a1 + 40) insertionMarker];
    v6 = [v5 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  [v9 serializeWithStrategy:*(a1 + 40)];
}

- (void)removeUnknownPropertiesWithTag:(id)a3
{
  unknownProperties = self->_unknownProperties;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyName != %@", a3];
  [(NSMutableArray *)unknownProperties filterUsingPredicate:v4];
}

- (void)addLineWithName:(id)a3 value:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    lines = self->_lines;
    v8 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:v9 value:v6];
    [(NSMutableArray *)lines _cn_addNonNilObject:v8];
  }
}

- (void)addBeginningOfCard
{
  [(CNVCard30CardBuilder *)self addLineWithName:@"BEGIN" value:@"VCARD"];
  lines = self->_lines;
  v4 = [(CNVCardLineFactory *)self->_lineFactory versionPlaceholderLine];
  [(NSMutableArray *)lines _cn_addNonNilObject:v4];

  if (addBeginningOfCard_onceToken != -1)
  {
    [CNVCard30CardBuilder addBeginningOfCard];
  }

  v5 = addBeginningOfCard_prodID;

  [(CNVCard30CardBuilder *)self addLineWithName:@"PRODID" value:v5];
}

void __42__CNVCard30CardBuilder_addBeginningOfCard__block_invoke()
{
  v2 = +[CNVCardProdIdString stringForCurrentBuild];
  v0 = [v2 copy];
  v1 = addBeginningOfCard_prodID;
  addBeginningOfCard_prodID = v0;
}

- (void)addNameLines
{
  [(CNVCard30CardBuilder *)self addNameComponents];
  [(CNVCard30CardBuilder *)self addFullName];
  v3 = [(CNVCardPerson *)self->_person nickname];
  [(CNVCard30CardBuilder *)self addLineWithName:@"NICKNAME" value:v3];

  v4 = [(CNVCardPerson *)self->_person maidenName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-MAIDENNAME" value:v4];

  v5 = [(CNVCardPerson *)self->_person phoneticFirstName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-FIRST-NAME" value:v5];

  v6 = [(CNVCardPerson *)self->_person phoneticMiddleName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-MIDDLE-NAME" value:v6];

  v7 = [(CNVCardPerson *)self->_person phoneticLastName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-LAST-NAME" value:v7];

  v8 = [(CNVCardPerson *)self->_person pronunciationFirstName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PRONUNCIATION-FIRST-NAME" value:v8];

  v9 = [(CNVCardPerson *)self->_person pronunciationLastName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PRONUNCIATION-LAST-NAME" value:v9];

  [(CNVCard30CardBuilder *)self addOrganization];
  v10 = [(CNVCardPerson *)self->_person phoneticOrganization];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-ORG" value:v10];

  v11 = [(CNVCardPerson *)self->_person jobTitle];
  [(CNVCard30CardBuilder *)self addLineWithName:@"TITLE" value:v11];
}

- (void)addNameComponents
{
  v10 = [MEMORY[0x277CBEB18] array];
  v3 = [(CNVCardPerson *)self->_person lastName];
  [v10 _cn_addObject:v3 orPlaceholder:&stru_288651EC0];

  v4 = [(CNVCardPerson *)self->_person firstName];
  [v10 _cn_addObject:v4 orPlaceholder:&stru_288651EC0];

  v5 = [(CNVCardPerson *)self->_person middleName];
  [v10 _cn_addObject:v5 orPlaceholder:&stru_288651EC0];

  v6 = [(CNVCardPerson *)self->_person title];
  [v10 _cn_addObject:v6 orPlaceholder:&stru_288651EC0];

  v7 = [(CNVCardPerson *)self->_person suffix];
  [v10 _cn_addObject:v7 orPlaceholder:&stru_288651EC0];

  lines = self->_lines;
  v9 = [(CNVCardLineFactory *)self->_lineFactory arrayLineWithName:@"N" value:v10];
  [(NSMutableArray *)lines _cn_addNonNilObject:v9];
}

- (void)addFullName
{
  v3 = [CNVCardNameSerialization compositeNameWithComponents:self->_person];
  [(CNVCard30CardBuilder *)self addLineWithName:@"FN" value:v3];
}

- (void)addAddressingGrammar
{
  v4 = [CNVCardLineGenerator generatorWithName:@"X-ADDRESSING-GRAMMAR" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person addressingGrammars];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addOrganization
{
  v7 = [MEMORY[0x277CBEB18] array];
  v3 = [(CNVCardPerson *)self->_person organization];
  [v7 _cn_addObject:v3 orPlaceholder:&stru_288651EC0];

  v4 = [(CNVCardPerson *)self->_person department];
  [v7 _cn_addObject:v4 orPlaceholder:&stru_288651EC0];

  if (([v7 _cn_all:*MEMORY[0x277CFBD30]] & 1) == 0)
  {
    lines = self->_lines;
    v6 = [(CNVCardLineFactory *)self->_lineFactory arrayLineWithName:@"ORG" value:v7];
    [(NSMutableArray *)lines _cn_addNonNilObject:v6];
  }
}

- (void)addEmailAddresses
{
  v4 = [CNVCardLineGenerator emailGeneratorWithName:@"EMAIL" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person emailAddresses];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addPhoneNumbers
{
  v4 = [CNVCardLineGenerator phoneGeneratorWithName:@"TEL" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person phoneNumbers];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addPostalAddresses
{
  v4 = [CNVCardLineGenerator streetAddressGeneratorWithName:@"ADR" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person postalAddresses];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addSocialProfiles
{
  v4 = [CNVCardLineGenerator socialProfileGeneratorWithName:@"X-SOCIALPROFILE" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person socialProfiles];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addActivityAlerts
{
  v3 = [CNVCardLineGenerator activityAlertGeneratorWithName:@"X-ACTIVITY-ALERT" groupingCount:&self->_groupCount];
  v4 = [(CNVCardPerson *)self->_person activityAlerts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__CNVCard30CardBuilder_addActivityAlerts__block_invoke;
  v6[3] = &unk_27A710EF0;
  v7 = v3;
  v8 = self;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __41__CNVCard30CardBuilder_addActivityAlerts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v13 = a2;
  v14[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 lineWithValue:v9 label:0];

  v11 = [*(a1 + 40) lines];

  [v11 _cn_addNonNilObject:v10];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)addNote
{
  v3 = [(CNVCardPerson *)self->_person note];
  [(CNVCard30CardBuilder *)self addLineWithName:@"NOTE" value:v3];
}

- (void)addURLs
{
  v4 = [CNVCardLineGenerator generatorWithName:@"URL" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person urls];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addCalendarURIs
{
  v4 = [CNVCardLineGenerator generatorWithName:@"CALURI" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person calendarURIs];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addBirthday
{
  v3 = [(CNVCardPerson *)self->_person birthdayComponents];
  if (v3)
  {
    v6 = v3;
    v4 = [CNVCardLineGenerator dateComponentsGeneratorWithName:@"BDAY" groupingCount:0];
    v5 = [v4 lineWithValue:v6 label:0];
    [(NSMutableArray *)self->_lines _cn_addNonNilObject:v5];

    v3 = v6;
  }
}

- (void)addAlternateBirthday
{
  v3 = [(CNVCardPerson *)self->_person alternateBirthdayComponents];
  if (v3)
  {
    v6 = v3;
    v4 = [CNVCardLineGenerator alternateDateComponentsGeneratorWithName:@"X-ALTBDAY" groupingcount:&self->_groupCount];
    v5 = [v4 lineWithValue:v6 label:0];
    [(NSMutableArray *)self->_lines _cn_addNonNilObject:v5];

    v3 = v6;
  }
}

- (void)addOtherDates
{
  v4 = [CNVCardLineGenerator dateComponentsGeneratorWithName:@"X-ABDATE" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person otherDateComponents];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addRelatedNames
{
  v4 = [CNVCardLineGenerator generatorWithName:@"X-ABRELATEDNAMES" groupingCount:&self->_groupCount];
  v3 = [(CNVCardPerson *)self->_person relatedNames];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v3 generator:v4];
}

- (void)addCompanyMarker
{
  if ([(CNVCardPerson *)self->_person isCompany])
  {

    [(CNVCard30CardBuilder *)self addLineWithName:@"X-ABShowAs" value:@"COMPANY"];
  }
}

- (void)addNameOrderMarker
{
  v3 = [(CNVCardPerson *)self->_person nameOrder];
  if (v3 == 1)
  {
    v4 = @"FIRST";
  }

  else
  {
    if (v3 != 2)
    {
      return;
    }

    v4 = @"LAST";
  }

  [(CNVCard30CardBuilder *)self addLineWithName:@"X-ABOrder" value:v4];
}

- (void)addCategories
{
  [(CNVCard30CardBuilder *)self removeUnknownPropertiesWithTag:@"CATEGORIES"];
  v6 = [(CNVCardPerson *)self->_person namesOfParentGroups];
  if ([v6 count])
  {
    v3 = [v6 sortedArrayUsingSelector:sel_localizedStandardCompare_];
    lines = self->_lines;
    v5 = [(CNVCardLineFactory *)self->_lineFactory arrayLineWithName:@"CATEGORIES" value:v3 itemSeparator:@", "];
    [(NSMutableArray *)lines _cn_addNonNilObject:v5];
  }
}

- (void)addUnknownProperties
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_unknownProperties;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277CBEA90]);
        v10 = [v8 originalLine];
        v11 = [v9 initWithBase64EncodedString:v10 options:0];

        if (!v11)
        {
          v12 = [v8 originalLine];
          v11 = [v12 dataUsingEncoding:4];
        }

        lines = self->_lines;
        v14 = [CNVCardLine lineWithLiteralValue:v11];
        [(NSMutableArray *)lines _cn_addNonNilObject:v14];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addCardDAVUID
{
  v3 = [(CNVCardPerson *)self->_person cardDAVUID];
  [(CNVCard30CardBuilder *)self addLineWithName:@"UID" value:v3];
}

- (void)addUID
{
  v3 = [(CNVCardPerson *)self->_person uid];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-ABUID" value:v3];
}

- (void)addPhonemeData
{
  v3 = [(CNVCardPerson *)self->_person phonemeData];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-ADDRESSBOOKSERVER-PHONEME-DATA" value:v3];
}

- (void)addPreferredLikenessSource
{
  v3 = [(CNVCardPerson *)self->_person preferredLikenessSource];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-APPLE-LIKENESS-SOURCE" value:v3];
}

- (void)addPreferredApplePersonaIdentifier
{
  v3 = [(CNVCardPerson *)self->_person preferredApplePersonaIdentifier];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-APPLE-LIKENESS-SERVICE-IDENTIFIER" value:v3];
}

- (void)addDowntimeWhitelist
{
  if ([(CNVCardPerson *)self->_person downtimeWhitelistAuthorization]== 1)
  {
    v3 = CNVCardGuardianWhitelistAuthorizationAllowed;
  }

  else
  {
    if ([(CNVCardPerson *)self->_person downtimeWhitelistAuthorization]!= 2)
    {
      return;
    }

    v3 = CNVCardGuardianWhitelistAuthorizationDisallowed;
  }

  v4 = *v3;

  [(CNVCard30CardBuilder *)self addLineWithName:@"X-APPLE-GUARDIAN-WHITELISTED" value:v4];
}

- (void)addImageType
{
  v3 = [(CNVCardPerson *)self->_person imageType];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-IMAGETYPE" value:v3];
}

- (void)addImageHash
{
  v4 = [(CNVCardPerson *)self->_person imageHash];
  v3 = [v4 base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-IMAGEHASH" value:v3];
}

- (void)addWallpaper
{
  v4 = [(CNVCardPerson *)self->_person wallpaper];
  v3 = [v4 base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-WALLPAPER" value:v3];
}

- (void)addWatchWallpaperImageData
{
  v4 = [(CNVCardPerson *)self->_person watchWallpaperImageData];
  v3 = [v4 base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-WATCH-WALLPAPER-IMAGE-DATA" value:v3];
}

- (void)addPosterIdentifier
{
  v3 = [(CNVCardPerson *)self->_person posterIdentifier];
  [(CNVCard30CardBuilder *)self addLineWithName:@"VND-63-POSTER-IDENTIFIER" value:v3];
}

- (void)addSharedPhotoDisplayPreference
{
  v3 = [(CNVCardPerson *)self->_person sharedPhotoDisplayPreference]- 1;
  if (v3 <= 2)
  {
    v4 = off_27A710FD0[v3];

    [(CNVCard30CardBuilder *)self addLineWithName:@"X-SHARED-PHOTO-DISPLAY-PREF" value:v4];
  }
}

- (void)addImageBackgroundColorsData
{
  v4 = [(CNVCardPerson *)self->_person imageBackgroundColorsData];
  v3 = [v4 base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-IMAGE-BACKGROUND-COLORS-DATA" value:v3];
}

- (void)addSensitiveContentConfiguration
{
  v4 = [(CNVCardPerson *)self->_person sensitiveContentConfiguration];
  v3 = [v4 base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"VND-63-SENSITIVE-CONTENT-CONFIG" value:v3];
}

- (void)addInstantMessagingInfo
{
  v3 = [(CNVCardPerson *)self->_person instantMessagingAddresses];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:v3 forService:@"AIMInstant" vCardProperty:@"X-AIM"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:v3 forService:@"JabberInstant" vCardProperty:@"X-JABBER"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:v3 forService:@"MSNInstant" vCardProperty:@"X-MSN"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:v3 forService:@"YahooInstant" vCardProperty:@"X-YAHOO"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:v3 forService:@"ICQInstant" vCardProperty:@"X-ICQ"];
  [(CNVCard30CardBuilder *)self addInstantMessagingHandles:v3];
}

- (void)addInstantMessagingHandles:(id)a3
{
  v4 = a3;
  v5 = [CNVCardLineGenerator instantMessagingGeneratorWithName:@"IMPP" groupingCount:&self->_groupCount];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v4 generator:v5];
}

- (void)addLegacyInstantMessagingHandles:(id)a3 forService:(id)a4 vCardProperty:(id)a5
{
  v8 = a4;
  v9 = a3;
  v12 = [CNVCardLineGenerator legacyInstantMessagingGeneratorWithName:a5 groupingCount:&self->_groupCount];
  v10 = (*(sFilterIMPPsForService + 2))(sFilterIMPPsForService, v8);

  v11 = [v9 _cn_filter:v10];

  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v11 generator:v12];
}

- (void)addPhotoWithOptions:(id)a3
{
  v4 = a3;
  if ([v4 includePhotos] && (!objc_msgSend(v4, "usePhotoReferencesIfAvailable") || !-[CNVCard30CardBuilder addPhotoReferences](self, "addPhotoReferences")))
  {
    [(CNVCard30CardBuilder *)self preparePhotoLineWithOptions:v4];
  }
}

- (BOOL)addPhotoReferences
{
  v3 = [(CNVCardPerson *)self->_person imageReferences];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 length];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:@"PHOTO" value:v4];
      [v7 addParameterWithName:@"VALUE" value:@"uri"];
      v8 = [(CNVCardPerson *)self->_person memojiMetadata];
      v9 = [v8 base64EncodedStringWithOptions:0];
      [v7 addParameterWithName:@"VND-63-MEMOJI-DETAILS" value:v9];

      v10 = [(CNVCardPerson *)self->_person largeImageCropRects];
      [(CNVCard30CardBuilder *)self _addAttributesForCropRects:v10 imageHash:0 toLine:v7];
      [(CNVCard30CardBuilder *)self addImageType];
      [(CNVCard30CardBuilder *)self addImageHash];
      [(NSMutableArray *)self->_lines _cn_addNonNilObject:v7];
      self->_photoHandled = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)preparePhotoLineWithOptions:(id)a3
{
  v4 = a3;
  v5 = self->_person;
  v6 = self->_lineFactory;
  v7 = self;
  v7->_countOfLinesBeforePhoto = [(NSMutableArray *)v7->_lines count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__CNVCard30CardBuilder_preparePhotoLineWithOptions___block_invoke;
  v14[3] = &unk_27A710F60;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = [v14 copy];
  retrofitPhoto = v8->_retrofitPhoto;
  v8->_retrofitPhoto = v12;
}

void __52__CNVCard30CardBuilder_preparePhotoLineWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v6 = [CNVCard30CardBuilder estimatedBytesAvailableForPhotoWithOptions:*(a1 + 32) serializer:v27];
  if (v6)
  {
    v7 = [[CNVCard30PHOTOHelper alloc] initWithPerson:*(a1 + 40) options:*(a1 + 32) maximumDataLength:v6];
    v8 = [(CNVCard30PHOTOHelper *)v7 bestEffortImage];
    v9 = *MEMORY[0x277CFBD00];
    v10 = [v8 data];
    LOBYTE(v9) = (*(v9 + 16))(v9, v10);

    if ((v9 & 1) == 0)
    {
      v11 = [v8 data];
      v12 = [v11 _cn_md5Hash];

      v13 = *(a1 + 48);
      v14 = [v8 data];
      v15 = [v13 dataLineWithName:@"PHOTO" value:v14];

      v16 = *(a1 + 56);
      v17 = [v8 cropRects];
      [v16 _addAttributesForCropRects:v17 imageHash:v12 toLine:v15];

      v18 = [*(a1 + 40) memojiMetadata];
      v19 = [v18 base64EncodedStringWithOptions:0];
      [v15 addParameterWithName:@"VND-63-MEMOJI-DETAILS" value:v19];

      [v27 insertLine:v15 atMarker:v5];
      v20 = *(a1 + 48);
      v21 = [*(a1 + 40) imageType];
      v22 = [v20 stringLineWithName:@"X-IMAGETYPE" value:v21];
      [v27 insertLine:v22 atMarker:v5];

      v23 = [*(a1 + 40) imageType];

      if (v23)
      {
        v24 = *(a1 + 48);
        v25 = [v12 base64EncodedStringWithOptions:0];
        v26 = [v24 stringLineWithName:@"X-IMAGEHASH" value:v25];
        [v27 insertLine:v26 atMarker:v5];
      }
    }
  }
}

+ (unint64_t)estimatedBytesAvailableForPhotoWithOptions:(id)a3 serializer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 maximumEncodingLength])
  {
    v7 = [v6 estimatedDataLength] + 129;
    if (v7 <= [v5 maximumEncodingLength])
    {
      v8 = [MEMORY[0x277CBEA90] _cn_maxDataLengthFittingInBase64EncodingLength:{objc_msgSend(v5, "maximumEncodingLength") - v7}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = -1;
  }

  if ([v5 maximumImageEncodingLength])
  {
    v9 = [MEMORY[0x277CBEA90] _cn_maxDataLengthFittingInBase64EncodingLength:{objc_msgSend(v5, "maximumImageEncodingLength")}];
    v10 = [v5 maximumEncodingLength];
    if (v8 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    if (v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  return v8;
}

- (void)_addAttributesForCropRects:(id)a3 imageHash:(id)a4 toLine:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__CNVCard30CardBuilder__addAttributesForCropRects_imageHash_toLine___block_invoke;
    v11[3] = &unk_27A710F88;
    v12 = v9;
    v13 = self;
    v14 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

void __68__CNVCard30CardBuilder__addAttributesForCropRects_imageHash_toLine___block_invoke(id *a1, void *a2, void *a3)
{
  v19 = a2;
  [a3 rectValue];
  v22 = NSIntegralRect(v21);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (!NSEqualRects(*MEMORY[0x277CCA868], v22))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld&%ld&%ld&%ld", x, y, width, height];
    v10 = *MEMORY[0x277CFBD30];
    if (((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], v9) & 1) == 0)
    {
      v11 = a1[4];
      if (!a1[4])
      {
        v12 = [a1[5] person];
        v13 = [v12 largeImageHashOfType:v19];

        v11 = v13;
      }

      v14 = [v11 _cn_encodeVCardBase64DataWithInitialLength:20];
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:1];
      if (((*(v10 + 16))(v10, v15) & 1) == 0)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [CNVCardParameterEncoder encodeParameterValue:v19];
        v18 = [v16 stringWithFormat:@"%@&%@&%@", v17, v9, v15];

        [a1[6] addParameterWithName:@"X-ABCROP-RECTANGLE" value:v18];
      }
    }
  }
}

- (void)addPropertyLinesForValues:(id)a3 generator:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CNVCard30CardBuilder_addPropertyLinesForValues_generator___block_invoke;
  v11[3] = &unk_27A710FB0;
  v12 = v6;
  v7 = v6;
  v8 = [a3 _cn_map:v11];
  v9 = [v8 _cn_filter:&__block_literal_global_225];

  v10 = [v9 firstObject];
  [v7 addPrimaryValueMarkerToLine:v10];

  [(NSMutableArray *)self->_lines addObjectsFromArray:v9];
}

id __60__CNVCard30CardBuilder_addPropertyLinesForValues_generator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 label];

  v6 = [v2 lineWithValue:v4 label:v5];

  return v6;
}

@end