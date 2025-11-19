@interface NSMutableString(SCRCMathLatex)
- (uint64_t)addMathIndicators;
@end

@implementation NSMutableString(SCRCMathLatex)

- (uint64_t)addMathIndicators
{
  result = [a1 length];
  if (result)
  {
    [a1 insertString:@"$" atIndex:0];

    return [a1 appendString:@"$"];
  }

  return result;
}

@end