@interface SKGPhoneNumber
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGPhoneNumber

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGPhoneNumber *)self phoneNumberValue];
    v7 = [(SKGPhoneNumber *)self phoneNumberValue];
    if ([v6 isEqualToString:v7])
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
  v2 = [(SKGPhoneNumber *)self phoneNumberValue];
  v3 = [v2 lowercaseString];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKGPhoneNumber *)self phoneNumberValue];
  v6 = [(SKGPhoneNumber *)self countryCodeValue];
  [(SKGEntity *)self score];
  v8 = [v3 stringWithFormat:@"<%@: %@ %ld %f", v4, v5, v6, v7];

  return v8;
}

@end