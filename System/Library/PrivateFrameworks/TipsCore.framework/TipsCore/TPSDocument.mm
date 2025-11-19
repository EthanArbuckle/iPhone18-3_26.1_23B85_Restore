@interface TPSDocument
+ (id)URLWithTipIdentifier:(id)a3 collectionIdentifier:(id)a4 referrer:(id)a5;
+ (id)contentDictionaryForDictionary:(id)a3 fromMatchingClientConditions:(id)a4;
+ (void)getValuesFromOpenURLSchemeQueryItems:(id)a3 tipIdentifier:(id *)a4 collectionIdentifier:(id *)a5 referrer:(id *)a6;
- (BOOL)hasWidgetContent;
- (BOOL)isEqual:(id)a3;
- (BOOL)isWelcome;
- (NSString)identifier;
- (TPSDocument)initWithCoder:(id)a3;
- (TPSDocument)initWithDictionary:(id)a3 metadata:(id)a4 identifierKey:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithContentDictionary:(id)a3 metadata:(id)a4 clientConditionIdentifier:(id)a5 fileIdMap:(id)a6 clientConditions:(id)a7;
@end

@implementation TPSDocument

+ (id)contentDictionaryForDictionary:(id)a3 fromMatchingClientConditions:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [v5 TPSSafeArrayForKey:@"conditions"];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __75__TPSDocument_contentDictionaryForDictionary_fromMatchingClientConditions___block_invoke;
    v20 = &unk_1E8101FA0;
    v21 = v6;
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

+ (id)URLWithTipIdentifier:(id)a3 collectionIdentifier:(id)a4 referrer:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"tip" value:v7];
    [v10 addObject:v11];
  }

  if (v8)
  {
    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"collection" value:v8];
    [v10 addObject:v12];
  }

  if (v9)
  {
    v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"referrer" value:v9];
    [v10 addObject:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v14 setScheme:@"x-apple-tips"];
  [v14 setHost:@"open"];
  [v14 setQueryItems:v10];
  v15 = [v14 URL];

  return v15;
}

+ (void)getValuesFromOpenURLSchemeQueryItems:(id)a3 tipIdentifier:(id *)a4 collectionIdentifier:(id *)a5 referrer:(id *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
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
        if (!a4 || ([*(*(&v24 + 1) + 8 * v11) name], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"tip"), v13, v15 = a4, (v14 & 1) == 0))
        {
          if (!a5 || ([v12 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"collection"), v16, v15 = a5, (v17 & 1) == 0))
          {
            if (!a6)
            {
              goto LABEL_15;
            }

            v18 = [v12 name];
            if ([v18 isEqualToString:@"referrer"])
            {

              v15 = a6;
            }

            else
            {
              v19 = [v12 name];
              v20 = [v19 isEqualToString:@"launchSource"];

              v15 = a6;
              if (!v20)
              {
                goto LABEL_15;
              }
            }
          }
        }

        *v15 = [v12 value];
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

- (TPSDocument)initWithDictionary:(id)a3 metadata:(id)a4 identifierKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = TPSDocument;
  v11 = [(TPSSerializableObject *)&v33 initWithDictionary:v8];
  if (v11)
  {
    v12 = [v8 TPSSafeStringForKey:v10];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    if (!v11->_identifier)
    {
      v31 = 0;
      goto LABEL_6;
    }

    v14 = [v8 TPSSafeStringForKey:@"variantId"];
    variantID = v11->_variantID;
    v11->_variantID = v14;

    v16 = [v8 TPSSafeDictionaryForKey:@"relationships"];
    v17 = [v16 TPSSafeStringForKey:@"correlationId"];
    correlationID = v11->_correlationID;
    v11->_correlationID = v17;

    v19 = [v16 TPSSafeStringForKey:@"clonedFromId"];
    clonedFromID = v11->_clonedFromID;
    v11->_clonedFromID = v19;

    v21 = [v16 TPSSafeStringForKey:@"supportId"];
    supportID = v11->_supportID;
    v11->_supportID = v21;

    v23 = [v9 language];
    language = v11->_language;
    v11->_language = v23;

    v25 = [MEMORY[0x1E695DF58] tps_userLanguageCode];
    userLanguageCode = v11->_userLanguageCode;
    v11->_userLanguageCode = v25;

    v27 = [v8 TPSSafeArrayForKey:@"keywords"];
    keywords = v11->_keywords;
    v11->_keywords = v27;

    v11->_lastModifiedDate = [v8 TPSSafeIntegerForKey:@"lastModified"];
    v29 = [v8 TPSSafeDictionaryForKey:@"content"];
    v30 = [TPSDocument fileIdMapForDictionary:v8];
    [(TPSDocument *)v11 updateWithContentDictionary:v29 metadata:v9 clientConditionIdentifier:0 fileIdMap:v30 clientConditions:0];
  }

  v31 = v11;
LABEL_6:

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = TPSDocument;
  v4 = [(TPSSerializableObject *)&v20 copyWithZone:a3];
  v5 = [(TPSDocument *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(TPSDocument *)self variantID];
  [v4 setVariantID:v6];

  v7 = [(TPSDocument *)self correlationID];
  [v4 setCorrelationID:v7];

  v8 = [(TPSDocument *)self clonedFromID];
  [v4 setClonedFromID:v8];

  v9 = [(TPSDocument *)self clientConditionID];
  [v4 setClientConditionID:v9];

  v10 = [(TPSDocument *)self supportID];
  [v4 setSupportID:v10];

  v11 = [(TPSDocument *)self notification];
  [v4 setNotification:v11];

  v12 = [(TPSDocument *)self widgetContent];
  [v4 setWidgetContent:v12];

  v13 = [(TPSDocument *)self assetFileInfoManager];
  [v4 setAssetFileInfoManager:v13];

  v14 = [(TPSDocument *)self language];
  [v4 setLanguage:v14];

  v15 = [(TPSDocument *)self userLanguageCode];
  [v4 setUserLanguageCode:v15];

  v16 = [(TPSDocument *)self keywords];
  [v4 setKeywords:v16];

  [v4 setLastModifiedDate:{-[TPSDocument lastModifiedDate](self, "lastModifiedDate")}];
  v17 = [(TPSDocument *)self availabilityContent];
  [v4 setAvailabilityContent:v17];

  v18 = [(TPSDocument *)self linkedDocument];
  [v4 setLinkedDocument:v18];

  return v4;
}

- (TPSDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = TPSDocument;
  v5 = [(TPSSerializableObject *)&v41 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"variantId"];
    variantID = v5->_variantID;
    v5->_variantID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"correlationId"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clonedFromId"];
    clonedFromID = v5->_clonedFromID;
    v5->_clonedFromID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientConditionId"];
    clientConditionID = v5->_clientConditionID;
    v5->_clientConditionID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportId"];
    supportID = v5->_supportID;
    v5->_supportID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
    notification = v5->_notification;
    v5->_notification = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
    widgetContent = v5->_widgetContent;
    v5->_widgetContent = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileIdMap"];
    assetFileInfoManager = v5->_assetFileInfoManager;
    v5->_assetFileInfoManager = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userLanguageCode"];
    userLanguageCode = v5->_userLanguageCode;
    v5->_userLanguageCode = v26;

    v28 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"keywords"];
    keywords = v5->_keywords;
    v5->_keywords = v28;

    v5->_lastModifiedDate = [v4 decodeIntegerForKey:@"lastModified"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v30 setWithObjects:{v31, v32, v33, v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"availabilityMessage"];
    availabilityContent = v5->_availabilityContent;
    v5->_availabilityContent = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkedDocument"];
    linkedDocument = v5->_linkedDocument;
    v5->_linkedDocument = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = TPSDocument;
  v4 = a3;
  [(TPSSerializableObject *)&v19 encodeWithCoder:v4];
  v5 = [(TPSDocument *)self identifier:v19.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(TPSDocument *)self variantID];
  [v4 encodeObject:v6 forKey:@"variantId"];

  v7 = [(TPSDocument *)self correlationID];
  [v4 encodeObject:v7 forKey:@"correlationId"];

  v8 = [(TPSDocument *)self clonedFromID];
  [v4 encodeObject:v8 forKey:@"clonedFromId"];

  v9 = [(TPSDocument *)self clientConditionID];
  [v4 encodeObject:v9 forKey:@"clientConditionId"];

  v10 = [(TPSDocument *)self supportID];
  [v4 encodeObject:v10 forKey:@"supportId"];

  v11 = [(TPSDocument *)self notification];
  [v4 encodeObject:v11 forKey:@"notification"];

  v12 = [(TPSDocument *)self widgetContent];
  [v4 encodeObject:v12 forKey:@"widget"];

  v13 = [(TPSDocument *)self assetFileInfoManager];
  [v4 encodeObject:v13 forKey:@"fileIdMap"];

  v14 = [(TPSDocument *)self language];
  [v4 encodeObject:v14 forKey:@"language"];

  v15 = [(TPSDocument *)self userLanguageCode];
  [v4 encodeObject:v15 forKey:@"userLanguageCode"];

  v16 = [(TPSDocument *)self keywords];
  [v4 encodeObject:v16 forKey:@"keywords"];

  [v4 encodeInteger:-[TPSDocument lastModifiedDate](self forKey:{"lastModifiedDate"), @"lastModified"}];
  v17 = [(TPSDocument *)self availabilityContent];
  [v4 encodeObject:v17 forKey:@"availabilityMessage"];

  v18 = [(TPSDocument *)self linkedDocument];
  [v4 encodeObject:v18 forKey:@"linkedDocument"];
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v4 UUIDString];
  }

  return v3;
}

- (void)updateWithContentDictionary:(id)a3 metadata:(id)a4 clientConditionIdentifier:(id)a5 fileIdMap:(id)a6 clientConditions:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  [(TPSDocument *)self setClientConditionID:a5];
  v25 = [TPSNotification notificationFromDictionary:v15];
  v16 = [[TPSNotification alloc] initWithDictionary:v25];
  [(TPSDocument *)self setNotification:v16];

  v17 = [[TPSAssetFileInfoManager alloc] initWithDictionary:v13 clientConditions:v12];
  [(TPSDocument *)self setAssetFileInfoManager:v17];

  v18 = [v15 TPSSafeDictionaryForKey:@"widget"];
  v19 = [[TPSWidgetContent alloc] initWithDictionary:v18 metadata:v14];

  [(TPSDocument *)self setWidgetContent:v19];
  v20 = [v15 TPSSafeDictionaryForKey:@"availabilityMessage"];
  v21 = [v20 TPSSafeArrayForKey:@"content"];
  availabilityContent = self->_availabilityContent;
  self->_availabilityContent = v21;

  v23 = [TPSLinkedDocument linkedDocumentFromDictionary:v15];

  v24 = [[TPSLinkedDocument alloc] initWithDictionary:v23];
  [(TPSDocument *)self setLinkedDocument:v24];
}

- (BOOL)hasWidgetContent
{
  v3 = [(TPSDocument *)self widgetContent];
  v4 = [v3 titleContent];

  v5 = [(TPSDocument *)self widgetContent];
  v6 = [v5 bodyContent];

  if (v6)
  {
    v7 = v4 == 0;
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

  v6 = [(TPSDocument *)self identifier];
  [v5 appendFormat:@" %@ = %@", @"identifier", v6];

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v31.receiver = self;
  v31.super_class = TPSDocument;
  v4 = [(TPSSerializableObject *)&v31 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSDocument *)self identifier];
  [v5 appendFormat:@"\n%@ = %@\n", @"identifier", v6];

  v7 = [(TPSDocument *)self variantID];
  [v5 appendFormat:@"%@ = %@\n", @"variantId", v7];

  v8 = [(TPSDocument *)self correlationID];
  [v5 appendFormat:@"%@ = %@\n", @"correlationId", v8];

  v9 = [(TPSDocument *)self clonedFromID];
  [v5 appendFormat:@"%@ = %@\n", @"clonedFromId", v9];

  v10 = [(TPSDocument *)self clientConditionID];
  [v5 appendFormat:@"%@ = %@\n", @"clientConditionId", v10];

  v11 = [(TPSDocument *)self language];
  [v5 appendFormat:@"%@ = %@\n", @"language", v11];

  v12 = [(TPSDocument *)self userLanguageCode];
  [v5 appendFormat:@"%@ = %@\n", @"userLanguageCode", v12];

  v13 = [(TPSDocument *)self keywords];
  [v5 appendFormat:@"%@ = %@\n", @"keywords", v13];

  [v5 appendFormat:@"%@ = %ld\n", @"lastModified", -[TPSDocument lastModifiedDate](self, "lastModifiedDate")];
  v14 = [(TPSDocument *)self notification];

  if (v14)
  {
    v15 = [(TPSDocument *)self notification];
    v16 = [v15 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"notification", v16];
  }

  v17 = [(TPSDocument *)self widgetContent];

  if (v17)
  {
    v18 = [(TPSDocument *)self widgetContent];
    v19 = [v18 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"widget", v19];
  }

  v20 = [(TPSDocument *)self assetFileInfoManager];

  if (v20)
  {
    v21 = [(TPSDocument *)self assetFileInfoManager];
    v22 = [v21 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"fileIdMap", v22];
  }

  v23 = [(TPSDocument *)self availabilityContent];

  if (v23)
  {
    v24 = [(TPSDocument *)self availabilityContent];
    [v5 appendFormat:@"%@ = %@\n", @"availabilityMessage", v24];
  }

  v25 = [(TPSDocument *)self linkedDocument];

  if (v25)
  {
    v26 = [(TPSDocument *)self linkedDocument];
    v27 = [v26 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"linkedDocument", v27];
  }

  v28 = [(TPSDocument *)self supportID];

  if (v28)
  {
    v29 = [(TPSDocument *)self supportID];
    [v5 appendFormat:@"%@ = %@\n", @"supportId", v29];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end