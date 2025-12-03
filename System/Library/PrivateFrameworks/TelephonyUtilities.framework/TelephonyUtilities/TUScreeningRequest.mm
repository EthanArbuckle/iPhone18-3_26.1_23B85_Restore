@interface TUScreeningRequest
- (TUScreeningRequest)initWithCoder:(id)coder;
- (TUScreeningRequest)initWithTUCallUpdate:(id)update;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUScreeningRequest

- (TUScreeningRequest)initWithTUCallUpdate:(id)update
{
  updateCopy = update;
  v13.receiver = self;
  v13.super_class = TUScreeningRequest;
  v5 = [(TUScreeningRequest *)&v13 init];
  if (v5)
  {
    uUID = [updateCopy UUID];
    v7 = [uUID copy];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    callUUID = [updateCopy callUUID];
    v10 = [callUUID copy];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUScreeningRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  callUUID = [(TUScreeningRequest *)self callUUID];
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

- (TUScreeningRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TUScreeningRequest;
  v5 = [(TUScreeningRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    v7 = [v6 copy];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    v10 = [v9 copy];
    callUUID = v5->_callUUID;
    v5->_callUUID = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUScreeningRequest allocWithZone:?]];
  uUID = [(TUScreeningRequest *)self UUID];
  v6 = [uUID copy];
  [(TUScreeningRequest *)v4 setUUID:v6];

  callUUID = [(TUScreeningRequest *)self callUUID];
  v8 = [callUUID copy];
  [(TUScreeningRequest *)v4 setCallUUID:v8];

  return v4;
}

@end