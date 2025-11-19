@interface NSArray(TITestTyperUtils)
- (id)arrayInterspersingSpaceStringsBetweenObjects;
@end

@implementation NSArray(TITestTyperUtils)

- (id)arrayInterspersingSpaceStringsBetweenObjects
{
  if ([a1 count])
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(a1, "count") - 1}];
    if ([a1 count])
    {
      v3 = 0;
      do
      {
        v4 = [a1 objectAtIndexedSubscript:v3];
        [v2 addObject:v4];

        if (v3 < [a1 count] - 1)
        {
          [v2 addObject:@" "];
        }

        ++v3;
      }

      while (v3 < [a1 count]);
    }

    v5 = [MEMORY[0x277CBEA60] arrayWithArray:v2];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

@end