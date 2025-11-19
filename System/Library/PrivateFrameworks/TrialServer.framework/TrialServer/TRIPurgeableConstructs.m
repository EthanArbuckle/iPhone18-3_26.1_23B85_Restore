@interface TRIPurgeableConstructs
@end

@implementation TRIPurgeableConstructs

void __86__TRIPurgeableConstructs_initWithPurgeabilityLevel_purgeableNamespacesProvider_paths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D73760];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v13 = [v5 factorProviderWithPaths:v6 namespaceName:v8];
  v9 = MEMORY[0x277CBEB58];
  v10 = [v7 allObjects];

  v11 = [v13 factorNamesWithObfuscation:v10];
  v12 = [v9 setWithArray:v11];

  [*(a1 + 40) setObject:v12 forKey:v8];
}

@end