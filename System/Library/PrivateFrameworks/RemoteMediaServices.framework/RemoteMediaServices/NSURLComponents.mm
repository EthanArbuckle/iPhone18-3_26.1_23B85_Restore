@interface NSURLComponents
@end

@implementation NSURLComponents

void __71__NSURLComponents_RMSAdditions__rms_componentsByAddingQueryParameters___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:v4];
}

void __71__NSURLComponents_RMSAdditions__rms_componentsByAddingQueryParameters___block_invoke_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:v4];
}

@end