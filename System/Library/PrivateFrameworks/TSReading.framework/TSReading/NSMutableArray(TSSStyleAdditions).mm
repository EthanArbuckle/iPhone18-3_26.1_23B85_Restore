@interface NSMutableArray(TSSStyleAdditions)
- (uint64_t)addProperty:()TSSStyleAdditions;
@end

@implementation NSMutableArray(TSSStyleAdditions)

- (uint64_t)addProperty:()TSSStyleAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];

  return [self addObject:v2];
}

@end