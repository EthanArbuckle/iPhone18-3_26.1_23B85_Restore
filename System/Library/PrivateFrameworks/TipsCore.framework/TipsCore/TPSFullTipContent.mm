@interface TPSFullTipContent
+ (id)na_identity;
- (TPSFullTipContent)initWithCoder:(id)coder;
- (TPSFullTipContent)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSFullTipContent

- (TPSFullTipContent)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TPSFullTipContent;
  v7 = [(TPSActionableContent *)&v12 initWithDictionary:dictionaryCopy metadata:metadata];
  if (v7)
  {
    v8 = [dictionaryCopy TPSSafeDictionaryForKey:@"footnote"];
    v9 = [v8 TPSSafeArrayForKey:@"content"];
    footnoteContent = v7->_footnoteContent;
    v7->_footnoteContent = v9;
  }

  return v7;
}

- (TPSFullTipContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TPSFullTipContent;
  v5 = [(TPSActionableContent *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = +[TPSConstellationContentUtilities contentClasses];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"footnote"];
    footnoteContent = v5->_footnoteContent;
    v5->_footnoteContent = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSFullTipContent;
  coderCopy = coder;
  [(TPSActionableContent *)&v6 encodeWithCoder:coderCopy];
  v5 = [(TPSFullTipContent *)self footnoteContent:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"footnote"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TPSFullTipContent;
  v4 = [(TPSActionableContent *)&v7 copyWithZone:zone];
  footnoteContent = [(TPSFullTipContent *)self footnoteContent];
  [v4 setFootnoteContent:footnoteContent];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSFullTipContent;
  v4 = [(TPSContent *)&v9 description];
  v5 = [v3 initWithString:v4];

  footnoteContent = [(TPSFullTipContent *)self footnoteContent];

  if (footnoteContent)
  {
    footnoteContent2 = [(TPSFullTipContent *)self footnoteContent];
    [v5 appendFormat:@" %@ = %@\n", @"footnote", footnoteContent2];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSFullTipContent;
  v4 = [(TPSActionableContent *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendString:@"\n"];
  footnoteContent = [(TPSFullTipContent *)self footnoteContent];

  if (footnoteContent)
  {
    footnoteContent2 = [(TPSFullTipContent *)self footnoteContent];
    [v5 appendFormat:@"  %@ = %@\n", @"footnote", footnoteContent2];
  }

  return v5;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TPSFullTipContent_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __32__TPSFullTipContent_na_identity__block_invoke(v4);

  return v2;
}

id __32__TPSFullTipContent_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__TPSFullTipContent_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (TPSFullTipContentFootnoteKey_block_invoke_na_once_token_0 != -1)
  {
    dispatch_once(&TPSFullTipContentFootnoteKey_block_invoke_na_once_token_0, block);
  }

  v1 = TPSFullTipContentFootnoteKey_block_invoke_na_once_object_0;

  return v1;
}

void __32__TPSFullTipContent_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__TPSFullTipContent_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __32__TPSFullTipContent_na_identity__block_invoke_3(v3);
  v2 = TPSFullTipContentFootnoteKey_block_invoke_na_once_object_0;
  TPSFullTipContentFootnoteKey_block_invoke_na_once_object_0 = v1;
}

id __32__TPSFullTipContent_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___TPSFullTipContent;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_22];
  v5 = [v3 build];

  return v5;
}

@end