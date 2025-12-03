@interface PXContentPrivacyController
+ (id)privacyControllerForCollection:(id)collection;
+ (unint64_t)automaticAuthenticationBehaviorFromInternalSettings;
+ (unint64_t)lockStateForCollection:(id)collection;
+ (void)tearDownPrivacyControllersIfNeeded;
- (BOOL)_isContentPrivacyPrefEnabled;
- (BOOL)isDelayedLockScheduled;
- (BOOL)isPerformingAuthentication;
- (BOOL)shouldLockAfterDelayWhenLeavingViewHierarchy;
- (BOOL)shouldOnlyPerformAutomaticAuthenticationOnceInStack;
- (BOOL)shouldPerformAuthenticationUponAppearing;
- (PXContentPrivacyController)initWithAssetCollectionToObserve:(id)observe logIdentifier:(id)identifier;
- (PXContentPrivacyController)initWithContentPrivacyEnabledForTesting:(id)testing availableAuthenticationTypeForTesting:(id)forTesting assetCollectionToObserveForTesting:(id)observeForTesting automaticAuthenticationBehaviorForTesting:(unint64_t)behaviorForTesting;
- (PXContentPrivacyController)initWithLogIdentifier:(id)identifier;
- (double)autolockTimeout;
- (int64_t)_calculateAuthenticationTypeWithForcedUpdate:(BOOL)update;
- (void)_beginObservingApplicationStateChangesAndSystemEvents;
- (void)_beginObservingAssetCollectionChanges;
- (void)_beginObservingContentPrivacyPrefs;
- (void)_cancelAuthentication;
- (void)_cancelDelayedLockIfNeededWithReason:(id)reason;
- (void)_finishAuthenticationChallengeWithCompletionHandler:(id)handler success:(BOOL)success error:(id)error;
- (void)_lockOrCancelAuthenticationIfNeeded;
- (void)_lockWithReasonForLogging:(id)logging;
- (void)_logCurrentAuthenticationStack;
- (void)_performDelayedAuthenticationTypeUpdate;
- (void)_performUserAuthenticationIfNeededAfterForegrounding;
- (void)_performUserAuthenticationWithTitle:(id)title passcodeTitle:(id)passcodeTitle passcodeSubtitle:(id)subtitle reason:(id)reason completion:(id)completion;
- (void)_startAutolockTimerForReason:(unint64_t)reason resetIfActive:(BOOL)active;
- (void)_stopAutolockTimer;
- (void)_stopObservingApplicationStateChanges;
- (void)_stopObservingAssetCollectionChanges;
- (void)_stopObservingContentPrivacyPrefs;
- (void)_updateAuthenticationType;
- (void)_updateCachedAuthenticationStackCount;
- (void)_updateWillPerformAuthenticationAutomatically;
- (void)addContextToStack:(id)stack;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)clearAuthenticationStack;
- (void)commonInitWithLogIdentifier:(id)identifier automaticAuthenticationBehavior:(unint64_t)behavior;
- (void)dealloc;
- (void)hostApplicationDidBecomeActiveFromNotification:(id)notification;
- (void)hostApplicationWillResignActiveFromNotification:(id)notification;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performUserAuthenticationIfNeededFromContext:(id)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)removeContextFromStack:(id)stack;
- (void)resetHasPerformedAuthenticationInStack;
- (void)scheduleAuthenticationStackCountUpdate;
- (void)scheduleDelayedLock;
- (void)setAssetCollectionToObserve:(id)observe;
- (void)setAssetCollectionToObserveForTesting:(id)testing;
- (void)setAuthenticationAttemptDidFailOrWasCancelled:(BOOL)cancelled;
- (void)setAuthenticationType:(int64_t)type;
- (void)setAutomaticAuthenticationBehavior:(unint64_t)behavior;
- (void)setContentPrivacyEnabled:(BOOL)enabled;
- (void)setLocked:(BOOL)locked;
- (void)setTestingOverride_authenticationType:(id)type;
- (void)setWillPerformAuthenticationAutomatically:(BOOL)automatically;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateAuthenticationTypeImmediately;
- (void)viewDidAppearForAuthenticationContext:(id)context;
- (void)viewDidDisappearForAuthenticationContext:(id)context withNavigationState:(unint64_t)state;
@end

@implementation PXContentPrivacyController

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v15 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = NSStringFromSelector(sel_simulationMode);
  if ([keyCopy isEqualToString:v6])
  {
  }

  else
  {
    v7 = NSStringFromSelector(sel_simulatedAuthenticationType);
    v8 = [keyCopy isEqualToString:v7];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    v11 = 138543618;
    v12 = logIdentifier;
    v13 = 2112;
    v14 = keyCopy;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Internal settings key '%@' changed. Updating content privacy enabled state.", &v11, 0x16u);
  }

  [(PXContentPrivacyController *)self _updateAuthenticationType];
  [(PXContentPrivacyController *)self _updateContentPrivacyEnabled];
  [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
LABEL_7:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  assetCollectionToObserve = [(PXContentPrivacyController *)self assetCollectionToObserve];
  px_isUserSmartAlbum = [assetCollectionToObserve px_isUserSmartAlbum];

  if (!px_isUserSmartAlbum)
  {
    goto LABEL_13;
  }

  assetCollectionToObserve2 = [(PXContentPrivacyController *)self assetCollectionToObserve];
  if (!assetCollectionToObserve2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentPrivacyController.m" lineNumber:1433 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollectionToObserve", v22}];
LABEL_16:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    px_descriptionForAssertionMessage = [assetCollectionToObserve2 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentPrivacyController.m" lineNumber:1433 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollectionToObserve", v22, px_descriptionForAssertionMessage}];

    goto LABEL_16;
  }

LABEL_4:
  v9 = [queueCopy changeDetailsForObject:assetCollectionToObserve2];
  v10 = v9;
  if (v9)
  {
    objectAfterChanges = [v9 objectAfterChanges];
    px_isPrivacySensitiveAlbum = [assetCollectionToObserve2 px_isPrivacySensitiveAlbum];
    px_isPrivacySensitiveAlbum2 = [objectAfterChanges px_isPrivacySensitiveAlbum];
    if (px_isPrivacySensitiveAlbum != px_isPrivacySensitiveAlbum2)
    {
      v14 = px_isPrivacySensitiveAlbum2;
      v15 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
        title = [objectAfterChanges title];
        v18 = @"NO";
        if (v14)
        {
          v18 = @"YES";
        }

        v19 = v18;
        *buf = 138543874;
        v26 = logIdentifier;
        v27 = 2112;
        v28 = title;
        v29 = 2114;
        v30 = v19;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Smart album '%@' just changed privacy sensitivity to %{public}@", buf, 0x20u);
      }
    }

    [(PXContentPrivacyController *)self setAssetCollectionToObserve:objectAfterChanges];
  }

LABEL_13:
}

- (void)_stopObservingAssetCollectionChanges
{
  assetCollectionToObserve = [(PXContentPrivacyController *)self assetCollectionToObserve];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = assetCollectionToObserve;

    v4 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    assetCollectionToObserve = [v5 photoLibrary];
    [assetCollectionToObserve px_unregisterChangeObserver:self];
  }

  else
  {
    v5 = 0;
  }

  v4 = v5;
LABEL_7:
}

- (void)_beginObservingAssetCollectionChanges
{
  assetCollectionToObserve = [(PXContentPrivacyController *)self assetCollectionToObserve];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = assetCollectionToObserve;

    v4 = v5;
    if (!v5)
    {
      goto LABEL_7;
    }

    assetCollectionToObserve = [v5 photoLibrary];
    [assetCollectionToObserve px_registerChangeObserver:self];
  }

  else
  {
    v5 = 0;
  }

  v4 = v5;
LABEL_7:
}

- (void)_stopObservingContentPrivacyPrefs
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileslideshow.PreferenceChanged", 0);
}

- (void)_beginObservingContentPrivacyPrefs
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _preferencesDidChange, @"com.apple.mobileslideshow.PreferenceChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
}

uint64_t __58__PXContentPrivacyController__updateContentPrivacyEnabled__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PXContentPrivacyController__updateContentPrivacyEnabled__block_invoke_2;
  v3[3] = &unk_1E7747320;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

void __58__PXContentPrivacyController__updateContentPrivacyEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) isContentPrivacyEnabled];
  if ([*(a1 + 32) _isContentPrivacyPrefEnabled])
  {
    v5 = [*(a1 + 32) assetCollectionToObserve];
    v6 = [v5 px_isUserSmartAlbum];

    if (v6)
    {
      v7 = [*(a1 + 32) assetCollectionToObserve];
      v8 = [v7 px_isPrivacySensitiveAlbum];

      if (v4 == v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v4)
      {
        goto LABEL_18;
      }

      v8 = 1;
    }
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_18;
    }

    v8 = 0;
  }

  [v3 setContentPrivacyEnabled:v8];
  [v3 setLocked:v8];
  v9 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) logIdentifier];
    if (v8)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    v13 = v12;
    if ([v3 isLocked])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Content privacy 'enabled' just changed to %{public}@. Setting locked to %{public}@", &v16, 0x20u);
  }

LABEL_18:
}

- (void)setContentPrivacyEnabled:(BOOL)enabled
{
  if (self->_contentPrivacyEnabled != enabled)
  {
    self->_contentPrivacyEnabled = enabled;
    [(PXContentPrivacyController *)self signalChange:2];
  }
}

- (BOOL)_isContentPrivacyPrefEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  if (PFProcessIsLaunchedToExecuteTests())
  {
    contentPrivacyEnabledNumberForTesting = [(PXContentPrivacyController *)self contentPrivacyEnabledNumberForTesting];

    if (contentPrivacyEnabledNumberForTesting)
    {
      contentPrivacyEnabledNumberForTesting2 = [(PXContentPrivacyController *)self contentPrivacyEnabledNumberForTesting];
      bOOLValue = [contentPrivacyEnabledNumberForTesting2 BOOLValue];

      return bOOLValue;
    }
  }

  v7 = +[PXContentPrivacySettings sharedInstance];
  simulationMode = [v7 simulationMode];
  if (simulationMode == 1)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    if (!simulationMode)
    {
      v9 = PLIsContentPrivacyEnabled();
      authenticationType = [(PXContentPrivacyController *)self authenticationType];
      if (!v9 || authenticationType != 1)
      {
        goto LABEL_13;
      }

      v11 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
        v13 = 138543362;
        v14 = logIdentifier;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Even though the content privacy pref is enabled, there is no configured authentication method. Treating content privacy as if it were DISABLED.", &v13, 0xCu);
      }
    }

    LOBYTE(v9) = 0;
  }

LABEL_13:

  return v9;
}

- (void)setAssetCollectionToObserveForTesting:(id)testing
{
  testingCopy = testing;
  if (PFProcessIsLaunchedToExecuteTests())
  {
    [(PXContentPrivacyController *)self setAssetCollectionToObserve:testingCopy];
  }
}

- (void)setAssetCollectionToObserve:(id)observe
{
  v21 = *MEMORY[0x1E69E9840];
  observeCopy = observe;
  assetCollectionToObserve = self->_assetCollectionToObserve;
  if (assetCollectionToObserve != observeCopy)
  {
    px_isPrivacySensitiveAlbum = [(PXDisplayCollection *)assetCollectionToObserve px_isPrivacySensitiveAlbum];
    objc_storeStrong(&self->_assetCollectionToObserve, observe);
    px_isPrivacySensitiveAlbum2 = [(PXDisplayCollection *)self->_assetCollectionToObserve px_isPrivacySensitiveAlbum];
    if (px_isPrivacySensitiveAlbum != px_isPrivacySensitiveAlbum2)
    {
      v9 = px_isPrivacySensitiveAlbum2;
      v10 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
        localizedTitle = [(PXDisplayCollection *)self->_assetCollectionToObserve localizedTitle];
        v13 = @"NO";
        if (v9)
        {
          v13 = @"YES";
        }

        v14 = v13;
        v15 = 138543874;
        v16 = logIdentifier;
        v17 = 2112;
        v18 = localizedTitle;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Smart album '%@' just changed privacy sensitivity to %{public}@", &v15, 0x20u);
      }

      [(PXContentPrivacyController *)self _updateContentPrivacyEnabled];
    }
  }
}

- (double)autolockTimeout
{
  if (!PFProcessIsLaunchedToExecuteTests())
  {
    return 0.0;
  }

  testingOverride_autolockTimeout = [(PXContentPrivacyController *)self testingOverride_autolockTimeout];

  if (!testingOverride_autolockTimeout)
  {
    return 0.0;
  }

  testingOverride_autolockTimeout2 = [(PXContentPrivacyController *)self testingOverride_autolockTimeout];
  [testingOverride_autolockTimeout2 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)shouldLockAfterDelayWhenLeavingViewHierarchy
{
  if (!PFProcessIsLaunchedToExecuteTests())
  {
    return 0;
  }

  testingOverride_shouldLockAfterDelayWhenLeavingViewHierarchy = [(PXContentPrivacyController *)self testingOverride_shouldLockAfterDelayWhenLeavingViewHierarchy];

  if (!testingOverride_shouldLockAfterDelayWhenLeavingViewHierarchy)
  {
    return 0;
  }

  testingOverride_shouldLockAfterDelayWhenLeavingViewHierarchy2 = [(PXContentPrivacyController *)self testingOverride_shouldLockAfterDelayWhenLeavingViewHierarchy];
  bOOLValue = [testingOverride_shouldLockAfterDelayWhenLeavingViewHierarchy2 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldOnlyPerformAutomaticAuthenticationOnceInStack
{
  if (PFProcessIsLaunchedToExecuteTests() && ([(PXContentPrivacyController *)self testingOverride_shouldOnlyPerformAutomaticAuthenticationOnce], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    testingOverride_shouldOnlyPerformAutomaticAuthenticationOnce = [(PXContentPrivacyController *)self testingOverride_shouldOnlyPerformAutomaticAuthenticationOnce];
    bOOLValue = [testingOverride_shouldOnlyPerformAutomaticAuthenticationOnce BOOLValue];

    return bOOLValue;
  }

  else
  {

    return [(PXContentPrivacyController *)self isRunningInExtension];
  }
}

- (BOOL)shouldPerformAuthenticationUponAppearing
{
  v15 = *MEMORY[0x1E69E9840];
  if (PFProcessIsLaunchedToExecuteTests() && ([(PXContentPrivacyController *)self testingOverride_shouldPerformAuthenticationOnAppearing], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    testingOverride_shouldPerformAuthenticationOnAppearing = [(PXContentPrivacyController *)self testingOverride_shouldPerformAuthenticationOnAppearing];
    bOOLValue = [testingOverride_shouldPerformAuthenticationOnAppearing BOOLValue];

    shouldOnlyPerformAutomaticAuthenticationOnceInStack = [(PXContentPrivacyController *)self shouldOnlyPerformAutomaticAuthenticationOnceInStack];
    if ((bOOLValue & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    automaticAuthenticationBehavior = [(PXContentPrivacyController *)self automaticAuthenticationBehavior];
    if (!automaticAuthenticationBehavior)
    {
      [(PXContentPrivacyController *)self shouldOnlyPerformAutomaticAuthenticationOnceInStack];
      return 0;
    }

    if (automaticAuthenticationBehavior == 1)
    {
      [(PXContentPrivacyController *)self authenticationType];
      PXSystemAuthenticationTypeIsBiometric();
    }

    shouldOnlyPerformAutomaticAuthenticationOnceInStack = [(PXContentPrivacyController *)self shouldOnlyPerformAutomaticAuthenticationOnceInStack];
  }

  v8 = shouldOnlyPerformAutomaticAuthenticationOnceInStack;
  hasPerformedAuthenticationInStack = [(PXContentPrivacyController *)self hasPerformedAuthenticationInStack];
  result = 1;
  if (hasPerformedAuthenticationInStack && v8)
  {
    v11 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      v13 = 138543362;
      v14 = logIdentifier;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Skipping automatic authentication because we've already perform authentication once while in this stack", &v13, 0xCu);
    }

    return 0;
  }

  return result;
}

- (void)_performUserAuthenticationWithTitle:(id)title passcodeTitle:(id)passcodeTitle passcodeSubtitle:(id)subtitle reason:(id)reason completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  passcodeTitleCopy = passcodeTitle;
  subtitleCopy = subtitle;
  reasonCopy = reason;
  completionCopy = completion;
  v17 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    *buf = 138543362;
    v33 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Got a request to perform authentication.", buf, 0xCu);
  }

  [(PXContentPrivacyController *)self _cancelDelayedLockIfNeededWithReason:@"performing user authentication requested"];
  if ([(PXContentPrivacyController *)self isLocked])
  {
    objc_initWeak(&location, self);
    if (PFProcessIsLaunchedToExecuteTests())
    {
      authChallengeHandlerForTesting = [(PXContentPrivacyController *)self authChallengeHandlerForTesting];
      v20 = authChallengeHandlerForTesting == 0;

      if (!v20)
      {
        authChallengeHandlerForTesting2 = [(PXContentPrivacyController *)self authChallengeHandlerForTesting];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __115__PXContentPrivacyController__performUserAuthenticationWithTitle_passcodeTitle_passcodeSubtitle_reason_completion___block_invoke;
        v28[3] = &unk_1E77472D0;
        objc_copyWeak(&v30, &location);
        v29 = completionCopy;
        (authChallengeHandlerForTesting2)[2](authChallengeHandlerForTesting2, v28);

        objc_destroyWeak(&v30);
LABEL_14:
        objc_destroyWeak(&location);
        goto LABEL_20;
      }
    }

    if ([(PXContentPrivacyController *)self isPerformingAuthentication])
    {
      v24 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
        *buf = 138543362;
        v33 = logIdentifier2;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, "PrivacyController [%{public}@]: Got a request to perform authentication while already performing authentication. Ignoring.", buf, 0xCu);
      }

      goto LABEL_14;
    }

    if ([(PXContentPrivacyController *)self authenticationType]!= 1)
    {
      [(PXContentPrivacyController *)self authenticationType];
      PXDebugDescriptionFromSystemAuthenticationType();
    }

    v26 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier3 = [(PXContentPrivacyController *)self logIdentifier];
      *buf = 138543362;
      v33 = logIdentifier3;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: LocalAuthentication not possible because the device has no biometrics or passcode/password set at all.", buf, 0xCu);
    }

    [(PXContentPrivacyController *)self _finishAuthenticationChallengeWithCompletionHandler:completionCopy success:1 error:0];
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier4 = [(PXContentPrivacyController *)self logIdentifier];
      *buf = 138543362;
      v33 = logIdentifier4;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Tried to perform a user authentication, but was already unlocked.", buf, 0xCu);
    }

    [(PXContentPrivacyController *)self _finishAuthenticationChallengeWithCompletionHandler:completionCopy success:1 error:0];
  }

LABEL_20:
}

void __115__PXContentPrivacyController__performUserAuthenticationWithTitle_passcodeTitle_passcodeSubtitle_reason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishAuthenticationChallengeWithCompletionHandler:*(a1 + 32) success:a2 error:v5];
}

void __115__PXContentPrivacyController__performUserAuthenticationWithTitle_passcodeTitle_passcodeSubtitle_reason_completion___block_invoke_312(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(__CFString *)v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696EE30]])
  {
    v6 = [(__CFString *)v4 code]== -2 || [(__CFString *)v4 code]== -9;
  }

  else
  {
    v6 = 0;
  }

  v7 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) logIdentifier];
    v9 = @"NO";
    if (!v4)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: LocalAuthentication returned with success: %{public}@.", &v18, 0x16u);
  }

  if (v4)
  {
    v11 = PLContentPrivacyUIGetLog();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) logIdentifier];
        v18 = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = v4;
        v14 = "PrivacyController [%{public}@]: LocalAuthentication cancellation: %@.";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
        _os_log_impl(&dword_1A3C1C000, v15, v16, v14, &v18, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) logIdentifier];
      v18 = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v4;
      v14 = "PrivacyController [%{public}@]: LocalAuthentication error: %@.";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_16;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishAuthenticationChallengeWithCompletionHandler:*(a1 + 40) success:v4 == 0 error:v4];
}

- (void)_finishAuthenticationChallengeWithCompletionHandler:(id)handler success:(BOOL)success error:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  v8 = handlerCopy;
  px_dispatch_on_main_queue();
}

uint64_t __96__PXContentPrivacyController__finishAuthenticationChallengeWithCompletionHandler_success_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentAuthenticationContext:0];
  [*(a1 + 32) setHasPerformedAuthenticationInStack:1];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__PXContentPrivacyController__finishAuthenticationChallengeWithCompletionHandler_success_error___block_invoke_2;
  v5[3] = &__block_descriptor_33_e71_v16__0__PXContentPrivacyController_PXMutableContentPrivacyController__8l;
  v6 = *(a1 + 56);
  [v2 performChanges:v5];
  [*(a1 + 32) _updateWillPerformAuthenticationAutomatically];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 56), *(a1 + 40));
  }

  return [*(a1 + 32) setAuthenticationAttemptDidFailOrWasCancelled:(*(a1 + 56) & 1) == 0];
}

uint64_t __36__PXContentPrivacyController_unlock__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isPerformingAuthentication])
  {
    v2 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) logIdentifier];
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Unlock requested via CLI. Cancelling active user authentication", &v5, 0xCu);
    }

    [*(a1 + 32) _cancelAuthentication];
  }

  return [*(a1 + 32) performChanges:&__block_literal_global_299];
}

- (BOOL)isDelayedLockScheduled
{
  autolockTimer = [(PXContentPrivacyController *)self autolockTimer];
  v3 = autolockTimer != 0;

  return v3;
}

- (void)_cancelDelayedLockIfNeededWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  autolockTimer = [(PXContentPrivacyController *)self autolockTimer];

  if (autolockTimer)
  {
    v6 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      v8 = 138543618;
      v9 = logIdentifier;
      v10 = 2114;
      v11 = reasonCopy;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Cancelling scheduled auto-lock with reason: %{public}@", &v8, 0x16u);
    }

    [(PXContentPrivacyController *)self _stopAutolockTimer];
  }
}

- (void)scheduleDelayedLock
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(PXContentPrivacyController *)self isPerformingAuthentication])
  {
    v3 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      v7 = 138543362;
      v8 = logIdentifier;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Scheduled lock requested. But we are locked and in the middle of authentication. Cancelling active user authentication.", &v7, 0xCu);
    }

    [(PXContentPrivacyController *)self _cancelAuthentication];
  }

  else if (![(PXContentPrivacyController *)self isLocked])
  {
    v5 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
      v7 = 138543362;
      v8 = logIdentifier2;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Scheduled lock requested. Resetting any ongoing auto-lock timer.", &v7, 0xCu);
    }

    [(PXContentPrivacyController *)self _startAutolockTimerForReason:0 resetIfActive:1];
  }
}

void __45__PXContentPrivacyController_lockImmediately__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isContentPrivacyEnabled])
  {
    if ([*(a1 + 32) isPerformingAuthentication])
    {
      v2 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 32) logIdentifier];
        v7 = 138543362;
        v8 = v3;
        _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Lock immediately requested, cancelling active user authentication.", &v7, 0xCu);
      }

      [*(a1 + 32) _cancelAuthentication];
    }

    else if (([*(a1 + 32) isLocked] & 1) == 0)
    {
      [*(a1 + 32) _cancelDelayedLockIfNeededWithReason:@"locking immediately requested"];
      v6 = *(a1 + 32);

      [v6 performChanges:&__block_literal_global_293];
    }
  }

  else
  {
    v4 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) logIdentifier];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Ignoring request to lock immediately, as the content privacy pref is disabled.", &v7, 0xCu);
    }
  }
}

- (void)_lockOrCancelAuthenticationIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  shouldLockAfterDelayWhenLeavingViewHierarchy = [(PXContentPrivacyController *)self shouldLockAfterDelayWhenLeavingViewHierarchy];
  v4 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    v6 = logIdentifier;
    v7 = @"immediately";
    if (shouldLockAfterDelayWhenLeavingViewHierarchy)
    {
      v7 = @"after delay";
    }

    v8 = 138543618;
    v9 = logIdentifier;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: View Controller leaving view hierarchy, locking privacy controller %{public}@, if unlocked, or cancelling authentication.", &v8, 0x16u);
  }

  if (shouldLockAfterDelayWhenLeavingViewHierarchy)
  {
    [(PXContentPrivacyController *)self scheduleDelayedLock];
  }

  else
  {
    [(PXContentPrivacyController *)self lockImmediately];
  }
}

- (void)setLocked:(BOOL)locked
{
  if (self->_locked != locked)
  {
    self->_locked = locked;
    [(PXContentPrivacyController *)self signalChange:1];
  }
}

- (void)_cancelAuthentication
{
  v13 = *MEMORY[0x1E69E9840];
  currentAuthenticationContext = [(PXContentPrivacyController *)self currentAuthenticationContext];

  currentAuthenticationContext3 = PLContentPrivacyUIGetLog();
  v5 = os_log_type_enabled(currentAuthenticationContext3, OS_LOG_TYPE_DEFAULT);
  if (currentAuthenticationContext)
  {
    if (v5)
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      currentAuthenticationContext2 = [(PXContentPrivacyController *)self currentAuthenticationContext];
      v9 = 138543618;
      v10 = logIdentifier;
      v11 = 2112;
      v12 = currentAuthenticationContext2;
      _os_log_impl(&dword_1A3C1C000, currentAuthenticationContext3, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Cancelling current authentication request: %@", &v9, 0x16u);
    }

    currentAuthenticationContext3 = [(PXContentPrivacyController *)self currentAuthenticationContext];
    [currentAuthenticationContext3 invalidate];
  }

  else if (v5)
  {
    logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
    v9 = 138543362;
    v10 = logIdentifier2;
    _os_log_impl(&dword_1A3C1C000, currentAuthenticationContext3, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Received request to cancel authentication, but there wasn't an active authentication request.", &v9, 0xCu);
  }
}

- (BOOL)isPerformingAuthentication
{
  currentAuthenticationContext = [(PXContentPrivacyController *)self currentAuthenticationContext];
  v3 = currentAuthenticationContext != 0;

  return v3;
}

- (void)setAuthenticationAttemptDidFailOrWasCancelled:(BOOL)cancelled
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_authenticationAttemptDidFailOrWasCancelled != cancelled)
  {
    cancelledCopy = cancelled;
    v5 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      v7 = @"NO";
      if (cancelledCopy)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v9 = 138543618;
      v10 = logIdentifier;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Setting 'authentication did fail or cancelled' flag to %@", &v9, 0x16u);
    }

    self->_authenticationAttemptDidFailOrWasCancelled = cancelledCopy;
    [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
  }
}

- (void)setWillPerformAuthenticationAutomatically:(BOOL)automatically
{
  v12 = *MEMORY[0x1E69E9840];
  willPerformAuthenticationAutomatically = self->_willPerformAuthenticationAutomatically;
  if (willPerformAuthenticationAutomatically != automatically)
  {
    automaticallyCopy = automatically;
    self->_willPerformAuthenticationAutomatically = automatically;
    [(PXContentPrivacyController *)self signalChange:8];
    authenticationStack = [(PXContentPrivacyController *)self authenticationStack];
    v7 = [authenticationStack count];

    if (v7)
    {
      if (![(PXContentPrivacyController *)self hasPerformedAuthenticationInStack]&& !willPerformAuthenticationAutomatically && automaticallyCopy)
      {
        v8 = PLContentPrivacyUIGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
          v10 = 138543362;
          v11 = logIdentifier;
          _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: While in privacy sensitive area, we changed authentication type to one that should automatically attempt authentication. Authenticating...", &v10, 0xCu);
        }

        [(PXContentPrivacyController *)self _performUserAuthenticationIfNeededAfterForegrounding];
      }
    }
  }
}

- (void)setAutomaticAuthenticationBehavior:(unint64_t)behavior
{
  if (self->_automaticAuthenticationBehavior != behavior)
  {
    self->_automaticAuthenticationBehavior = behavior;
    [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
  }
}

- (void)_updateWillPerformAuthenticationAutomatically
{
  shouldPerformAuthenticationUponAppearing = [(PXContentPrivacyController *)self shouldPerformAuthenticationUponAppearing];
  authenticationAttemptDidFailOrWasCancelled = [(PXContentPrivacyController *)self authenticationAttemptDidFailOrWasCancelled];
  shouldOnlyPerformAutomaticAuthenticationOnceInStack = [(PXContentPrivacyController *)self shouldOnlyPerformAutomaticAuthenticationOnceInStack];
  if (shouldOnlyPerformAutomaticAuthenticationOnceInStack)
  {
    LOBYTE(shouldOnlyPerformAutomaticAuthenticationOnceInStack) = [(PXContentPrivacyController *)self hasPerformedAuthenticationInStack];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PXContentPrivacyController__updateWillPerformAuthenticationAutomatically__block_invoke;
  v6[3] = &__block_descriptor_33_e71_v16__0__PXContentPrivacyController_PXMutableContentPrivacyController__8l;
  v7 = shouldPerformAuthenticationUponAppearing ^ (shouldPerformAuthenticationUponAppearing && (authenticationAttemptDidFailOrWasCancelled || shouldOnlyPerformAutomaticAuthenticationOnceInStack));
  [(PXContentPrivacyController *)self performChanges:v6];
}

- (void)setTestingOverride_authenticationType:(id)type
{
  typeCopy = type;
  v5 = self->_testingOverride_authenticationType;
  v6 = v5;
  if (v5 == typeCopy)
  {
  }

  else
  {
    v7 = [(NSNumber *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_testingOverride_authenticationType, type);
      [(PXContentPrivacyController *)self _updateAuthenticationType];
      [(PXContentPrivacyController *)self _updateContentPrivacyEnabled];
      [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
    }
  }
}

- (void)_performDelayedAuthenticationTypeUpdate
{
  [(PXContentPrivacyController *)self _updateAuthenticationType];
  [(PXContentPrivacyController *)self _updateContentPrivacyEnabled];

  [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
}

- (void)setAuthenticationType:(int64_t)type
{
  if (self->_authenticationType != type)
  {
    self->_authenticationType = type;
    [(PXContentPrivacyController *)self signalChange:4];
  }
}

- (void)_updateAuthenticationType
{
  v3 = [(PXContentPrivacyController *)self _calculateAuthenticationTypeWithForcedUpdate:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PXContentPrivacyController__updateAuthenticationType__block_invoke;
  v4[3] = &__block_descriptor_40_e71_v16__0__PXContentPrivacyController_PXMutableContentPrivacyController__8l;
  v4[4] = v3;
  [(PXContentPrivacyController *)self performChanges:v4];
}

- (void)updateAuthenticationTypeImmediately
{
  v3 = [(PXContentPrivacyController *)self _calculateAuthenticationTypeWithForcedUpdate:1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__PXContentPrivacyController_updateAuthenticationTypeImmediately__block_invoke;
  v4[3] = &__block_descriptor_40_e71_v16__0__PXContentPrivacyController_PXMutableContentPrivacyController__8l;
  v4[4] = v3;
  [(PXContentPrivacyController *)self performChanges:v4];
}

- (int64_t)_calculateAuthenticationTypeWithForcedUpdate:(BOOL)update
{
  updateCopy = update;
  v19 = *MEMORY[0x1E69E9840];
  if (PFProcessIsLaunchedToExecuteTests())
  {
    testingOverride_authenticationType = [(PXContentPrivacyController *)self testingOverride_authenticationType];

    if (testingOverride_authenticationType)
    {
      testingOverride_authenticationType2 = [(PXContentPrivacyController *)self testingOverride_authenticationType];
      unsignedLongValue = [testingOverride_authenticationType2 unsignedLongValue];
LABEL_10:
      v11 = unsignedLongValue;

      return v11;
    }
  }

  v8 = +[PXContentPrivacySettings sharedInstance];
  simulatedAuthenticationType = [v8 simulatedAuthenticationType];

  if (simulatedAuthenticationType > 4)
  {
    if (simulatedAuthenticationType == 5)
    {
      simulatedAuthenticationType = 6;
      goto LABEL_16;
    }

    if (simulatedAuthenticationType != 6)
    {
      goto LABEL_14;
    }

    simulatedAuthenticationType = 7;
  }

  else if ((simulatedAuthenticationType - 2) >= 3)
  {
    if (!simulatedAuthenticationType)
    {
      if (updateCopy)
      {
        authenticationTypeObserver = [(PXContentPrivacyController *)self authenticationTypeObserver];
        [authenticationTypeObserver updateAuthenticationTypeImmediately];
      }

      testingOverride_authenticationType2 = [(PXContentPrivacyController *)self authenticationTypeObserver];
      unsignedLongValue = [testingOverride_authenticationType2 authenticationType];
      goto LABEL_10;
    }

LABEL_14:
    simulatedAuthenticationType = 1;
  }

LABEL_16:
  v13 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    v15 = 138543618;
    v16 = logIdentifier;
    v17 = 2048;
    v18 = simulatedAuthenticationType;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Return SIMULATED authentication type: %ti", &v15, 0x16u);
  }

  return simulatedAuthenticationType;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXSystemAuthenticationTypeObserverContext == context)
  {
    [(PXContentPrivacyController *)self _updateAuthenticationType];
    [(PXContentPrivacyController *)self _updateContentPrivacyEnabled];

    [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
  }
}

- (void)performUserAuthenticationIfNeededFromContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentPrivacyController.m" lineNumber:801 description:@"Provided context for user authentication must not be nil"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![contextCopy canPerformAuthentication])
  {
    authenticationTitle = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(authenticationTitle, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      v11 = 138543362;
      v12 = logIdentifier;
      _os_log_impl(&dword_1A3C1C000, authenticationTitle, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Context reported that it cannot perform authentication. Skipping.", &v11, 0xCu);
    }
  }

  else
  {
    authenticationTitle = [contextCopy authenticationTitle];
    v7 = PXLocalizedStringFromTable(@"PXContentPrivacyAuthenticationPasscodeTitle", @"PhotosUICore");
    passcodeAuthenticationReason = [contextCopy passcodeAuthenticationReason];
    [(PXContentPrivacyController *)self performUserAuthenticationIfNeededWithTitle:authenticationTitle passcodeTitle:v7 passcodeSubtitle:passcodeAuthenticationReason completion:0];
  }
}

- (void)_performUserAuthenticationIfNeededAfterForegrounding
{
  authenticationStack = [(PXContentPrivacyController *)self authenticationStack];
  v4 = [authenticationStack count];

  if (v4)
  {
    shouldPerformAuthenticationUponAppearing = [(PXContentPrivacyController *)self shouldPerformAuthenticationUponAppearing];
    if ([(PXContentPrivacyController *)self shouldLockAfterDelayWhenLeavingViewHierarchy])
    {
      [(PXContentPrivacyController *)self cancelDelayedLockIfNeeded];
    }

    if (shouldPerformAuthenticationUponAppearing)
    {
      [(PXContentPrivacyController *)self setAuthenticationAttemptDidFailOrWasCancelled:0];
      authenticationStack2 = [(PXContentPrivacyController *)self authenticationStack];
      lastObject = [authenticationStack2 lastObject];

      [(PXContentPrivacyController *)self performUserAuthenticationIfNeededFromContext:lastObject];
    }
  }
}

- (void)viewDidDisappearForAuthenticationContext:(id)context withNavigationState:(unint64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [(PXContentPrivacyController *)self _updateCachedAuthenticationStackCount];
  v7 = PXContentPrivacyDescriptionFromAuthenticationContext(contextCopy);
  cachedAuthenticationStackCount = [(PXContentPrivacyController *)self cachedAuthenticationStackCount];
  v9 = PLContentPrivacyUIGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v10)
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      *v20 = 138543618;
      *&v20[4] = logIdentifier;
      *&v20[12] = 2114;
      *&v20[14] = v7;
      v12 = "PrivacyController [%{public}@]: Context %{public}@ did disappear, but is still top of navigation hierarchy. Likely a tab switch of app hide. Removing context from top anyway.";
LABEL_7:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v12, v20, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (state == 1)
  {
    if (v10)
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      *v20 = 138543618;
      *&v20[4] = logIdentifier;
      *&v20[12] = 2114;
      *&v20[14] = v7;
      v12 = "PrivacyController [%{public}@]: Context %{public}@ did disappear, but is still within navigation hierarchy. Likely pushing into navigation hierarchy.";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if (v10)
  {
    logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
    *v20 = 138543618;
    *&v20[4] = logIdentifier2;
    *&v20[12] = 2112;
    *&v20[14] = v7;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Context did disappear from navigation hierarchy: %@", v20, 0x16u);
  }

  [(PXContentPrivacyController *)self removeContextFromStack:contextCopy];
LABEL_12:
  v14 = [(PXContentPrivacyController *)self authenticationStack:*v20];
  v15 = [v14 count];

  if (state != 1)
  {
    v16 = v15 || cachedAuthenticationStackCount == 0;
    v17 = !v16;
    if (state == 2 || v17)
    {
      v18 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier3 = [(PXContentPrivacyController *)self logIdentifier];
        *v20 = 138543362;
        *&v20[4] = logIdentifier3;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: View Controller leaving view hierarchy, locking privacy controller, if unlocked, or cancelling authentication.", v20, 0xCu);
      }

      [(PXContentPrivacyController *)self _lockOrCancelAuthenticationIfNeeded];
    }
  }

  [(PXContentPrivacyController *)self scheduleAuthenticationStackCountUpdate];
}

- (void)viewDidAppearForAuthenticationContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  cachedAuthenticationStackCount = [(PXContentPrivacyController *)self cachedAuthenticationStackCount];
  v6 = PXContentPrivacyDescriptionFromAuthenticationContext(contextCopy);
  v7 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    v13 = 138543618;
    v14 = logIdentifier;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Context did appear: %@", &v13, 0x16u);
  }

  [(PXContentPrivacyController *)self addContextToStack:contextCopy];
  authenticationStack = [(PXContentPrivacyController *)self authenticationStack];
  v10 = [authenticationStack count];

  shouldPerformAuthenticationUponAppearing = [(PXContentPrivacyController *)self shouldPerformAuthenticationUponAppearing];
  if ([(PXContentPrivacyController *)self shouldLockAfterDelayWhenLeavingViewHierarchy])
  {
    [(PXContentPrivacyController *)self cancelDelayedLockIfNeeded];
  }

  if (v10 >= cachedAuthenticationStackCount && shouldPerformAuthenticationUponAppearing)
  {
    [(PXContentPrivacyController *)self performUserAuthenticationIfNeededFromContext:contextCopy];
  }

  [(PXContentPrivacyController *)self scheduleAuthenticationStackCountUpdate];
}

- (void)scheduleAuthenticationStackCountUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PXContentPrivacyController_scheduleAuthenticationStackCountUpdate__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateCachedAuthenticationStackCount
{
  authenticationStack = [(PXContentPrivacyController *)self authenticationStack];
  -[PXContentPrivacyController setCachedAuthenticationStackCount:](self, "setCachedAuthenticationStackCount:", [authenticationStack count]);
}

- (void)resetHasPerformedAuthenticationInStack
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    v5 = 138543362;
    v6 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Resetting 'has performed authentication in stack' flag", &v5, 0xCu);
  }

  [(PXContentPrivacyController *)self setHasPerformedAuthenticationInStack:0];
  [(PXContentPrivacyController *)self _updateWillPerformAuthenticationAutomatically];
}

- (void)clearAuthenticationStack
{
  v2 = *MEMORY[0x1E69E9840];
  [(PXContentPrivacyController *)self authenticationStack];
  objc_claimAutoreleasedReturnValue();
  PXContentPrivacyDescriptionFromAuthenticationContextStack();
}

- (void)removeContextFromStack:(id)stack
{
  v35 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  v5 = PXContentPrivacyDescriptionFromAuthenticationContext(stackCopy);
  authenticationStack = [(PXContentPrivacyController *)self authenticationStack];
  v7 = [authenticationStack indexOfObject:stackCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      authenticationStack2 = [(PXContentPrivacyController *)self authenticationStack];
      v27 = 138543874;
      v28 = logIdentifier;
      v29 = 2112;
      v30 = v5;
      v31 = 2048;
      v32 = [authenticationStack2 count];
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Tried to remove context %@ that doesn't exist in stack. Total: %tu", &v27, 0x20u);
    }
  }

  else
  {
    authenticationStack3 = [(PXContentPrivacyController *)self authenticationStack];
    lastObject = [authenticationStack3 lastObject];

    authenticationStack4 = [(PXContentPrivacyController *)self authenticationStack];
    v14 = authenticationStack4;
    if (lastObject == stackCopy)
    {
      [authenticationStack4 removeLastObject];

      authenticationStack5 = [(PXContentPrivacyController *)self authenticationStack];
      lastObject2 = [authenticationStack5 lastObject];

      v21 = PXContentPrivacyDescriptionFromAuthenticationContext(lastObject2);
      v22 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
        authenticationStack6 = [(PXContentPrivacyController *)self authenticationStack];
        v27 = 138544130;
        v28 = logIdentifier2;
        v29 = 2114;
        v30 = v5;
        v31 = 2114;
        v32 = v21;
        v33 = 2048;
        v34 = [authenticationStack6 count];
        _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Context was popped: %{public}@. Context became current: %{public}@. Total: %tu", &v27, 0x2Au);
      }
    }

    else
    {
      v15 = [authenticationStack4 count] - v7;

      authenticationStack7 = [(PXContentPrivacyController *)self authenticationStack];
      [authenticationStack7 removeObjectsInRange:{v7, v15}];

      lastObject2 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier3 = [(PXContentPrivacyController *)self logIdentifier];
        authenticationStack8 = [(PXContentPrivacyController *)self authenticationStack];
        v27 = 138544130;
        v28 = logIdentifier3;
        v29 = 2114;
        v30 = v5;
        v31 = 2048;
        v32 = v15;
        v33 = 2048;
        v34 = [authenticationStack8 count];
        _os_log_impl(&dword_1A3C1C000, lastObject2, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Context disappeared but was not at the top: %{public}@, popped %tu contexts until it was removed. Total: %tu", &v27, 0x2Au);
      }
    }

    authenticationStack9 = [(PXContentPrivacyController *)self authenticationStack];
    v26 = [authenticationStack9 count];

    if (!v26)
    {
      [(PXContentPrivacyController *)self resetHasPerformedAuthenticationInStack];
      [(PXContentPrivacyController *)self setAuthenticationAttemptDidFailOrWasCancelled:0];
    }

    [(PXContentPrivacyController *)self _logCurrentAuthenticationStack];
  }
}

- (void)addContextToStack:(id)stack
{
  v29 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  v5 = PXContentPrivacyDescriptionFromAuthenticationContext(stackCopy);
  authenticationStack = [(PXContentPrivacyController *)self authenticationStack];
  v7 = [authenticationStack indexOfObject:stackCopy];

  authenticationStack2 = [(PXContentPrivacyController *)self authenticationStack];
  v9 = authenticationStack2;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [authenticationStack2 addObject:stackCopy];

    v10 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      authenticationStack3 = [(PXContentPrivacyController *)self authenticationStack];
      v21 = 138543874;
      v22 = logIdentifier;
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = [authenticationStack3 count];
      v13 = "PrivacyController [%{public}@]: Adding new context: %@. Total: %tu";
LABEL_7:
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, v13, &v21, 0x20u);
    }
  }

  else
  {
    v14 = [authenticationStack2 count] - 1;

    if (v7 == v14)
    {
      v10 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
        authenticationStack3 = [(PXContentPrivacyController *)self authenticationStack];
        v21 = 138543874;
        v22 = logIdentifier;
        v23 = 2112;
        v24 = v5;
        v25 = 2048;
        v26 = [authenticationStack3 count];
        v13 = "PrivacyController [%{public}@]: Context is already at top of stock: %@. Total: %tu";
        goto LABEL_7;
      }
    }

    else
    {
      authenticationStack4 = [(PXContentPrivacyController *)self authenticationStack];
      v16 = v7 + 1;
      v17 = [authenticationStack4 count] - v16;

      authenticationStack5 = [(PXContentPrivacyController *)self authenticationStack];
      [authenticationStack5 removeObjectsInRange:{v16, v17}];

      v10 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
        authenticationStack6 = [(PXContentPrivacyController *)self authenticationStack];
        v21 = 138544130;
        v22 = logIdentifier2;
        v23 = 2112;
        v24 = v5;
        v25 = 2048;
        v26 = v17;
        v27 = 2048;
        v28 = [authenticationStack6 count];
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Context became current: %@, popped %tu contexts. Total: %tu", &v21, 0x2Au);
      }
    }
  }

  [(PXContentPrivacyController *)self _logCurrentAuthenticationStack];
}

- (void)_logCurrentAuthenticationStack
{
  v2 = *MEMORY[0x1E69E9840];
  [(PXContentPrivacyController *)self authenticationStack];
  objc_claimAutoreleasedReturnValue();
  PXContentPrivacyDescriptionFromAuthenticationContextStack();
}

- (void)_stopAutolockTimer
{
  autolockTimer = [(PXContentPrivacyController *)self autolockTimer];

  if (autolockTimer)
  {
    autolockTimer2 = [(PXContentPrivacyController *)self autolockTimer];
    [autolockTimer2 invalidate];

    [(PXContentPrivacyController *)self setAutolockTimer:0];
  }
}

- (void)_startAutolockTimerForReason:(unint64_t)reason resetIfActive:(BOOL)active
{
  activeCopy = active;
  v28 = *MEMORY[0x1E69E9840];
  autolockTimer = [(PXContentPrivacyController *)self autolockTimer];

  if (!autolockTimer)
  {
LABEL_6:
    v11 = @"Explicit";
    if (reason == 1)
    {
      v11 = @"Window Backgrounding";
    }

    if (reason == 2)
    {
      v11 = @"Window Minimizing";
    }

    v8 = v11;
    [(PXContentPrivacyController *)self autolockTimeout];
    v13 = v12;
    v14 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      *buf = 138543874;
      v23 = logIdentifier;
      v24 = 2048;
      v25 = v13;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Starting auto-lock timer for %.1fs (reason = %{public}@)", buf, 0x20u);
    }

    [(PXContentPrivacyController *)self setAutolockReason:reason];
    objc_initWeak(buf, self);
    v16 = MEMORY[0x1E695DFF0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PXContentPrivacyController__startAutolockTimerForReason_resetIfActive___block_invoke;
    v20[3] = &unk_1E7747228;
    objc_copyWeak(&v21, buf);
    v17 = [v16 scheduledTimerWithTimeInterval:0 repeats:v20 block:v13];
    [(PXContentPrivacyController *)self setAutolockTimer:v17];

    autolockTimer2 = [(PXContentPrivacyController *)self autolockTimer];
    [autolockTimer2 setTolerance:1.0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  v8 = PLContentPrivacyUIGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (activeCopy)
  {
    if (v9)
    {
      logIdentifier2 = [(PXContentPrivacyController *)self logIdentifier];
      *buf = 138543362;
      v23 = logIdentifier2;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Resetting auto-lock timer", buf, 0xCu);
    }

    [(PXContentPrivacyController *)self _stopAutolockTimer];
    goto LABEL_6;
  }

  if (v9)
  {
    logIdentifier3 = [(PXContentPrivacyController *)self logIdentifier];
    *buf = 138543362;
    v23 = logIdentifier3;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Auto-lock timer already running, so not resetting it.", buf, 0xCu);
  }

LABEL_13:
}

void __73__PXContentPrivacyController__startAutolockTimerForReason_resetIfActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopAutolockTimer];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _lockWithReasonForLogging:@"Auto locking timer fired."];
}

- (void)_stopObservingApplicationStateChanges
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(PXContentPrivacyController *)self observers];
  v4 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  observers2 = [(PXContentPrivacyController *)self observers];
  [observers2 removeAllObjects];
}

- (void)_lockWithReasonForLogging:(id)logging
{
  v11 = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  if ([(PXContentPrivacyController *)self isContentPrivacyEnabled])
  {
    v5 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      v7 = 138543618;
      v8 = logIdentifier;
      v9 = 2114;
      v10 = loggingCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Setting privacy controller to LOCKED, because: %{public}@", &v7, 0x16u);
    }
  }

  [(PXContentPrivacyController *)self lockImmediately];
}

- (void)hostApplicationDidBecomeActiveFromNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if ([(PXContentPrivacyController *)self isContentPrivacyEnabled])
  {
    v5 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
      name = [notificationCopy name];
      v8 = 138543618;
      v9 = logIdentifier;
      v10 = 2114;
      v11 = name;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: Host application did become active from notification: %{public}@", &v8, 0x16u);
    }

    [(PXContentPrivacyController *)self _performUserAuthenticationIfNeededAfterForegrounding];
  }
}

- (void)hostApplicationWillResignActiveFromNotification:(id)notification
{
  notificationCopy = notification;
  if ([(PXContentPrivacyController *)self isContentPrivacyEnabled]&& ![(PXContentPrivacyController *)self isPerformingAuthentication])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v5 = [processInfo beginActivityWithOptions:0xFFFFFFLL reason:@"Photos Lock Privacy-Sensitive Album"];

    v6 = MEMORY[0x1E696AEC0];
    name = [notificationCopy name];
    v8 = [v6 stringWithFormat:@"Host application resigned active from notification: %@", name];

    [(PXContentPrivacyController *)self _lockWithReasonForLogging:v8];
    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    [processInfo2 endActivity:v5];
  }
}

- (void)applicationWillEnterForeground
{
  if ([(PXContentPrivacyController *)self isContentPrivacyEnabled])
  {

    [(PXContentPrivacyController *)self _performUserAuthenticationIfNeededAfterForegrounding];
  }
}

- (void)applicationDidEnterBackground
{
  if ([(PXContentPrivacyController *)self isContentPrivacyEnabled])
  {

    [(PXContentPrivacyController *)self _lockWithReasonForLogging:@"Application entered background"];
  }
}

- (void)_beginObservingApplicationStateChangesAndSystemEvents
{
  objc_initWeak(location, self);
  if ([(PXContentPrivacyController *)self isRunningInExtension])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v5 = *MEMORY[0x1E69DDBC8];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_3;
    v53[3] = &unk_1E7747200;
    objc_copyWeak(&v54, location);
    v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v53];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
    v9 = *MEMORY[0x1E69DDAB0];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_4;
    v51[3] = &unk_1E7747200;
    objc_copyWeak(&v52, location);
    v10 = [defaultCenter2 addObserverForName:v9 object:0 queue:mainQueue2 usingBlock:v51];

    observers = [(PXContentPrivacyController *)self observers];
    [observers addObject:v6];

    observers2 = [(PXContentPrivacyController *)self observers];
    [observers2 addObject:v10];
    v42 = v6;

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue3 = [MEMORY[0x1E696ADC8] mainQueue];
    v15 = *MEMORY[0x1E696A2D8];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_5;
    v49[3] = &unk_1E7747200;
    objc_copyWeak(&v50, location);
    v16 = [defaultCenter3 addObserverForName:v15 object:0 queue:mainQueue3 usingBlock:v49];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue4 = [MEMORY[0x1E696ADC8] mainQueue];
    v19 = *MEMORY[0x1E696A2C0];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_6;
    v47[3] = &unk_1E7747200;
    objc_copyWeak(&v48, location);
    v20 = [defaultCenter4 addObserverForName:v19 object:0 queue:mainQueue4 usingBlock:v47];

    observers3 = [(PXContentPrivacyController *)self observers];
    [observers3 addObject:v16];

    observers4 = [(PXContentPrivacyController *)self observers];
    [observers4 addObject:v20];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue5 = [MEMORY[0x1E696ADC8] mainQueue];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_7;
    v45[3] = &unk_1E7747200;
    objc_copyWeak(&v46, location);
    v25 = [defaultCenter5 addObserverForName:@"_UIViewServiceHostWillResignActiveNotification" object:0 queue:mainQueue5 usingBlock:v45];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue6 = [MEMORY[0x1E696ADC8] mainQueue];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_8;
    v43[3] = &unk_1E7747200;
    objc_copyWeak(&v44, location);
    v28 = [defaultCenter6 addObserverForName:@"_UIViewServiceHostDidBecomeActiveNotification" object:0 queue:mainQueue6 usingBlock:v43];

    observers5 = [(PXContentPrivacyController *)self observers];
    [observers5 addObject:v25];

    observers6 = [(PXContentPrivacyController *)self observers];
    [observers6 addObject:v28];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    v31 = &v52;
    v32 = &v54;
    v33 = v42;
  }

  else
  {
    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue7 = [MEMORY[0x1E696ADC8] mainQueue];
    v36 = *MEMORY[0x1E69DDAC8];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke;
    v57[3] = &unk_1E7747200;
    v32 = &v58;
    objc_copyWeak(&v58, location);
    v33 = [defaultCenter7 addObserverForName:v36 object:0 queue:mainQueue7 usingBlock:v57];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue8 = [MEMORY[0x1E696ADC8] mainQueue];
    v39 = *MEMORY[0x1E69DE360];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_2;
    v55[3] = &unk_1E7747200;
    v31 = &v56;
    objc_copyWeak(&v56, location);
    v10 = [defaultCenter8 addObserverForName:v39 object:0 queue:mainQueue8 usingBlock:v55];

    observers7 = [(PXContentPrivacyController *)self observers];
    [observers7 addObject:v33];

    observers8 = [(PXContentPrivacyController *)self observers];
    [observers8 addObject:v10];
  }

  objc_destroyWeak(v31);
  objc_destroyWeak(v32);
  objc_destroyWeak(location);
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationDidEnterBackground];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationWillEnterForeground];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostApplicationWillResignActiveFromNotification:v3];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostApplicationDidBecomeActiveFromNotification:v3];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostApplicationWillResignActiveFromNotification:v3];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostApplicationDidBecomeActiveFromNotification:v3];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostApplicationWillResignActiveFromNotification:v3];
}

void __83__PXContentPrivacyController__beginObservingApplicationStateChangesAndSystemEvents__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hostApplicationDidBecomeActiveFromNotification:v3];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(PXContentPrivacyController *)self logIdentifier];
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PrivacyController [%{public}@]: dealloc", buf, 0xCu);
  }

  [(PXContentPrivacyController *)self _stopObservingApplicationStateChanges];
  [(PXContentPrivacyController *)self _stopObservingContentPrivacyPrefs];
  if ([(PXDisplayCollection *)self->_assetCollectionToObserve px_isUserSmartAlbum])
  {
    [(PXContentPrivacyController *)self _stopObservingAssetCollectionChanges];
  }

  v5 = +[PXContentPrivacySettings sharedInstance];
  [v5 removeKeyObserver:self];

  v6.receiver = self;
  v6.super_class = PXContentPrivacyController;
  [(PXContentPrivacyController *)&v6 dealloc];
}

- (PXContentPrivacyController)initWithContentPrivacyEnabledForTesting:(id)testing availableAuthenticationTypeForTesting:(id)forTesting assetCollectionToObserveForTesting:(id)observeForTesting automaticAuthenticationBehaviorForTesting:(unint64_t)behaviorForTesting
{
  testingCopy = testing;
  forTestingCopy = forTesting;
  observeForTestingCopy = observeForTesting;
  if (PFProcessIsLaunchedToExecuteTests())
  {
    v18.receiver = self;
    v18.super_class = PXContentPrivacyController;
    v14 = [(PXContentPrivacyController *)&v18 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_contentPrivacyEnabledNumberForTesting, testing);
      objc_storeStrong(&v15->_testingOverride_authenticationType, forTesting);
      [(PXContentPrivacyController *)v15 commonInitWithLogIdentifier:@"test" automaticAuthenticationBehavior:behaviorForTesting];
      objc_storeStrong(&v15->_assetCollectionToObserve, observeForTesting);
      v15->_automaticAuthenticationBehavior = behaviorForTesting;
      [(PXContentPrivacyController *)v15 _updateAuthenticationType];
      [(PXContentPrivacyController *)v15 _updateContentPrivacyEnabled];
      [(PXContentPrivacyController *)v15 _updateWillPerformAuthenticationAutomatically];
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PXContentPrivacyController)initWithAssetCollectionToObserve:(id)observe logIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  observeCopy = observe;
  v7 = [(PXContentPrivacyController *)self initWithLogIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(PXContentPrivacyController *)v7 setAssetCollectionToObserve:observeCopy];
    px_isUserSmartAlbum = [observeCopy px_isUserSmartAlbum];
    if ([(PXDisplayCollection *)v8->_assetCollectionToObserve px_isUserSmartAlbum])
    {
      [(PXContentPrivacyController *)v8 _beginObservingAssetCollectionChanges];
    }

    if ((v8->_contentPrivacyEnabled & px_isUserSmartAlbum & 1) != 0 && ([observeCopy px_isPrivacySensitiveAlbum] & 1) == 0)
    {
      v10 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        logIdentifier = [(PXContentPrivacyController *)v8 logIdentifier];
        v13 = 138543362;
        v14 = logIdentifier;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "PrivacyController [%{public}@]: Initializing with contentPrivacyEnabled/locked = NO, since this smart album is not currently privacy sensitive", &v13, 0xCu);
      }

      v8->_contentPrivacyEnabled = 0;
      v8->_locked = 0;
    }
  }

  return v8;
}

- (PXContentPrivacyController)initWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7.receiver = self;
  v7.super_class = PXContentPrivacyController;
  v5 = [(PXContentPrivacyController *)&v7 init];
  if (v5)
  {
    -[PXContentPrivacyController commonInitWithLogIdentifier:automaticAuthenticationBehavior:](v5, "commonInitWithLogIdentifier:automaticAuthenticationBehavior:", identifierCopy, [objc_opt_class() automaticAuthenticationBehaviorFromInternalSettings]);
  }

  return v5;
}

- (void)commonInitWithLogIdentifier:(id)identifier automaticAuthenticationBehavior:(unint64_t)behavior
{
  v6 = [identifier copy];
  logIdentifier = self->_logIdentifier;
  self->_logIdentifier = v6;

  if (![(NSString *)self->_logIdentifier length])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v10 = self->_logIdentifier;
    self->_logIdentifier = uUIDString;
  }

  v11 = +[PXSystemAuthenticationTypeObserver sharedObserver];
  authenticationTypeObserver = self->_authenticationTypeObserver;
  self->_authenticationTypeObserver = v11;

  self->_authenticationType = [(PXSystemAuthenticationTypeObserver *)self->_authenticationTypeObserver authenticationType];
  [(PXSystemAuthenticationTypeObserver *)self->_authenticationTypeObserver registerChangeObserver:self context:PXSystemAuthenticationTypeObserverContext];
  _isContentPrivacyPrefEnabled = [(PXContentPrivacyController *)self _isContentPrivacyPrefEnabled];
  self->_contentPrivacyEnabled = _isContentPrivacyPrefEnabled;
  self->_locked = _isContentPrivacyPrefEnabled;
  switch(behavior)
  {
    case 2uLL:
      self->_willPerformAuthenticationAutomatically = 1;
      break;
    case 1uLL:
      PXSystemAuthenticationTypeIsBiometric();
    case 0uLL:
      self->_willPerformAuthenticationAutomatically = 0;
      break;
  }

  v14 = [MEMORY[0x1E695DFA8] set];
  observers = self->_observers;
  self->_observers = v14;

  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  authenticationStack = self->_authenticationStack;
  self->_authenticationStack = v16;

  [(PXContentPrivacyController *)self _beginObservingApplicationStateChangesAndSystemEvents];
  [(PXContentPrivacyController *)self _beginObservingContentPrivacyPrefs];
  v18 = +[PXContentPrivacySettings sharedInstance];
  [v18 addDeferredKeyObserver:self];
}

+ (unint64_t)automaticAuthenticationBehaviorFromInternalSettings
{
  v2 = +[PXContentPrivacySettings sharedInstance];
  authenticationBehaviorUponAppearing = [v2 authenticationBehaviorUponAppearing];

  if (authenticationBehaviorUponAppearing == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (authenticationBehaviorUponAppearing == 2);
  }
}

+ (void)tearDownPrivacyControllersIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  if ([_privacyControllersByKey count])
  {
    [_privacyControllersByKey allValues];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  [_privacyControllersByKey removeAllObjects];
  v2 = _privacyControllersByKey;
  _privacyControllersByKey = 0;
}

+ (unint64_t)lockStateForCollection:(id)collection
{
  v3 = [self privacyControllerForCollection:collection];
  if ([v3 isContentPrivacyEnabled])
  {
    if ([v3 isLocked])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)privacyControllerForCollection:(id)collection
{
  v33 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([collectionCopy px_isPrivacySensitiveAlbum] & 1) == 0 && !objc_msgSend(collectionCopy, "px_isUserSmartAlbum"))
  {
    v12 = 0;
    goto LABEL_19;
  }

  if (!_privacyControllersByKey)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = _privacyControllersByKey;
    _privacyControllersByKey = v6;
  }

  v8 = collectionCopy;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentPrivacyController.m" lineNumber:159 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v26}];
LABEL_24:

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentPrivacyController.m" lineNumber:159 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v26, px_descriptionForAssertionMessage}];

    goto LABEL_24;
  }

LABEL_8:
  assetCollectionSubtype = [v8 assetCollectionSubtype];
  localIdentifier = [v8 localIdentifier];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld_%@", assetCollectionSubtype, localIdentifier];
  v12 = [_privacyControllersByKey objectForKeyedSubscript:v11];
  if (!v12)
  {
    v13 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v11;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "PrivacyController: Creating instance of privacy controller, tracked by key: %@ for asset collection: %@", buf, 0x16u);
    }

    localizedTitle = [v8 localizedTitle];
    v15 = localizedTitle;
    if (localizedTitle)
    {
      title = localizedTitle;
    }

    else
    {
      title = [v8 title];
    }

    v17 = title;

    lowercaseString = [v17 lowercaseString];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v20 = [lowercaseString stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v21 = [v20 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1741150];

    if (![v21 length])
    {
      v22 = v11;

      v21 = v22;
    }

    v12 = [[PXContentPrivacyController alloc] initWithAssetCollectionToObserve:v8 logIdentifier:v21];
    [_privacyControllersByKey setObject:v12 forKeyedSubscript:v11];
  }

LABEL_19:

  return v12;
}

@end