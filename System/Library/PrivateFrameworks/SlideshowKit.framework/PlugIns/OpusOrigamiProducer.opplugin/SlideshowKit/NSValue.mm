@interface NSValue
+ (NSValue)valueWithMCVector:(id *)vector;
- ($421962E1114BB55FD51FACB03C2AC210)MCVectorValue;
@end

@implementation NSValue

+ (NSValue)valueWithMCVector:(id *)vector
{
  v3 = [[NSValue alloc] initWithBytes:vector objCType:"{?=C[4f]}"];

  return v3;
}

- ($421962E1114BB55FD51FACB03C2AC210)MCVectorValue
{
  *&retstr->var0 = 0;
  *&retstr->var1[1] = 0;
  retstr->var1[3] = 0.0;
  return [(NSValue *)self getValue:retstr size:20];
}

@end