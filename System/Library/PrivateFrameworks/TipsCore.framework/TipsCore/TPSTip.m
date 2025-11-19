@interface TPSTip
+ (id)correlationIdForDictionary:(id)a3;
+ (id)na_identity;
+ (int64_t)contentTypeForContentDictionary:(id)a3;
+ (int64_t)contentTypeForDictionary:(id)a3;
- (BOOL)containsLinks;
- (BOOL)hasImage;
- (BOOL)hasVideo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHardwareWelcome;
- (BOOL)isSiriSuggestion;
- (BOOL)isSoftwareWelcome;
- (BOOL)isSwitcherWelcome;
- (BOOL)isTip;
- (NSString)linkedDocumentId;
- (TPSAssets)fullContentAssets;
- (TPSTip)initWithCoder:(id)a3;
- (TPSTip)initWithDictionary:(id)a3 metadata:(id)a4;
- (id)URLWithReferrer:(id)a3;
- (id)actions;
- (id)bodyContent;
- (id)bodyText;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)footnoteContent;
- (id)shortTitle;
- (id)summary;
- (id)text;
- (id)textContent;
- (id)title;
- (unint64_t)hash;
- (void)addCollectionIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeCollectionIdentifier:(id)a3;
- (void)setSiriSuggestion:(BOOL)a3;
- (void)updateWithContentDictionary:(id)a3 metadata:(id)a4 clientConditionIdentifier:(id)a5 fileIdMap:(id)a6 clientConditions:(id)a7;
@end

@implementation TPSTip

- (BOOL)containsLinks
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 bodyContainsLink];

  return v3;
}

- (id)shortTitle
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 title];

  return v3;
}

- (BOOL)hasImage
{
  v2 = [(TPSTip *)self fullContentAssets];
  v3 = [v2 hasImage];

  return v3;
}

- (BOOL)hasVideo
{
  v2 = [(TPSTip *)self fullContentAssets];
  v3 = [v2 hasVideo];

  return v3;
}

- (id)actions
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 actions];

  return v3;
}

- (id)summary
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 title];

  return v3;
}

- (id)bodyText
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 bodyText];

  return v3;
}

- (id)bodyContent
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 bodyContent];

  return v3;
}

- (id)footnoteContent
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 footnoteContent];

  return v3;
}

+ (int64_t)contentTypeForDictionary:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = [v4 TPSSafeDictionaryForKey:@"content"];
  if (v5)
  {
    v6 = [a1 contentTypeForContentDictionary:v5];
    v11[3] = v6;
  }

  else
  {
    v6 = v11[3];
  }

  if (v6 == 1)
  {
    v7 = [v4 TPSSafeArrayForKey:@"conditions"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__TPSTip_contentTypeForDictionary___block_invoke;
    v9[3] = &unk_1E8101B70;
    v9[4] = &v10;
    v9[5] = a1;
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

+ (id)correlationIdForDictionary:(id)a3
{
  v3 = [a3 TPSSafeDictionaryForKey:@"relationships"];
  v4 = [v3 TPSSafeStringForKey:@"correlationId"];

  return v4;
}

+ (int64_t)contentTypeForContentDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 TPSSafeDictionaryForKey:@"full"];

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = [v3 TPSSafeDictionaryForKey:@"mini"];

  if (v6)
  {
    v5 |= 4uLL;
  }

  v7 = [v3 TPSSafeDictionaryForKey:@"checklist"];

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

- (TPSTip)initWithDictionary:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TPSTip;
  v7 = [(TPSDocument *)&v11 initWithDictionary:v6 metadata:a4 identifierKey:@"documentId"];
  if (v7)
  {
    v7->_type = [objc_opt_class() contentTypeForDictionary:v6];
    v7->_subContentType = 0;
    v8 = [v6 TPSSafeStringForKey:@"subContentType"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = TPSTip;
  v4 = [(TPSDocument *)&v10 copyWithZone:a3];
  [v4 setSiriSuggestion:{-[TPSTip isSiriSuggestion](self, "isSiriSuggestion")}];
  [v4 setType:{-[TPSTip type](self, "type")}];
  [v4 setSubContentType:{-[TPSTip subContentType](self, "subContentType")}];
  v5 = [(TPSTip *)self eyebrow];
  [v4 setEyebrow:v5];

  v6 = [(TPSTip *)self fullContent];
  [v4 setFullContent:v6];

  v7 = [(TPSTip *)self miniContent];
  [v4 setMiniContent:v7];

  v8 = [(TPSTip *)self collectionIdentifiers];
  [v4 setCollectionIdentifiers:v8];

  [v4 setContentStatus:{-[TPSTip contentStatus](self, "contentStatus")}];
  return v4;
}

- (TPSTip)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TPSTip;
  v5 = [(TPSDocument *)&v20 initWithCoder:v4];
  if (v5)
  {
    v5->_siriSuggestion = [v4 decodeBoolForKey:@"SiriSuggestion"];
    v5->_contentStatus = [v4 decodeIntegerForKey:@"contentStatus"];
    v5->_subContentType = [v4 decodeIntegerForKey:@"subContentType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eyebrow"];
    eyebrow = v5->_eyebrow;
    v5->_eyebrow = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"full"];
    fullContent = v5->_fullContent;
    v5->_fullContent = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mini"];
    miniContent = v5->_miniContent;
    v5->_miniContent = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"checklist"];
    checklistContent = v5->_checklistContent;
    v5->_checklistContent = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"collectionIdentifiers"];
    collectionIdentifiers = v5->_collectionIdentifiers;
    v5->_collectionIdentifiers = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = TPSTip;
  v4 = a3;
  [(TPSDocument *)&v10 encodeWithCoder:v4];
  [v4 encodeBool:-[TPSTip isSiriSuggestion](self forKey:{"isSiriSuggestion", v10.receiver, v10.super_class), @"SiriSuggestion"}];
  [v4 encodeInteger:-[TPSTip contentStatus](self forKey:{"contentStatus"), @"contentStatus"}];
  [v4 encodeInteger:-[TPSTip subContentType](self forKey:{"subContentType"), @"subContentType"}];
  v5 = [(TPSTip *)self eyebrow];
  [v4 encodeObject:v5 forKey:@"eyebrow"];

  v6 = [(TPSTip *)self fullContent];
  [v4 encodeObject:v6 forKey:@"full"];

  v7 = [(TPSTip *)self miniContent];
  [v4 encodeObject:v7 forKey:@"mini"];

  v8 = [(TPSTip *)self checklistContent];
  [v4 encodeObject:v8 forKey:@"checklist"];

  v9 = [(TPSTip *)self collectionIdentifiers];
  [v4 encodeObject:v9 forKey:@"collectionIdentifiers"];
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
  v3 = [(TPSTip *)self isIntro];
  if (v3)
  {
    v4 = [(TPSTip *)self collectionIdentifiers];
    v5 = +[TPSCommonDefines hardwareWelcomeCollectionIdentifier];
    v6 = [v4 containsObject:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isSoftwareWelcome
{
  v3 = [(TPSTip *)self isIntro];
  if (v3)
  {
    v4 = [(TPSTip *)self collectionIdentifiers];
    v5 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
    v6 = [v4 containsObject:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isSwitcherWelcome
{
  v3 = [(TPSTip *)self isIntro];
  if (v3)
  {
    v4 = [(TPSTip *)self collectionIdentifiers];
    v5 = +[TPSCommonDefines switcherWelcomeCollectionIdentifier];
    v6 = [v4 containsObject:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (NSString)linkedDocumentId
{
  v2 = [(TPSDocument *)self linkedDocument];
  v3 = [v2 documentId];

  return v3;
}

- (id)title
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 title];

  return v3;
}

- (id)text
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 bodyText];

  return v3;
}

- (id)textContent
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 bodyContent];

  return v3;
}

- (TPSAssets)fullContentAssets
{
  v2 = [(TPSTip *)self fullContent];
  v3 = [v2 assets];

  return v3;
}

- (void)updateWithContentDictionary:(id)a3 metadata:(id)a4 clientConditionIdentifier:(id)a5 fileIdMap:(id)a6 clientConditions:(id)a7
{
  v22.receiver = self;
  v22.super_class = TPSTip;
  v12 = a4;
  v13 = a3;
  [(TPSDocument *)&v22 updateWithContentDictionary:v13 metadata:v12 clientConditionIdentifier:a5 fileIdMap:a6 clientConditions:a7];
  v14 = [v13 TPSSafeStringForKey:{@"eyebrow", v22.receiver, v22.super_class}];
  eyebrow = self->_eyebrow;
  self->_eyebrow = v14;

  v16 = [v13 TPSSafeDictionaryForKey:@"full"];
  v17 = [[TPSFullTipContent alloc] initWithDictionary:v16 metadata:v12];
  [(TPSTip *)self setFullContent:v17];

  v18 = [v13 TPSSafeDictionaryForKey:@"mini"];
  v19 = [[TPSActionableContent alloc] initWithDictionary:v18 metadata:v12];
  [(TPSTip *)self setMiniContent:v19];

  v20 = [v13 TPSSafeDictionaryForKey:@"checklist"];

  v21 = [[TPSChecklistContent alloc] initWithDictionary:v20 metadata:v12];
  [(TPSTip *)self setChecklistContent:v21];
}

- (void)setSiriSuggestion:(BOOL)a3
{
  os_unfair_lock_lock(&_sharedLock);
  self->_siriSuggestion = a3;

  os_unfair_lock_unlock(&_sharedLock);
}

- (BOOL)isSiriSuggestion
{
  os_unfair_lock_lock(&_sharedLock);
  LOBYTE(self) = self->_siriSuggestion;
  os_unfair_lock_unlock(&_sharedLock);
  return self;
}

- (void)addCollectionIdentifier:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&_sharedLock);
  v4 = MEMORY[0x1E695DFA0];
  v5 = [(TPSTip *)self collectionIdentifiers];
  v6 = [v4 orderedSetWithArray:v5];

  [v6 addObject:v8];
  v7 = [v6 array];
  [(TPSTip *)self setCollectionIdentifiers:v7];

  os_unfair_lock_unlock(&_sharedLock);
}

- (void)removeCollectionIdentifier:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&_sharedLock);
  v4 = [(TPSTip *)self collectionIdentifiers];
  v5 = [v4 mutableCopy];

  [v5 removeObject:v7];
  v6 = [v5 copy];
  [(TPSTip *)self setCollectionIdentifiers:v6];

  os_unfair_lock_unlock(&_sharedLock);
}

- (id)URLWithReferrer:(id)a3
{
  v4 = a3;
  v5 = [(TPSDocument *)self identifier];
  v6 = [(TPSTip *)self collectionIdentifiers];
  v7 = [v6 firstObject];
  v8 = [TPSDocument URLWithTipIdentifier:v5 collectionIdentifier:v7 referrer:v4];

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
  v6 = [(TPSTip *)self collectionIdentifiers];
  [v5 appendFormat:@"%@ = %@\n", @"collectionIdentifiers", v6];

  v7 = [(TPSTip *)self eyebrow];

  if (v7)
  {
    v8 = [(TPSTip *)self eyebrow];
    [v5 appendFormat:@"\n  %@ = %@\n", @"eyebrow", v8];
  }

  v9 = [(TPSTip *)self fullContent];

  if (v9)
  {
    v10 = [(TPSTip *)self fullContent];
    v11 = [v10 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"full", v11];
  }

  v12 = [(TPSTip *)self miniContent];

  if (v12)
  {
    v13 = [(TPSTip *)self miniContent];
    v14 = [v13 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"mini", v14];
  }

  v15 = [(TPSTip *)self checklistContent];

  if (v15)
  {
    v16 = [(TPSTip *)self checklistContent];
    v17 = [v16 debugDescription];
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
  v4[4] = a1;
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