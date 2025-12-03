@interface NSOperationQueue(SPUIAdditions)
- (uint64_t)logStateOperationCountGreaterThan:()SPUIAdditions;
@end

@implementation NSOperationQueue(SPUIAdditions)

- (uint64_t)logStateOperationCountGreaterThan:()SPUIAdditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__NSOperationQueue_SPUIAdditions__logStateOperationCountGreaterThan___block_invoke;
  v4[3] = &unk_279D06E18;
  v4[4] = self;
  v4[5] = a3;
  return [self addOperationWithBlock:v4];
}

@end