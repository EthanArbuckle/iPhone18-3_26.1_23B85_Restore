@interface STUIStatusBarDataAggregatorUpdate
+ (id)updateWithEntry:(id)a3;
@end

@implementation STUIStatusBarDataAggregatorUpdate

+ (id)updateWithEntry:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setEntry:v4];

  [v5 setAnimated:{objc_msgSend(MEMORY[0x277D75D18], "areAnimationsEnabled")}];

  return v5;
}

@end