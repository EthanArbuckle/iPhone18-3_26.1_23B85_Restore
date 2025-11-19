@interface STTransportPayload
- (STTransportPayload)initWithCoder:(id)a3;
- (STTransportPayload)initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STTransportPayload

- (STTransportPayload)initWithUUID:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STTransportPayload;
  v5 = [(STTransportPayload *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
      UUID = v5->_UUID;
      v5->_UUID = v6;
    }

    else
    {
      UUID = +[NSUUID UUID];
      v8 = [UUID UUIDString];
      v9 = v5->_UUID;
      v5->_UUID = v8;
    }
  }

  return v5;
}

- (STTransportPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STTransportPayload;
  v5 = [(STTransportPayload *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  UUID = self->_UUID;

  return [v4 initWithUUID:UUID];
}

@end