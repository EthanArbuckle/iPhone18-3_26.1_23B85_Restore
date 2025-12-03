@interface NSArray(HigherOrder)
- (id)filterWithBlock:()HigherOrder;
@end

@implementation NSArray(HigherOrder)

- (id)filterWithBlock:()HigherOrder
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  if ([self count])
  {
    v6 = 0;
    do
    {
      v7 = [self objectAtIndexedSubscript:v6];
      v8 = v4[2](v4, v7);

      if (v8)
      {
        v9 = [self objectAtIndexedSubscript:v6];
        [array addObject:v9];
      }

      ++v6;
    }

    while ([self count] > v6);
  }

  v10 = [array copy];

  return v10;
}

@end