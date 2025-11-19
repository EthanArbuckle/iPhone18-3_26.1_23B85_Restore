@interface SBHIDDispatchPredicateExcludingAssociatedDisplays
@end

@implementation SBHIDDispatchPredicateExcludingAssociatedDisplays

void ___SBHIDDispatchPredicateExcludingAssociatedDisplays_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF0698];
  v3 = a2;
  v4 = [v2 nullDisplay];
  [v3 setAssociatedDisplay:v4];
}

@end