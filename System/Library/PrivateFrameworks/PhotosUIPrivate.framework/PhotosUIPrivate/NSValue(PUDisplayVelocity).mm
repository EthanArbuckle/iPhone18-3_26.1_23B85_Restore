@interface NSValue(PUDisplayVelocity)
+ (id)pu_valueWithDisplayVelocity:()PUDisplayVelocity;
- (double)pu_displayVelocityValue;
@end

@implementation NSValue(PUDisplayVelocity)

- (double)pu_displayVelocityValue
{
  memset(v4, 0, sizeof(v4));
  v2 = strcmp([a1 objCType], "{PUDisplayVelocity=dddd}");
  result = 0.0;
  if (!v2)
  {
    [a1 getValue:{v4, 0.0, 0.0, 0.0, 0.0}];
    return *v4;
  }

  return result;
}

+ (id)pu_valueWithDisplayVelocity:()PUDisplayVelocity
{
  *v6 = a1;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{PUDisplayVelocity=dddd}"];

  return v4;
}

@end