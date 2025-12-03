@interface SPUIHomeScreenIconUtility
+ (void)addMenusToBuilder:(id)builder forFocusEnvironment:(id)environment;
@end

@implementation SPUIHomeScreenIconUtility

+ (void)addMenusToBuilder:(id)builder forFocusEnvironment:(id)environment
{
  v19 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  system = [builderCopy system];
  mainSystem = [MEMORY[0x277D75730] mainSystem];

  if (system == mainSystem)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    applicationIconMultitaskingMenus = [MEMORY[0x277D663F0] applicationIconMultitaskingMenus];
    v8 = [applicationIconMultitaskingMenus countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      v11 = *MEMORY[0x277D76D30];
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(applicationIconMultitaskingMenus);
          }

          [builderCopy insertChildMenu:*(*(&v14 + 1) + 8 * v12++) atEndOfMenuForIdentifier:v11];
        }

        while (v9 != v12);
        v9 = [applicationIconMultitaskingMenus countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end