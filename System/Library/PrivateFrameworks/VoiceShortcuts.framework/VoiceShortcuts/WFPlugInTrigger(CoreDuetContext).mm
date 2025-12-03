@interface WFPlugInTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFPlugInTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if ([self onEnable] && objc_msgSend(self, "onDisable"))
  {
    [v2 addObject:MEMORY[0x277CBEC38]];
    goto LABEL_7;
  }

  if ([self onEnable])
  {
    v3 = MEMORY[0x277CBEC38];
LABEL_8:
    [v2 addObject:v3];
    goto LABEL_9;
  }

  if ([self onDisable])
  {
LABEL_7:
    v3 = MEMORY[0x277CBEC28];
    goto LABEL_8;
  }

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "[WFPlugInTrigger(CoreDuetContext) contextStorePredicate]";
    v11 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_FAULT, "%s Invalid config for %{public}@", buf, 0x16u);
  }

LABEL_9:
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v5 = [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value IN %@", contextStoreKeyPathForCurrentState, v2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end