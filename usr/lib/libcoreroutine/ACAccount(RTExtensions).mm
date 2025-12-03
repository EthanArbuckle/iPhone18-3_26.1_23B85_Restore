@interface ACAccount(RTExtensions)
- (uint64_t)coreRoutineDataclassEnabled;
@end

@implementation ACAccount(RTExtensions)

- (uint64_t)coreRoutineDataclassEnabled
{
  provisionedDataclasses = [self provisionedDataclasses];
  v2 = [provisionedDataclasses containsObject:*MEMORY[0x277CB9120]];

  return v2;
}

@end