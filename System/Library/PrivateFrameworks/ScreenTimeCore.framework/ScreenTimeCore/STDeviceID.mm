@interface STDeviceID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceID:(id)d;
- (STDeviceID)initWithCoder:(id)coder;
- (STDeviceID)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDeviceID

- (STDeviceID)initWithIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = STDeviceID;
  identifierCopy = identifier;
  v4 = [(STDeviceID *)&v8 init];
  v5 = [identifierCopy copy];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(STDeviceID *)self identifier];
  v5 = [NSString stringWithFormat:@"<%@ { Identifier: %@ }>", v3, identifier];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;

  return [v4 initWithIdentifier:identifier];
}

- (STDeviceID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(STDeviceID *)self initWithIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(STDeviceID *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STDeviceID *)self isEqualToDeviceID:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeviceID:(id)d
{
  if (d == self)
  {
    return 1;
  }

  dCopy = d;
  identifier = [(STDeviceID *)self identifier];
  identifier2 = [dCopy identifier];

  LOBYTE(dCopy) = [identifier isEqualToString:identifier2];
  return dCopy;
}

- (unint64_t)hash
{
  identifier = [(STDeviceID *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end