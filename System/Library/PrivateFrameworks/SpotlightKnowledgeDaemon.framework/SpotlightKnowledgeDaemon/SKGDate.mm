@interface SKGDate
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGDate

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGDate *)self date];
    v7 = [v5 date];
    if ([v6 isEqualToDate:v7])
    {
      v10.receiver = self;
      v10.super_class = SKGDate;
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
  v2 = [(SKGDate *)self date];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKGDate *)self date];
  v6 = [v5 description];
  [(SKGEntity *)self score];
  v8 = [v3 stringWithFormat:@"<%@: %@ %f", v4, v6, v7];

  return v8;
}

@end