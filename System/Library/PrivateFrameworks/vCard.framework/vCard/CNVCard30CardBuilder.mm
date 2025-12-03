@interface CNVCard30CardBuilder
+ (id)builderWithPerson:(id)person;
+ (unint64_t)estimatedBytesAvailableForPhotoWithOptions:(id)options serializer:(id)serializer;
- (BOOL)addPhotoReferences;
- (CNVCard30CardBuilder)initWithPerson:(id)person;
- (void)_addAttributesForCropRects:(id)rects imageHash:(id)hash toLine:(id)line;
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
- (void)addInstantMessagingHandles:(id)handles;
- (void)addInstantMessagingInfo;
- (void)addLegacyInstantMessagingHandles:(id)handles forService:(id)service vCardProperty:(id)property;
- (void)addLineWithName:(id)name value:(id)value;
- (void)addNameComponents;
- (void)addNameLines;
- (void)addNameOrderMarker;
- (void)addNote;
- (void)addOrganization;
- (void)addOtherDates;
- (void)addPhoneNumbers;
- (void)addPhonemeData;
- (void)addPhotoWithOptions:(id)options;
- (void)addPostalAddresses;
- (void)addPosterIdentifier;
- (void)addPreferredApplePersonaIdentifier;
- (void)addPreferredLikenessSource;
- (void)addPropertyLinesForValues:(id)values generator:(id)generator;
- (void)addRelatedNames;
- (void)addSensitiveContentConfiguration;
- (void)addSharedPhotoDisplayPreference;
- (void)addSocialProfiles;
- (void)addUID;
- (void)addURLs;
- (void)addUnknownProperties;
- (void)addWallpaper;
- (void)addWatchWallpaperImageData;
- (void)buildWithSerializer:(id)serializer;
- (void)preparePhotoLineWithOptions:(id)options;
- (void)removeUnknownPropertiesWithTag:(id)tag;
@end

@implementation CNVCard30CardBuilder

+ (id)builderWithPerson:(id)person
{
  personCopy = person;
  v5 = [[self alloc] initWithPerson:personCopy];

  return v5;
}

- (CNVCard30CardBuilder)initWithPerson:(id)person
{
  personCopy = person;
  v17.receiver = self;
  v17.super_class = CNVCard30CardBuilder;
  v6 = [(CNVCard30CardBuilder *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, person);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lines = v7->_lines;
    v7->_lines = v8;

    v7->_groupCount = 0;
    unknownProperties = [personCopy unknownProperties];
    v11 = [unknownProperties mutableCopy];
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

- (void)buildWithSerializer:(id)serializer
{
  serializerCopy = serializer;
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
  v6 = serializerCopy;
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

- (void)removeUnknownPropertiesWithTag:(id)tag
{
  unknownProperties = self->_unknownProperties;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyName != %@", tag];
  [(NSMutableArray *)unknownProperties filterUsingPredicate:v4];
}

- (void)addLineWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    lines = self->_lines;
    v8 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:nameCopy value:valueCopy];
    [(NSMutableArray *)lines _cn_addNonNilObject:v8];
  }
}

- (void)addBeginningOfCard
{
  [(CNVCard30CardBuilder *)self addLineWithName:@"BEGIN" value:@"VCARD"];
  lines = self->_lines;
  versionPlaceholderLine = [(CNVCardLineFactory *)self->_lineFactory versionPlaceholderLine];
  [(NSMutableArray *)lines _cn_addNonNilObject:versionPlaceholderLine];

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
  nickname = [(CNVCardPerson *)self->_person nickname];
  [(CNVCard30CardBuilder *)self addLineWithName:@"NICKNAME" value:nickname];

  maidenName = [(CNVCardPerson *)self->_person maidenName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-MAIDENNAME" value:maidenName];

  phoneticFirstName = [(CNVCardPerson *)self->_person phoneticFirstName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-FIRST-NAME" value:phoneticFirstName];

  phoneticMiddleName = [(CNVCardPerson *)self->_person phoneticMiddleName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-MIDDLE-NAME" value:phoneticMiddleName];

  phoneticLastName = [(CNVCardPerson *)self->_person phoneticLastName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-LAST-NAME" value:phoneticLastName];

  pronunciationFirstName = [(CNVCardPerson *)self->_person pronunciationFirstName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PRONUNCIATION-FIRST-NAME" value:pronunciationFirstName];

  pronunciationLastName = [(CNVCardPerson *)self->_person pronunciationLastName];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PRONUNCIATION-LAST-NAME" value:pronunciationLastName];

  [(CNVCard30CardBuilder *)self addOrganization];
  phoneticOrganization = [(CNVCardPerson *)self->_person phoneticOrganization];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-PHONETIC-ORG" value:phoneticOrganization];

  jobTitle = [(CNVCardPerson *)self->_person jobTitle];
  [(CNVCard30CardBuilder *)self addLineWithName:@"TITLE" value:jobTitle];
}

- (void)addNameComponents
{
  array = [MEMORY[0x277CBEB18] array];
  lastName = [(CNVCardPerson *)self->_person lastName];
  [array _cn_addObject:lastName orPlaceholder:&stru_288651EC0];

  firstName = [(CNVCardPerson *)self->_person firstName];
  [array _cn_addObject:firstName orPlaceholder:&stru_288651EC0];

  middleName = [(CNVCardPerson *)self->_person middleName];
  [array _cn_addObject:middleName orPlaceholder:&stru_288651EC0];

  title = [(CNVCardPerson *)self->_person title];
  [array _cn_addObject:title orPlaceholder:&stru_288651EC0];

  suffix = [(CNVCardPerson *)self->_person suffix];
  [array _cn_addObject:suffix orPlaceholder:&stru_288651EC0];

  lines = self->_lines;
  v9 = [(CNVCardLineFactory *)self->_lineFactory arrayLineWithName:@"N" value:array];
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
  addressingGrammars = [(CNVCardPerson *)self->_person addressingGrammars];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:addressingGrammars generator:v4];
}

- (void)addOrganization
{
  array = [MEMORY[0x277CBEB18] array];
  organization = [(CNVCardPerson *)self->_person organization];
  [array _cn_addObject:organization orPlaceholder:&stru_288651EC0];

  department = [(CNVCardPerson *)self->_person department];
  [array _cn_addObject:department orPlaceholder:&stru_288651EC0];

  if (([array _cn_all:*MEMORY[0x277CFBD30]] & 1) == 0)
  {
    lines = self->_lines;
    v6 = [(CNVCardLineFactory *)self->_lineFactory arrayLineWithName:@"ORG" value:array];
    [(NSMutableArray *)lines _cn_addNonNilObject:v6];
  }
}

- (void)addEmailAddresses
{
  v4 = [CNVCardLineGenerator emailGeneratorWithName:@"EMAIL" groupingCount:&self->_groupCount];
  emailAddresses = [(CNVCardPerson *)self->_person emailAddresses];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:emailAddresses generator:v4];
}

- (void)addPhoneNumbers
{
  v4 = [CNVCardLineGenerator phoneGeneratorWithName:@"TEL" groupingCount:&self->_groupCount];
  phoneNumbers = [(CNVCardPerson *)self->_person phoneNumbers];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:phoneNumbers generator:v4];
}

- (void)addPostalAddresses
{
  v4 = [CNVCardLineGenerator streetAddressGeneratorWithName:@"ADR" groupingCount:&self->_groupCount];
  postalAddresses = [(CNVCardPerson *)self->_person postalAddresses];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:postalAddresses generator:v4];
}

- (void)addSocialProfiles
{
  v4 = [CNVCardLineGenerator socialProfileGeneratorWithName:@"X-SOCIALPROFILE" groupingCount:&self->_groupCount];
  socialProfiles = [(CNVCardPerson *)self->_person socialProfiles];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:socialProfiles generator:v4];
}

- (void)addActivityAlerts
{
  v3 = [CNVCardLineGenerator activityAlertGeneratorWithName:@"X-ACTIVITY-ALERT" groupingCount:&self->_groupCount];
  activityAlerts = [(CNVCardPerson *)self->_person activityAlerts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__CNVCard30CardBuilder_addActivityAlerts__block_invoke;
  v6[3] = &unk_27A710EF0;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [activityAlerts enumerateKeysAndObjectsUsingBlock:v6];
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
  note = [(CNVCardPerson *)self->_person note];
  [(CNVCard30CardBuilder *)self addLineWithName:@"NOTE" value:note];
}

- (void)addURLs
{
  v4 = [CNVCardLineGenerator generatorWithName:@"URL" groupingCount:&self->_groupCount];
  urls = [(CNVCardPerson *)self->_person urls];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:urls generator:v4];
}

- (void)addCalendarURIs
{
  v4 = [CNVCardLineGenerator generatorWithName:@"CALURI" groupingCount:&self->_groupCount];
  calendarURIs = [(CNVCardPerson *)self->_person calendarURIs];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:calendarURIs generator:v4];
}

- (void)addBirthday
{
  birthdayComponents = [(CNVCardPerson *)self->_person birthdayComponents];
  if (birthdayComponents)
  {
    v6 = birthdayComponents;
    v4 = [CNVCardLineGenerator dateComponentsGeneratorWithName:@"BDAY" groupingCount:0];
    v5 = [v4 lineWithValue:v6 label:0];
    [(NSMutableArray *)self->_lines _cn_addNonNilObject:v5];

    birthdayComponents = v6;
  }
}

- (void)addAlternateBirthday
{
  alternateBirthdayComponents = [(CNVCardPerson *)self->_person alternateBirthdayComponents];
  if (alternateBirthdayComponents)
  {
    v6 = alternateBirthdayComponents;
    v4 = [CNVCardLineGenerator alternateDateComponentsGeneratorWithName:@"X-ALTBDAY" groupingcount:&self->_groupCount];
    v5 = [v4 lineWithValue:v6 label:0];
    [(NSMutableArray *)self->_lines _cn_addNonNilObject:v5];

    alternateBirthdayComponents = v6;
  }
}

- (void)addOtherDates
{
  v4 = [CNVCardLineGenerator dateComponentsGeneratorWithName:@"X-ABDATE" groupingCount:&self->_groupCount];
  otherDateComponents = [(CNVCardPerson *)self->_person otherDateComponents];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:otherDateComponents generator:v4];
}

- (void)addRelatedNames
{
  v4 = [CNVCardLineGenerator generatorWithName:@"X-ABRELATEDNAMES" groupingCount:&self->_groupCount];
  relatedNames = [(CNVCardPerson *)self->_person relatedNames];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:relatedNames generator:v4];
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
  nameOrder = [(CNVCardPerson *)self->_person nameOrder];
  if (nameOrder == 1)
  {
    v4 = @"FIRST";
  }

  else
  {
    if (nameOrder != 2)
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
  namesOfParentGroups = [(CNVCardPerson *)self->_person namesOfParentGroups];
  if ([namesOfParentGroups count])
  {
    v3 = [namesOfParentGroups sortedArrayUsingSelector:sel_localizedStandardCompare_];
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
        originalLine = [v8 originalLine];
        v11 = [v9 initWithBase64EncodedString:originalLine options:0];

        if (!v11)
        {
          originalLine2 = [v8 originalLine];
          v11 = [originalLine2 dataUsingEncoding:4];
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
  cardDAVUID = [(CNVCardPerson *)self->_person cardDAVUID];
  [(CNVCard30CardBuilder *)self addLineWithName:@"UID" value:cardDAVUID];
}

- (void)addUID
{
  v3 = [(CNVCardPerson *)self->_person uid];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-ABUID" value:v3];
}

- (void)addPhonemeData
{
  phonemeData = [(CNVCardPerson *)self->_person phonemeData];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-ADDRESSBOOKSERVER-PHONEME-DATA" value:phonemeData];
}

- (void)addPreferredLikenessSource
{
  preferredLikenessSource = [(CNVCardPerson *)self->_person preferredLikenessSource];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-APPLE-LIKENESS-SOURCE" value:preferredLikenessSource];
}

- (void)addPreferredApplePersonaIdentifier
{
  preferredApplePersonaIdentifier = [(CNVCardPerson *)self->_person preferredApplePersonaIdentifier];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-APPLE-LIKENESS-SERVICE-IDENTIFIER" value:preferredApplePersonaIdentifier];
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
  imageType = [(CNVCardPerson *)self->_person imageType];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-IMAGETYPE" value:imageType];
}

- (void)addImageHash
{
  imageHash = [(CNVCardPerson *)self->_person imageHash];
  v3 = [imageHash base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-IMAGEHASH" value:v3];
}

- (void)addWallpaper
{
  wallpaper = [(CNVCardPerson *)self->_person wallpaper];
  v3 = [wallpaper base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-WALLPAPER" value:v3];
}

- (void)addWatchWallpaperImageData
{
  watchWallpaperImageData = [(CNVCardPerson *)self->_person watchWallpaperImageData];
  v3 = [watchWallpaperImageData base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-WATCH-WALLPAPER-IMAGE-DATA" value:v3];
}

- (void)addPosterIdentifier
{
  posterIdentifier = [(CNVCardPerson *)self->_person posterIdentifier];
  [(CNVCard30CardBuilder *)self addLineWithName:@"VND-63-POSTER-IDENTIFIER" value:posterIdentifier];
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
  imageBackgroundColorsData = [(CNVCardPerson *)self->_person imageBackgroundColorsData];
  v3 = [imageBackgroundColorsData base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"X-IMAGE-BACKGROUND-COLORS-DATA" value:v3];
}

- (void)addSensitiveContentConfiguration
{
  sensitiveContentConfiguration = [(CNVCardPerson *)self->_person sensitiveContentConfiguration];
  v3 = [sensitiveContentConfiguration base64EncodedStringWithOptions:0];
  [(CNVCard30CardBuilder *)self addLineWithName:@"VND-63-SENSITIVE-CONTENT-CONFIG" value:v3];
}

- (void)addInstantMessagingInfo
{
  instantMessagingAddresses = [(CNVCardPerson *)self->_person instantMessagingAddresses];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:instantMessagingAddresses forService:@"AIMInstant" vCardProperty:@"X-AIM"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:instantMessagingAddresses forService:@"JabberInstant" vCardProperty:@"X-JABBER"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:instantMessagingAddresses forService:@"MSNInstant" vCardProperty:@"X-MSN"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:instantMessagingAddresses forService:@"YahooInstant" vCardProperty:@"X-YAHOO"];
  [(CNVCard30CardBuilder *)self addLegacyInstantMessagingHandles:instantMessagingAddresses forService:@"ICQInstant" vCardProperty:@"X-ICQ"];
  [(CNVCard30CardBuilder *)self addInstantMessagingHandles:instantMessagingAddresses];
}

- (void)addInstantMessagingHandles:(id)handles
{
  handlesCopy = handles;
  v5 = [CNVCardLineGenerator instantMessagingGeneratorWithName:@"IMPP" groupingCount:&self->_groupCount];
  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:handlesCopy generator:v5];
}

- (void)addLegacyInstantMessagingHandles:(id)handles forService:(id)service vCardProperty:(id)property
{
  serviceCopy = service;
  handlesCopy = handles;
  v12 = [CNVCardLineGenerator legacyInstantMessagingGeneratorWithName:property groupingCount:&self->_groupCount];
  v10 = (*(sFilterIMPPsForService + 2))(sFilterIMPPsForService, serviceCopy);

  v11 = [handlesCopy _cn_filter:v10];

  [(CNVCard30CardBuilder *)self addPropertyLinesForValues:v11 generator:v12];
}

- (void)addPhotoWithOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy includePhotos] && (!objc_msgSend(optionsCopy, "usePhotoReferencesIfAvailable") || !-[CNVCard30CardBuilder addPhotoReferences](self, "addPhotoReferences")))
  {
    [(CNVCard30CardBuilder *)self preparePhotoLineWithOptions:optionsCopy];
  }
}

- (BOOL)addPhotoReferences
{
  imageReferences = [(CNVCardPerson *)self->_person imageReferences];
  if ([imageReferences count])
  {
    v4 = [imageReferences objectAtIndex:0];
    v5 = [v4 length];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:@"PHOTO" value:v4];
      [v7 addParameterWithName:@"VALUE" value:@"uri"];
      memojiMetadata = [(CNVCardPerson *)self->_person memojiMetadata];
      v9 = [memojiMetadata base64EncodedStringWithOptions:0];
      [v7 addParameterWithName:@"VND-63-MEMOJI-DETAILS" value:v9];

      largeImageCropRects = [(CNVCardPerson *)self->_person largeImageCropRects];
      [(CNVCard30CardBuilder *)self _addAttributesForCropRects:largeImageCropRects imageHash:0 toLine:v7];
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

- (void)preparePhotoLineWithOptions:(id)options
{
  optionsCopy = options;
  v5 = self->_person;
  v6 = self->_lineFactory;
  selfCopy = self;
  selfCopy->_countOfLinesBeforePhoto = [(NSMutableArray *)selfCopy->_lines count];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__CNVCard30CardBuilder_preparePhotoLineWithOptions___block_invoke;
  v14[3] = &unk_27A710F60;
  v15 = optionsCopy;
  v16 = v5;
  v17 = v6;
  v18 = selfCopy;
  v8 = selfCopy;
  v9 = v6;
  v10 = v5;
  v11 = optionsCopy;
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

+ (unint64_t)estimatedBytesAvailableForPhotoWithOptions:(id)options serializer:(id)serializer
{
  optionsCopy = options;
  serializerCopy = serializer;
  if ([optionsCopy maximumEncodingLength])
  {
    v7 = [serializerCopy estimatedDataLength] + 129;
    if (v7 <= [optionsCopy maximumEncodingLength])
    {
      v8 = [MEMORY[0x277CBEA90] _cn_maxDataLengthFittingInBase64EncodingLength:{objc_msgSend(optionsCopy, "maximumEncodingLength") - v7}];
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

  if ([optionsCopy maximumImageEncodingLength])
  {
    v9 = [MEMORY[0x277CBEA90] _cn_maxDataLengthFittingInBase64EncodingLength:{objc_msgSend(optionsCopy, "maximumImageEncodingLength")}];
    maximumEncodingLength = [optionsCopy maximumEncodingLength];
    if (v8 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    if (maximumEncodingLength)
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

- (void)_addAttributesForCropRects:(id)rects imageHash:(id)hash toLine:(id)line
{
  rectsCopy = rects;
  hashCopy = hash;
  lineCopy = line;
  if ([rectsCopy count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__CNVCard30CardBuilder__addAttributesForCropRects_imageHash_toLine___block_invoke;
    v11[3] = &unk_27A710F88;
    v12 = hashCopy;
    selfCopy = self;
    v14 = lineCopy;
    [rectsCopy enumerateKeysAndObjectsUsingBlock:v11];
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

- (void)addPropertyLinesForValues:(id)values generator:(id)generator
{
  generatorCopy = generator;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CNVCard30CardBuilder_addPropertyLinesForValues_generator___block_invoke;
  v11[3] = &unk_27A710FB0;
  v12 = generatorCopy;
  v7 = generatorCopy;
  v8 = [values _cn_map:v11];
  v9 = [v8 _cn_filter:&__block_literal_global_225];

  firstObject = [v9 firstObject];
  [v7 addPrimaryValueMarkerToLine:firstObject];

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