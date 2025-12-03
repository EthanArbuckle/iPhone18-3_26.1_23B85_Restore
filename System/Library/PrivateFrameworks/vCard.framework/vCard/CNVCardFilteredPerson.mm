@interface CNVCardFilteredPerson
+ (id)filteredPersonWithPerson:(id)person scope:(id)scope;
+ (id)os_log;
- (CNVCardFilteredPerson)initWithPerson:(id)person scope:(id)scope;
- (NSArray)addressingGrammars;
- (NSArray)calendarURIs;
- (NSArray)emailAddresses;
- (NSArray)imageReferences;
- (NSArray)instantMessagingAddresses;
- (NSArray)namesOfParentGroups;
- (NSArray)otherDateComponents;
- (NSArray)phoneNumbers;
- (NSArray)postalAddresses;
- (NSArray)relatedNames;
- (NSArray)socialProfiles;
- (NSArray)urls;
- (NSData)imageBackgroundColorsData;
- (NSData)imageData;
- (NSData)imageHash;
- (NSData)largeImageData;
- (NSData)memojiMetadata;
- (NSData)sensitiveContentConfiguration;
- (NSData)wallpaper;
- (NSData)watchWallpaperImageData;
- (NSDateComponents)alternateBirthdayComponents;
- (NSDateComponents)birthdayComponents;
- (NSDictionary)activityAlerts;
- (NSDictionary)imageCropRects;
- (NSDictionary)largeImageCropRects;
- (NSString)cardDAVUID;
- (NSString)department;
- (NSString)firstName;
- (NSString)imageType;
- (NSString)jobTitle;
- (NSString)lastName;
- (NSString)maidenName;
- (NSString)middleName;
- (NSString)nickname;
- (NSString)note;
- (NSString)organization;
- (NSString)phonemeData;
- (NSString)phoneticFirstName;
- (NSString)phoneticLastName;
- (NSString)phoneticMiddleName;
- (NSString)phoneticOrganization;
- (NSString)posterIdentifier;
- (NSString)preferredApplePersonaIdentifier;
- (NSString)preferredLikenessSource;
- (NSString)pronunciationFirstName;
- (NSString)pronunciationLastName;
- (NSString)suffix;
- (NSString)title;
- (NSString)uid;
- (id)filterItems:(id)items property:(id)property;
- (id)largeImageHashOfType:(id)type;
- (int)downtimeWhitelistAuthorization;
- (int)sharedPhotoDisplayPreference;
@end

@implementation CNVCardFilteredPerson

+ (id)os_log
{
  if (os_log_cn_once_token_1_1 != -1)
  {
    +[CNVCardFilteredPerson os_log];
  }

  v3 = os_log_cn_once_object_1_1;

  return v3;
}

uint64_t __31__CNVCardFilteredPerson_os_log__block_invoke()
{
  os_log_cn_once_object_1_1 = os_log_create("com.apple.contacts", "CNVCardFilteredPerson");

  return MEMORY[0x2821F96F8]();
}

+ (id)filteredPersonWithPerson:(id)person scope:(id)scope
{
  personCopy = person;
  scopeCopy = scope;
  if ([scopeCopy isEmpty])
  {
    v8 = personCopy;
  }

  else
  {
    v8 = [[self alloc] initWithPerson:personCopy scope:scopeCopy];
  }

  v9 = v8;

  return v9;
}

- (CNVCardFilteredPerson)initWithPerson:(id)person scope:(id)scope
{
  personCopy = person;
  scopeCopy = scope;
  v13.receiver = self;
  v13.super_class = CNVCardFilteredPerson;
  v9 = [(CNVCardFilteredPerson *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_person, person);
    objc_storeStrong(&v10->_scope, scope);
    v11 = v10;
  }

  return v10;
}

- (NSString)firstName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"First"];

  if (v4)
  {
    firstName = 0;
  }

  else
  {
    firstName = [(CNVCardPerson *)self->_person firstName];
  }

  return firstName;
}

- (NSString)lastName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Last"];

  if (v4)
  {
    lastName = 0;
  }

  else
  {
    lastName = [(CNVCardPerson *)self->_person lastName];
  }

  return lastName;
}

- (NSString)middleName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Middle"];

  if (v4)
  {
    middleName = 0;
  }

  else
  {
    middleName = [(CNVCardPerson *)self->_person middleName];
  }

  return middleName;
}

- (NSString)title
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Title"];

  if (v4)
  {
    title = 0;
  }

  else
  {
    title = [(CNVCardPerson *)self->_person title];
  }

  return title;
}

- (NSString)suffix
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Suffix"];

  if (v4)
  {
    suffix = 0;
  }

  else
  {
    suffix = [(CNVCardPerson *)self->_person suffix];
  }

  return suffix;
}

- (NSString)nickname
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Nickname"];

  if (v4)
  {
    nickname = 0;
  }

  else
  {
    nickname = [(CNVCardPerson *)self->_person nickname];
  }

  return nickname;
}

- (NSString)maidenName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields _cn_any:&__block_literal_global_5];

  if (v4)
  {
    maidenName = 0;
  }

  else
  {
    maidenName = [(CNVCardPerson *)self->_person maidenName];
  }

  return maidenName;
}

- (NSString)phoneticFirstName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"FirstPhonetic"];

  if (v4)
  {
    phoneticFirstName = 0;
  }

  else
  {
    phoneticFirstName = [(CNVCardPerson *)self->_person phoneticFirstName];
  }

  return phoneticFirstName;
}

- (NSString)phoneticMiddleName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"MiddlePhonetic"];

  if (v4)
  {
    phoneticMiddleName = 0;
  }

  else
  {
    phoneticMiddleName = [(CNVCardPerson *)self->_person phoneticMiddleName];
  }

  return phoneticMiddleName;
}

- (NSString)phoneticLastName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"LastPhonetic"];

  if (v4)
  {
    phoneticLastName = 0;
  }

  else
  {
    phoneticLastName = [(CNVCardPerson *)self->_person phoneticLastName];
  }

  return phoneticLastName;
}

- (NSString)pronunciationFirstName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"FirstPronunciation"];

  if (v4)
  {
    pronunciationFirstName = 0;
  }

  else
  {
    pronunciationFirstName = [(CNVCardPerson *)self->_person pronunciationFirstName];
  }

  return pronunciationFirstName;
}

- (NSString)pronunciationLastName
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"LastPronunciation"];

  if (v4)
  {
    pronunciationLastName = 0;
  }

  else
  {
    pronunciationLastName = [(CNVCardPerson *)self->_person pronunciationLastName];
  }

  return pronunciationLastName;
}

- (NSArray)addressingGrammars
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"AddressingGrammar"];

  if (v4)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2771F5000, os_log, OS_LOG_TYPE_DEFAULT, "Excluding pronouns from VCard", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    addressingGrammars = [(CNVCardPerson *)self->_person addressingGrammars];
    v6 = [(CNVCardFilteredPerson *)self filterItems:addressingGrammars property:@"AddressingGrammar"];
  }

  return v6;
}

- (NSString)organization
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Organization"];

  if (v4)
  {
    organization = 0;
  }

  else
  {
    organization = [(CNVCardPerson *)self->_person organization];
  }

  return organization;
}

- (NSString)phoneticOrganization
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"OrganizationPhonetic"];

  if (v4)
  {
    phoneticOrganization = 0;
  }

  else
  {
    phoneticOrganization = [(CNVCardPerson *)self->_person phoneticOrganization];
  }

  return phoneticOrganization;
}

- (NSString)department
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"ABDepartment"];

  if (v4)
  {
    department = 0;
  }

  else
  {
    department = [(CNVCardPerson *)self->_person department];
  }

  return department;
}

- (NSString)jobTitle
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"JobTitle"];

  if (v4)
  {
    jobTitle = 0;
  }

  else
  {
    jobTitle = [(CNVCardPerson *)self->_person jobTitle];
  }

  return jobTitle;
}

- (NSArray)emailAddresses
{
  emailAddresses = [(CNVCardPerson *)self->_person emailAddresses];
  v4 = [(CNVCardFilteredPerson *)self filterItems:emailAddresses property:@"Email"];

  return v4;
}

- (NSArray)phoneNumbers
{
  phoneNumbers = [(CNVCardPerson *)self->_person phoneNumbers];
  v4 = [(CNVCardFilteredPerson *)self filterItems:phoneNumbers property:@"Phone"];

  return v4;
}

- (NSArray)postalAddresses
{
  postalAddresses = [(CNVCardPerson *)self->_person postalAddresses];
  v4 = [(CNVCardFilteredPerson *)self filterItems:postalAddresses property:@"Address"];

  return v4;
}

- (NSArray)socialProfiles
{
  socialProfiles = [(CNVCardPerson *)self->_person socialProfiles];
  if (([(CNVCardFilteredPersonScope *)self->_scope filterOptions]& 1) == 0)
  {
    v4 = [socialProfiles _cn_map:&__block_literal_global_8];

    socialProfiles = v4;
  }

  v5 = [(CNVCardFilteredPerson *)self filterItems:socialProfiles property:@"SocialProfile"];

  return v5;
}

id __39__CNVCardFilteredPerson_socialProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:@"bundleIdentifiers"];
  [v4 removeObjectForKey:@"teamIdentifier"];
  v5 = [v2 label];
  v6 = [v2 identifier];

  v7 = [CNVCardPropertyItem itemWithValue:v4 label:v5 identifier:v6];

  return v7;
}

- (NSArray)instantMessagingAddresses
{
  instantMessagingAddresses = [(CNVCardPerson *)self->_person instantMessagingAddresses];
  if (([(CNVCardFilteredPersonScope *)self->_scope filterOptions]& 1) == 0)
  {
    v4 = [instantMessagingAddresses _cn_map:&__block_literal_global_10];

    instantMessagingAddresses = v4;
  }

  v5 = [(CNVCardFilteredPerson *)self filterItems:instantMessagingAddresses property:@"InstantMessage"];

  return v5;
}

id __50__CNVCardFilteredPerson_instantMessagingAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:@"teamIdentifier"];
  [v4 removeObjectForKey:@"bundleIdentifiers"];
  v5 = [v2 label];
  v6 = [v2 identifier];

  v7 = [CNVCardPropertyItem itemWithValue:v4 label:v5 identifier:v6];

  return v7;
}

- (NSArray)urls
{
  urls = [(CNVCardPerson *)self->_person urls];
  v4 = [(CNVCardFilteredPerson *)self filterItems:urls property:@"URLs"];

  return v4;
}

- (NSArray)calendarURIs
{
  calendarURIs = [(CNVCardPerson *)self->_person calendarURIs];
  v4 = [(CNVCardFilteredPerson *)self filterItems:calendarURIs property:@"calendarURIs"];

  return v4;
}

- (NSDictionary)activityAlerts
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"ActivityAlert"];

  if (v4)
  {
    activityAlerts = 0;
  }

  else
  {
    activityAlerts = [(CNVCardPerson *)self->_person activityAlerts];
  }

  return activityAlerts;
}

- (id)filterItems:(id)items property:(id)property
{
  propertyCopy = property;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__CNVCardFilteredPerson_filterItems_property___block_invoke;
  v10[3] = &unk_27A710EA0;
  v11 = propertyCopy;
  selfCopy = self;
  v7 = propertyCopy;
  v8 = [items _cn_filter:v10];

  return v8;
}

uint64_t __46__CNVCardFilteredPerson_filterItems_property___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [a2 identifier];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  v7 = [*(*(a1 + 40) + 16) excludedFields];
  LODWORD(v5) = [v7 containsObject:v6];

  return v5 ^ 1;
}

- (NSArray)imageReferences
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"com.apple.image.thumbnail"];

  if (v4)
  {
    imageReferences = 0;
  }

  else
  {
    imageReferences = [(CNVCardPerson *)self->_person imageReferences];
  }

  return imageReferences;
}

- (NSDictionary)imageCropRects
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"com.apple.image.thumbnail"];

  if (v4)
  {
    imageCropRects = 0;
  }

  else
  {
    imageCropRects = [(CNVCardPerson *)self->_person imageCropRects];
  }

  return imageCropRects;
}

- (NSDictionary)largeImageCropRects
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"com.apple.image.thumbnail"];

  if (v4)
  {
    largeImageCropRects = 0;
  }

  else
  {
    largeImageCropRects = [(CNVCardPerson *)self->_person largeImageCropRects];
  }

  return largeImageCropRects;
}

- (NSData)largeImageData
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"com.apple.image.thumbnail"];

  if (v4)
  {
    largeImageData = 0;
  }

  else
  {
    largeImageData = [(CNVCardPerson *)self->_person largeImageData];
  }

  return largeImageData;
}

- (NSData)imageData
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"com.apple.image.thumbnail"];

  if (v4)
  {
    imageData = 0;
  }

  else
  {
    imageData = [(CNVCardPerson *)self->_person imageData];
  }

  return imageData;
}

- (id)largeImageHashOfType:(id)type
{
  typeCopy = type;
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v6 = [excludedFields containsObject:@"com.apple.image.thumbnail"];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CNVCardPerson *)self->_person largeImageHashOfType:typeCopy];
  }

  return v7;
}

- (NSData)wallpaper
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"wallpaper"];

  if (v4)
  {
    wallpaper = 0;
  }

  else
  {
    wallpaper = [(CNVCardPerson *)self->_person wallpaper];
  }

  return wallpaper;
}

- (NSData)watchWallpaperImageData
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"watchWallpaperImageData"];

  if (v4)
  {
    watchWallpaperImageData = 0;
  }

  else
  {
    watchWallpaperImageData = [(CNVCardPerson *)self->_person watchWallpaperImageData];
  }

  return watchWallpaperImageData;
}

- (NSString)posterIdentifier
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"posterIdentifier"];

  if (v4)
  {
    posterIdentifier = 0;
  }

  else
  {
    posterIdentifier = [(CNVCardPerson *)self->_person posterIdentifier];
  }

  return posterIdentifier;
}

- (int)sharedPhotoDisplayPreference
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"sharedPhotoDisplayPreference"];

  if (v4)
  {
    return 0;
  }

  person = self->_person;

  return [(CNVCardPerson *)person sharedPhotoDisplayPreference];
}

- (NSData)imageBackgroundColorsData
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"imageBackgroundColorsData"];

  if (v4)
  {
    imageBackgroundColorsData = 0;
  }

  else
  {
    imageBackgroundColorsData = [(CNVCardPerson *)self->_person imageBackgroundColorsData];
  }

  return imageBackgroundColorsData;
}

- (NSData)sensitiveContentConfiguration
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"sensitiveContentConfiguration"];

  if (v4)
  {
    sensitiveContentConfiguration = 0;
  }

  else
  {
    sensitiveContentConfiguration = [(CNVCardPerson *)self->_person sensitiveContentConfiguration];
  }

  return sensitiveContentConfiguration;
}

- (NSDateComponents)birthdayComponents
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields _cn_any:&__block_literal_global_15];

  if (v4)
  {
    birthdayComponents = 0;
  }

  else
  {
    birthdayComponents = [(CNVCardPerson *)self->_person birthdayComponents];
  }

  return birthdayComponents;
}

- (NSDateComponents)alternateBirthdayComponents
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields _cn_any:&__block_literal_global_17];

  if (v4)
  {
    alternateBirthdayComponents = 0;
  }

  else
  {
    alternateBirthdayComponents = [(CNVCardPerson *)self->_person alternateBirthdayComponents];
  }

  return alternateBirthdayComponents;
}

- (NSArray)otherDateComponents
{
  otherDateComponents = [(CNVCardPerson *)self->_person otherDateComponents];
  v4 = [(CNVCardFilteredPerson *)self filterItems:otherDateComponents property:@"ABDateComponents"];

  return v4;
}

- (NSArray)relatedNames
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"ABRelatedNames"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    relatedNames = [(CNVCardPerson *)self->_person relatedNames];
    v5 = [(CNVCardFilteredPerson *)self filterItems:relatedNames property:@"ABRelatedNames"];
  }

  return v5;
}

- (NSString)note
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"Note"];

  if (v4)
  {
    note = 0;
  }

  else
  {
    note = [(CNVCardPerson *)self->_person note];
  }

  return note;
}

- (NSArray)namesOfParentGroups
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"ABParentGroups"];

  if (v4)
  {
    namesOfParentGroups = 0;
  }

  else
  {
    namesOfParentGroups = [(CNVCardPerson *)self->_person namesOfParentGroups];
  }

  return namesOfParentGroups;
}

- (NSString)cardDAVUID
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"externalUUID"];

  if (v4)
  {
    cardDAVUID = 0;
  }

  else
  {
    cardDAVUID = [(CNVCardPerson *)self->_person cardDAVUID];
  }

  return cardDAVUID;
}

- (NSString)uid
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"UID"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CNVCardPerson *)self->_person uid];
  }

  return v5;
}

- (NSString)phonemeData
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"PhonemeData"];

  if (v4)
  {
    phonemeData = 0;
  }

  else
  {
    phonemeData = [(CNVCardPerson *)self->_person phonemeData];
  }

  return phonemeData;
}

- (NSString)preferredLikenessSource
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"PreferredLikenessSource"];

  if (v4)
  {
    preferredLikenessSource = 0;
  }

  else
  {
    preferredLikenessSource = [(CNVCardPerson *)self->_person preferredLikenessSource];
  }

  return preferredLikenessSource;
}

- (NSString)preferredApplePersonaIdentifier
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"PreferredApplePersonaIdentifier"];

  if (v4)
  {
    preferredApplePersonaIdentifier = 0;
  }

  else
  {
    preferredApplePersonaIdentifier = [(CNVCardPerson *)self->_person preferredApplePersonaIdentifier];
  }

  return preferredApplePersonaIdentifier;
}

- (int)downtimeWhitelistAuthorization
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v4 = [excludedFields containsObject:@"GuardianWhitelisted"];

  if (v4)
  {
    return 0;
  }

  person = self->_person;

  return [(CNVCardPerson *)person downtimeWhitelistAuthorization];
}

- (NSString)imageType
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  if ([excludedFields containsObject:@"com.apple.image.thumbnail"])
  {

LABEL_4:
    imageType = 0;
    goto LABEL_6;
  }

  excludedFields2 = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v5 = [excludedFields2 containsObject:@"imageType"];

  if (v5)
  {
    goto LABEL_4;
  }

  imageType = [(CNVCardPerson *)self->_person imageType];
LABEL_6:

  return imageType;
}

- (NSData)imageHash
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  if ([excludedFields containsObject:@"com.apple.image.thumbnail"])
  {

LABEL_4:
    imageHash = 0;
    goto LABEL_6;
  }

  excludedFields2 = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v5 = [excludedFields2 containsObject:@"imageHash"];

  if (v5)
  {
    goto LABEL_4;
  }

  imageHash = [(CNVCardPerson *)self->_person imageHash];
LABEL_6:

  return imageHash;
}

- (NSData)memojiMetadata
{
  excludedFields = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  if ([excludedFields containsObject:@"com.apple.image.thumbnail"])
  {

LABEL_4:
    memojiMetadata = 0;
    goto LABEL_6;
  }

  excludedFields2 = [(CNVCardFilteredPersonScope *)self->_scope excludedFields];
  v5 = [excludedFields2 containsObject:@"memojiMetadata"];

  if (v5)
  {
    goto LABEL_4;
  }

  memojiMetadata = [(CNVCardPerson *)self->_person memojiMetadata];
LABEL_6:

  return memojiMetadata;
}

@end