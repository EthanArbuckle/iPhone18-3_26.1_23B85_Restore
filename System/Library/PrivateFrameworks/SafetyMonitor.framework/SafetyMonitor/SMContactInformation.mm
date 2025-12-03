@interface SMContactInformation
- (BOOL)isEqual:(id)equal;
- (SMContactInformation)initWithCoder:(id)coder;
- (SMContactInformation)initWithEmail:(id)email phoneNumber:(id)number;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMContactInformation

- (SMContactInformation)initWithEmail:(id)email phoneNumber:(id)number
{
  emailCopy = email;
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = SMContactInformation;
  v9 = [(SMContactInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_email, email);
    objc_storeStrong(&v10->_phoneNumber, number);
  }

  return v10;
}

- (SMContactInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Email"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PhoneNumber"];

  v7 = [(SMContactInformation *)self initWithEmail:v5 phoneNumber:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  email = self->_email;
  coderCopy = coder;
  [coderCopy encodeObject:email forKey:@"Email"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"PhoneNumber"];
}

- (unint64_t)hash
{
  email = [(SMContactInformation *)self email];
  v4 = [email hash];
  phoneNumber = [(SMContactInformation *)self phoneNumber];
  v6 = [phoneNumber hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      email = [(SMContactInformation *)self email];
      email2 = [(SMContactInformation *)v6 email];
      if (email != email2)
      {
        email3 = [(SMContactInformation *)self email];
        email4 = [(SMContactInformation *)v6 email];
        if (![email3 isEqual:email4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = email3;
      }

      phoneNumber = [(SMContactInformation *)self phoneNumber];
      phoneNumber2 = [(SMContactInformation *)v6 phoneNumber];
      if (phoneNumber == phoneNumber2)
      {
        v10 = 1;
      }

      else
      {
        phoneNumber3 = [(SMContactInformation *)self phoneNumber];
        phoneNumber4 = [(SMContactInformation *)v6 phoneNumber];
        v10 = [phoneNumber3 isEqual:phoneNumber4];
      }

      email3 = v16;
      if (email == email2)
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
  phoneNumber = [(SMContactInformation *)self phoneNumber];
  email = [(SMContactInformation *)self email];
  v6 = [v3 stringWithFormat:@"phone number, %@, email, %@", phoneNumber, email];

  return v6;
}

@end