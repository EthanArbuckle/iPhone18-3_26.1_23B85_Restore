@interface NSValue(PKPath)
+ (id)valueWithCGPoint:()PKPath;
@end

@implementation NSValue(PKPath)

+ (id)valueWithCGPoint:()PKPath
{
  *v4 = self;
  *&v4[1] = a2;
  v2 = [MEMORY[0x277CCAE60] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

@end