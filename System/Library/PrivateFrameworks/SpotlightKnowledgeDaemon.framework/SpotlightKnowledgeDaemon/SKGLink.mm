@interface SKGLink
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGLink

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGLink *)self link];
    v7 = [v5 link];
    if ([v6 isEqualToString:v7])
    {
      v10.receiver = self;
      v10.super_class = SKGLink;
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
  v2 = [(SKGLink *)self link];
  v3 = [v2 lowercaseString];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKGLink *)self link];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, v5, v6];

  return v7;
}

@end