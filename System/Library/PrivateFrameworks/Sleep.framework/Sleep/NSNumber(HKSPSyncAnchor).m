@interface NSNumber(HKSPSyncAnchor)
- (uint64_t)hksp_increment;
@end

@implementation NSNumber(HKSPSyncAnchor)

- (uint64_t)hksp_increment
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 unsignedIntegerValue] + 1;

  return [v1 numberWithUnsignedInteger:v2];
}

@end