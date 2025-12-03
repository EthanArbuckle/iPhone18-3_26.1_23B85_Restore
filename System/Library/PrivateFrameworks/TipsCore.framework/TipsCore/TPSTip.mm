@interface TPSTip
+ (id)correlationIdForDictionary:(id)dictionary;
+ (id)na_identity;
+ (int64_t)contentTypeForContentDictionary:(id)dictionary;
+ (int64_t)contentTypeForDictionary:(id)dictionary;
- (BOOL)containsLinks;
- (BOOL)hasImage;
- (BOOL)hasVideo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHardwareWelcome;
- (BOOL)isSiriSuggestion;
- (BOOL)isSoftwareWelcome;
- (BOOL)isSwitcherWelcome;
- (BOOL)isTip;
- (NSString)linkedDocumentId;
- (TPSAssets)fullContentAssets;
- (TPSTip)initWithCoder:(id)coder;
- (TPSTip)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (id)URLWithReferrer:(id)referrer;
- (id)actions;
- (id)bodyContent;
- (id)bodyText;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)footnoteContent;
- (id)shortTitle;
- (id)summary;
- (id)text;
- (id)textContent;
- (id)title;
- (unint64_t)hash;
- (void)addCollectionIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)removeCollectionIdentifier:(id)identifier;
- (void)setSiriSuggestion:(BOOL)suggestion;
- (void)updateWithContentDictionary:(id)dictionary metadata:(id)metadata clientConditionIdentifier:(id)identifier fileIdMap:(id)map clientConditions:(id)conditions;
@end

@implementation TPSTip

- (BOOL)containsLinks
{
  fullContent = [(TPSTip *)self fullContent];
  bodyContainsLink = [fullContent bodyContainsLink];

  return bodyContainsLink;
}

- (id)shortTitle
{
  fullContent = [(TPSTip *)self fullContent];
  title = [fullContent title];

  return title;
}

- (BOOL)hasImage
{
  fullContentAssets = [(TPSTip *)self fullContentAssets];
  hasImage = [fullContentAssets hasImage];

  return hasImage;
}

- (BOOL)hasVideo
{
  fullContentAssets = [(TPSTip *)self fullContentAssets];
  hasVideo = [fullContentAssets hasVideo];

  return hasVideo;
}

- (id)actions
{
  fullContent = [(TPSTip *)self fullContent];
  actions = [fullContent actions];

  return actions;
}

- (id)summary
{
  fullContent = [(TPSTip *)self fullContent];
  title = [fullContent title];

  return title;
}

- (id)bodyText
{
  fullContent = [(TPSTip *)self fullContent];
  bodyText = [fullContent bodyText];

  return bodyText;
}

- (id)bodyContent
{
  fullContent = [(TPSTip *)self fullContent];
  bodyContent = [fullContent bodyContent];

  return bodyContent;
}

- (id)footnoteContent
{
  fullContent = [(TPSTip *)self fullContent];
  footnoteContent = [fullContent footnoteContent];

  return footnoteContent;
}

+ (int64_t)contentTypeForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = [dictionaryCopy TPSSafeDictionaryForKey:@"content"];
  if (v5)
  {
    v6 = [self contentTypeForContentDictionary:v5];
    v11[3] = v6;
  }

  else
  {
    v6 = v11[3];
  }

  if (v6 == 1)
  {
    v7 = [dictionaryCopy TPSSafeArrayForKey:@"conditions"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__TPSTip_contentTypeForDictionary___block_invoke;
    v9[3] = &unk_1E8101B70;
    v9[4] = &v10;
    v9[5] = self;
    [v7 enumerateObjectsUsingBlock:v9];

    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

void __35__TPSTip_contentTypeForDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 TPSSafeDictionaryForKey:@"content"];
  *(*(*(a1 + 32) + 8) + 24) = [*(a1 + 40) contentTypeForContentDictionary:v6];
  *a4 = *(*(*(a1 + 32) + 8) + 24) != 1;
}

+ (id)correlationIdForDictionary:(id)dictionary
{
  v3 = [dictionary TPSSafeDictionaryForKey:@"relationships"];
  v4 = [v3 TPSSafeStringForKey:@"correlationId"];

  return v4;
}

+ (int64_t)contentTypeForContentDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy TPSSafeDictionaryForKey:@"full"];

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = [dictionaryCopy TPSSafeDictionaryForKey:@"mini"];

  if (v6)
  {
    v5 |= 4uLL;
  }

  v7 = [dictionaryCopy TPSSafeDictionaryForKey:@"checklist"];

  v8 = v5 | 8;
  if (!v7)
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    return 1;
  }

  else
  {
    return v8 & 0xE;
  }
}

- (TPSTip)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = TPSTip;
  v7 = [(TPSDocument *)&v11 initWithDictionary:dictionaryCopy metadata:metadata identifierKey:@"documentId"];
  if (v7)
  {
    v7->_type = [objc_opt_class() contentTypeForDictionary:dictionaryCopy];
    v7->_subContentType = 0;
    v8 = [dictionaryCopy TPSSafeStringForKey:@"subContentType"];
    if ([v8 isEqualToString:@"intro"])
    {
      v9 = 1;
    }

    else if ([v8 isEqualToString:@"outro"])
    {
      v9 = 2;
    }

    else if ([v8 isEqualToString:@"checklist"])
    {
      v9 = 3;
    }

    else
    {
      if (![v8 isEqualToString:@"linked-article"])
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = 4;
    }

    v7->_subContentType = v9;
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = TPSTip;
  v4 = [(TPSDocument *)&v10 copyWithZone:zone];
  [v4 setSiriSuggestion:{-[TPSTip isSiriSuggestion](self, "isSiriSuggestion")}];
  [v4 setType:{-[TPSTip type](self, "type")}];
  [v4 setSubContentType:{-[TPSTip subContentType](self, "subContentType")}];
  eyebrow = [(TPSTip *)self eyebrow];
  [v4 setEyebrow:eyebrow];

  fullContent = [(TPSTip *)self fullContent];
  [v4 setFullContent:fullContent];

  miniContent = [(TPSTip *)self miniContent];
  [v4 setMiniContent:miniContent];

  collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
  [v4 setCollectionIdentifiers:collectionIdentifiers];

  [v4 setContentStatus:{-[TPSTip contentStatus](self, "contentStatus")}];
  return v4;
}

- (TPSTip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = TPSTip;
  v5 = [(TPSDocument *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_siriSuggestion = [coderCopy decodeBoolForKey:@"SiriSuggestion"];
    v5->_contentStatus = [coderCopy decodeIntegerForKey:@"contentStatus"];
    v5->_subContentType = [coderCopy decodeIntegerForKey:@"subContentType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eyebrow"];
    eyebrow = v5->_eyebrow;
    v5->_eyebrow = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"full"];
    fullContent = v5->_fullContent;
    v5->_fullContent = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mini"];
    miniContent = v5->_miniContent;
    v5->_miniContent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"checklist"];
    checklistContent = v5->_checklistContent;
    v5->_checklistContent = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"collectionIdentifiers"];
    collectionIdentifiers = v5->_collectionIdentifiers;
    v5->_collectionIdentifiers = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = TPSTip;
  coderCopy = coder;
  [(TPSDocument *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[TPSTip isSiriSuggestion](self forKey:{"isSiriSuggestion", v10.receiver, v10.super_class), @"SiriSuggestion"}];
  [coderCopy encodeInteger:-[TPSTip contentStatus](self forKey:{"contentStatus"), @"contentStatus"}];
  [coderCopy encodeInteger:-[TPSTip subContentType](self forKey:{"subContentType"), @"subContentType"}];
  eyebrow = [(TPSTip *)self eyebrow];
  [coderCopy encodeObject:eyebrow forKey:@"eyebrow"];

  fullContent = [(TPSTip *)self fullContent];
  [coderCopy encodeObject:fullContent forKey:@"full"];

  miniContent = [(TPSTip *)self miniContent];
  [coderCopy encodeObject:miniContent forKey:@"mini"];

  checklistContent = [(TPSTip *)self checklistContent];
  [coderCopy encodeObject:checklistContent forKey:@"checklist"];

  collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
  [coderCopy encodeObject:collectionIdentifiers forKey:@"collectionIdentifiers"];
}

- (BOOL)isTip
{
  if (![(TPSTip *)self subContentType])
  {
    return 1;
  }

  return [(TPSTip *)self isChecklistTip];
}

- (BOOL)isHardwareWelcome
{
  isIntro = [(TPSTip *)self isIntro];
  if (isIntro)
  {
    collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
    v5 = +[TPSCommonDefines hardwareWelcomeCollectionIdentifier];
    v6 = [collectionIdentifiers containsObject:v5];

    LOBYTE(isIntro) = v6;
  }

  return isIntro;
}

- (BOOL)isSoftwareWelcome
{
  isIntro = [(TPSTip *)self isIntro];
  if (isIntro)
  {
    collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
    v5 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
    v6 = [collectionIdentifiers containsObject:v5];

    LOBYTE(isIntro) = v6;
  }

  return isIntro;
}

- (BOOL)isSwitcherWelcome
{
  isIntro = [(TPSTip *)self isIntro];
  if (isIntro)
  {
    collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
    v5 = +[TPSCommonDefines switcherWelcomeCollectionIdentifier];
    v6 = [collectionIdentifiers containsObject:v5];

    LOBYTE(isIntro) = v6;
  }

  return isIntro;
}

- (NSString)linkedDocumentId
{
  linkedDocument = [(TPSDocument *)self linkedDocument];
  documentId = [linkedDocument documentId];

  return documentId;
}

- (id)title
{
  fullContent = [(TPSTip *)self fullContent];
  title = [fullContent title];

  return title;
}

- (id)text
{
  fullContent = [(TPSTip *)self fullContent];
  bodyText = [fullContent bodyText];

  return bodyText;
}

- (id)textContent
{
  fullContent = [(TPSTip *)self fullContent];
  bodyContent = [fullContent bodyContent];

  return bodyContent;
}

- (TPSAssets)fullContentAssets
{
  fullContent = [(TPSTip *)self fullContent];
  assets = [fullContent assets];

  return assets;
}

- (void)updateWithContentDictionary:(id)dictionary metadata:(id)metadata clientConditionIdentifier:(id)identifier fileIdMap:(id)map clientConditions:(id)conditions
{
  v22.receiver = self;
  v22.super_class = TPSTip;
  metadataCopy = metadata;
  dictionaryCopy = dictionary;
  [(TPSDocument *)&v22 updateWithContentDictionary:dictionaryCopy metadata:metadataCopy clientConditionIdentifier:identifier fileIdMap:map clientConditions:conditions];
  v14 = [dictionaryCopy TPSSafeStringForKey:{@"eyebrow", v22.receiver, v22.super_class}];
  eyebrow = self->_eyebrow;
  self->_eyebrow = v14;

  v16 = [dictionaryCopy TPSSafeDictionaryForKey:@"full"];
  v17 = [[TPSFullTipContent alloc] initWithDictionary:v16 metadata:metadataCopy];
  [(TPSTip *)self setFullContent:v17];

  v18 = [dictionaryCopy TPSSafeDictionaryForKey:@"mini"];
  v19 = [[TPSActionableContent alloc] initWithDictionary:v18 metadata:metadataCopy];
  [(TPSTip *)self setMiniContent:v19];

  v20 = [dictionaryCopy TPSSafeDictionaryForKey:@"checklist"];

  v21 = [[TPSChecklistContent alloc] initWithDictionary:v20 metadata:metadataCopy];
  [(TPSTip *)self setChecklistContent:v21];
}

- (void)setSiriSuggestion:(BOOL)suggestion
{
  os_unfair_lock_lock(&_sharedLock);
  self->_siriSuggestion = suggestion;

  os_unfair_lock_unlock(&_sharedLock);
}

- (BOOL)isSiriSuggestion
{
  os_unfair_lock_lock(&_sharedLock);
  LOBYTE(self) = self->_siriSuggestion;
  os_unfair_lock_unlock(&_sharedLock);
  return self;
}

- (void)addCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&_sharedLock);
  v4 = MEMORY[0x1E695DFA0];
  collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
  v6 = [v4 orderedSetWithArray:collectionIdentifiers];

  [v6 addObject:identifierCopy];
  array = [v6 array];
  [(TPSTip *)self setCollectionIdentifiers:array];

  os_unfair_lock_unlock(&_sharedLock);
}

- (void)removeCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&_sharedLock);
  collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
  v5 = [collectionIdentifiers mutableCopy];

  [v5 removeObject:identifierCopy];
  v6 = [v5 copy];
  [(TPSTip *)self setCollectionIdentifiers:v6];

  os_unfair_lock_unlock(&_sharedLock);
}

- (id)URLWithReferrer:(id)referrer
{
  referrerCopy = referrer;
  identifier = [(TPSDocument *)self identifier];
  collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
  firstObject = [collectionIdentifiers firstObject];
  v8 = [TPSDocument URLWithTipIdentifier:identifier collectionIdentifier:firstObject referrer:referrerCopy];

  return v8;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v19.receiver = self;
  v19.super_class = TPSTip;
  v4 = [(TPSDocument *)&v19 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"%@ = %d\n", @"SiriSuggestion", -[TPSTip isSiriSuggestion](self, "isSiriSuggestion")];
  [v5 appendFormat:@"%@ = %ld\n", @"contentStatus", -[TPSTip contentStatus](self, "contentStatus")];
  [v5 appendFormat:@"%@ = %ld\n", @"subContentType", -[TPSTip subContentType](self, "subContentType")];
  collectionIdentifiers = [(TPSTip *)self collectionIdentifiers];
  [v5 appendFormat:@"%@ = %@\n", @"collectionIdentifiers", collectionIdentifiers];

  eyebrow = [(TPSTip *)self eyebrow];

  if (eyebrow)
  {
    eyebrow2 = [(TPSTip *)self eyebrow];
    [v5 appendFormat:@"\n  %@ = %@\n", @"eyebrow", eyebrow2];
  }

  fullContent = [(TPSTip *)self fullContent];

  if (fullContent)
  {
    fullContent2 = [(TPSTip *)self fullContent];
    v11 = [fullContent2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"full", v11];
  }

  miniContent = [(TPSTip *)self miniContent];

  if (miniContent)
  {
    miniContent2 = [(TPSTip *)self miniContent];
    v14 = [miniContent2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"mini", v14];
  }

  checklistContent = [(TPSTip *)self checklistContent];

  if (checklistContent)
  {
    checklistContent2 = [(TPSTip *)self checklistContent];
    v17 = [checklistContent2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"checklist", v17];
  }

  return v5;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __21__TPSTip_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __21__TPSTip_na_identity__block_invoke(v4);

  return v2;
}

id __21__TPSTip_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__TPSTip_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (TPSTipSubContentTypeOutroValue_block_invoke_na_once_token_0 != -1)
  {
    dispatch_once(&TPSTipSubContentTypeOutroValue_block_invoke_na_once_token_0, block);
  }

  v1 = TPSTipSubContentTypeOutroValue_block_invoke_na_once_object_0;

  return v1;
}

void __21__TPSTip_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __21__TPSTip_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __21__TPSTip_na_identity__block_invoke_3(v3);
  v2 = TPSTipSubContentTypeOutroValue_block_invoke_na_once_object_0;
  TPSTipSubContentTypeOutroValue_block_invoke_na_once_object_0 = v1;
}

id __21__TPSTip_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___TPSTip;
  v2 = objc_msgSendSuper2(&v13, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_16];
  v5 = [v3 appendCharacteristic:&__block_literal_global_82_0];
  v6 = [v3 appendCharacteristic:&__block_literal_global_84];
  v7 = [v3 appendCharacteristic:&__block_literal_global_87_1];
  v8 = [v3 appendCharacteristic:&__block_literal_global_90_0];
  v9 = [v3 appendCharacteristic:&__block_literal_global_93];
  v10 = [v3 appendCharacteristic:&__block_literal_global_96];
  v11 = [v3 build];

  return v11;
}

uint64_t __21__TPSTip_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 contentStatus];

  return [v2 numberWithInteger:v3];
}

uint64_t __21__TPSTip_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 type];

  return [v2 numberWithInteger:v3];
}

uint64_t __21__TPSTip_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 subContentType];

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