@interface SKGEmailAddress
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGEmailAddress

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    email = [(SKGEmailAddress *)self email];
    lowercaseString = [email lowercaseString];
    email2 = [v5 email];
    lowercaseString2 = [email2 lowercaseString];
    if ([lowercaseString isEqualToString:lowercaseString2])
    {
      v12.receiver = self;
      v12.super_class = SKGEmailAddress;
      v10 = [(SKGEntity *)&v12 isEqual:v5];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  email = [(SKGEmailAddress *)self email];
  lowercaseString = [email lowercaseString];
  v4 = [lowercaseString hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  email = [(SKGEmailAddress *)self email];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, email, v6];

  return v7;
}

@end