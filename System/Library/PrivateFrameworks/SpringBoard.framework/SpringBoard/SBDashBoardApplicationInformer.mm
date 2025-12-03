@interface SBDashBoardApplicationInformer
- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)policy;
- (BOOL)applicationExistsForBundleIdentifier:(id)identifier;
- (BOOL)isBundleIdentifierBlockedForScreenTimeExpiration:(id)expiration;
- (BOOL)isBundleIdentifierUserVisible:(id)visible;
- (BOOL)isInstallingApplicationWithBundleIdentifier:(id)identifier;
- (BOOL)isSystemRestoringFromBackup;
- (BOOL)shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier;
- (SBDashBoardApplicationInformer)initWithWindowScene:(id)scene;
- (SBWindowScene)windowScene;
- (void)_installedApplicationsDidChange:(id)change;
- (void)_screenTimeNotificationPolicyDidChange:(id)change;
- (void)addApplicationInformationObserver:(id)observer;
- (void)dealloc;
@end

@implementation SBDashBoardApplicationInformer

- (SBDashBoardApplicationInformer)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = SBDashBoardApplicationInformer;
  v5 = [(SBDashBoardApplicationInformer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__screenTimeNotificationPolicyDidChange_ name:@"SBCommunicationPolicyDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBDashBoardApplicationInformer;
  [(SBDashBoardApplicationInformer *)&v4 dealloc];
}

- (BOOL)shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SBDashBoardApplicationInformer *)self isBundleIdentifierBlockedForScreenTimeExpiration:identifierCopy]|| [(SBDashBoardApplicationInformer *)self _isBundleIdentifierBlockedForCommunicationPolicy:identifierCopy];

  return v5;
}

- (BOOL)isBundleIdentifierBlockedForScreenTimeExpiration:(id)expiration
{
  expirationCopy = expiration;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:expirationCopy];

  info = [v5 info];
  LOBYTE(expirationCopy) = [info isBlockedForScreenTimeExpiration];

  return expirationCopy;
}

- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)policy
{
  policyCopy = policy;
  v4 = +[SBCommunicationPolicyManager sharedInstance];
  v5 = [v4 shouldScreenTimeSuppressNotificationsForBundleIdentifier:policyCopy];

  return v5;
}

- (BOOL)isBundleIdentifierUserVisible:(id)visible
{
  visibleCopy = visible;
  windowScene = [(SBDashBoardApplicationInformer *)self windowScene];
  iconController = [windowScene iconController];

  visibleIconStateDisplayIdentifiers = [iconController visibleIconStateDisplayIdentifiers];
  v8 = [visibleIconStateDisplayIdentifiers containsObject:visibleCopy];

  return v8;
}

- (void)addApplicationInformationObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (BOOL)isSystemRestoringFromBackup
{
  v2 = +[SBSyncController sharedInstance];
  isRestoring = [v2 isRestoring];

  return isRestoring;
}

- (BOOL)isInstallingApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SBApplicationPlaceholderController sharedInstance];
  v5 = [v4 placeholderForDisplayID:identifierCopy];

  return v5 != 0;
}

- (BOOL)applicationExistsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:identifierCopy];

  return v5 != 0;
}

- (void)_installedApplicationsDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];
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

- (void)_screenTimeNotificationPolicyDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"SBCommunicationPolicyChangedBundleIdentifiersKey"];
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