@interface TUScreeningRequest
- (TUScreeningRequest)initWithCoder:(id)a3;
- (TUScreeningRequest)initWithTUCallUpdate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUScreeningRequest

- (TUScreeningRequest)initWithTUCallUpdate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUScreeningRequest;
  v5 = [(TUScreeningRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 UUID];
    v7 = [v6 copy];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [v4 callUUID];
    v10 = [v9 copy];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUScreeningRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUScreeningRequest *)self callUUID];
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

- (TUScreeningRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUScreeningRequest;
  v5 = [(TUScreeningRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    v7 = [v6 copy];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    v10 = [v9 copy];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TUScreeningRequest allocWithZone:?]];
  v5 = [(TUScreeningRequest *)self UUID];
  v6 = [v5 copy];
  [(TUScreeningRequest *)v4 setUUID:v6];

  v7 = [(TUScreeningRequest *)self callUUID];
  v8 = [v7 copy];
  [(TUScreeningRequest *)v4 setCallUUID:v8];

  return v4;
}

@end