@interface EQKitHSpace
- (BOOL)isEqual:(id)a3;
- (EQKitHSpace)initWithWidth:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EQKitHSpace

- (EQKitHSpace)initWithWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = EQKitHSpace;
  result = [(EQKitHSpace *)&v5 init];
  if (result)
  {
    result->mWidth = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(EQKitHSpace *)self width];

  return [v4 initWithWidth:?];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else if (a3)
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      [(EQKitHSpace *)self width];
      v7 = v6;
      [a3 width];
      LOBYTE(v5) = v7 == v8;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitHSpace *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: width=%f", v4, self, v5];
}

@end