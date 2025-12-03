@interface SXJSONDocumentLayout
- (int64_t)gutterWithValue:(id)value withType:(int)type;
@end

@implementation SXJSONDocumentLayout

- (int64_t)gutterWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 0;
  }

  integerValue = [value integerValue];
  v7 = integerValue & 1;
  if (integerValue < 0)
  {
    v7 = -v7;
  }

  return v7 + integerValue;
}

@end