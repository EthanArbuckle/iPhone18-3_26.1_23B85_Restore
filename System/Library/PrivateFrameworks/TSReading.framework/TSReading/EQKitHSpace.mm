@interface EQKitHSpace
- (BOOL)isEqual:(id)equal;
- (EQKitHSpace)initWithWidth:(double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EQKitHSpace

- (EQKitHSpace)initWithWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = EQKitHSpace;
  result = [(EQKitHSpace *)&v5 init];
  if (result)
  {
    result->mWidth = width;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(EQKitHSpace *)self width];

  return [v4 initWithWidth:?];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal)
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      [(EQKitHSpace *)self width];
      v7 = v6;
      [equal width];
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