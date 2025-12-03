@interface WBSHideMyEmailRecord
- (BOOL)isEqual:(id)equal;
- (WBSHideMyEmailRecord)initWithCoder:(id)coder;
- (WBSHideMyEmailRecord)initWithDomain:(id)domain state:(unint64_t)state privateEmailAddress:(id)address;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHideMyEmailRecord

- (WBSHideMyEmailRecord)initWithDomain:(id)domain state:(unint64_t)state privateEmailAddress:(id)address
{
  domainCopy = domain;
  addressCopy = address;
  v17.receiver = self;
  v17.super_class = WBSHideMyEmailRecord;
  v10 = [(WBSHideMyEmailRecord *)&v17 init];
  if (v10)
  {
    v11 = [domainCopy copy];
    domain = v10->_domain;
    v10->_domain = v11;

    v10->_state = state;
    v13 = [addressCopy copy];
    privateEmailAddress = v10->_privateEmailAddress;
    v10->_privateEmailAddress = v13;

    v15 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_state == v5->_state && WBSIsEqual())
      {
        v6 = WBSIsEqual();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = self->_state - 1;
  if (v5 > 2)
  {
    v6 = @"PrivateEmailExists";
  }

  else
  {
    v6 = off_1E7FB7460[v5];
  }

  return [v3 stringWithFormat:@"<%@: %p, domain: %@, state: %@, privateEmailAddress: %@>", v4, self, self->_domain, v6, self->_privateEmailAddress];
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"domain"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_privateEmailAddress forKey:@"privateEmailAddress"];
}

- (WBSHideMyEmailRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = [coderCopy decodeIntegerForKey:@"state"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailAddress"];

  v8 = [(WBSHideMyEmailRecord *)self initWithDomain:v5 state:v6 privateEmailAddress:v7];
  return v8;
}

@end