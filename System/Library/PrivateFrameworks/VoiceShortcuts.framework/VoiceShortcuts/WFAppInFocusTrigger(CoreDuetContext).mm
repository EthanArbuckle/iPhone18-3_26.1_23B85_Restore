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
  v25 = a1;
  v9 = _Block_copy(aBlock);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __77__WFAppInFocusTrigger_CoreDuetContext__shouldFireTriggerWithEventInfo_error___block_invoke_2;
  v18 = &unk_2788FEA40;
  v19 = v8;
  v20 = v7;
  v21 = a1;
  v10 = v7;
  v11 = v8;
  v12 = _Block_copy(&v15);
  if ([a1 onFocus] && (v9[2](v9) & 1) != 0)
  {
    v13 = 1;
  }

  else if ([a1 onBackground])
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
  v1 = [MEMORY[0x277D79F18] currentDevice];
  v2 = [v1 hasCapability:*MEMORY[0x277D7A3E0]];

  if ((v2 & 1) == 0)
  {
    [v0 addObject:&stru_2845DDD10];
  }

  return v0;
}

- (id)contextStorePredicate
{
  v37[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 selectedBundleIdentifiers];
  v3 = [a1 contextStoreKeyPathForCurrentState];
  v34 = MEMORY[0x277CFE360];
  v4 = MEMORY[0x277CCAC30];
  v31 = [MEMORY[0x277CFE338] appBundleIdKey];
  v5 = [MEMORY[0x277CFE338] appLaunchReasonKey];
  v6 = [a1 onFocusIgnoredLaunchReasons];
  v7 = [v4 predicateWithFormat:@"SELF.%@.value.%K IN %@ AND NOT (SELF.%@.value.%K IN %@)", v3, v31, v2, v3, v5, v6];
  v8 = MEMORY[0x277CCAC30];
  v9 = [MEMORY[0x277CFE338] appBundleIdKey];
  v10 = [MEMORY[0x277CFE338] appBundleIdKey];
  v11 = [v8 predicateWithFormat:@"NOT (SELF.value.%K IN %@) AND NOT (SELF.value.%K IN %@)", v9, v2, v10, v2];
  v35 = [v34 predicateForKeyPath:v3 withPredicate:v7 withPredicateForPreviousState:v11 withMinimumDurationInPreviousState:0.0];

  v32 = MEMORY[0x277CFE360];
  v12 = MEMORY[0x277CCAC30];
  v13 = [MEMORY[0x277CFE338] appBundleIdKey];
  v14 = [MEMORY[0x277CFE338] appLaunchReasonKey];
  v15 = [a1 onBackgroundIgnoredLaunchReasons];
  v16 = [v12 predicateWithFormat:@"NOT (SELF.%@.value.%K IN %@) AND NOT (SELF.%@.value.%K IN %@)", v3, v13, v2, v3, v14, v15];
  v17 = MEMORY[0x277CCAC30];
  v18 = [MEMORY[0x277CFE338] appBundleIdKey];
  v19 = [MEMORY[0x277CFE338] appBundleIdKey];
  v20 = [v17 predicateWithFormat:@"SELF.value.%K IN %@ AND SELF.value.%K IN %@", v18, v2, v19, v2];
  v21 = v32;
  v33 = v3;
  v22 = [v21 predicateForKeyPath:v3 withPredicate:v16 withPredicateForPreviousState:v20 withMinimumDurationInPreviousState:0.0];

  if ([a1 onFocus] && objc_msgSend(a1, "onBackground"))
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

  if ([a1 onFocus])
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
  if ([a1 onBackground])
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