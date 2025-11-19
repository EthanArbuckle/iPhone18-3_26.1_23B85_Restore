@interface NSString(SCRCMathLatex)
- (id)stringWithMathIndicators;
@end

@implementation NSString(SCRCMathLatex)

- (id)stringWithMathIndicators
{
  v1 = [a1 copy];
  if ([v1 length])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"$%@$", v1];

    v1 = v2;
  }

  return v1;
}

@end