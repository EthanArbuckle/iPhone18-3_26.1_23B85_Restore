@interface SKGCurrency
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation SKGCurrency

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SKGCurrency *)self amount];
      v6 = [(SKGCurrency *)v4 amount];
      if ([v5 isEqualToString:v6] && (-[SKGCurrency value](self, "value"), v8 = v7, -[SKGCurrency value](v4, "value"), v8 == v9) && (v10 = -[SKGCurrency code](self, "code"), v10 == -[SKGCurrency code](v4, "code")))
      {
        [(SKGEntity *)self score];
        v12 = v11;
        [(SKGEntity *)v4 score];
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
  v5 = [(SKGCurrency *)self amount];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, v5, v6];

  return v7;
}

@end