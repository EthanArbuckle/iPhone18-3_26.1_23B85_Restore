@interface TPSCollection
+ (id)na_identity;
- (BOOL)isChecklist;
- (BOOL)isEqual:(id)a3;
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
- (TPSCollection)initWithCoder:(id)a3;
- (TPSCollection)initWithDictionary:(id)a3 metadata:(id)a4;
- (TPSGradient)gradient;
- (id)URLWithReferrer:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (int64_t)count;
- (int64_t)countExcludingBookends;
- (int64_t)priority;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithContentDictionary:(id)a3 metadata:(id)a4 clientConditionIdentifier:(id)a5 fileIdMap:(id)a6 clientConditions:(id)a7;
@end

@implementation TPSCollection

- (TPSCollection)initWithDictionary:(id)a3 metadata:(id)a4
{
  v5.receiver = self;
  v5.super_class = TPSCollection;
  return [(TPSDocument *)&v5 initWithDictionary:a3 metadata:a4 identifierKey:@"collectionLabel"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = TPSCollection;
  v4 = [(TPSDocument *)&v13 copyWithZone:a3];
  [v4 setContainsIntroTip:{-[TPSCollection containsIntroTip](self, "containsIntroTip")}];
  v5 = [(TPSCollection *)self shortTitle];
  [v4 setShortTitle:v5];

  v6 = [(TPSCollection *)self tipIdentifiers];
  [v4 setTipIdentifiers:v6];

  v7 = [(TPSCollection *)self featuredContent];
  [v4 setFeaturedContent:v7];

  v8 = [(TPSCollection *)self tileContent];
  [v4 setTileContent:v8];

  v9 = [(TPSCollection *)self tocAssets];
  [v4 setTocAssets:v9];

  v10 = [(TPSCollection *)self collectionAssets];
  [v4 setCollectionAssets:v10];

  v11 = [(TPSCollection *)self gradient];
  [v4 setGradient:v11];

  return v4;
}

- (TPSCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TPSCollection;
  v5 = [(TPSDocument *)&v24 initWithCoder:v4];
  if (v5)
  {
    v5->_containsIntroTip = [v4 decodeBoolForKey:@"containsIntroTip"];
    v5->_containsOutroTip = [v4 decodeBoolForKey:@"containsOutroTip"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortTitle"];
    shortTitle = v5->_shortTitle;
    v5->_shortTitle = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"documentIds"];
    tipIdentifiers = v5->_tipIdentifiers;
    v5->_tipIdentifiers = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featured"];
    featuredContent = v5->_featuredContent;
    v5->_featuredContent = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tile"];
    tileContent = v5->_tileContent;
    v5->_tileContent = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tocIcon"];
    tocAssets = v5->_tocAssets;
    v5->_tocAssets = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionIcon"];
    collectionAssets = v5->_collectionAssets;
    v5->_collectionAssets = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradient"];
    gradient = v5->_gradient;
    v5->_gradient = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = TPSCollection;
  v4 = a3;
  [(TPSDocument *)&v12 encodeWithCoder:v4];
  [v4 encodeBool:-[TPSCollection containsIntroTip](self forKey:{"containsIntroTip", v12.receiver, v12.super_class), @"containsIntroTip"}];
  [v4 encodeBool:-[TPSCollection containsOutroTip](self forKey:{"containsOutroTip"), @"containsOutroTip"}];
  v5 = [(TPSCollection *)self shortTitle];
  [v4 encodeObject:v5 forKey:@"shortTitle"];

  v6 = [(TPSCollection *)self tipIdentifiers];
  [v4 encodeObject:v6 forKey:@"documentIds"];

  v7 = [(TPSCollection *)self featuredContent];
  [v4 encodeObject:v7 forKey:@"featured"];

  v8 = [(TPSCollection *)self tileContent];
  [v4 encodeObject:v8 forKey:@"tile"];

  v9 = [(TPSCollection *)self tocAssets];
  [v4 encodeObject:v9 forKey:@"tocIcon"];

  v10 = [(TPSCollection *)self collectionAssets];
  [v4 encodeObject:v10 forKey:@"collectionIcon"];

  v11 = [(TPSCollection *)self gradient];
  [v4 encodeObject:v11 forKey:@"gradient"];
}

- (int64_t)count
{
  v2 = [(TPSCollection *)self tipIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (int64_t)countExcludingBookends
{
  v3 = [(TPSCollection *)self tipIdentifiers];
  v4 = [v3 count];

  v5 = v4 - [(TPSCollection *)self containsIntroTip];
  return v5 - [(TPSCollection *)self containsOutroTip];
}

- (id)URLWithReferrer:(id)a3
{
  v4 = a3;
  v5 = [(TPSDocument *)self identifier];
  v6 = [TPSDocument URLWithTipIdentifier:0 collectionIdentifier:v5 referrer:v4];

  return v6;
}

- (NSString)countText
{
  countText = self->_countText;
  if (!countText)
  {
    v4 = [(TPSCollection *)self countExcludingBookends];
    v5 = +[TPSCommonDefines tipsCoreFrameworkBundle];
    v6 = [v5 localizedStringForKey:@"NUMBER_TIPS" value:0 table:0];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 localizedStringForKey:v6 value:&stru_1F3F2F4B8 table:0];
    v10 = [v7 localizedStringWithFormat:v9, v4];
    v11 = self->_countText;
    self->_countText = v10;

    countText = self->_countText;
  }

  return countText;
}

- (void)updateWithContentDictionary:(id)a3 metadata:(id)a4 clientConditionIdentifier:(id)a5 fileIdMap:(id)a6 clientConditions:(id)a7
{
  v27.receiver = self;
  v27.super_class = TPSCollection;
  v12 = a4;
  v13 = a3;
  [(TPSDocument *)&v27 updateWithContentDictionary:v13 metadata:v12 clientConditionIdentifier:a5 fileIdMap:a6 clientConditions:a7];
  v14 = [v13 TPSSafeStringForKey:{@"shortTitle", v27.receiver, v27.super_class}];
  [(TPSCollection *)self setShortTitle:v14];

  v15 = [v13 TPSSafeDictionaryForKey:@"tile"];
  v16 = [[TPSContent alloc] initWithDictionary:v15 metadata:v12];
  [(TPSCollection *)self setTileContent:v16];

  v17 = [v13 TPSSafeDictionaryForKey:@"featured"];
  v18 = [[TPSContent alloc] initWithDictionary:v17 metadata:v12];
  [(TPSCollection *)self setFeaturedContent:v18];

  v19 = [(TPSCollection *)self tileAssets];
  v20 = [(TPSDocument *)self notification];
  [v20 setAssets:v19];

  v21 = [v13 TPSSafeDictionaryForKey:@"tocIcon"];
  v22 = [[TPSAssets alloc] initWithDictionary:v21 metadata:v12];
  [(TPSCollection *)self setTocAssets:v22];

  v23 = [v13 TPSSafeDictionaryForKey:@"collectionIcon"];
  v24 = [[TPSAssets alloc] initWithDictionary:v23 metadata:v12];

  [(TPSCollection *)self setCollectionAssets:v24];
  v25 = [v13 TPSSafeDictionaryForKey:@"gradient"];

  v26 = [[TPSGradient alloc] initWithDictionary:v25];
  [(TPSCollection *)self setGradient:v26];
}

- (BOOL)isChecklist
{
  v2 = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines checklistCollectionIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (int64_t)priority
{
  v2 = [(TPSCollection *)self featuredContent];
  v3 = v2 != 0;

  return v3;
}

- (NSString)title
{
  v2 = [(TPSCollection *)self tileContent];
  v3 = [v2 title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(TPSCollection *)self tileContent];
  v3 = [v2 bodyText];

  return v3;
}

- (NSString)featuredTitle
{
  v3 = [(TPSCollection *)self featuredContent];
  v4 = [v3 title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TPSCollection *)self title];
  }

  v7 = v6;

  return v7;
}

- (NSString)featuredText
{
  v2 = [(TPSCollection *)self featuredContent];
  v3 = [v2 bodyText];

  return v3;
}

- (TPSAssets)featuredAssets
{
  v2 = [(TPSCollection *)self featuredContent];
  v3 = [v2 assets];

  return v3;
}

- (TPSAssets)tileAssets
{
  v3 = [(TPSCollection *)self tileContent];
  v4 = [v3 assets];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TPSCollection *)self collectionAssets];
  }

  v7 = v6;

  return v7;
}

- (TPSGradient)gradient
{
  gradient = self->_gradient;
  if (gradient)
  {
    v3 = gradient;
  }

  else
  {
    v4 = [(TPSCollection *)self collectionAssets];
    v3 = [v4 gradient];
  }

  return v3;
}

- (BOOL)isHardwareWelcome
{
  v2 = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines hardwareWelcomeCollectionIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)isSoftwareWelcome
{
  v2 = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)isSwitcherWelcome
{
  v2 = [(TPSDocument *)self identifier];
  v3 = +[TPSCommonDefines switcherWelcomeCollectionIdentifier];
  v4 = [v2 isEqualToString:v3];

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
  v6 = [(TPSCollection *)self tipIdentifiers];
  [v5 appendFormat:@"%@ = %@\n", @"documentIds", v6];

  v7 = [(TPSCollection *)self shortTitle];

  if (v7)
  {
    v8 = [(TPSCollection *)self shortTitle];
    [v5 appendFormat:@"%@ = %@\n", @"shortTitle", v8];
  }

  v9 = [(TPSCollection *)self featuredContent];

  if (v9)
  {
    v10 = [(TPSCollection *)self featuredContent];
    v11 = [v10 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"featured", v11];
  }

  v12 = [(TPSCollection *)self tileContent];

  if (v12)
  {
    v13 = [(TPSCollection *)self tileContent];
    v14 = [v13 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"tile", v14];
  }

  v15 = [(TPSCollection *)self tocAssets];

  if (v15)
  {
    v16 = [(TPSCollection *)self tocAssets];
    v17 = [v16 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"tocIcon", v17];
  }

  v18 = [(TPSCollection *)self collectionAssets];

  if (v18)
  {
    v19 = [(TPSCollection *)self collectionAssets];
    v20 = [v19 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"collectionIcon", v20];
  }

  v21 = [(TPSCollection *)self gradient];

  if (v21)
  {
    v22 = [(TPSCollection *)self gradient];
    v23 = [v22 debugDescription];
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
  v4[4] = a1;
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