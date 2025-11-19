@interface SXFloatDataFormat
- (int64_t)decimalsWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXFloatDataFormat

- (int64_t)decimalsWithValue:(id)a3 withType:(int)a4
{
  if (!a3 || a4 != 2)
  {
    return 2;
  }

  v6 = [a3 integerValue];
  return v6 & ~(v6 >> 63);
}

@end