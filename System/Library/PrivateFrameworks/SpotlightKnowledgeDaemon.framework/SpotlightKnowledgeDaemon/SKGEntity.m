@interface SKGEntity
- (BOOL)isEqual:(id)a3;
- (SKGEntity)initWithScore:(double)a3;
- (id)description;
@end

@implementation SKGEntity

- (SKGEntity)initWithScore:(double)a3
{
  v5.receiver = self;
  v5.super_class = SKGEntity;
  result = [(SKGEntity *)&v5 init];
  if (result)
  {
    result->_score = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(SKGEntity *)self score];
    v7 = v6;
    [v5 score];
    if (v7 == v8)
    {
      v11.receiver = self;
      v11.super_class = SKGEntity;
      v9 = [(SKGEntity *)&v11 isEqual:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(SKGEntity *)self score];
  return [v3 stringWithFormat:@"<%@: %f", v4, v5];
}

@end