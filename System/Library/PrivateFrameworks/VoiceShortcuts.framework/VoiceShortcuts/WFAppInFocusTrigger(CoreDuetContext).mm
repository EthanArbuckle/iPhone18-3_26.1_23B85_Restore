@interface WFAppInFocusTrigger(CoreDuetContext)
- (id)contextStorePredicate;
- (id)onBackgroundIgnoredLaunchReasons;
- (uint64_t)shouldFireTriggerWithEventInfo:()CoreDuetContext error:;
@end

@implementation WFAppInFocusTrigger(CoreDuetContext)

- (uint64_t)shouldFireTriggerWithEventInfo:()CoreDuetContext error:
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"NewValue"];
  v6 = [v4 objectForKeyedSubscript:@"OldValue"];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__WFAppInFocusTrigger_CoreDuetContext__shouldFireTriggerWithEventInfo_error___block_invoke;
  aBlock[3] = &unk_2788FEA40;
  v7 = v5;
  v23 = v7;
  v8 = v6;
  v24 = v8;
  selfCopy = self;
  v9 = _Block_copy(aBlock);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __77__WFAppInFocusTrigger_CoreDuetContext__shouldFireTriggerWithEventInfo_error___block_invoke_2;
  v18 = &unk_2788FEA40;
  v19 = v8;
  v20 = v7;
  selfCopy2 = self;
  v10 = v7;
  v11 = v8;
  v12 = _Block_copy(&v15);
  if ([self onFocus] && (v9[2](v9) & 1) != 0)
  {
    v13 = 1;
  }

  else if ([self onBackground])
  {
    v13 = v12[2](v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)onBackgroundIgnoredLaunchReasons
{
  v0 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"com.apple.SpringBoard.backlight.transitionReason.lockButton", @"com.apple.SpringBoard.backlight.transitionReason.idleTimer", 0}];
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  v2 = [currentDevice hasCapability:*MEMORY[0x277D7A3E0]];

  if ((v2 & 1) == 0)
  {
    [v0 addObject:&stru_2845DDD10];
  }

  return v0;
}

- (id)contextStorePredicate
{
  v37[2] = *MEMORY[0x277D85DE8];
  selectedBundleIdentifiers = [self selectedBundleIdentifiers];
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v34 = MEMORY[0x277CFE360];
  v4 = MEMORY[0x277CCAC30];
  appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
  appLaunchReasonKey = [MEMORY[0x277CFE338] appLaunchReasonKey];
  onFocusIgnoredLaunchReasons = [self onFocusIgnoredLaunchReasons];
  v7 = [v4 predicateWithFormat:@"SELF.%@.value.%K IN %@ AND NOT (SELF.%@.value.%K IN %@)", contextStoreKeyPathForCurrentState, appBundleIdKey, selectedBundleIdentifiers, contextStoreKeyPathForCurrentState, appLaunchReasonKey, onFocusIgnoredLaunchReasons];
  v8 = MEMORY[0x277CCAC30];
  appBundleIdKey2 = [MEMORY[0x277CFE338] appBundleIdKey];
  appBundleIdKey3 = [MEMORY[0x277CFE338] appBundleIdKey];
  v11 = [v8 predicateWithFormat:@"NOT (SELF.value.%K IN %@) AND NOT (SELF.value.%K IN %@)", appBundleIdKey2, selectedBundleIdentifiers, appBundleIdKey3, selectedBundleIdentifiers];
  v35 = [v34 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:v7 withPredicateForPreviousState:v11 withMinimumDurationInPreviousState:0.0];

  v32 = MEMORY[0x277CFE360];
  v12 = MEMORY[0x277CCAC30];
  appBundleIdKey4 = [MEMORY[0x277CFE338] appBundleIdKey];
  appLaunchReasonKey2 = [MEMORY[0x277CFE338] appLaunchReasonKey];
  onBackgroundIgnoredLaunchReasons = [self onBackgroundIgnoredLaunchReasons];
  v16 = [v12 predicateWithFormat:@"NOT (SELF.%@.value.%K IN %@) AND NOT (SELF.%@.value.%K IN %@)", contextStoreKeyPathForCurrentState, appBundleIdKey4, selectedBundleIdentifiers, contextStoreKeyPathForCurrentState, appLaunchReasonKey2, onBackgroundIgnoredLaunchReasons];
  v17 = MEMORY[0x277CCAC30];
  appBundleIdKey5 = [MEMORY[0x277CFE338] appBundleIdKey];
  appBundleIdKey6 = [MEMORY[0x277CFE338] appBundleIdKey];
  v20 = [v17 predicateWithFormat:@"SELF.value.%K IN %@ AND SELF.value.%K IN %@", appBundleIdKey5, selectedBundleIdentifiers, appBundleIdKey6, selectedBundleIdentifiers];
  v21 = v32;
  v33 = contextStoreKeyPathForCurrentState;
  v22 = [v21 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:v16 withPredicateForPreviousState:v20 withMinimumDurationInPreviousState:0.0];

  if ([self onFocus] && objc_msgSend(self, "onBackground"))
  {
    v23 = MEMORY[0x277CFE360];
    v24 = v35;
    v37[0] = v35;
    v37[1] = v22;
    v25 = MEMORY[0x277CBEA60];
    v26 = v37;
LABEL_6:
    v27 = [v25 arrayWithObjects:v26 count:2];
    v28 = [v23 orPredicateWithSubpredicates:v27];

    goto LABEL_10;
  }

  if ([self onFocus])
  {
    v23 = MEMORY[0x277CFE360];
    v24 = v35;
    v36[0] = v35;
    v36[1] = v22;
    v25 = MEMORY[0x277CBEA60];
    v26 = v36;
    goto LABEL_6;
  }

  v24 = v35;
  if ([self onBackground])
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

LABEL_10:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

@end