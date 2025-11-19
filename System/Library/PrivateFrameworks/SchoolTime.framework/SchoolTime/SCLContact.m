@interface SCLContact
- (BOOL)isEqual:(id)a3;
- (SCLContact)initWithCoder:(id)a3;
- (id)_initWithContactIdentifier:(id)a3 type:(unint64_t)a4 value:(id)a5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLContact

- (id)_initWithContactIdentifier:(id)a3 type:(unint64_t)a4 value:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SCLContact;
  v10 = [(SCLContact *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v10->_type = a4;
    v13 = [v9 copy];
    value = v10->_value;
    v10->_value = v13;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SCLContact *)self contactIdentifier];
  v4 = [v3 hash];
  v5 = [(SCLContact *)self type]^ v4;
  v6 = [(SCLContact *)self value];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLContact *)self contactIdentifier];
      v7 = [(SCLContact *)v5 contactIdentifier];
      if (BSEqualObjects() && (v8 = [(SCLContact *)self type], v8 == [(SCLContact *)v5 type]))
      {
        v9 = [(SCLContact *)self value];
        v10 = [(SCLContact *)v5 value];
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
  v4 = [(SCLContact *)self contactIdentifier];
  [v3 appendString:v4 withName:@"contactIdentifier"];

  v5 = [(SCLContact *)self type];
  v6 = @"unknown";
  if (v5 == 2)
  {
    v6 = @"phone";
  }

  if (v5 == 1)
  {
    v7 = @"email";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendString:v7 withName:@"type"];
  v8 = [(SCLContact *)self value];
  [v3 appendString:v8 withName:@"value"];

  v9 = [v3 build];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SCLContact alloc];
  contactIdentifier = self->_contactIdentifier;
  type = self->_type;
  value = self->_value;

  return [(SCLContact *)v4 _initWithContactIdentifier:contactIdentifier type:type value:value];
}

- (SCLContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v8 = [(SCLContact *)self _initWithContactIdentifier:v5 type:v6 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

@end