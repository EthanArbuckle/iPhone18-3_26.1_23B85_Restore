@interface NSUserDefaults(SIAppleGlobalDomain)
+ (id)appleGlobalDomain;
+ (id)appleGlobalDomainSIDefaults;
+ (id)appleGlobalDomainSIKeys;
@end

@implementation NSUserDefaults(SIAppleGlobalDomain)

+ (id)appleGlobalDomain
{
  if (appleGlobalDomain_onceToken != -1)
  {
    +[NSUserDefaults(SIAppleGlobalDomain) appleGlobalDomain];
  }

  v1 = appleGlobalDomain_defaults;

  return v1;
}

+ (id)appleGlobalDomainSIKeys
{
  appleGlobalDomain = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  dictionaryRepresentation = [appleGlobalDomain dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
  v4 = [allKeys filteredArrayUsingPredicate:v3];

  return v4;
}

+ (id)appleGlobalDomainSIDefaults
{
  v18 = *MEMORY[0x277D85DE8];
  appleGlobalDomainSIKeys = [MEMORY[0x277CBEBD0] appleGlobalDomainSIKeys];
  appleGlobalDomain = [MEMORY[0x277CBEBD0] appleGlobalDomain];
  dictionaryRepresentation = [appleGlobalDomain dictionaryRepresentation];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = appleGlobalDomainSIKeys;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [dictionaryRepresentation objectForKey:{v9, v13}];
        [dictionary setObject:v10 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end