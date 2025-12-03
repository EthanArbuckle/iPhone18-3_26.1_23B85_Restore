@interface TPSCollection
+ (id)na_identity;
- (BOOL)isChecklist;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHardwareWelcome;
- (BOOL)isSoftwareWelcome;
- (BOOL)isSwitcherWelcome;
- (NSString)countText;
- (NSString)featuredText;
- (NSString)featuredTitle;
- (NSString)text;
- (NSString)title;
- (TPSAssets)featuredAssets;
- (TPSAssets)tileAssets;
- (TPSCollection)initWithCoder:(id)coder;
- (TPSCollection)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (TPSGradient)gradient;
- (id)URLWithReferrer:(id)referrer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (int64_t)count;
- (int64_t)countExcludingBookends;
- (int64_t)priority;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithContentDictionary:(id)dictionary metadata:(id)metadata clientConditionIdentifier:(id)identifier fileIdMap:(id)map clientConditions:(id)conditions;
@end

@implementation TPSCollection

- (TPSCollection)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  v5.receiver = self;
  v5.super_class = TPSCollection;
  return [(TPSDocument *)&v5 initWithDictionary:dictionary metadata:metadata identifierKey:@"collectionLabel"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = TPSCollection;
  v4 = [(TPSDocument *)&v13 copyWithZone:zone];
  [v4 setContainsIntroTip:{-[TPSCollection containsIntroTip](self, "containsIntroTip")}];
  shortTitle = [(TPSCollection *)self shortTitle];
  [v4 setShortTitle:shortTitle];

  tipIdentifiers = [(TPSCollection *)self tipIdentifiers];
  [v4 setTipIdentifiers:tipIdentifiers];

  featuredContent = [(TPSCollection *)self featuredContent];
  [v4 setFeaturedContent:featuredContent];

  tileContent = [(TPSCollection *)self tileContent];
  [v4 setTileContent:tileContent];

  tocAssets = [(TPSCollection *)self tocAssets];
  [v4 setTocAssets:tocAssets];

  collectionAssets = [(TPSCollection *)self collectionAssets];
  [v4 setCollectionAssets:collectionAssets];

  gradient = [(TPSCollection *)self gradient];
  [v4 setGradient:gradient];

  return v4;
}

- (TPSCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = TPSCollection;
  v5 = [(TPSDocument *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_containsIntroTip = [coderCopy decodeBoolForKey:@"containsIntroTip"];
    v5->_containsOutroTip = [coderCopy decodeBoolForKey:@"containsOutroTip"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortTitle"];
    shortTitle = v5->_shortTitle;
    v5->_shortTitle = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"documentIds"];
    tipIdentifiers = v5->_tipIdentifiers;
    v5->_tipIdentifiers = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featured"];
    featuredContent = v5->_featuredContent;
    v5->_featuredContent = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tile"];
    tileContent = v5->_tileContent;
    v5->_tileContent = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tocIcon"];
    tocAssets = v5->_tocAssets;
    v5->_tocAssets = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionIcon"];
    collectionAssets = v5->_collectionAssets;
    v5->_collectionAssets = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gradient"];
    gradient = v5->_gradient;
    v5->_gradient = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = TPSCollection;
  coderCopy = coder;
  [(TPSDocument *)&v12 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[TPSCollection containsIntroTip](self forKey:{"containsIntroTip", v12.receiver, v12.super_class), @"containsIntroTip"}];
  [coderCopy encodeBool:-[TPSCollection containsOutroTip](self forKey:{"containsOutroTip"), @"containsOutroTip"}];
  shortTitle = [(TPSCollection *)self shortTitle];
  [coderCopy encodeObject:shortTitle forKey:@"shortTitle"];

  tipIdentifiers = [(TPSCollection *)self tipIdentifiers];
  [coderCopy encodeObject:tipIdentifiers forKey:@"documentIds"];

  featuredContent = [(TPSCollection *)self featuredContent];
  [coderCopy encodeObject:featuredContent forKey:@"featured"];

  tileContent = [(TPSCollection *)self tileContent];
  [coderCopy encodeObject:tileContent forKey:@"tile"];

  tocAssets = [(TPSCollection *)self tocAssets];
  [coderCopy encodeObject:tocAssets forKey:@"tocIcon"];

  collectionAssets = [(TPSCollection *)self collectionAssets];
  [coderCopy encodeObject:collectionAssets forKey:@"collectionIcon"];

  gradient = [(TPSCollection *)self gradient];
  [coderCopy encodeObject:gradient forKey:@"gradient"];
}

- (int64_t)count
{
  tipIdentifiers = [(TPSCollection *)self tipIdentifiers];
  v3 = [tipIdentifiers count];

  return v3;
}

- (int64_t)countExcludingBookends
{
  tipIdentifiers = [(TPSCollection *)self tipIdentifiers];
  v4 = [tipIdentifiers count];

  v5 = v4 - [(TPSCollection *)self containsIntroTip];
  return v5 - [(TPSCollection *)self containsOutroTip];
}

- (id)URLWithReferrer:(id)referrer
{
  referrerCopy = referrer;
  identifier = [(TPSDocument *)self identifier];
  v6 = [TPSDocument URLWithTipIdentifier:0 collectionIdentifier:identifier referrer:referrerCopy];

  return v6;
}

- (NSString)countText
{
  countText = self->_countText;
  if (!countText)
  {
    countExcludingBookends = [(TPSCollection *)self countExcludingBookends];
    v5 = +[TPSCommonDefines tipsCoreFrameworkBundle];
    v6 = [v5 localizedStringForKey:@"NUMBER_TIPS" value:0 table:0];
    v7 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [mainBundle localizedStringForKey:v6 value:&stru_1F3F2F4B8 table:0];
    v10 = [v7 localizedStringWithFormat:v9, countExcludingBookends];
    v11 = self->_countText;
    self->_countText = v10;

    countText = self->_countText;
  }

  return countText;
}

- (void)updateWithContentDictionary:(id)dictionary metadata:(id)metadata clientConditionIdentifier:(id)identifier fileIdMap:(id)map clientConditions:(id)conditions
{
  v27.receiver = self;
  v27.super_class = TPSCollection;
  metadataCopy = metadata;
  dictionaryCopy = dictionary;
  [(TPSDocument *)&v27 updateWithContentDictionary:dictionaryCopy metadata:metadataCopy clientConditionIdentifier:identifier fileIdMap:map clientConditions:conditions];
  v14 = [dictionaryCopy TPSSafeStringForKey:{@"shortTitle", v27.receiver, v27.super_class}];
  [(TPSCollection *)self setShortTitle:v14];

  v15 = [dictionaryCopy TPSSafeDictionaryForKey:@"tile"];
  v16 = [[TPSContent alloc] initWithDictionary:v15 metadata:metadataCopy];
  [(TPSCollection *)self setTileContent:v16];

  v17 = [dictionaryCopy TPSSafeDictionaryForKey:@"featured"];
  v18 = [[TPSContent alloc] initWithDictionary:v17 metadata:metadataCopy];
  [(TPSCollection *)self setFeaturedContent:v18];

  tileAssets = [(TPSCollection *)self tileAssets];
  notification = [(TPSDocument *)self notification];
  [notification setAssets:tileAssets];

  v21 = [dictionaryCopy TPSSafeDictionaryForKey:@"tocIcon"];
  v22 = [[TPSAssets alloc] initWithDictionary:v21 metadata:metadataCopy];
  [(TPSCollection *)self setTocAssets:v22];

  v23 = [dictionaryCopy TPSSafeDictionaryForKey:@"collectionIcon"];
  v24 = [[TPSAssets alloc] initWithDictionary:v23 metadata:metadataCopy];

  [(TPSCollection *)self setCollectionAssets:v24];
  v25 = [dictionaryCopy TPSSafeDictionaryForKey:@"gradient"];

  v26 = [[TPSGradient alloc] initWithDictionary:v25];
  [(TPSCollection *)self setGradient:v26];
}

- (BOOL)isChecklist
{
  identifier = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines checklistCollectionIdentifier];
  v4 = [identifier isEqualToString:v3];

  return v4;
}

- (int64_t)priority
{
  featuredContent = [(TPSCollection *)self featuredContent];
  v3 = featuredContent != 0;

  return v3;
}

- (NSString)title
{
  tileContent = [(TPSCollection *)self tileContent];
  title = [tileContent title];
  v4 = title;
  if (title)
  {
    v5 = title;
  }

  else
  {
    v5 = &stru_1F3F2F4B8;
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)text
{
  tileContent = [(TPSCollection *)self tileContent];
  bodyText = [tileContent bodyText];

  return bodyText;
}

- (NSString)featuredTitle
{
  featuredContent = [(TPSCollection *)self featuredContent];
  title = [featuredContent title];
  v5 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    title2 = [(TPSCollection *)self title];
  }

  v7 = title2;

  return v7;
}

- (NSString)featuredText
{
  featuredContent = [(TPSCollection *)self featuredContent];
  bodyText = [featuredContent bodyText];

  return bodyText;
}

- (TPSAssets)featuredAssets
{
  featuredContent = [(TPSCollection *)self featuredContent];
  assets = [featuredContent assets];

  return assets;
}

- (TPSAssets)tileAssets
{
  tileContent = [(TPSCollection *)self tileContent];
  assets = [tileContent assets];
  v5 = assets;
  if (assets)
  {
    collectionAssets = assets;
  }

  else
  {
    collectionAssets = [(TPSCollection *)self collectionAssets];
  }

  v7 = collectionAssets;

  return v7;
}

- (TPSGradient)gradient
{
  gradient = self->_gradient;
  if (gradient)
  {
    gradient = gradient;
  }

  else
  {
    collectionAssets = [(TPSCollection *)self collectionAssets];
    gradient = [collectionAssets gradient];
  }

  return gradient;
}

- (BOOL)isHardwareWelcome
{
  identifier = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines hardwareWelcomeCollectionIdentifier];
  v4 = [identifier isEqualToString:v3];

  return v4;
}

- (BOOL)isSoftwareWelcome
{
  identifier = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
  v4 = [identifier isEqualToString:v3];

  return v4;
}

- (BOOL)isSwitcherWelcome
{
  identifier = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines switcherWelcomeCollectionIdentifier];
  v4 = [identifier isEqualToString:v3];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v25.receiver = self;
  v25.super_class = TPSCollection;
  v4 = [(TPSDocument *)&v25 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"%@ = %ld\n", @"Priority", -[TPSCollection priority](self, "priority")];
  tipIdentifiers = [(TPSCollection *)self tipIdentifiers];
  [v5 appendFormat:@"%@ = %@\n", @"documentIds", tipIdentifiers];

  shortTitle = [(TPSCollection *)self shortTitle];

  if (shortTitle)
  {
    shortTitle2 = [(TPSCollection *)self shortTitle];
    [v5 appendFormat:@"%@ = %@\n", @"shortTitle", shortTitle2];
  }

  featuredContent = [(TPSCollection *)self featuredContent];

  if (featuredContent)
  {
    featuredContent2 = [(TPSCollection *)self featuredContent];
    v11 = [featuredContent2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"featured", v11];
  }

  tileContent = [(TPSCollection *)self tileContent];

  if (tileContent)
  {
    tileContent2 = [(TPSCollection *)self tileContent];
    v14 = [tileContent2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"tile", v14];
  }

  tocAssets = [(TPSCollection *)self tocAssets];

  if (tocAssets)
  {
    tocAssets2 = [(TPSCollection *)self tocAssets];
    v17 = [tocAssets2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"tocIcon", v17];
  }

  collectionAssets = [(TPSCollection *)self collectionAssets];

  if (collectionAssets)
  {
    collectionAssets2 = [(TPSCollection *)self collectionAssets];
    v20 = [collectionAssets2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"collectionIcon", v20];
  }

  gradient = [(TPSCollection *)self gradient];

  if (gradient)
  {
    gradient2 = [(TPSCollection *)self gradient];
    v23 = [gradient2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"gradient", v23];
  }

  return v5;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__TPSCollection_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __28__TPSCollection_na_identity__block_invoke(v4);

  return v2;
}

id __28__TPSCollection_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__TPSCollection_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (TPSCollectionGradientKey_block_invoke_na_once_token_0 != -1)
  {
    dispatch_once(&TPSCollectionGradientKey_block_invoke_na_once_token_0, block);
  }

  v1 = TPSCollectionGradientKey_block_invoke_na_once_object_0;

  return v1;
}

void __28__TPSCollection_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__TPSCollection_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __28__TPSCollection_na_identity__block_invoke_3(v3);
  v2 = TPSCollectionGradientKey_block_invoke_na_once_object_0;
  TPSCollectionGradientKey_block_invoke_na_once_object_0 = v1;
}

id __28__TPSCollection_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___TPSCollection;
  v2 = objc_msgSendSuper2(&v13, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_4];
  v5 = [v3 appendCharacteristic:&__block_literal_global_79_0];
  v6 = [v3 appendCharacteristic:&__block_literal_global_82];
  v7 = [v3 appendCharacteristic:&__block_literal_global_85];
  v8 = [v3 appendCharacteristic:&__block_literal_global_87];
  v9 = [v3 appendCharacteristic:&__block_literal_global_90];
  v10 = [v3 appendCharacteristic:&__block_literal_global_92];
  v11 = [v3 build];

  return v11;
}

uint64_t __28__TPSCollection_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 containsIntroTip];

  return [v2 numberWithBool:v3];
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