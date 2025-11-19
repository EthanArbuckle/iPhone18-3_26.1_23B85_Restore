@interface USManagedSettingsReader
+ (id)currentInterventionType;
+ (id)currentScanningPolicy;
+ (id)subscribeForScanningPolicyChanges:(id)a3;
@end

@implementation USManagedSettingsReader

+ (id)currentScanningPolicy
{
  v2 = objc_opt_new();
  v3 = [v2 userSafety];
  v4 = [v3 scanningPolicy];

  return v4;
}

+ (id)currentInterventionType
{
  v2 = [a1 currentScanningPolicy];
  v3 = [v2 interventionType];

  return v3;
}

+ (id)subscribeForScanningPolicyChanges:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D26520]];
  v5 = [MEMORY[0x277D26568] publisherForGroups:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__USManagedSettingsReader_subscribeForScanningPolicyChanges___block_invoke;
  v9[3] = &unk_279E15FB0;
  v10 = v3;
  v6 = v3;
  v7 = [v5 sinkWithReceiveInput:v9];

  return v7;
}

void __61__USManagedSettingsReader_subscribeForScanningPolicyChanges___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 containsObject:*MEMORY[0x277D26520]])
  {
    v6 = objc_opt_new();
    v3 = *(a1 + 32);
    v4 = [v6 userSafety];
    v5 = [v4 scanningPolicy];
    (*(v3 + 16))(v3, v5);
  }
}

@end