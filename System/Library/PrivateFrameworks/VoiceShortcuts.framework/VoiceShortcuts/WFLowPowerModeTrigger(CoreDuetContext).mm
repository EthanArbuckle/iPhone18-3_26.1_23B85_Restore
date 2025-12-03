@interface WFLowPowerModeTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFLowPowerModeTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = objc_opt_new();
  if ([self onEnable])
  {
    [v2 addObject:MEMORY[0x277CBEC38]];
  }

  if ([self onDisable])
  {
    [v2 addObject:MEMORY[0x277CBEC28]];
  }

  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v4 = [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value IN %@", contextStoreKeyPathForCurrentState, v2];

  return v4;
}

@end