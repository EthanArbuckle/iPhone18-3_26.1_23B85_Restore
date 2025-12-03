@interface NSMutableArray(PSAdditions)
- (void)ps_addPossibleObject:()PSAdditions;
@end

@implementation NSMutableArray(PSAdditions)

- (void)ps_addPossibleObject:()PSAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end