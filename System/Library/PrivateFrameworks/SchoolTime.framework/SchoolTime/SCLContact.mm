@interface SCLContact
- (BOOL)isEqual:(id)equal;
- (SCLContact)initWithCoder:(id)coder;
- (id)_initWithContactIdentifier:(id)identifier type:(unint64_t)type value:(id)value;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLContact

- (id)_initWithContactIdentifier:(id)identifier type:(unint64_t)type value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = SCLContact;
  v10 = [(SCLContact *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v10->_type = type;
    v13 = [valueCopy copy];
    value = v10->_value;
    v10->_value = v13;
  }

  return v10;
}

- (unint64_t)hash
{
  contactIdentifier = [(SCLContact *)self contactIdentifier];
  v4 = [contactIdentifier hash];
  v5 = [(SCLContact *)self type]^ v4;
  value = [(SCLContact *)self value];
  v7 = [value hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contactIdentifier = [(SCLContact *)self contactIdentifier];
      contactIdentifier2 = [(SCLContact *)v5 contactIdentifier];
      if (BSEqualObjects() && (v8 = [(SCLContact *)self type], v8 == [(SCLContact *)v5 type]))
      {
        value = [(SCLContact *)self value];
        value2 = [(SCLContact *)v5 value];
        v11 = BSEqualStrings();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  contactIdentifier = [(SCLContact *)self contactIdentifier];
  [v3 appendString:contactIdentifier withName:@"contactIdentifier"];

  type = [(SCLContact *)self type];
  v6 = @"unknown";
  if (type == 2)
  {
    v6 = @"phone";
  }

  if (type == 1)
  {
    v7 = @"email";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendString:v7 withName:@"type"];
  value = [(SCLContact *)self value];
  [v3 appendString:value withName:@"value"];

  build = [v3 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SCLContact alloc];
  contactIdentifier = self->_contactIdentifier;
  type = self->_type;
  value = self->_value;

  return [(SCLContact *)v4 _initWithContactIdentifier:contactIdentifier type:type value:value];
}

- (SCLContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v8 = [(SCLContact *)self _initWithContactIdentifier:v5 type:v6 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

@end