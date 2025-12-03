@interface NSArray(Random)
- (id)randomElement;
@end

@implementation NSArray(Random)

- (id)randomElement
{
  v2 = [self count];
  if (v2)
  {
    v3 = [self objectAtIndexedSubscript:arc4random_uniform(v2)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end