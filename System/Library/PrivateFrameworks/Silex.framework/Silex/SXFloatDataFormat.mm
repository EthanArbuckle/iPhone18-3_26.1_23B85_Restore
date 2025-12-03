@interface SXFloatDataFormat
- (int64_t)decimalsWithValue:(id)value withType:(int)type;
@end

@implementation SXFloatDataFormat

- (int64_t)decimalsWithValue:(id)value withType:(int)type
{
  if (!value || type != 2)
  {
    return 2;
  }

  integerValue = [value integerValue];
  return integerValue & ~(integerValue >> 63);
}

@end