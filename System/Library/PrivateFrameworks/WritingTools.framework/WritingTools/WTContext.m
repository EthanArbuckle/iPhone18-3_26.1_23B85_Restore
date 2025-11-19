@interface WTContext
- (BOOL)isEqual:(id)a3;
- (WTContext)initWithAttributedText:(id)a3 range:(_NSRange)a4;
- (WTContext)initWithCoder:(id)a3;
- (WTContext)initWithXPCDictionary:(id)a3;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation WTContext

- (WTContext)initWithAttributedText:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = WTContext;
  v8 = [(WTContext *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    v11 = [v7 copy];
    attributedText = v8->_attributedText;
    v8->_attributedText = v11;

    v8->_range.location = location;
    v8->_range.length = length;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(WTContext *)self uuid];
  v4 = [v3 hash];

  v5 = 257 * ([(WTContext *)self range]+ 257 * v4);
  [(WTContext *)self range];
  return v5 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(WTContext *)self uuid];
    v7 = [(WTContext *)v5 uuid];
    if ([v6 isEqual:v7])
    {
      v8 = [(WTContext *)self range];
      v10 = v9;
      v13 = v8 == [(WTContext *)v5 range]&& v10 == v11;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(WTContext *)self uuid];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(WTContext *)self attributedText];
    v9 = [v8 copyWithZone:a3];
    v10 = v5[2];
    v5[2] = v9;

    v5[4] = [(WTContext *)self range];
    v5[5] = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(WTContext *)self uuid];
  [v13 encodeObject:v4 forKey:@"WTContextCodingKeyUUID"];

  v5 = objc_alloc_init(WTBSCompatibleAttributedString);
  v6 = [(WTContext *)self attributedText];
  [(WTBSCompatibleAttributedString *)v5 setAttributedString:v6];

  [v13 encodeObject:v5 forKey:@"WTContextCodingKeyAttributedText"];
  v7 = MEMORY[0x277CCAE60];
  v8 = [(WTContext *)self range];
  v10 = [v7 valueWithRange:{v8, v9}];
  [v13 encodeObject:v10 forKey:@"WTContextCodingKeyRange"];

  v11 = [(WTContext *)self smartReplyConfig];

  if (v11)
  {
    v12 = [(WTContext *)self smartReplyConfig];
    [v13 encodeObject:v12 forKey:@"WTContextCodingKeySmartReplyConfiguration"];
  }
}

- (WTContext)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WTContext;
  v5 = [(WTContext *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeyAttributedText"];
    v9 = [v8 attributedString];
    attributedText = v5->_attributedText;
    v5->_attributedText = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeyRange"];
    v5->_range.location = [v11 rangeValue];
    v5->_range.length = v12;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTContextCodingKeySmartReplyConfiguration"];
    smartReplyConfig = v5->_smartReplyConfig;
    v5->_smartReplyConfig = v13;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v3 = a3;
  [@"WTContextKey" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

- (WTContext)initWithXPCDictionary:(id)a3
{
  v4 = a3;
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