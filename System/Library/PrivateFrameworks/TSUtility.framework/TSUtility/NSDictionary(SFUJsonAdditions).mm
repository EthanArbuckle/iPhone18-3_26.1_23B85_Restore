@interface NSDictionary(SFUJsonAdditions)
- (uint64_t)appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSDictionary(SFUJsonAdditions)

- (uint64_t)appendJsonStringToString:()SFUJsonAdditions
{
  [a3 appendString:@"{"];
  keyEnumerator = [self keyEnumerator];
  v6 = [self count];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v9 = 1;
    do
    {
      [nextObject2 appendJsonStringToString:a3];
      [a3 appendString:@":"];
      [objc_msgSend(self objectForKey:{nextObject2), "appendJsonStringToString:", a3}];
      if (v9 < v6)
      {
        [a3 appendString:{@", "}];
      }

      nextObject2 = [keyEnumerator nextObject];
      ++v9;
    }

    while (nextObject2);
  }

  return [a3 appendString:@"}"];
}

@end