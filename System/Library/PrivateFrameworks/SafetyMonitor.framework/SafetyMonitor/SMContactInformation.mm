@interface SMContactInformation
- (BOOL)isEqual:(id)a3;
- (SMContactInformation)initWithCoder:(id)a3;
- (SMContactInformation)initWithEmail:(id)a3 phoneNumber:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMContactInformation

- (SMContactInformation)initWithEmail:(id)a3 phoneNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SMContactInformation;
  v9 = [(SMContactInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_email, a3);
    objc_storeStrong(&v10->_phoneNumber, a4);
  }

  return v10;
}

- (SMContactInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Email"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PhoneNumber"];

  v7 = [(SMContactInformation *)self initWithEmail:v5 phoneNumber:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  email = self->_email;
  v5 = a3;
  [v5 encodeObject:email forKey:@"Email"];
  [v5 encodeObject:self->_phoneNumber forKey:@"PhoneNumber"];
}

- (unint64_t)hash
{
  v3 = [(SMContactInformation *)self email];
  v4 = [v3 hash];
  v5 = [(SMContactInformation *)self phoneNumber];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(SMContactInformation *)self email];
      v8 = [(SMContactInformation *)v6 email];
      if (v7 != v8)
      {
        v9 = [(SMContactInformation *)self email];
        v3 = [(SMContactInformation *)v6 email];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(SMContactInformation *)self phoneNumber];
      v12 = [(SMContactInformation *)v6 phoneNumber];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(SMContactInformation *)self phoneNumber];
        v14 = [(SMContactInformation *)v6 phoneNumber];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMContactInformation *)self phoneNumber];
  v5 = [(SMContactInformation *)self email];
  v6 = [v3 stringWithFormat:@"phone number, %@, email, %@", v4, v5];

  return v6;
}

@end