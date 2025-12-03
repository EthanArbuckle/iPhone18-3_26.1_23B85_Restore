@interface STUIStatusBarDataAggregatorUpdate
+ (id)updateWithEntry:(id)entry;
@end

@implementation STUIStatusBarDataAggregatorUpdate

+ (id)updateWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = objc_alloc_init(self);
  [v5 setEntry:entryCopy];

  [v5 setAnimated:{objc_msgSend(MEMORY[0x277D75D18], "areAnimationsEnabled")}];

  return v5;
}

@end