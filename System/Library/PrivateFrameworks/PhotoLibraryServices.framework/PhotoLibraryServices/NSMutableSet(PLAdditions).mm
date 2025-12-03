@interface NSMutableSet(PLAdditions)
- (void)pl_addObjectIfNotNil:()PLAdditions;
@end

@implementation NSMutableSet(PLAdditions)

- (void)pl_addObjectIfNotNil:()PLAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end