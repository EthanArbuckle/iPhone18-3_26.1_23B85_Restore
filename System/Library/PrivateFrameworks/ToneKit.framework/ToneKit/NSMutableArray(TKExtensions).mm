@interface NSMutableArray(TKExtensions)
- (void)tk_ensureHasItemsOrNullUpToIndex:()TKExtensions;
@end

@implementation NSMutableArray(TKExtensions)

- (void)tk_ensureHasItemsOrNullUpToIndex:()TKExtensions
{
  v5 = [self count];
  if (v5 <= a3)
  {
    v6 = v5;
    do
    {
      null = [MEMORY[0x277CBEB68] null];
      [self addObject:null];

      ++v6;
    }

    while (v6 <= a3);
  }
}

@end