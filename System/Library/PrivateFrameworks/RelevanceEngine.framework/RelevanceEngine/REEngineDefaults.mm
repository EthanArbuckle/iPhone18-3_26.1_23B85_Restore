@interface REEngineDefaults
@end

@implementation REEngineDefaults

uint64_t __35___REEngineDefaults_globalDefaults__block_invoke()
{
  v0 = [[_REEngineDefaults alloc] initWithDomain:@"com.apple.RelevanceEngine"];
  v1 = globalDefaults_GlobalDefaults;
  globalDefaults_GlobalDefaults = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __46___REEngineDefaults__registerCallback_forKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) containsObject:a1[5]];
  v4 = a1[4];
  v3 = a1[5];
  if (v2)
  {
    v11 = [*(v4 + 32) objectForKeyedSubscript:v3];
    v5 = MEMORY[0x22AABC5E0](a1[6]);
    [v11 addObject:v5];
  }

  else
  {
    [*(v4 + 24) addObject:v3];
    v6 = MEMORY[0x277CBEB18];
    v7 = MEMORY[0x22AABC5E0](a1[6]);
    v8 = [v6 arrayWithObject:v7];
    [*(a1[4] + 32) setObject:v8 forKeyedSubscript:a1[5]];

    v9 = a1[5];
    v10 = *(a1[4] + 16);

    [v10 addObserver:? forKeyPath:? options:? context:?];
  }
}

void __68___REEngineDefaults_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end