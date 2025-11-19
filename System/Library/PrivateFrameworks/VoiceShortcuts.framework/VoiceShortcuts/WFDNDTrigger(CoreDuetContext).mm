@interface WFDNDTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFDNDTrigger(CoreDuetContext)

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
  v4 = MEMORY[0x277CFE360];
  v5 = [MEMORY[0x277CFE338] doNotDisturbState];
  v6 = [v4 predicateForKeyPath:v3 withFormat:@"SELF.%@.value.%K IN %@", v3, v5, v2];

  return v6;
}

@end