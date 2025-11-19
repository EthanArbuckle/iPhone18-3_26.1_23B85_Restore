@interface TUPrivacyRule
+ (id)ruleForBusinessID:(id)a3;
+ (id)ruleForEmail:(id)a3;
+ (id)ruleForPhoneNumber:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUPrivacyRule)initWithCoder:(id)a3;
- (id)initForBusinessID:(id)a3;
- (id)initForEmail:(id)a3;
- (id)initForPhoneNumber:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUPrivacyRule

- (id)initForPhoneNumber:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUPrivacyRule;
  v6 = [(TUPrivacyRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_phoneNumber, a3);
    if (!v7->_phoneNumber)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)initForEmail:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUPrivacyRule;
  v6 = [(TUPrivacyRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_email, a3);
    if (!v7->_email)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)initForBusinessID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUPrivacyRule;
  v6 = [(TUPrivacyRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_businessID, a3);
    if (!v7->_businessID)
    {

      v7 = 0;
    }
  }

  return v7;
}

+ (id)ruleForPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = [[TUPrivacyRule alloc] initForPhoneNumber:v3];

  return v4;
}

+ (id)ruleForEmail:(id)a3
{
  v3 = a3;
  v4 = [[TUPrivacyRule alloc] initForEmail:v3];

  return v4;
}

+ (id)ruleForBusinessID:(id)a3
{
  v3 = a3;
  v4 = [[TUPrivacyRule alloc] initForBusinessID:v3];

  return v4;
}

- (TUPrivacyRule)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUPrivacyRule;
  v5 = [(TUPrivacyRule *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeInt32ForKey:@"Type"];
    v5->_type = v6;
    if (v6 <= 2)
    {
      v7 = off_1E7426CC0[v6];
      v8 = 8 * v6;
      v9 = *(&off_1E7426CA8)[v6];
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v7];
      v11 = *(&v5->_phoneNumber + v8);
      *(&v5->_phoneNumber + v8) = v10;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt32:self->_type forKey:@"Type"];
  type = self->_type;
  if (type <= 2)
  {
    [v5 encodeObject:*(&self->_phoneNumber + (8 * type)) forKey:off_1E7426CC0[type]];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TUPrivacyRule *)self type];
    if (v6 == [v5 type])
    {
      type = self->_type;
      switch(type)
      {
        case 2:
          v8 = [(TUPrivacyRule *)self businessID];
          v9 = [v5 businessID];
          goto LABEL_11;
        case 1:
          v8 = [(TUPrivacyRule *)self email];
          v9 = [v5 email];
          goto LABEL_11;
        case 0:
          v8 = [(TUPrivacyRule *)self phoneNumber];
          v9 = [v5 phoneNumber];
LABEL_11:
          v11 = v9;
          v10 = [v8 isEqual:v9];

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