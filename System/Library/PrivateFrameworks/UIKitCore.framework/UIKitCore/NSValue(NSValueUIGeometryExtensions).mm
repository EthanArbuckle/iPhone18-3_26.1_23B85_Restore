@interface NSValue(NSValueUIGeometryExtensions)
+ (id)valueWithCGPoint:()NSValueUIGeometryExtensions;
+ (id)valueWithCGRect:()NSValueUIGeometryExtensions;
+ (id)valueWithCGSize:()NSValueUIGeometryExtensions;
+ (id)valueWithCGVector:()NSValueUIGeometryExtensions;
+ (id)valueWithDirectionalEdgeInsets:()NSValueUIGeometryExtensions;
+ (id)valueWithUIEdgeInsets:()NSValueUIGeometryExtensions;
+ (id)valueWithUIOffset:()NSValueUIGeometryExtensions;
- (double)CGAffineTransformValue;
- (double)CGPointValue;
- (double)CGRectValue;
- (double)CGSizeValue;
- (double)CGVectorValue;
- (double)UIEdgeInsetsValue;
- (double)UIOffsetValue;
- (double)directionalEdgeInsetsValue;
@end

@implementation NSValue(NSValueUIGeometryExtensions)

- (double)CGSizeValue
{
  v2[0] = 0;
  v2[1] = 0;
  _getNSValueBytes(self, v2, 0x10uLL, "CGSize");
  return *v2;
}

- (double)CGRectValue
{
  memset(v2, 0, sizeof(v2));
  _getNSValueBytes(self, v2, 0x20uLL, "CGRect");
  return *v2;
}

- (double)CGPointValue
{
  v2[0] = 0;
  v2[1] = 0;
  _getNSValueBytes(self, v2, 0x10uLL, "CGPoint");
  return *v2;
}

- (double)UIEdgeInsetsValue
{
  memset(v2, 0, sizeof(v2));
  _getNSValueBytes(self, v2, 0x20uLL, "UIEdgeInsets");
  return *v2;
}

- (double)directionalEdgeInsetsValue
{
  memset(v2, 0, sizeof(v2));
  _getNSValueBytes(self, v2, 0x20uLL, "NSDirectionalEdgeInsets");
  return *v2;
}

- (double)CGAffineTransformValue
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  _getNSValueBytes(self, &v5, 0x30uLL, "CGAffineTransform");
  v3 = v6;
  *a2 = v5;
  a2[1] = v3;
  result = *&v7;
  a2[2] = v7;
  return result;
}

+ (id)valueWithCGPoint:()NSValueUIGeometryExtensions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

+ (id)valueWithCGVector:()NSValueUIGeometryExtensions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGVector=dd}"];

  return v2;
}

+ (id)valueWithCGSize:()NSValueUIGeometryExtensions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGSize=dd}"];

  return v2;
}

+ (id)valueWithCGRect:()NSValueUIGeometryExtensions
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

+ (id)valueWithUIEdgeInsets:()NSValueUIGeometryExtensions
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{UIEdgeInsets=dddd}"];

  return v4;
}

+ (id)valueWithDirectionalEdgeInsets:()NSValueUIGeometryExtensions
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{NSDirectionalEdgeInsets=dddd}"];

  return v4;
}

+ (id)valueWithUIOffset:()NSValueUIGeometryExtensions
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{UIOffset=dd}"];

  return v2;
}

- (double)CGVectorValue
{
  v2[0] = 0;
  v2[1] = 0;
  _getNSValueBytes(self, v2, 0x10uLL, "CGVector");
  return *v2;
}

- (double)UIOffsetValue
{
  v2[0] = 0;
  v2[1] = 0;
  _getNSValueBytes(self, v2, 0x10uLL, "UIOffset");
  return *v2;
}

@end