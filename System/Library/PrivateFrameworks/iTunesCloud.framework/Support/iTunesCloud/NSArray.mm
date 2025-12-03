@interface NSArray
- (id)subarraysOfSize:(unint64_t)size;
@end

@implementation NSArray

- (id)subarraysOfSize:(unint64_t)size
{
  v5 = [(NSArray *)self count];
  v6 = [[NSMutableArray alloc] initWithCapacity:v5 / size + 1];
  if (v5)
  {
    for (i = 0; i < v5; i += sizeCopy)
    {
      if (v5 - i >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = v5 - i;
      }

      sizeCopy = [(NSArray *)self subarrayWithRange:i, sizeCopy];
      [v6 addObject:sizeCopy];
    }
  }

  return v6;
}

@end