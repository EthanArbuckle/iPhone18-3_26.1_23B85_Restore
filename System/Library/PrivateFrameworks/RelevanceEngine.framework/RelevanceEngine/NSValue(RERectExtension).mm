@interface NSValue(RERectExtension)
+ (id)re_valueWithCGRect:()RERectExtension;
- (double)re_CGRectValue;
@end

@implementation NSValue(RERectExtension)

+ (id)re_valueWithCGRect:()RERectExtension
{
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  v5 = [self value:v7 withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v5;
}

- (double)re_CGRectValue
{
  v1 = *(MEMORY[0x277CBF3A0] + 16);
  v3[0] = *MEMORY[0x277CBF3A0];
  v3[1] = v1;
  [self getValue:v3 size:32];
  return *v3;
}

@end