@interface NSValue(_web_Extensions)
+ (uint64_t)_web_valueWithCGRect:()_web_Extensions;
@end

@implementation NSValue(_web_Extensions)

+ (uint64_t)_web_valueWithCGRect:()_web_Extensions
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [MEMORY[0x1E696B098] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

@end