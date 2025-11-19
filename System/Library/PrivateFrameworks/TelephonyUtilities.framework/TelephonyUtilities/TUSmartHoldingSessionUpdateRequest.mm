@interface TUSmartHoldingSessionUpdateRequest
- (TUSmartHoldingSessionUpdateRequest)initWithCallUUID:(id)a3 session:(id)a4;
- (TUSmartHoldingSessionUpdateRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSmartHoldingSessionUpdateRequest

- (TUSmartHoldingSessionUpdateRequest)initWithCallUUID:(id)a3 session:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TUSmartHoldingSessionUpdateRequest;
  v8 = [(TUSmartHoldingSessionRequest *)&v11 initWithCallUUID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_session, a4);
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUSmartHoldingSessionUpdateRequest;
  v3 = [(TUSmartHoldingSessionUpdateRequest *)&v8 description];
  v4 = [v3 mutableCopy];

  v5 = [(TUSmartHoldingSessionRequest *)self uuid];
  [v4 appendFormat:@" uuid=%@", v5];

  v6 = [(TUSmartHoldingSessionUpdateRequest *)self session];
  [v4 appendFormat:@" session=%@", v6];

  [v4 appendFormat:@" "];
  [v4 appendString:@">"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUSmartHoldingSessionUpdateRequest;
  v4 = a3;
  [(TUSmartHoldingSessionRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_session forKey:{@"session", v5.receiver, v5.super_class}];
}

- (TUSmartHoldingSessionUpdateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUSmartHoldingSessionUpdateRequest;
  v5 = [(TUSmartHoldingSessionRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TUSmartHoldingSessionUpdateRequest;
  v4 = [(TUSmartHoldingSessionRequest *)&v8 copyWithZone:a3];
  v5 = [(TUSmartHoldingSessionUpdateRequest *)self session];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

@end