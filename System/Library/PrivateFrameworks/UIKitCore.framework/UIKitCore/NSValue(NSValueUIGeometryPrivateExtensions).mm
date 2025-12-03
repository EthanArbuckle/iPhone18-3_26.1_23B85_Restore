@interface NSValue(NSValueUIGeometryPrivateExtensions)
+ (id)_valueWithUIRectCornerRadii:()NSValueUIGeometryPrivateExtensions;
- (double)_UICornerInsetsValue;
- (double)_UIRectCornerRadiiValue;
@end

@implementation NSValue(NSValueUIGeometryPrivateExtensions)

- (double)_UICornerInsetsValue
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  _getNSValueBytes(self, &v6, 0x40uLL, "_UICornerInsets");
  v3 = v7;
  *a2 = v6;
  a2[1] = v3;
  result = *&v8;
  v5 = v9;
  a2[2] = v8;
  a2[3] = v5;
  return result;
}

+ (id)_valueWithUIRectCornerRadii:()NSValueUIGeometryPrivateExtensions
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{UIRectCornerRadii=dddd}"];

  return v4;
}

- (double)_UIRectCornerRadiiValue
{
  memset(v2, 0, sizeof(v2));
  _getNSValueBytes(self, v2, 0x20uLL, "UIRectCornerRadii");
  return *v2;
}

@end