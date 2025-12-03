@interface TPSDocument
+ (id)URLWithTipIdentifier:(id)identifier collectionIdentifier:(id)collectionIdentifier referrer:(id)referrer;
+ (id)contentDictionaryForDictionary:(id)dictionary fromMatchingClientConditions:(id)conditions;
+ (void)getValuesFromOpenURLSchemeQueryItems:(id)items tipIdentifier:(id *)identifier collectionIdentifier:(id *)collectionIdentifier referrer:(id *)referrer;
- (BOOL)hasWidgetContent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isWelcome;
- (NSString)identifier;
- (TPSDocument)initWithCoder:(id)coder;
- (TPSDocument)initWithDictionary:(id)dictionary metadata:(id)metadata identifierKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithContentDictionary:(id)dictionary metadata:(id)metadata clientConditionIdentifier:(id)identifier fileIdMap:(id)map clientConditions:(id)conditions;
@end

@implementation TPSDocument

+ (id)contentDictionaryForDictionary:(id)dictionary fromMatchingClientConditions:(id)conditions
{
  v23[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  conditionsCopy = conditions;
  if ([conditionsCopy count])
  {
    v7 = [dictionaryCopy TPSSafeArrayForKey:@"conditions"];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __75__TPSDocument_contentDictionaryForDictionary_fromMatchingClientConditions___block_invoke;
    v20 = &unk_1E8101FA0;
    v21 = conditionsCopy;
    v8 = [v7 na_firstObjectPassingTest:&v17];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 TPSSafeStringForKey:{@"ruleId", v17, v18, v19, v20}];
      v11 = [v9 TPSSafeDictionaryForKey:@"content"];
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v22 = v10;
        v23[0] = v11;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __75__TPSDocument_contentDictionaryForDictionary_fromMatchingClientConditions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 TPSSafeStringForKey:@"ruleId"];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

+ (id)URLWithTipIdentifier:(id)identifier collectionIdentifier:(id)collectionIdentifier referrer:(id)referrer
{
  identifierCopy = identifier;
  collectionIdentifierCopy = collectionIdentifier;
  referrerCopy = referrer;
  array = [MEMORY[0x1E695DF70] array];
  if (identifierCopy)
  {
    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"tip" value:identifierCopy];
    [array addObject:v11];
  }

  if (collectionIdentifierCopy)
  {
    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"collection" value:collectionIdentifierCopy];
    [array addObject:v12];
  }

  if (referrerCopy)
  {
    v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"referrer" value:referrerCopy];
    [array addObject:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v14 setScheme:@"x-apple-tips"];
  [v14 setHost:@"open"];
  [v14 setQueryItems:array];
  v15 = [v14 URL];

  return v15;
}

+ (void)getValuesFromOpenURLSchemeQueryItems:(id)items tipIdentifier:(id *)identifier collectionIdentifier:(id *)collectionIdentifier referrer:(id *)referrer
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = items;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (!identifier || ([*(*(&v24 + 1) + 8 * v11) name], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"tip"), v13, referrerCopy2 = identifier, (v14 & 1) == 0))
        {
          if (!collectionIdentifier || ([v12 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"collection"), v16, referrerCopy2 = collectionIdentifier, (v17 & 1) == 0))
          {
            if (!referrer)
            {
              goto LABEL_15;
            }

            name = [v12 name];
            if ([name isEqualToString:@"referrer"])
            {

              referrerCopy2 = referrer;
            }

            else
            {
              name2 = [v12 name];
              v20 = [name2 isEqualToString:@"launchSource"];

              referrerCopy2 = referrer;
              if (!v20)
              {
                goto LABEL_15;
              }
            }
          }
        }

        *referrerCopy2 = [v12 value];
LABEL_15:
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (TPSDocument)initWithDictionary:(id)dictionary metadata:(id)metadata identifierKey:(id)key
{
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  keyCopy = key;
  v33.receiver = self;
  v33.super_class = TPSDocument;
  v11 = [(TPSSerializableObject *)&v33 initWithDictionary:dictionaryCopy];
  if (v11)
  {
    v12 = [dictionaryCopy TPSSafeStringForKey:keyCopy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    if (!v11->_identifier)
    {
      v31 = 0;
      goto LABEL_6;
    }

    v14 = [dictionaryCopy TPSSafeStringForKey:@"variantId"];
    variantID = v11->_variantID;
    v11->_variantID = v14;

    v16 = [dictionaryCopy TPSSafeDictionaryForKey:@"relationships"];
    v17 = [v16 TPSSafeStringForKey:@"correlationId"];
    correlationID = v11->_correlationID;
    v11->_correlationID = v17;

    v19 = [v16 TPSSafeStringForKey:@"clonedFromId"];
    clonedFromID = v11->_clonedFromID;
    v11->_clonedFromID = v19;

    v21 = [v16 TPSSafeStringForKey:@"supportId"];
    supportID = v11->_supportID;
    v11->_supportID = v21;

    language = [metadataCopy language];
    language = v11->_language;
    v11->_language = language;

    tps_userLanguageCode = [MEMORY[0x1E695DF58] tps_userLanguageCode];
    userLanguageCode = v11->_userLanguageCode;
    v11->_userLanguageCode = tps_userLanguageCode;

    v27 = [dictionaryCopy TPSSafeArrayForKey:@"keywords"];
    keywords = v11->_keywords;
    v11->_keywords = v27;

    v11->_lastModifiedDate = [dictionaryCopy TPSSafeIntegerForKey:@"lastModified"];
    v29 = [dictionaryCopy TPSSafeDictionaryForKey:@"content"];
    v30 = [TPSDocument fileIdMapForDictionary:dictionaryCopy];
    [(TPSDocument *)v11 updateWithContentDictionary:v29 metadata:metadataCopy clientConditionIdentifier:0 fileIdMap:v30 clientConditions:0];
  }

  v31 = v11;
LABEL_6:

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = TPSDocument;
  v4 = [(TPSSerializableObject *)&v20 copyWithZone:zone];
  identifier = [(TPSDocument *)self identifier];
  [v4 setIdentifier:identifier];

  variantID = [(TPSDocument *)self variantID];
  [v4 setVariantID:variantID];

  correlationID = [(TPSDocument *)self correlationID];
  [v4 setCorrelationID:correlationID];

  clonedFromID = [(TPSDocument *)self clonedFromID];
  [v4 setClonedFromID:clonedFromID];

  clientConditionID = [(TPSDocument *)self clientConditionID];
  [v4 setClientConditionID:clientConditionID];

  supportID = [(TPSDocument *)self supportID];
  [v4 setSupportID:supportID];

  notification = [(TPSDocument *)self notification];
  [v4 setNotification:notification];

  widgetContent = [(TPSDocument *)self widgetContent];
  [v4 setWidgetContent:widgetContent];

  assetFileInfoManager = [(TPSDocument *)self assetFileInfoManager];
  [v4 setAssetFileInfoManager:assetFileInfoManager];

  language = [(TPSDocument *)self language];
  [v4 setLanguage:language];

  userLanguageCode = [(TPSDocument *)self userLanguageCode];
  [v4 setUserLanguageCode:userLanguageCode];

  keywords = [(TPSDocument *)self keywords];
  [v4 setKeywords:keywords];

  [v4 setLastModifiedDate:{-[TPSDocument lastModifiedDate](self, "lastModifiedDate")}];
  availabilityContent = [(TPSDocument *)self availabilityContent];
  [v4 setAvailabilityContent:availabilityContent];

  linkedDocument = [(TPSDocument *)self linkedDocument];
  [v4 setLinkedDocument:linkedDocument];

  return v4;
}

- (TPSDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = TPSDocument;
  v5 = [(TPSSerializableObject *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variantId"];
    variantID = v5->_variantID;
    v5->_variantID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"correlationId"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clonedFromId"];
    clonedFromID = v5->_clonedFromID;
    v5->_clonedFromID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientConditionId"];
    clientConditionID = v5->_clientConditionID;
    v5->_clientConditionID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportId"];
    supportID = v5->_supportID;
    v5->_supportID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
    notification = v5->_notification;
    v5->_notification = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
    widgetContent = v5->_widgetContent;
    v5->_widgetContent = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileIdMap"];
    assetFileInfoManager = v5->_assetFileInfoManager;
    v5->_assetFileInfoManager = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userLanguageCode"];
    userLanguageCode = v5->_userLanguageCode;
    v5->_userLanguageCode = v26;

    v28 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"keywords"];
    keywords = v5->_keywords;
    v5->_keywords = v28;

    v5->_lastModifiedDate = [coderCopy decodeIntegerForKey:@"lastModified"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v30 setWithObjects:{v31, v32, v33, v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"availabilityMessage"];
    availabilityContent = v5->_availabilityContent;
    v5->_availabilityContent = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkedDocument"];
    linkedDocument = v5->_linkedDocument;
    v5->_linkedDocument = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = TPSDocument;
  coderCopy = coder;
  [(TPSSerializableObject *)&v19 encodeWithCoder:coderCopy];
  v5 = [(TPSDocument *)self identifier:v19.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];

  variantID = [(TPSDocument *)self variantID];
  [coderCopy encodeObject:variantID forKey:@"variantId"];

  correlationID = [(TPSDocument *)self correlationID];
  [coderCopy encodeObject:correlationID forKey:@"correlationId"];

  clonedFromID = [(TPSDocument *)self clonedFromID];
  [coderCopy encodeObject:clonedFromID forKey:@"clonedFromId"];

  clientConditionID = [(TPSDocument *)self clientConditionID];
  [coderCopy encodeObject:clientConditionID forKey:@"clientConditionId"];

  supportID = [(TPSDocument *)self supportID];
  [coderCopy encodeObject:supportID forKey:@"supportId"];

  notification = [(TPSDocument *)self notification];
  [coderCopy encodeObject:notification forKey:@"notification"];

  widgetContent = [(TPSDocument *)self widgetContent];
  [coderCopy encodeObject:widgetContent forKey:@"widget"];

  assetFileInfoManager = [(TPSDocument *)self assetFileInfoManager];
  [coderCopy encodeObject:assetFileInfoManager forKey:@"fileIdMap"];

  language = [(TPSDocument *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  userLanguageCode = [(TPSDocument *)self userLanguageCode];
  [coderCopy encodeObject:userLanguageCode forKey:@"userLanguageCode"];

  keywords = [(TPSDocument *)self keywords];
  [coderCopy encodeObject:keywords forKey:@"keywords"];

  [coderCopy encodeInteger:-[TPSDocument lastModifiedDate](self forKey:{"lastModifiedDate"), @"lastModified"}];
  availabilityContent = [(TPSDocument *)self availabilityContent];
  [coderCopy encodeObject:availabilityContent forKey:@"availabilityMessage"];

  linkedDocument = [(TPSDocument *)self linkedDocument];
  [coderCopy encodeObject:linkedDocument forKey:@"linkedDocument"];
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    uUIDString = identifier;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  return uUIDString;
}

- (void)updateWithContentDictionary:(id)dictionary metadata:(id)metadata clientConditionIdentifier:(id)identifier fileIdMap:(id)map clientConditions:(id)conditions
{
  conditionsCopy = conditions;
  mapCopy = map;
  metadataCopy = metadata;
  dictionaryCopy = dictionary;
  [(TPSDocument *)self setClientConditionID:identifier];
  v25 = [TPSNotification notificationFromDictionary:dictionaryCopy];
  v16 = [[TPSNotification alloc] initWithDictionary:v25];
  [(TPSDocument *)self setNotification:v16];

  v17 = [[TPSAssetFileInfoManager alloc] initWithDictionary:mapCopy clientConditions:conditionsCopy];
  [(TPSDocument *)self setAssetFileInfoManager:v17];

  v18 = [dictionaryCopy TPSSafeDictionaryForKey:@"widget"];
  v19 = [[TPSWidgetContent alloc] initWithDictionary:v18 metadata:metadataCopy];

  [(TPSDocument *)self setWidgetContent:v19];
  v20 = [dictionaryCopy TPSSafeDictionaryForKey:@"availabilityMessage"];
  v21 = [v20 TPSSafeArrayForKey:@"content"];
  availabilityContent = self->_availabilityContent;
  self->_availabilityContent = v21;

  v23 = [TPSLinkedDocument linkedDocumentFromDictionary:dictionaryCopy];

  v24 = [[TPSLinkedDocument alloc] initWithDictionary:v23];
  [(TPSDocument *)self setLinkedDocument:v24];
}

- (BOOL)hasWidgetContent
{
  widgetContent = [(TPSDocument *)self widgetContent];
  titleContent = [widgetContent titleContent];

  widgetContent2 = [(TPSDocument *)self widgetContent];
  bodyContent = [widgetContent2 bodyContent];

  if (bodyContent)
  {
    v7 = titleContent == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

- (BOOL)isWelcome
{
  if ([(TPSDocument *)self isHardwareWelcome]|| [(TPSDocument *)self isSoftwareWelcome])
  {
    return 1;
  }

  return [(TPSDocument *)self isSwitcherWelcome];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v8.receiver = self;
  v8.super_class = TPSDocument;
  v4 = [(TPSDocument *)&v8 description];
  v5 = [v3 initWithString:v4];

  identifier = [(TPSDocument *)self identifier];
  [v5 appendFormat:@" %@ = %@", @"identifier", identifier];

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v31.receiver = self;
  v31.super_class = TPSDocument;
  v4 = [(TPSSerializableObject *)&v31 debugDescription];
  v5 = [v3 initWithString:v4];

  identifier = [(TPSDocument *)self identifier];
  [v5 appendFormat:@"\n%@ = %@\n", @"identifier", identifier];

  variantID = [(TPSDocument *)self variantID];
  [v5 appendFormat:@"%@ = %@\n", @"variantId", variantID];

  correlationID = [(TPSDocument *)self correlationID];
  [v5 appendFormat:@"%@ = %@\n", @"correlationId", correlationID];

  clonedFromID = [(TPSDocument *)self clonedFromID];
  [v5 appendFormat:@"%@ = %@\n", @"clonedFromId", clonedFromID];

  clientConditionID = [(TPSDocument *)self clientConditionID];
  [v5 appendFormat:@"%@ = %@\n", @"clientConditionId", clientConditionID];

  language = [(TPSDocument *)self language];
  [v5 appendFormat:@"%@ = %@\n", @"language", language];

  userLanguageCode = [(TPSDocument *)self userLanguageCode];
  [v5 appendFormat:@"%@ = %@\n", @"userLanguageCode", userLanguageCode];

  keywords = [(TPSDocument *)self keywords];
  [v5 appendFormat:@"%@ = %@\n", @"keywords", keywords];

  [v5 appendFormat:@"%@ = %ld\n", @"lastModified", -[TPSDocument lastModifiedDate](self, "lastModifiedDate")];
  notification = [(TPSDocument *)self notification];

  if (notification)
  {
    notification2 = [(TPSDocument *)self notification];
    v16 = [notification2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"notification", v16];
  }

  widgetContent = [(TPSDocument *)self widgetContent];

  if (widgetContent)
  {
    widgetContent2 = [(TPSDocument *)self widgetContent];
    v19 = [widgetContent2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"widget", v19];
  }

  assetFileInfoManager = [(TPSDocument *)self assetFileInfoManager];

  if (assetFileInfoManager)
  {
    assetFileInfoManager2 = [(TPSDocument *)self assetFileInfoManager];
    v22 = [assetFileInfoManager2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"fileIdMap", v22];
  }

  availabilityContent = [(TPSDocument *)self availabilityContent];

  if (availabilityContent)
  {
    availabilityContent2 = [(TPSDocument *)self availabilityContent];
    [v5 appendFormat:@"%@ = %@\n", @"availabilityMessage", availabilityContent2];
  }

  linkedDocument = [(TPSDocument *)self linkedDocument];

  if (linkedDocument)
  {
    linkedDocument2 = [(TPSDocument *)self linkedDocument];
    v27 = [linkedDocument2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"linkedDocument", v27];
  }

  supportID = [(TPSDocument *)self supportID];

  if (supportID)
  {
    supportID2 = [(TPSDocument *)self supportID];
    [v5 appendFormat:@"%@ = %@\n", @"supportId", supportID2];
  }

  return v5;
}

id __26__TPSDocument_na_identity__block_invoke()
{
  if (TPSDocumentURLSchemeParameterLaunchSourceKey_block_invoke_na_once_token_0 != -1)
  {
    __26__TPSDocument_na_identity__block_invoke_cold_1();
  }

  v1 = TPSDocumentURLSchemeParameterLaunchSourceKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __26__TPSDocument_na_identity__block_invoke_2()
{
  v0 = __26__TPSDocument_na_identity__block_invoke_3();
  v1 = TPSDocumentURLSchemeParameterLaunchSourceKey_block_invoke_na_once_object_0;
  TPSDocumentURLSchemeParameterLaunchSourceKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __26__TPSDocument_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_131];
  v2 = [v0 appendCharacteristic:&__block_literal_global_133];
  v3 = [v0 appendCharacteristic:&__block_literal_global_135];
  v4 = [v0 appendCharacteristic:&__block_literal_global_137];
  v5 = [v0 appendCharacteristic:&__block_literal_global_139];
  v6 = [v0 appendCharacteristic:&__block_literal_global_142];
  v7 = [v0 appendCharacteristic:&__block_literal_global_145];
  v8 = [v0 appendCharacteristic:&__block_literal_global_148];
  v9 = [v0 appendCharacteristic:&__block_literal_global_150];
  v10 = [v0 appendCharacteristic:&__block_literal_global_153];
  v11 = [v0 appendCharacteristic:&__block_literal_global_156];
  v12 = [v0 appendCharacteristic:&__block_literal_global_158];
  v13 = [v0 build];

  return v13;
}

uint64_t __26__TPSDocument_na_identity__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 lastModifiedDate];

  return [v2 numberWithInteger:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end