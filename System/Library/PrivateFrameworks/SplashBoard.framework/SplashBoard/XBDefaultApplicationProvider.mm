@interface XBDefaultApplicationProvider
- (id)_allApplicationsFilteredBySystem:(BOOL)system bySplashBoard:(BOOL)board;
@end

@implementation XBDefaultApplicationProvider

- (id)_allApplicationsFilteredBySystem:(BOOL)system bySplashBoard:(BOOL)board
{
  boardCopy = board;
  systemCopy = system;
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{@"UILaunchStoryboards", @"UILaunchScreen", 0}];
  [MEMORY[0x277CC1E70] enumeratorWithOptions:systemCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        compatibilityObject = [v10 compatibilityObject];
        if (systemCopy)
        {
          v12 = [MEMORY[0x277D75DD8] _applicationTypeForProxy:compatibilityObject];
          if (v12 != 1 || !boardCopy)
          {
            if (v12 == 1)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }
        }

        else if (!boardCopy)
        {
          goto LABEL_15;
        }

        infoDictionary = [v10 infoDictionary];
        v14 = [infoDictionary objectsForKeys:v20];

        v15 = [v14 objectForKey:@"UILaunchStoryboardName" ofClass:objc_opt_class()];
        if (v15 || ([v14 objectForKey:@"UILaunchStoryboards" ofClass:objc_opt_class()], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_15:
          v16 = [objc_alloc(MEMORY[0x277D75DD8]) initWithApplicationProxy:compatibilityObject];
          [array addObject:v16];

          goto LABEL_16;
        }

        v17 = [v14 objectForKey:@"UILaunchScreen" ofClass:objc_opt_class()];

        if (v17)
        {
          goto LABEL_15;
        }

LABEL_16:

        ++v9;
      }

      while (v7 != v9);
      v18 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v7 = v18;
    }

    while (v18);
  }

  return array;
}

@end