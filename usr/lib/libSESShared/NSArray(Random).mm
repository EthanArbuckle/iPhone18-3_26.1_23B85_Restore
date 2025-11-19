@interface NSArray(Random)
- (id)randomElement;
@end

@implementation NSArray(Random)

- (id)randomElement
{
  v2 = [a1 count];
  if (v2)
  {
    v3 = [a1 objectAtIndexedSubscript:arc4random_uniform(v2)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end