@interface SKGEmailAddress
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGEmailAddress

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGEmailAddress *)self email];
    v7 = [v6 lowercaseString];
    v8 = [v5 email];
    v9 = [v8 lowercaseString];
    if ([v7 isEqualToString:v9])
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
  v2 = [(SKGEmailAddress *)self email];
  v3 = [v2 lowercaseString];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKGEmailAddress *)self email];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, v5, v6];

  return v7;
}

@end