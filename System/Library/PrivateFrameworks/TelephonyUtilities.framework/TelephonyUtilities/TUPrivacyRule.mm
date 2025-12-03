@interface TUPrivacyRule
+ (id)ruleForBusinessID:(id)d;
+ (id)ruleForEmail:(id)email;
+ (id)ruleForPhoneNumber:(id)number;
- (BOOL)isEqual:(id)equal;
- (TUPrivacyRule)initWithCoder:(id)coder;
- (id)initForBusinessID:(id)d;
- (id)initForEmail:(id)email;
- (id)initForPhoneNumber:(id)number;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUPrivacyRule

- (id)initForPhoneNumber:(id)number
{
  numberCopy = number;
  v9.receiver = self;
  v9.super_class = TUPrivacyRule;
  v6 = [(TUPrivacyRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_phoneNumber, number);
    if (!v7->_phoneNumber)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)initForEmail:(id)email
{
  emailCopy = email;
  v9.receiver = self;
  v9.super_class = TUPrivacyRule;
  v6 = [(TUPrivacyRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_email, email);
    if (!v7->_email)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)initForBusinessID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TUPrivacyRule;
  v6 = [(TUPrivacyRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_businessID, d);
    if (!v7->_businessID)
    {

      v7 = 0;
    }
  }

  return v7;
}

+ (id)ruleForPhoneNumber:(id)number
{
  numberCopy = number;
  v4 = [[TUPrivacyRule alloc] initForPhoneNumber:numberCopy];

  return v4;
}

+ (id)ruleForEmail:(id)email
{
  emailCopy = email;
  v4 = [[TUPrivacyRule alloc] initForEmail:emailCopy];

  return v4;
}

+ (id)ruleForBusinessID:(id)d
{
  dCopy = d;
  v4 = [[TUPrivacyRule alloc] initForBusinessID:dCopy];

  return v4;
}

- (TUPrivacyRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TUPrivacyRule;
  v5 = [(TUPrivacyRule *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeInt32ForKey:@"Type"];
    v5->_type = v6;
    if (v6 <= 2)
    {
      v7 = off_1E7426CC0[v6];
      v8 = 8 * v6;
      v9 = *(&off_1E7426CA8)[v6];
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v7];
      v11 = *(&v5->_phoneNumber + v8);
      *(&v5->_phoneNumber + v8) = v10;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_type forKey:@"Type"];
  type = self->_type;
  if (type <= 2)
  {
    [coderCopy encodeObject:*(&self->_phoneNumber + (8 * type)) forKey:off_1E7426CC0[type]];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(TUPrivacyRule *)self type];
    if (type == [v5 type])
    {
      type = self->_type;
      switch(type)
      {
        case 2:
          businessID = [(TUPrivacyRule *)self businessID];
          businessID2 = [v5 businessID];
          goto LABEL_11;
        case 1:
          businessID = [(TUPrivacyRule *)self email];
          businessID2 = [v5 email];
          goto LABEL_11;
        case 0:
          businessID = [(TUPrivacyRule *)self phoneNumber];
          businessID2 = [v5 phoneNumber];
LABEL_11:
          v11 = businessID2;
          v10 = [businessID isEqual:businessID2];

          goto LABEL_12;
      }
    }

    v10 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end