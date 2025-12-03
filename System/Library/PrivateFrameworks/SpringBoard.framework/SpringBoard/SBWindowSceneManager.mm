@interface SBWindowSceneManager
- (NSSet)connectedWindowScenes;
- (SBWindowScene)activeDisplayWindowScene;
- (SBWindowScene)activeDisplayWindowSceneFollowingKeyboard;
- (SBWindowScene)activeDisplayWindowSceneFollowingUserInteraction;
- (SBWindowSceneManager)initWithUserInteractionCoordinator:(id)coordinator;
- (id)_validateSuggestedActiveWindowScene:(id)scene usingMethodology:(int64_t)methodology;
- (id)windowSceneForAlertItems;
- (id)windowSceneForDisplayIdentity:(id)identity;
- (id)windowSceneForPersistentIdentifier:(id)identifier;
- (id)windowSceneForSceneHandle:(id)handle;
- (id)windowSceneForSceneIdentifier:(id)identifier;
- (void)_sceneDidDisconnect:(id)disconnect;
- (void)_sceneWillConnect:(id)connect;
@end

@implementation SBWindowSceneManager

- (NSSet)connectedWindowScenes
{
  v2 = [(NSMutableSet *)self->_mutableConnectedWindowScenes copy];

  return v2;
}

uint64_t __51__SBWindowSceneManager__embeddedDisplayWindowScene__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMainDisplayWindowScene])
  {
    v3 = [v2 isExternalDisplayWindowScene] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBWindowScene)activeDisplayWindowScene
{
  v3 = +[SBExternalDisplaySettingsDomain rootSettings];
  activeDisplayTrackingMethodology = [v3 activeDisplayTrackingMethodology];

  if (activeDisplayTrackingMethodology == 1)
  {
    activeDisplayWindowSceneFollowingUserInteraction = [(SBWindowSceneManager *)self activeDisplayWindowSceneFollowingUserInteraction];
  }

  else if (!activeDisplayTrackingMethodology)
  {
    activeDisplayWindowSceneFollowingUserInteraction = [(SBWindowSceneManager *)self activeDisplayWindowSceneFollowingKeyboard];
  }

  return activeDisplayWindowSceneFollowingUserInteraction;
}

- (SBWindowScene)activeDisplayWindowSceneFollowingUserInteraction
{
  activeWindowScene = [(SBMultiDisplayUserInteractionCoordinator *)self->_userInteractionCoordinator activeWindowScene];
  v4 = [(SBWindowSceneManager *)self _validateSuggestedActiveWindowScene:activeWindowScene usingMethodology:1];

  return v4;
}

- (id)windowSceneForAlertItems
{
  _continuityDisplayWindowScene = [(SBWindowSceneManager *)self _continuityDisplayWindowScene];
  v4 = _continuityDisplayWindowScene;
  if (_continuityDisplayWindowScene)
  {
    activeDisplayWindowScene = _continuityDisplayWindowScene;
  }

  else
  {
    activeDisplayWindowScene = [(SBWindowSceneManager *)self activeDisplayWindowScene];
  }

  v6 = activeDisplayWindowScene;

  return v6;
}

- (SBWindowSceneManager)initWithUserInteractionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = SBWindowSceneManager;
  v6 = [(SBWindowSceneManager *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableConnectedWindowScenes = v6->_mutableConnectedWindowScenes;
    v6->_mutableConnectedWindowScenes = v7;

    v9 = objc_alloc_init(_SBActiveDisplayKeyboardFocusTracker);
    keyboardFocusTracker = v6->_keyboardFocusTracker;
    v6->_keyboardFocusTracker = v9;

    objc_storeStrong(&v6->_userInteractionCoordinator, coordinator);
  }

  return v6;
}

- (SBWindowScene)activeDisplayWindowSceneFollowingKeyboard
{
  activeWindowScene = [(_SBActiveDisplayKeyboardFocusTracker *)self->_keyboardFocusTracker activeWindowScene];
  v4 = [(SBWindowSceneManager *)self _validateSuggestedActiveWindowScene:activeWindowScene usingMethodology:0];

  return v4;
}

- (id)windowSceneForDisplayIdentity:(id)identity
{
  identityCopy = identity;
  if ([identityCopy expectsSecureRendering] || !objc_msgSend(identityCopy, "sb_displayWindowingMode"))
  {
    _embeddedDisplayWindowScene = [(SBWindowSceneManager *)self _embeddedDisplayWindowScene];
  }

  else
  {
    mutableConnectedWindowScenes = self->_mutableConnectedWindowScenes;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SBWindowSceneManager_windowSceneForDisplayIdentity___block_invoke;
    v8[3] = &unk_2783B06B8;
    v9 = identityCopy;
    _embeddedDisplayWindowScene = [(NSMutableSet *)mutableConnectedWindowScenes bs_firstObjectPassingTest:v8];
  }

  return _embeddedDisplayWindowScene;
}

uint64_t __54__SBWindowSceneManager_windowSceneForDisplayIdentity___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _fbsDisplayIdentity];
  v3 = BSEqualObjects();

  return v3;
}

- (id)windowSceneForSceneHandle:(id)handle
{
  displayIdentity = [handle displayIdentity];
  v5 = [(SBWindowSceneManager *)self windowSceneForDisplayIdentity:displayIdentity];

  return v5;
}

- (id)windowSceneForSceneIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277D0ADC0] identityForIdentifier:identifier];
  mutableConnectedWindowScenes = self->_mutableConnectedWindowScenes;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__SBWindowSceneManager_windowSceneForSceneIdentifier___block_invoke;
  v9[3] = &unk_2783B06B8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableSet *)mutableConnectedWindowScenes bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __54__SBWindowSceneManager_windowSceneForSceneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneManagerCoordinator sharedInstance];
  v5 = [v3 _fbsDisplayIdentity];

  v6 = [v4 sceneManagerForDisplayIdentity:v5];

  v7 = [v6 existingSceneHandleForSceneIdentity:*(a1 + 32)];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sceneIfExists];
    v10 = [v9 settings];
    v11 = [v10 sb_displayIdentityForSceneManagers];
    v12 = [v6 displayIdentity];
    v13 = [v11 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)windowSceneForPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutableConnectedWindowScenes = self->_mutableConnectedWindowScenes;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBWindowSceneManager_windowSceneForPersistentIdentifier___block_invoke;
  v9[3] = &unk_2783B06B8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSMutableSet *)mutableConnectedWindowScenes bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __59__SBWindowSceneManager_windowSceneForPersistentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneManagerCoordinator sharedInstance];
  v5 = [v3 _fbsDisplayIdentity];

  v6 = [v4 sceneManagerForDisplayIdentity:v5];

  v7 = [v6 existingSceneHandleForPersistenceIdentifier:*(a1 + 32)];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sceneIfExists];
    v10 = [v9 settings];
    v11 = [v10 sb_displayIdentityForSceneManagers];
    v12 = [v6 displayIdentity];
    v13 = [v11 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_sceneWillConnect:(id)connect
{
  connectCopy = connect;
  v5 = objc_opt_class();
  v8 = connectCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(NSMutableSet *)self->_mutableConnectedWindowScenes addObject:v7];
  }
}

- (void)_sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = objc_opt_class();
  v8 = disconnectCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(NSMutableSet *)self->_mutableConnectedWindowScenes removeObject:v7];
  }
}

- (id)_validateSuggestedActiveWindowScene:(id)scene usingMethodology:(int64_t)methodology
{
  v16 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  if ([sceneCopy isInvalidating])
  {
    v7 = SBLogActiveDisplay();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = SBStringForActiveDisplayTrackingMethodology(methodology);
      _fbsDisplayIdentity = [sceneCopy _fbsDisplayIdentity];
      *v14 = 138543874;
      *&v14[4] = v8;
      *&v14[12] = 2048;
      *&v14[14] = sceneCopy;
      *&v14[22] = 2114;
      v15 = _fbsDisplayIdentity;
      v10 = "[%{public}@] focus scene <%p> on display %{public}@ is in the process of invalidating, falling back to reporting the embedded scene as the active scene";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v10, v14, 0x20u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([sceneCopy isInvalidated])
  {
    v7 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = SBStringForActiveDisplayTrackingMethodology(methodology);
      _fbsDisplayIdentity = [sceneCopy _fbsDisplayIdentity];
      *v14 = 138543874;
      *&v14[4] = v8;
      *&v14[12] = 2048;
      *&v14[14] = sceneCopy;
      *&v14[22] = 2114;
      v15 = _fbsDisplayIdentity;
      v10 = "[%{public}@] focus scene <%p> on display %{public}@ is invalidated!?!?!?!?, falling back to reporting the embedded scene as the active scene";
      goto LABEL_7;
    }

LABEL_8:

LABEL_9:
    v11 = [(SBWindowSceneManager *)self _embeddedDisplayWindowScene:*v14];
    goto LABEL_10;
  }

  if (!sceneCopy)
  {
    goto LABEL_9;
  }

  v11 = sceneCopy;
LABEL_10:
  v12 = v11;

  return v12;
}

@end