@interface SXConditionalHints
- (int64_t)ternaryValueForJSONValue:(id)a3 type:(int)a4;
@end

@implementation SXConditionalHints

- (int64_t)ternaryValueForJSONValue:(id)a3 type:(int)a4
{
  if (a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end