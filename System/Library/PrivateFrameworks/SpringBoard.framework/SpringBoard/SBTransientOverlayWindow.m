@interface SBTransientOverlayWindow
- (id)hostedSceneIdentityTokens;
@end

@implementation SBTransientOverlayWindow

- (id)hostedSceneIdentityTokens
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(UIWindow *)self _sbWindowScene];
  v5 = v4;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 transientOverlayPresenter];
    v7 = [v6 presentedViewControllers];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) hostedSceneIdentityTokens];
          [v3 addObjectsFromArray:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  if ([v3 count])
  {
    v13 = [v3 allObjects];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end