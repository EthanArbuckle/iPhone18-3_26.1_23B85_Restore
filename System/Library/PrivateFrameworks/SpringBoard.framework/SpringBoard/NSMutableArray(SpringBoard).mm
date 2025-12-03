@interface NSMutableArray(SpringBoard)
- (void)_sb_safeAddObject:()SpringBoard;
@end

@implementation NSMutableArray(SpringBoard)

- (void)_sb_safeAddObject:()SpringBoard
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end