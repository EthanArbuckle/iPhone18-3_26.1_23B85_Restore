@interface TUSmartHoldingSessionRequest
- (TUSmartHoldingSessionRequest)initWithCallUUID:(id)d;
- (TUSmartHoldingSessionRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSmartHoldingSessionRequest

- (TUSmartHoldingSessionRequest)initWithCallUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = TUSmartHoldingSessionRequest;
  v6 = [(TUSmartHoldingSessionRequest *)&v10 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v6->_uuid;
    v6->_uuid = uUID;

    objc_storeStrong(&v6->_callUUID, d);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
}

- (TUSmartHoldingSessionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUSmartHoldingSessionRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(TUSmartHoldingSessionRequest *)self uuid];
  v6 = v4[1];
  v4[1] = uuid;

  callUUID = [(TUSmartHoldingSessionRequest *)self callUUID];
  v8 = v4[2];
  v4[2] = callUUID;

  return v4;
}

@end