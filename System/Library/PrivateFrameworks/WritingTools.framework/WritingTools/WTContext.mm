@interface WTContext
- (BOOL)isEqual:(id)equal;
- (WTContext)initWithAttributedText:(id)text range:(_NSRange)range;
- (WTContext)initWithCoder:(id)coder;
- (WTContext)initWithXPCDictionary:(id)dictionary;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation WTContext

- (WTContext)initWithAttributedText:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = WTContext;
  v8 = [(WTContext *)&v14 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v8->_uuid;
    v8->_uuid = uUID;

    v11 = [textCopy copy];
    attributedText = v8->_attributedText;
    v8->_attributedText = v11;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (unint64_t)hash
{
  uuid = [(WTContext *)self uuid];
  v4 = [uuid hash];

  v5 = 257 * ([(WTContext *)self range]+ 257 * v4);
  [(WTContext *)self range];
  return v5 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uuid = [(WTContext *)self uuid];
    uuid2 = [(WTContext *)v5 uuid];
    if ([uuid isEqual:uuid2])
    {
      range = [(WTContext *)self range];
      v10 = v9;
      v13 = range == [(WTContext *)v5 range]&& v10 == v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    uuid = [(WTContext *)self uuid];
    v7 = v5[1];
    v5[1] = uuid;

    attributedText = [(WTContext *)self attributedText];
    v9 = [attributedText copyWithZone:zone];
    v10 = v5[2];
    v5[2] = v9;

    v5[4] = [(WTContext *)self range];
    v5[5] = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(WTContext *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"WTContextCodingKeyUUID"];

  v5 = objc_alloc_init(WTBSCompatibleAttributedString);
  attributedText = [(WTContext *)self attributedText];
  [(WTBSCompatibleAttributedString *)v5 setAttributedString:attributedText];

  [coderCopy encodeObject:v5 forKey:@"WTContextCodingKeyAttributedText"];
  v7 = MEMORY[0x277CCAE60];
  range = [(WTContext *)self range];
  v10 = [v7 valueWithRange:{range, v9}];
  [coderCopy encodeObject:v10 forKey:@"WTContextCodingKeyRange"];

  smartReplyConfig = [(WTContext *)self smartReplyConfig];

  if (smartReplyConfig)
  {
    smartReplyConfig2 = [(WTContext *)self smartReplyConfig];
    [coderCopy encodeObject:smartReplyConfig2 forKey:@"WTContextCodingKeySmartReplyConfiguration"];
  }
}

- (WTContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WTContext;
  v5 = [(WTContext *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeyAttributedText"];
    attributedString = [v8 attributedString];
    attributedText = v5->_attributedText;
    v5->_attributedText = attributedString;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeyRange"];
    v5->_range.location = [v11 rangeValue];
    v5->_range.length = v12;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeySmartReplyConfiguration"];
    smartReplyConfig = v5->_smartReplyConfig;
    v5->_smartReplyConfig = v13;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"WTContextKey" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

- (WTContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  [@"WTContextKey" UTF8String];
  v5 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();

  return v5;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end