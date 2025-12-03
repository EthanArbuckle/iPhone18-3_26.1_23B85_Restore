@interface STTransportPayload
- (STTransportPayload)initWithCoder:(id)coder;
- (STTransportPayload)initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STTransportPayload

- (STTransportPayload)initWithUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = STTransportPayload;
  v5 = [(STTransportPayload *)&v11 init];
  if (v5)
  {
    if (dCopy)
    {
      v6 = [dCopy copy];
      UUID = v5->_UUID;
      v5->_UUID = v6;
    }

    else
    {
      UUID = +[NSUUID UUID];
      uUIDString = [UUID UUIDString];
      v9 = v5->_UUID;
      v5->_UUID = uUIDString;
    }
  }

  return v5;
}

- (STTransportPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STTransportPayload;
  v5 = [(STTransportPayload *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  UUID = self->_UUID;

  return [v4 initWithUUID:UUID];
}

@end