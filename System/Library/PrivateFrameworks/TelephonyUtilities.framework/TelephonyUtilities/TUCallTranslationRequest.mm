@interface TUCallTranslationRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTUCallTranslationRequest:(id)request;
- (TUCallTranslationRequest)initWithCall:(id)call;
- (TUCallTranslationRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallTranslationRequest

- (TUCallTranslationRequest)initWithCall:(id)call
{
  callCopy = call;
  v13.receiver = self;
  v13.super_class = TUCallTranslationRequest;
  v5 = [(TUCallTranslationRequest *)&v13 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = [v8 initWithUUIDString:uniqueProxyIdentifier];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCallTranslationRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  callUUID = [(TUCallTranslationRequest *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", callUUID];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
}

- (TUCallTranslationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCallTranslationRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uUID = [(TUCallTranslationRequest *)self UUID];
  [v4 setUUID:uUID];

  callUUID = [(TUCallTranslationRequest *)self callUUID];
  [v4 setCallUUID:callUUID];

  return v4;
}

- (unint64_t)hash
{
  uUID = [(TUCallTranslationRequest *)self UUID];
  v4 = [uUID hash];
  callUUID = [(TUCallTranslationRequest *)self callUUID];
  v6 = [callUUID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallTranslationRequest *)self isEqualToTUCallTranslationRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTUCallTranslationRequest:(id)request
{
  requestCopy = request;
  uUID = [(TUCallTranslationRequest *)self UUID];
  uUID2 = [requestCopy UUID];
  if (uUID == uUID2)
  {
    callUUID = [(TUCallTranslationRequest *)self callUUID];
    callUUID2 = [requestCopy callUUID];
    v7 = callUUID == callUUID2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end