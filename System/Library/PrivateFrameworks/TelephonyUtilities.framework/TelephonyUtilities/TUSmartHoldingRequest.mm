@interface TUSmartHoldingRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSession:(id)session;
- (TUSmartHoldingRequest)initWithCallUUID:(id)d requestType:(int64_t)type;
- (TUSmartHoldingRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSmartHoldingRequest

- (TUSmartHoldingRequest)initWithCallUUID:(id)d requestType:(int64_t)type
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TUSmartHoldingRequest;
  v8 = [(TUSmartHoldingRequest *)&v12 init];
  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = uUID;

    objc_storeStrong(&v8->_callUUID, d);
    v8->_requestType = type;
  }

  return v8;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUSmartHoldingRequest;
  v3 = [(TUSmartHoldingRequest *)&v8 description];
  v4 = [v3 mutableCopy];

  uuid = [(TUSmartHoldingRequest *)self uuid];
  [v4 appendFormat:@" uuid=%@", uuid];

  callUUID = [(TUSmartHoldingRequest *)self callUUID];
  [v4 appendFormat:@" callUUID=%@", callUUID];

  [v4 appendFormat:@" requestType=%lu", -[TUSmartHoldingRequest requestType](self, "requestType")];
  [v4 appendFormat:@" "];
  [v4 appendString:@">"];

  return v4;
}

- (TUSmartHoldingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TUSmartHoldingRequest;
  v5 = [(TUSmartHoldingRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;

    v5->_requestType = [coderCopy decodeIntForKey:@"requestType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
  [coderCopy encodeInt:LODWORD(self->_requestType) forKey:@"requestType"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSmartHoldingRequest *)self isEqualToSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)session
{
  sessionCopy = session;
  uuid = [(TUSmartHoldingRequest *)self uuid];
  uuid2 = [sessionCopy uuid];
  if ([uuid isEqual:uuid2])
  {
    callUUID = [(TUSmartHoldingRequest *)self callUUID];
    callUUID2 = [sessionCopy callUUID];
    if ([callUUID isEqual:callUUID2])
    {
      requestType = [(TUSmartHoldingRequest *)self requestType];
      v10 = requestType == [sessionCopy requestType];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end