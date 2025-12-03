@interface TUSmartHoldingSessionUpdateRequest
- (TUSmartHoldingSessionUpdateRequest)initWithCallUUID:(id)d session:(id)session;
- (TUSmartHoldingSessionUpdateRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSmartHoldingSessionUpdateRequest

- (TUSmartHoldingSessionUpdateRequest)initWithCallUUID:(id)d session:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = TUSmartHoldingSessionUpdateRequest;
  v8 = [(TUSmartHoldingSessionRequest *)&v11 initWithCallUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_session, session);
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUSmartHoldingSessionUpdateRequest;
  v3 = [(TUSmartHoldingSessionUpdateRequest *)&v8 description];
  v4 = [v3 mutableCopy];

  uuid = [(TUSmartHoldingSessionRequest *)self uuid];
  [v4 appendFormat:@" uuid=%@", uuid];

  session = [(TUSmartHoldingSessionUpdateRequest *)self session];
  [v4 appendFormat:@" session=%@", session];

  [v4 appendFormat:@" "];
  [v4 appendString:@">"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUSmartHoldingSessionUpdateRequest;
  coderCopy = coder;
  [(TUSmartHoldingSessionRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_session forKey:{@"session", v5.receiver, v5.super_class}];
}

- (TUSmartHoldingSessionUpdateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUSmartHoldingSessionUpdateRequest;
  v5 = [(TUSmartHoldingSessionRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TUSmartHoldingSessionUpdateRequest;
  v4 = [(TUSmartHoldingSessionRequest *)&v8 copyWithZone:zone];
  session = [(TUSmartHoldingSessionUpdateRequest *)self session];
  v6 = v4[3];
  v4[3] = session;

  return v4;
}

@end