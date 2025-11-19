@interface TUSmartHoldingRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSession:(id)a3;
- (TUSmartHoldingRequest)initWithCallUUID:(id)a3 requestType:(int64_t)a4;
- (TUSmartHoldingRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSmartHoldingRequest

- (TUSmartHoldingRequest)initWithCallUUID:(id)a3 requestType:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = TUSmartHoldingRequest;
  v8 = [(TUSmartHoldingRequest *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    objc_storeStrong(&v8->_callUUID, a3);
    v8->_requestType = a4;
  }

  return v8;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUSmartHoldingRequest;
  v3 = [(TUSmartHoldingRequest *)&v8 description];
  v4 = [v3 mutableCopy];

  v5 = [(TUSmartHoldingRequest *)self uuid];
  [v4 appendFormat:@" uuid=%@", v5];

  v6 = [(TUSmartHoldingRequest *)self callUUID];
  [v4 appendFormat:@" callUUID=%@", v6];

  [v4 appendFormat:@" requestType=%lu", -[TUSmartHoldingRequest requestType](self, "requestType")];
  [v4 appendFormat:@" "];
  [v4 appendString:@">"];

  return v4;
}

- (TUSmartHoldingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUSmartHoldingRequest;
  v5 = [(TUSmartHoldingRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;

    v5->_requestType = [v4 decodeIntForKey:@"requestType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_callUUID forKey:@"callUUID"];
  [v5 encodeInt:LODWORD(self->_requestType) forKey:@"requestType"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSmartHoldingRequest *)self isEqualToSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)a3
{
  v4 = a3;
  v5 = [(TUSmartHoldingRequest *)self uuid];
  v6 = [v4 uuid];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUSmartHoldingRequest *)self callUUID];
    v8 = [v4 callUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(TUSmartHoldingRequest *)self requestType];
      v10 = v9 == [v4 requestType];
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