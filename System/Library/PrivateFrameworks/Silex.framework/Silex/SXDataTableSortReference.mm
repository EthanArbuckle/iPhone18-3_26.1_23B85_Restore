@interface SXDataTableSortReference
- (unint64_t)directionWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXDataTableSortReference

- (unint64_t)directionWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    return [a3 isEqualToString:{@"descending", v4, v5}];
  }

  else
  {
    return 0;
  }
}

@end