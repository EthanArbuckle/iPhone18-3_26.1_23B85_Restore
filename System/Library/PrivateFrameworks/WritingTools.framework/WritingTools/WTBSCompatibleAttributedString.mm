@interface WTBSCompatibleAttributedString
+ (id)allowedClasses;
- (WTBSCompatibleAttributedString)initWithCoder:(id)coder;
- (WTBSCompatibleAttributedString)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation WTBSCompatibleAttributedString

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributedString = [(WTBSCompatibleAttributedString *)self attributedString];
  string = [attributedString string];
  [coderCopy encodeObject:string forKey:@"WTUICodingKeyString"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  attributedString2 = [(WTBSCompatibleAttributedString *)self attributedString];
  attributedString3 = [(WTBSCompatibleAttributedString *)self attributedString];
  v10 = [attributedString3 length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__WTBSCompatibleAttributedString_encodeWithCoder___block_invoke;
  v12[3] = &unk_279EF8F98;
  v13 = v7;
  v11 = v7;
  [attributedString2 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v12}];

  [coderCopy encodeObject:v11 forKey:@"WTUICodingAttributes"];
}

void __50__WTBSCompatibleAttributedString_encodeWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCAE60];
  v8 = a2;
  v9 = [v7 valueWithRange:{a3, a4}];
  [v6 setObject:v8 forKeyedSubscript:v9];
}

- (WTBSCompatibleAttributedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WTBSCompatibleAttributedString;
  v5 = [(WTBSCompatibleAttributedString *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTUICodingKeyString"];
    v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
    allowedClasses = [objc_opt_class() allowedClasses];
    v9 = [coderCopy decodeObjectOfClasses:allowedClasses forKey:@"WTUICodingAttributes"];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__WTBSCompatibleAttributedString_initWithCoder___block_invoke;
    v14[3] = &unk_279EF8FC0;
    v10 = v7;
    v15 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:v14];
    attributedString = v5->_attributedString;
    v5->_attributedString = v10;
    v12 = v10;
  }

  return v5;
}

void __48__WTBSCompatibleAttributedString_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v7 = a3;
  v5 = [a2 rangeValue];
  [v4 addAttributes:v7 range:{v5, v6}];
}

+ (id)allowedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"WTBSCodingKey" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

- (WTBSCompatibleAttributedString)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  [@"WTBSCodingKey" UTF8String];
  v5 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();

  return v5;
}

@end