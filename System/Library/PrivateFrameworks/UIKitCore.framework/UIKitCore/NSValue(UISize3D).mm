@interface NSValue(UISize3D)
+ (id)valueWithUISize3D:()UISize3D;
- (double)UISize3DValue;
@end

@implementation NSValue(UISize3D)

+ (id)valueWithUISize3D:()UISize3D
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  v4 = [self valueWithBytes:v6 objCType:"{?=ddd}"];

  return v4;
}

- (double)UISize3DValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2 size:24];
  return *v2;
}

@end