@interface NSObject
@end

@implementation NSObject

void __44__NSObject_NPHIdleTime__performBlockAtIdle___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v3 = sIdleBlocks;
  sIdleBlocks = v2;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__NPHIdleTimeNotification_ name:@"NPHIdleNotification" object:0];
}

@end