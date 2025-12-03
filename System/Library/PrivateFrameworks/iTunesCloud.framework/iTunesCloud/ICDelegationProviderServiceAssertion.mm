@interface ICDelegationProviderServiceAssertion
- (BOOL)isEqual:(id)equal;
- (ICDelegationProviderServiceAssertion)initWithCoder:(id)coder;
- (ICDelegationProviderServiceAssertion)initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICDelegationProviderServiceAssertion

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_name copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSUUID *)self->_uniqueIdentifier copyWithZone:zone];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSDate *)self->_expirationDate copyWithZone:zone];
    v11 = v5[1];
    v5[1] = v10;
  }

  return v5;
}

- (ICDelegationProviderServiceAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = ICDelegationProviderServiceAssertion;
    v6 = [(ICDelegationProviderServiceAssertion *)&v13 init];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
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

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  v6 = equalCopy->_uniqueIdentifier;
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
  v9 = equalCopy->_expirationDate;
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

- (ICDelegationProviderServiceAssertion)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ICDelegationProviderServiceAssertion;
  v5 = [(ICDelegationProviderServiceAssertion *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uUID;
  }

  return v5;
}

@end