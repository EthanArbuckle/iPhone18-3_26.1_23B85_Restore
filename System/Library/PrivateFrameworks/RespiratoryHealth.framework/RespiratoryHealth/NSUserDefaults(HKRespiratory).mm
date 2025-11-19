@interface NSUserDefaults(HKRespiratory)
+ (id)hkrp_respiratoryDefaults;
@end

@implementation NSUserDefaults(HKRespiratory)

+ (id)hkrp_respiratoryDefaults
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CCCD20]];

  return v1;
}

@end