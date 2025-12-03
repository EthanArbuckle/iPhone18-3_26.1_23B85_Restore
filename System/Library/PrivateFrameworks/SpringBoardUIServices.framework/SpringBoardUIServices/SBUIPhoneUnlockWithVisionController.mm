@interface SBUIPhoneUnlockWithVisionController
+ (id)sharedInstance;
- (BOOL)_isPhoneUnlockWithVisionSupportedAndEnabled;
- (BOOL)_userActivityUnlockRequirementsMet;
- (BOOL)attemptUnlock;
- (BOOL)isPhoneUnlockEnabledAndRequirementsMet;
- (SBUIPhoneUnlockWithVisionController)init;
- (void)_beginObservingSharingStartedNotification;
- (void)_endObservingSharingStartedNotification;
- (void)_sharingDidRestart;
- (void)_updateUserActivityRequirementsWithBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)attemptUnlock;
- (void)dealloc;
- (void)handleScreenOff:(BOOL)off;
- (void)handleSignificantUserInteractionOccurred;
- (void)handleWakeSourceIsUserActive;
- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d;
- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error;
- (void)removeObserver:(id)observer;
@end

@implementation SBUIPhoneUnlockWithVisionController

- (void)handleSignificantUserInteractionOccurred
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __79__SBUIPhoneUnlockWithVisionController_handleSignificantUserInteractionOccurred__block_invoke;
  v2[3] = &unk_1E789DA38;
  v2[4] = self;
  [(SBUIPhoneUnlockWithVisionController *)self _updateUserActivityRequirementsWithBlock:v2];
}

- (BOOL)attemptUnlock
{
  v12 = *MEMORY[0x1E69E9840];
  p_inProgressAuthenticationSessionID = &self->_inProgressAuthenticationSessionID;
  if (self->_inProgressAuthenticationSessionID)
  {
    v3 = SBLogPhoneUnlockWithVision();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBUIPhoneUnlockWithVisionController *)p_inProgressAuthenticationSessionID attemptUnlock];
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (![(SBUIPhoneUnlockWithVisionController *)self isPhoneUnlockEnabledAndRequirementsMet])
  {
    v3 = SBLogPhoneUnlockWithVision();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBUIPhoneUnlockWithVisionController *)v3 attemptUnlock];
    }

    goto LABEL_10;
  }

  v5 = [(SFAuthenticationManager *)self->_authenticationManager authenticateForType:13];
  inProgressAuthenticationSessionID = self->_inProgressAuthenticationSessionID;
  self->_inProgressAuthenticationSessionID = v5;

  v3 = SBLogPhoneUnlockWithVision();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *p_inProgressAuthenticationSessionID;
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - attempt started with session ID %{public}@", &v10, 0xCu);
  }

  v8 = 1;
LABEL_11:

  return v8;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SBUIPhoneUnlockWithVisionController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_2;

  return v3;
}

- (void)handleWakeSourceIsUserActive
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__SBUIPhoneUnlockWithVisionController_handleWakeSourceIsUserActive__block_invoke;
  v2[3] = &unk_1E789DA38;
  v2[4] = self;
  [(SBUIPhoneUnlockWithVisionController *)self _updateUserActivityRequirementsWithBlock:v2];
}

uint64_t __53__SBUIPhoneUnlockWithVisionController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBUIPhoneUnlockWithVisionController);
  v1 = sharedInstance___sharedInstance_2;
  sharedInstance___sharedInstance_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBUIPhoneUnlockWithVisionController)init
{
  v8.receiver = self;
  v8.super_class = SBUIPhoneUnlockWithVisionController;
  v2 = [(SBUIPhoneUnlockWithVisionController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.springboard.phoneunlockwithvision", v3);

    v5 = [objc_alloc(MEMORY[0x1E69CDE30]) initWithQueue:v4];
    authenticationManager = v2->_authenticationManager;
    v2->_authenticationManager = v5;

    [(SFAuthenticationManager *)v2->_authenticationManager setDelegate:v2];
    v2->_sharingDaemonStartedNotificationToken = -1;
    [(SBUIPhoneUnlockWithVisionController *)v2 _beginObservingSharingStartedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(SBUIPhoneUnlockWithVisionController *)self _endObservingSharingStartedNotification];
  if (self->_inProgressAuthenticationSessionID)
  {
    [(SFAuthenticationManager *)self->_authenticationManager cancelAuthenticationSessionWithID:?];
  }

  v3.receiver = self;
  v3.super_class = SBUIPhoneUnlockWithVisionController;
  [(SBUIPhoneUnlockWithVisionController *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v9 = observerCopy;
    observerCopy = [(NSHashTable *)self->_observers containsObject:observerCopy];
    v5 = v9;
    if ((observerCopy & 1) == 0)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      observerCopy = [(NSHashTable *)observers addObject:v9];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (BOOL)isPhoneUnlockEnabledAndRequirementsMet
{
  _userActivityUnlockRequirementsMet = [(SBUIPhoneUnlockWithVisionController *)self _userActivityUnlockRequirementsMet];
  if (_userActivityUnlockRequirementsMet)
  {

    LOBYTE(_userActivityUnlockRequirementsMet) = [(SBUIPhoneUnlockWithVisionController *)self _isPhoneUnlockWithVisionSupportedAndEnabled];
  }

  return _userActivityUnlockRequirementsMet;
}

- (void)handleScreenOff:(BOOL)off
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__SBUIPhoneUnlockWithVisionController_handleScreenOff___block_invoke;
  v3[3] = &unk_1E789DA60;
  v3[4] = self;
  offCopy = off;
  [(SBUIPhoneUnlockWithVisionController *)self _updateUserActivityRequirementsWithBlock:v3];
}

uint64_t __55__SBUIPhoneUnlockWithVisionController_handleScreenOff___block_invoke(uint64_t result)
{
  *(*(result + 32) + 34) = *(result + 40) ^ 1;
  if (*(result + 40) == 1)
  {
    *(*(result + 32) + 33) = 0;
    *(*(result + 32) + 32) = 0;
  }

  return result;
}

- (BOOL)_userActivityUnlockRequirementsMet
{
  if (self->_screenOn)
  {
    return self->_wakeSourceIsUserAction || self->_significantUserInteractionOccurred;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isPhoneUnlockWithVisionSupportedAndEnabled
{
  v3 = [(SFAuthenticationManager *)self->_authenticationManager isEnabledForType:13];
  if (v3)
  {
    authenticationManager = self->_authenticationManager;

    LOBYTE(v3) = [(SFAuthenticationManager *)authenticationManager isSupportedForType:13];
  }

  return v3;
}

- (void)_updateUserActivityRequirementsWithBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  _userActivityUnlockRequirementsMet = [(SBUIPhoneUnlockWithVisionController *)self _userActivityUnlockRequirementsMet];
  blockCopy[2](blockCopy);

  _userActivityUnlockRequirementsMet2 = [(SBUIPhoneUnlockWithVisionController *)self _userActivityUnlockRequirementsMet];
  if (!_userActivityUnlockRequirementsMet2 || _userActivityUnlockRequirementsMet)
  {
    if (!_userActivityUnlockRequirementsMet2 && _userActivityUnlockRequirementsMet)
    {
      v8 = SBLogPhoneUnlockWithVision();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - user activity unlock requirements no longer met", &v11, 2u);
      }

      if (self->_inProgressAuthenticationSessionID && !self->_attemptCancellationInProgress)
      {
        v9 = SBLogPhoneUnlockWithVision();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          inProgressAuthenticationSessionID = self->_inProgressAuthenticationSessionID;
          v11 = 138543362;
          v12 = inProgressAuthenticationSessionID;
          _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - cancelling attempt with session ID %{public}@ due to screen off", &v11, 0xCu);
        }

        self->_attemptCancellationInProgress = 1;
        [(SFAuthenticationManager *)self->_authenticationManager cancelAuthenticationSessionWithID:self->_inProgressAuthenticationSessionID];
      }
    }
  }

  else
  {
    v7 = SBLogPhoneUnlockWithVision();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - user activity unlock requirements met", &v11, 2u);
    }

    [(SBUIPhoneUnlockWithVisionController *)self attemptUnlock];
  }
}

- (void)_beginObservingSharingStartedNotification
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_fault_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_FAULT, "Failed to register for sharing daemon started notification, status: %d", v2, 8u);
}

void __80__SBUIPhoneUnlockWithVisionController__beginObservingSharingStartedNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sharingDidRestart];
}

- (void)_sharingDidRestart
{
  v3 = SBLogPhoneUnlockWithVision();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - sharing daemon restarted", buf, 2u);
  }

  inProgressAuthenticationSessionID = self->_inProgressAuthenticationSessionID;
  if (inProgressAuthenticationSessionID)
  {
    attemptCancellationInProgress = self->_attemptCancellationInProgress;
    self->_inProgressAuthenticationSessionID = 0;

    self->_attemptCancellationInProgress = 0;
    if (!attemptCancellationInProgress)
    {
      v6 = SBLogPhoneUnlockWithVision();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - Reattempting unlock due to sharing daemon restart", v7, 2u);
      }

      [(SBUIPhoneUnlockWithVisionController *)self attemptUnlock];
    }
  }

  else
  {
    self->_attemptCancellationInProgress = 0;
  }
}

- (void)_endObservingSharingStartedNotification
{
  sharingDaemonStartedNotificationToken = self->_sharingDaemonStartedNotificationToken;
  if (sharingDaemonStartedNotificationToken != -1)
  {
    notify_cancel(sharingDaemonStartedNotificationToken);
    self->_sharingDaemonStartedNotificationToken = -1;
  }
}

- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d
{
  dCopy = d;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__SBUIPhoneUnlockWithVisionController_manager_didCompleteAuthenticationForSessionWithID___block_invoke;
  v7[3] = &unk_1E789DD98;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __89__SBUIPhoneUnlockWithVisionController_manager_didCompleteAuthenticationForSessionWithID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = SBLogPhoneUnlockWithVision();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - didCompleteAuthenticationForSessionWithID %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(*(a1 + 32) + 16);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 phoneUnlockWithVisionControllerAttemptSucceeded:{*(a1 + 32), v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SBUIPhoneUnlockWithVisionController_manager_didFailAuthenticationForSessionWithID_error___block_invoke;
  block[3] = &unk_1E789DD48;
  block[4] = self;
  v12 = dCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = dCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __91__SBUIPhoneUnlockWithVisionController_manager_didFailAuthenticationForSessionWithID_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = SBLogPhoneUnlockWithVision();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) localizedDescription];
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Phone unlock with vision - didFailAuthenticationForSessionWithID %@ error: %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  if (*(v7 + 35) == 1)
  {
    *(v7 + 35) = 0;
    [*(a1 + 32) attemptUnlock];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(v7 + 16);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 phoneUnlockWithVisionController:*(a1 + 32) attemptFailedWithError:{*(a1 + 48), v14}];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)attemptUnlock
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_DEBUG, "Phone unlock with vision - not attempting due to in progress attempt with session ID %{public}@", &v3, 0xCu);
}

@end