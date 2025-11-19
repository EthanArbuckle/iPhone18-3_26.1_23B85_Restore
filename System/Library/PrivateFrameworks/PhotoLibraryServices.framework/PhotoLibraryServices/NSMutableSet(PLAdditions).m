@interface NSMutableSet(PLAdditions)
- (void)pl_addObjectIfNotNil:()PLAdditions;
@end

@implementation NSMutableSet(PLAdditions)

- (void)pl_addObjectIfNotNil:()PLAdditions
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

@end