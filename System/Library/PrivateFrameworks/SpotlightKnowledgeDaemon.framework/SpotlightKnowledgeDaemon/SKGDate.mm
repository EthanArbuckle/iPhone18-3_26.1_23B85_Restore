@interface SKGDate
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKGDate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    date = [(SKGDate *)self date];
    date2 = [v5 date];
    if ([date isEqualToDate:date2])
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
  date = [(SKGDate *)self date];
  v3 = [date hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  date = [(SKGDate *)self date];
  v6 = [date description];
  [(SKGEntity *)self score];
  v8 = [v3 stringWithFormat:@"<%@: %@ %f", v4, v6, v7];

  return v8;
}

@end