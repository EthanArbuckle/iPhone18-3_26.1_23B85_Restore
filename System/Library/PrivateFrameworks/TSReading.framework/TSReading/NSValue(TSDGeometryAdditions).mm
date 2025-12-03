@interface NSValue(TSDGeometryAdditions)
+ (uint64_t)valueWithTSDEdgeInsets:()TSDGeometryAdditions;
- (double)TSDEdgeInsetsValue;
@end

@implementation NSValue(TSDGeometryAdditions)

+ (uint64_t)valueWithTSDEdgeInsets:()TSDGeometryAdditions
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return [self valueWithBytes:v6 objCType:"{UIEdgeInsets=dddd}"];
}

- (double)TSDEdgeInsetsValue
{
  memset(v4, 0, sizeof(v4));
  v2 = strncmp([self objCType], "{UIEdgeInsets=dddd}", 0x13uLL);
  result = 0.0;
  if (!v2)
  {
    [self getValue:{v4, 0.0, 0.0, 0.0, 0.0}];
    return *v4;
  }

  return result;
}

@end