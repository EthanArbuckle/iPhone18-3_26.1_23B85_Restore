@interface NSData(NSDataExtras)
+ (id)dataWithCGPoint:()NSDataExtras;
+ (id)dataWithCGRect:()NSDataExtras;
+ (id)dataWithCGSize:()NSDataExtras;
+ (id)dataWithPSN:()NSDataExtras;
+ (id)dataWithRange:()NSDataExtras;
- (double)CGPointValue;
- (double)CGRectValue;
- (double)CGSizeValue;
- (uint64_t)psn;
- (uint64_t)range;
@end

@implementation NSData(NSDataExtras)

+ (id)dataWithRange:()NSDataExtras
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [self dataWithBytes:v6 length:16];

  return v4;
}

- (uint64_t)range
{
  if ([self length] == 16)
  {
    return *[self bytes];
  }

  else
  {
    return 0;
  }
}

+ (id)dataWithPSN:()NSDataExtras
{
  v5 = a3;
  v3 = [self dataWithBytes:&v5 length:8];

  return v3;
}

- (uint64_t)psn
{
  if ([self length] == 8)
  {
    return *[self bytes];
  }

  else
  {
    return 0;
  }
}

+ (id)dataWithCGRect:()NSDataExtras
{
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  v5 = [self dataWithBytes:v7 length:32];

  return v5;
}

- (double)CGRectValue
{
  v2 = [self length];
  result = 0.0;
  if (v2 == 32)
  {
    return *[self bytes];
  }

  return result;
}

+ (id)dataWithCGSize:()NSDataExtras
{
  *v5 = a2;
  *&v5[1] = a3;
  v3 = [self dataWithBytes:v5 length:16];

  return v3;
}

- (double)CGSizeValue
{
  v2 = [self length];
  result = 0.0;
  if (v2 == 16)
  {
    return *[self bytes];
  }

  return result;
}

+ (id)dataWithCGPoint:()NSDataExtras
{
  *v5 = a2;
  *&v5[1] = a3;
  v3 = [self dataWithBytes:v5 length:16];

  return v3;
}

- (double)CGPointValue
{
  v2 = [self length];
  result = 0.0;
  if (v2 == 16)
  {
    return *[self bytes];
  }

  return result;
}

@end