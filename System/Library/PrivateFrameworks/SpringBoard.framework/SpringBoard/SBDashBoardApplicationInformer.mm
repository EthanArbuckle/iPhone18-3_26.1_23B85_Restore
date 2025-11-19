@interface SBDashBoardApplicationInformer
- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)a3;
- (BOOL)applicationExistsForBundleIdentifier:(id)a3;
- (BOOL)isBundleIdentifierBlockedForScreenTimeExpiration:(id)a3;
- (BOOL)isBundleIdentifierUserVisible:(id)a3;
- (BOOL)isInstallingApplicationWithBundleIdentifier:(id)a3;
- (BOOL)isSystemRestoringFromBackup;
- (BOOL)shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)a3;
- (SBDashBoardApplicationInformer)initWithWindowScene:(id)a3;
- (SBWindowScene)windowScene;
- (void)_installedApplicationsDidChange:(id)a3;
- (void)_screenTimeNotificationPolicyDidChange:(id)a3;
- (void)addApplicationInformationObserver:(id)a3;
- (void)dealloc;
@end

@implementation SBDashBoardApplicationInformer

- (SBDashBoardApplicationInformer)initWithWindowScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBDashBoardApplicationInformer;
  v5 = [(SBDashBoardApplicationInformer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel__screenTimeNotificationPolicyDidChange_ name:@"SBCommunicationPolicyDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBDashBoardApplicationInformer;
  [(SBDashBoardApplicationInformer *)&v4 dealloc];
}

- (BOOL)shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBDashBoardApplicationInformer *)self isBundleIdentifierBlockedForScreenTimeExpiration:v4]|| [(SBDashBoardApplicationInformer *)self _isBundleIdentifierBlockedForCommunicationPolicy:v4];

  return v5;
}

- (BOOL)isBundleIdentifierBlockedForScreenTimeExpiration:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  v6 = [v5 info];
  LOBYTE(v3) = [v6 isBlockedForScreenTimeExpiration];

  return v3;
}

- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)a3
{
  v3 = a3;
  v4 = +[SBCommunicationPolicyManager sharedInstance];
  v5 = [v4 shouldScreenTimeSuppressNotificationsForBundleIdentifier:v3];

  return v5;
}

- (BOOL)isBundleIdentifierUserVisible:(id)a3
{
  v4 = a3;
  v5 = [(SBDashBoardApplicationInformer *)self windowScene];
  v6 = [v5 iconController];

  v7 = [v6 visibleIconStateDisplayIdentifiers];
  v8 = [v7 containsObject:v4];

  return v8;
}

- (void)addApplicationInformationObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (BOOL)isSystemRestoringFromBackup
{
  v2 = +[SBSyncController sharedInstance];
  v3 = [v2 isRestoring];

  return v3;
}

- (BOOL)isInstallingApplicationWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationPlaceholderController sharedInstance];
  v5 = [v4 placeholderForDisplayID:v3];

  return v5 != 0;
}

- (BOOL)applicationExistsForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  return v5 != 0;
}

- (void)_installedApplicationsDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) applicationInformer:self updatedApplications:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_screenTimeNotificationPolicyDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBCommunicationPolicyChangedBundleIdentifiersKey"];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) applicationInformer:self updatedApplications:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end