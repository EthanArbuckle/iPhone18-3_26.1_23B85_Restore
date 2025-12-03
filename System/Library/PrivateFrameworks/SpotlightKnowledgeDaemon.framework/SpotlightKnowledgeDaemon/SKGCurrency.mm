@interface SKGCurrency
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation SKGCurrency

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      amount = [(SKGCurrency *)self amount];
      amount2 = [(SKGCurrency *)equalCopy amount];
      if ([amount isEqualToString:amount2] && (-[SKGCurrency value](self, "value"), v8 = v7, -[SKGCurrency value](equalCopy, "value"), v8 == v9) && (v10 = -[SKGCurrency code](self, "code"), v10 == -[SKGCurrency code](equalCopy, "code")))
      {
        [(SKGEntity *)self score];
        v12 = v11;
        [(SKGEntity *)equalCopy score];
        v14 = v12 == v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  amount = [(SKGCurrency *)self amount];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, amount, v6];

  return v7;
}

@end