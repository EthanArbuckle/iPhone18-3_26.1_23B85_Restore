@interface NSArray
- (id)subarraysOfSize:(unint64_t)a3;
@end

@implementation NSArray

- (id)subarraysOfSize:(unint64_t)a3
{
  v5 = [(NSArray *)self count];
  v6 = [[NSMutableArray alloc] initWithCapacity:v5 / a3 + 1];
  if (v5)
  {
    for (i = 0; i < v5; i += v8)
    {
      if (v5 - i >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v5 - i;
      }

      v9 = [(NSArray *)self subarrayWithRange:i, v8];
      [v6 addObject:v9];
    }
  }

  return v6;
}

@end