@interface TPSContent
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (TPSContent)initWithCoder:(id)coder;
- (TPSContent)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSContent

- (TPSContent)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  v30.receiver = self;
  v30.super_class = TPSContent;
  v8 = [(TPSSerializableObject *)&v30 initWithDictionary:dictionaryCopy];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [dictionaryCopy TPSSafeObjectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    title = v8->_title;
    v8->_title = v10;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    title = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(NSString *)title TPSSafeArrayForKey:@"content"];
      titleContent = v8->_titleContent;
      v8->_titleContent = v12;

      if (v8->_titleContent)
      {
        v14 = [TPSConstellationContentUtilities textRepresentationForContent:?];
        v15 = v8->_title;
        v8->_title = v14;
      }
    }
  }

LABEL_9:
  v16 = [dictionaryCopy TPSSafeStringForKey:@"text"];
  bodyText = v8->_bodyText;
  v8->_bodyText = v16;

  if (!v8->_bodyText)
  {
    v18 = [dictionaryCopy TPSSafeDictionaryForKey:@"body"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 TPSSafeArrayForKey:@"content"];
      bodyContent = v8->_bodyContent;
      v8->_bodyContent = v20;

      if (v8->_bodyContent)
      {
        v22 = [TPSConstellationContentUtilities textRepresentationForContent:?];
        v23 = v8->_bodyText;
        v8->_bodyText = v22;

        if (v8->_bodyText)
        {
          v24 = v8->_bodyContent;
          v8->_bodyContent = 0;
        }

        else
        {
          v8->_bodyContainsLink = [TPSConstellationContentUtilities contentContainsLink:v8->_bodyContent];
        }
      }
    }
  }

  v25 = [dictionaryCopy TPSSafeStringForKey:@"labelStyle"];
  v8->_labelStyle = [v25 isEqualToString:@"white"];
  v26 = [TPSAssets assetsFromDictionary:dictionaryCopy];
  v27 = [[TPSAssets alloc] initWithDictionary:v26 metadata:metadataCopy];
  assets = v8->_assets;
  v8->_assets = v27;

LABEL_17:
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TPSContent;
  v4 = [(TPSSerializableObject *)&v11 copyWithZone:zone];
  [v4 setLabelStyle:{-[TPSContent labelStyle](self, "labelStyle")}];
  title = [(TPSContent *)self title];
  [v4 setTitle:title];

  titleContent = [(TPSContent *)self titleContent];
  [v4 setTitleContent:titleContent];

  bodyText = [(TPSContent *)self bodyText];
  [v4 setBodyText:bodyText];

  bodyContent = [(TPSContent *)self bodyContent];
  [v4 setBodyContent:bodyContent];

  [v4 setBodyContainsLink:{-[TPSContent bodyContainsLink](self, "bodyContainsLink")}];
  assets = [(TPSContent *)self assets];
  [v4 setAssets:assets];

  return v4;
}

- (TPSContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TPSContent;
  v5 = [(TPSSerializableObject *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_labelStyle = [coderCopy decodeIntegerForKey:@"labelStyle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"titleContent"];
    titleContent = v5->_titleContent;
    v5->_titleContent = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    bodyText = v5->_bodyText;
    v5->_bodyText = v16;

    v18 = [coderCopy decodeObjectOfClasses:v13 forKey:@"body"];
    bodyContent = v5->_bodyContent;
    v5->_bodyContent = v18;

    v5->_bodyContainsLink = [coderCopy decodeBoolForKey:@"bodyContainsLink"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset"];
    assets = v5->_assets;
    v5->_assets = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = TPSContent;
  coderCopy = coder;
  [(TPSSerializableObject *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[TPSContent labelStyle](self forKey:{"labelStyle", v10.receiver, v10.super_class), @"labelStyle"}];
  title = [(TPSContent *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  titleContent = [(TPSContent *)self titleContent];
  [coderCopy encodeObject:titleContent forKey:@"titleContent"];

  bodyText = [(TPSContent *)self bodyText];
  [coderCopy encodeObject:bodyText forKey:@"text"];

  bodyContent = [(TPSContent *)self bodyContent];
  [coderCopy encodeObject:bodyContent forKey:@"body"];

  [coderCopy encodeBool:-[TPSContent bodyContainsLink](self forKey:{"bodyContainsLink"), @"bodyContainsLink"}];
  assets = [(TPSContent *)self assets];
  [coderCopy encodeObject:assets forKey:@"asset"];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = TPSContent;
  v4 = [(TPSContent *)&v12 description];
  v5 = [v3 initWithString:v4];

  title = [(TPSContent *)self title];

  if (title)
  {
    title2 = [(TPSContent *)self title];
    v8 = title2;
    v9 = @"title";
  }

  else
  {
    titleContent = [(TPSContent *)self titleContent];

    if (!titleContent)
    {
      goto LABEL_6;
    }

    title2 = [(TPSContent *)self titleContent];
    v8 = title2;
    v9 = @"titleContent";
  }

  [v5 appendFormat:@" %@ = %@\n", v9, title2];

LABEL_6:

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v18.receiver = self;
  v18.super_class = TPSContent;
  v4 = [(TPSSerializableObject *)&v18 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendString:@"\n"];
  title = [(TPSContent *)self title];

  if (title)
  {
    title2 = [(TPSContent *)self title];
    [v5 appendFormat:@"\n  %@ = %@\n", @"title", title2];
  }

  titleContent = [(TPSContent *)self titleContent];

  if (titleContent)
  {
    titleContent2 = [(TPSContent *)self titleContent];
    [v5 appendFormat:@"  %@ = %@\n", @"titleContent", titleContent2];
  }

  if ([(TPSContent *)self labelStyle]>= 1)
  {
    [v5 appendFormat:@"\n  %@ = %ld\n", @"labelStyle", -[TPSContent labelStyle](self, "labelStyle")];
  }

  bodyText = [(TPSContent *)self bodyText];

  if (bodyText)
  {
    bodyText2 = [(TPSContent *)self bodyText];
    [v5 appendFormat:@"  %@ = %@\n", @"text", bodyText2];
  }

  bodyContent = [(TPSContent *)self bodyContent];

  if (bodyContent)
  {
    bodyContent2 = [(TPSContent *)self bodyContent];
    [v5 appendFormat:@"  %@ = %@\n", @"body", bodyContent2];
  }

  assets = [(TPSContent *)self assets];

  if (assets)
  {
    assets2 = [(TPSContent *)self assets];
    v16 = [assets2 debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"asset", v16];
  }

  [v5 appendFormat:@"  %@ = %d\n", @"bodyContainsLink", -[TPSContent bodyContainsLink](self, "bodyContainsLink")];

  return v5;
}

id __25__TPSContent_na_identity__block_invoke()
{
  if (TPSContentLabelStyleWhiteValue_block_invoke_na_once_token_0 != -1)
  {
    __25__TPSContent_na_identity__block_invoke_cold_1();
  }

  v1 = TPSContentLabelStyleWhiteValue_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __25__TPSContent_na_identity__block_invoke_2()
{
  TPSContentLabelStyleWhiteValue_block_invoke_na_once_object_0 = __25__TPSContent_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __25__TPSContent_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_71];
  v2 = [v0 appendCharacteristic:&__block_literal_global_74];
  v3 = [v0 appendCharacteristic:&__block_literal_global_77];
  v4 = [v0 appendCharacteristic:&__block_literal_global_79];
  v5 = [v0 appendCharacteristic:&__block_literal_global_81];
  v6 = [v0 appendCharacteristic:&__block_literal_global_83];
  v7 = [v0 appendCharacteristic:&__block_literal_global_86];
  v8 = [v0 build];

  return v8;
}

uint64_t __25__TPSContent_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 labelStyle];

  return [v2 numberWithInteger:v3];
}

uint64_t __25__TPSContent_na_identity__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 bodyContainsLink];

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