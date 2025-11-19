@interface WFLowPowerModeTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFLowPowerModeTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = objc_opt_new();
  if ([a1 onEnable])
  {
    [v2 addObject:MEMORY[0x277CBEC38]];
  }

  if ([a1 onDisable])
  {
    [v2 addObject:MEMORY[0x277CBEC28]];
  }

  v3 = [a1 contextStoreKeyPathForCurrentState];
  v4 = [MEMORY[0x277CFE360] predicateForKeyPath:v3 withFormat:@"SELF.%@.value IN %@", v3, v2];

  return v4;
}

@end