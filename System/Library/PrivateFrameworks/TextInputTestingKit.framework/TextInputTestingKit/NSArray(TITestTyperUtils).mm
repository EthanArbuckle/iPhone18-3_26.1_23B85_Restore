@interface NSArray(TITestTyperUtils)
- (id)arrayInterspersingSpaceStringsBetweenObjects;
@end

@implementation NSArray(TITestTyperUtils)

- (id)arrayInterspersingSpaceStringsBetweenObjects
{
  if ([self count])
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(self, "count") - 1}];
    if ([self count])
    {
      v3 = 0;
      do
      {
        v4 = [self objectAtIndexedSubscript:v3];
        [v2 addObject:v4];

        if (v3 < [self count] - 1)
        {
          [v2 addObject:@" "];
        }

        ++v3;
      }

      while (v3 < [self count]);
    }

    selfCopy = [MEMORY[0x277CBEA60] arrayWithArray:v2];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end