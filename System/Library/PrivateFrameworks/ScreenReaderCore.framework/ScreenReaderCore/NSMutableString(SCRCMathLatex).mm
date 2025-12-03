@interface NSMutableString(SCRCMathLatex)
- (uint64_t)addMathIndicators;
@end

@implementation NSMutableString(SCRCMathLatex)

- (uint64_t)addMathIndicators
{
  result = [self length];
  if (result)
  {
    [self insertString:@"$" atIndex:0];

    return [self appendString:@"$"];
  }

  return result;
}

@end