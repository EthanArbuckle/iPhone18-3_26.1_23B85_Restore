@interface SBTransientOverlayWindow
- (id)hostedSceneIdentityTokens;
@end

@implementation SBTransientOverlayWindow

- (id)hostedSceneIdentityTokens
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  _sbWindowScene = [(UIWindow *)self _sbWindowScene];
  v5 = _sbWindowScene;
  if (_sbWindowScene)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    transientOverlayPresenter = [_sbWindowScene transientOverlayPresenter];
    presentedViewControllers = [transientOverlayPresenter presentedViewControllers];

    v8 = [presentedViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(presentedViewControllers);
          }

          hostedSceneIdentityTokens = [*(*(&v15 + 1) + 8 * i) hostedSceneIdentityTokens];
          [v3 addObjectsFromArray:hostedSceneIdentityTokens];
        }

        v9 = [presentedViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  if ([v3 count])
  {
    allObjects = [v3 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

@end