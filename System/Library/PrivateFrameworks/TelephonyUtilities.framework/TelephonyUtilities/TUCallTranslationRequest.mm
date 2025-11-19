@interface TUCallTranslationRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTUCallTranslationRequest:(id)a3;
- (TUCallTranslationRequest)initWithCall:(id)a3;
- (TUCallTranslationRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallTranslationRequest

- (TUCallTranslationRequest)initWithCall:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUCallTranslationRequest;
  v5 = [(TUCallTranslationRequest *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v4 uniqueProxyIdentifier];
    v10 = [v8 initWithUUIDString:v9];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallTranslationRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUCallTranslationRequest *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_callUUID forKey:@"callUUID"];
}

- (TUCallTranslationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUCallTranslationRequest *)self UUID];
  [v4 setUUID:v5];

  v6 = [(TUCallTranslationRequest *)self callUUID];
  [v4 setCallUUID:v6];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(TUCallTranslationRequest *)self UUID];
  v4 = [v3 hash];
  v5 = [(TUCallTranslationRequest *)self callUUID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallTranslationRequest *)self isEqualToTUCallTranslationRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToTUCallTranslationRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationRequest *)self UUID];
  v6 = [v4 UUID];
  if (v5 == v6)
  {
    v8 = [(TUCallTranslationRequest *)self callUUID];
    v9 = [v4 callUUID];
    v7 = v8 == v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end