@interface WBSHideMyEmailRecord
- (BOOL)isEqual:(id)a3;
- (WBSHideMyEmailRecord)initWithCoder:(id)a3;
- (WBSHideMyEmailRecord)initWithDomain:(id)a3 state:(unint64_t)a4 privateEmailAddress:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHideMyEmailRecord

- (WBSHideMyEmailRecord)initWithDomain:(id)a3 state:(unint64_t)a4 privateEmailAddress:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = WBSHideMyEmailRecord;
  v10 = [(WBSHideMyEmailRecord *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    domain = v10->_domain;
    v10->_domain = v11;

    v10->_state = a4;
    v13 = [v9 copy];
    privateEmailAddress = v10->_privateEmailAddress;
    v10->_privateEmailAddress = v13;

    v15 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeObject:domain forKey:@"domain"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeObject:self->_privateEmailAddress forKey:@"privateEmailAddress"];
}

- (WBSHideMyEmailRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = [v4 decodeIntegerForKey:@"state"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailAddress"];

  v8 = [(WBSHideMyEmailRecord *)self initWithDomain:v5 state:v6 privateEmailAddress:v7];
  return v8;
}

@end