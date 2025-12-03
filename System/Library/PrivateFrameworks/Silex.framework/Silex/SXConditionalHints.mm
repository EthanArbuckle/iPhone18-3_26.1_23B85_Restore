@interface SXConditionalHints
- (int64_t)ternaryValueForJSONValue:(id)value type:(int)type;
@end

@implementation SXConditionalHints

- (int64_t)ternaryValueForJSONValue:(id)value type:(int)type
{
  if (type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end