@interface STDeviceID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceID:(id)a3;
- (STDeviceID)initWithCoder:(id)a3;
- (STDeviceID)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDeviceID

- (STDeviceID)initWithIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = STDeviceID;
  v3 = a3;
  v4 = [(STDeviceID *)&v8 init];
  v5 = [v3 copy];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STDeviceID *)self identifier];
  v5 = [NSString stringWithFormat:@"<%@ { Identifier: %@ }>", v3, v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;

  return [v4 initWithIdentifier:identifier];
}

- (STDeviceID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(STDeviceID *)self initWithIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STDeviceID *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDeviceID *)self isEqualToDeviceID:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeviceID:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(STDeviceID *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(STDeviceID *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end