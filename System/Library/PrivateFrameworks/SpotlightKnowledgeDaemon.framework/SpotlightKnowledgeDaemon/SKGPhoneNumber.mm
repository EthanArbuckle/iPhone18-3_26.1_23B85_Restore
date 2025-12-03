@interface SKGPhoneNumber
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGPhoneNumber

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    phoneNumberValue = [(SKGPhoneNumber *)self phoneNumberValue];
    phoneNumberValue2 = [(SKGPhoneNumber *)self phoneNumberValue];
    if ([phoneNumberValue isEqualToString:phoneNumberValue2])
    {
      v10.receiver = self;
      v10.super_class = SKGPhoneNumber;
      v8 = [(SKGEntity *)&v10 isEqual:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  phoneNumberValue = [(SKGPhoneNumber *)self phoneNumberValue];
  lowercaseString = [phoneNumberValue lowercaseString];
  v4 = [lowercaseString hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  phoneNumberValue = [(SKGPhoneNumber *)self phoneNumberValue];
  countryCodeValue = [(SKGPhoneNumber *)self countryCodeValue];
  [(SKGEntity *)self score];
  v8 = [v3 stringWithFormat:@"<%@: %@ %ld %f", v4, phoneNumberValue, countryCodeValue, v7];

  return v8;
}

@end