@interface TUSmartHoldingSessionRequest
- (TUSmartHoldingSessionRequest)initWithCallUUID:(id)a3;
- (TUSmartHoldingSessionRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSmartHoldingSessionRequest

- (TUSmartHoldingSessionRequest)initWithCallUUID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TUSmartHoldingSessionRequest;
  v6 = [(TUSmartHoldingSessionRequest *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    objc_storeStrong(&v6->_callUUID, a3);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_callUUID forKey:@"callUUID"];
}

- (TUSmartHoldingSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUSmartHoldingSessionRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUSmartHoldingSessionRequest *)self uuid];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(TUSmartHoldingSessionRequest *)self callUUID];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

@end