@interface WFDNDTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFDNDTrigger(CoreDuetContext)

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
  v4 = MEMORY[0x277CFE360];
  doNotDisturbState = [MEMORY[0x277CFE338] doNotDisturbState];
  v6 = [v4 predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value.%K IN %@", contextStoreKeyPathForCurrentState, doNotDisturbState, v2];

  return v6;
}

@end