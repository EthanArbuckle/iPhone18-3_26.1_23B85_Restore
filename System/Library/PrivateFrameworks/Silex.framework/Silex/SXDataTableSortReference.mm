@interface SXDataTableSortReference
- (unint64_t)directionWithValue:(id)value withType:(int)type;
@end

@implementation SXDataTableSortReference

- (unint64_t)directionWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    return [value isEqualToString:{@"descending", v4, v5}];
  }

  else
  {
    return 0;
  }
}

@end