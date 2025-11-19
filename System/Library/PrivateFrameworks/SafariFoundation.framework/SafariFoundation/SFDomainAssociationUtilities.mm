@interface SFDomainAssociationUtilities
+ (BOOL)domainIsProhibitedForSavingCredentials:(id)a3;
+ (BOOL)highLevelDomainHasSuiteOfAssociatedApps:(id)a3;
+ (id)domainByStrippingSubdomainWildcardPrefixIfNecessary:(id)a3;
@end

@implementation SFDomainAssociationUtilities

+ (id)domainByStrippingSubdomainWildcardPrefixIfNecessary:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"*."])
  {
    v4 = [v3 substringFromIndex:2];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

+ (BOOL)domainIsProhibitedForSavingCredentials:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (domainIsProhibitedForSavingCredentials__onceToken != -1)
  {
    +[SFDomainAssociationUtilities domainIsProhibitedForSavingCredentials:];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = domainIsProhibitedForSavingCredentials__blocklist;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = 1;
      if ([v3 safari_hasCaseInsensitiveSuffix:{v9, v15}])
      {
        break;
      }

      v11 = [v9 substringFromIndex:1];
      v12 = [v3 safari_isCaseInsensitiveEqualToString:v11];

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v10 = 0;
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void __71__SFDomainAssociationUtilities_domainIsProhibitedForSavingCredentials___block_invoke()
{
  v0 = domainIsProhibitedForSavingCredentials__blocklist;
  domainIsProhibitedForSavingCredentials__blocklist = &unk_287602148;
}

+ (BOOL)highLevelDomainHasSuiteOfAssociatedApps:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (highLevelDomainHasSuiteOfAssociatedApps__onceToken != -1)
  {
    +[SFDomainAssociationUtilities highLevelDomainHasSuiteOfAssociatedApps:];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = highLevelDomainHasSuiteOfAssociatedApps__highLevelDomainsWithSuiteOfAssociatedApps;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 safari_isCaseInsensitiveEqualToString:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void __72__SFDomainAssociationUtilities_highLevelDomainHasSuiteOfAssociatedApps___block_invoke()
{
  v0 = highLevelDomainHasSuiteOfAssociatedApps__highLevelDomainsWithSuiteOfAssociatedApps;
  highLevelDomainHasSuiteOfAssociatedApps__highLevelDomainsWithSuiteOfAssociatedApps = &unk_287602160;
}

@end