@interface EQKitVSpace
- (BOOL)isEqual:(id)equal;
- (EQKitVSpace)initWithHeight:(double)height depth:(double)depth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EQKitVSpace

- (EQKitVSpace)initWithHeight:(double)height depth:(double)depth
{
  v7.receiver = self;
  v7.super_class = EQKitVSpace;
  result = [(EQKitVSpace *)&v7 init];
  if (result)
  {
    result->mHeight = height;
    result->mDepth = depth;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(EQKitVSpace *)self height];
  v6 = v5;
  [(EQKitVSpace *)self depth];

  return [v4 initWithHeight:v6 depth:v7];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!equal)
  {
    goto LABEL_7;
  }

  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    [(EQKitVSpace *)self height];
    v7 = v6;
    [equal height];
    if (v7 == v8)
    {
      [(EQKitVSpace *)self depth];
      v10 = v9;
      [equal depth];
      LOBYTE(v5) = v10 == v11;
      return v5;
    }

LABEL_7:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitVSpace *)self height];
  v6 = v5;
  [(EQKitVSpace *)self depth];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f", v4, self, v6, v7];
}

@end