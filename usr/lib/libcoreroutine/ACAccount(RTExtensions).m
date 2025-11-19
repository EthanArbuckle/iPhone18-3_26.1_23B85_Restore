@interface ACAccount(RTExtensions)
- (uint64_t)coreRoutineDataclassEnabled;
@end

@implementation ACAccount(RTExtensions)

- (uint64_t)coreRoutineDataclassEnabled
{
  v1 = [a1 provisionedDataclasses];
  v2 = [v1 containsObject:*MEMORY[0x277CB9120]];

  return v2;
}

@end