@interface NSMutableArray(CTDisplayPlan)
- (void)filteredPlansWithoutSODATether:()CTDisplayPlan;
@end

@implementation NSMutableArray(CTDisplayPlan)

- (void)filteredPlansWithoutSODATether:()CTDisplayPlan
{
  v4 = [a3 carrierNames];
  v5 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__NSMutableArray_CTDisplayPlan__filteredPlansWithoutSODATether___block_invoke;
  v8[3] = &unk_279B44C08;
  v9 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v8];
  [a1 filterUsingPredicate:v7];
}

@end