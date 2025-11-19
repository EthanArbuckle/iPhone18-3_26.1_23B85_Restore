@interface ICDelegationProviderServiceAssertion
- (BOOL)isEqual:(id)a3;
- (ICDelegationProviderServiceAssertion)initWithCoder:(id)a3;
- (ICDelegationProviderServiceAssertion)initWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICDelegationProviderServiceAssertion

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSUUID *)self->_uniqueIdentifier copyWithZone:a3];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSDate *)self->_expirationDate copyWithZone:a3];
    v11 = v5[1];
    v5[1] = v10;
  }

  return v5;
}

- (ICDelegationProviderServiceAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = ICDelegationProviderServiceAssertion;
    v6 = [(ICDelegationProviderServiceAssertion *)&v13 init];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"(unknown)";
      }

      objc_storeStrong(&v6->_name, v9);

      objc_storeStrong(&v6->_uniqueIdentifier, v5);
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v6->_expirationDate;
      v6->_expirationDate = v10;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  v6 = v4->_uniqueIdentifier;
  if (uniqueIdentifier != v6)
  {
    v7 = 0;
    if (!uniqueIdentifier || !v6)
    {
      goto LABEL_13;
    }

    if (![(NSUUID *)uniqueIdentifier isEqual:?])
    {
LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }
  }

  expirationDate = self->_expirationDate;
  v9 = v4->_expirationDate;
  if (expirationDate == v9)
  {
LABEL_11:
    v7 = 1;
    goto LABEL_13;
  }

  v7 = 0;
  if (expirationDate && v9)
  {
    v7 = [(NSDate *)expirationDate isEqualToDate:?];
  }

LABEL_13:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  expirationDate = self->_expirationDate;
  name = self->_name;
  if (expirationDate)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" expirationDate:'%@", self->_expirationDate];
  }

  else
  {
    v8 = &stru_1F2C4A680;
  }

  v9 = [v3 stringWithFormat:@"<%@ %p name:'%@'%@ uniqueIdentifier:%@>", v5, self, name, v8, self->_uniqueIdentifier];
  if (expirationDate)
  {
  }

  return v9;
}

- (ICDelegationProviderServiceAssertion)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICDelegationProviderServiceAssertion;
  v5 = [(ICDelegationProviderServiceAssertion *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;
  }

  return v5;
}

@end