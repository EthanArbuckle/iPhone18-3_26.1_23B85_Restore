@interface EQKitHVSpace
- (BOOL)isEqual:(id)a3;
- (EQKitHVSpace)initWithWidth:(double)a3 height:(double)a4 depth:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EQKitHVSpace

- (EQKitHVSpace)initWithWidth:(double)a3 height:(double)a4 depth:(double)a5
{
  v9.receiver = self;
  v9.super_class = EQKitHVSpace;
  result = [(EQKitHVSpace *)&v9 init];
  if (result)
  {
    result->mWidth = a3;
    result->mHeight = a4;
    result->mDepth = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(EQKitHVSpace *)self width];
  v6 = v5;
  [(EQKitHVSpace *)self height];
  v8 = v7;
  [(EQKitHVSpace *)self depth];

  return [v4 initWithWidth:v6 height:v8 depth:v9];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    [(EQKitHVSpace *)self width];
    v7 = v6;
    [a3 width];
    if (v7 == v8)
    {
      [(EQKitHVSpace *)self height];
      v10 = v9;
      [a3 height];
      if (v10 == v11)
      {
        [(EQKitHVSpace *)self depth];
        v13 = v12;
        [a3 depth];
        LOBYTE(v5) = v13 == v14;
        return v5;
      }
    }

LABEL_8:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitHVSpace *)self height];
  v6 = v5;
  [(EQKitHVSpace *)self depth];
  v8 = v7;
  [(EQKitHVSpace *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

@end