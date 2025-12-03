@interface SBAppSuggestionManager
+ (SBAppSuggestionManager)sharedInstance;
- (SBAppSuggestionManager)init;
- (void)_calculateBestSuggestionAndNotifyListeners;
- (void)_createSuggestionSources;
- (void)_deregisterFromProactiveSuggestionNotifications;
- (void)_destroySuggestionSources;
- (void)_evaluateSuggestionUpdates:(id)updates;
- (void)_handleAppUninstall:(id)uninstall;
- (void)_handleInitialSpringBoardLaunch;
- (void)_listenForNotifications;
- (void)_registerForProactiveSuggestionNotifications;
- (void)_screenDidUndim:(id)undim;
- (void)_setContinuitySuggestionUpdatesEnabled:(BOOL)enabled expertCenterSuggestionUpdatesEnabled:(BOOL)updatesEnabled;
- (void)_stopListeningForNotifications;
- (void)bestAppSuggestionChanged:(id)changed;
- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event;
- (void)dealloc;
- (void)disableListeningForUpdatesForReason:(id)reason;
- (void)enableListeningForUpdatesForReason:(id)reason;
- (void)noteActivatingForAppSuggestion:(id)suggestion fromSource:(int64_t)source;
- (void)noteNotActivatingForAppSuggestion:(id)suggestion fromSource:(int64_t)source;
- (void)performWithCurrentSuggestedAppAndApplication:(id)application;
- (void)proactiveSuggestionChanged;
- (void)startFetchingPayloadForAppSuggestion:(id)suggestion;
@end

@implementation SBAppSuggestionManager

+ (SBAppSuggestionManager)sharedInstance
{
  if (sharedInstance_onceToken_37 != -1)
  {
    +[SBAppSuggestionManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_19;

  return v3;
}

- (void)_deregisterFromProactiveSuggestionNotifications
{
  proactiveSuggestionNotificationToken = self->_proactiveSuggestionNotificationToken;
  if (proactiveSuggestionNotificationToken)
  {
    notify_cancel(proactiveSuggestionNotificationToken);
    self->_proactiveSuggestionNotificationToken = 0;
  }
}

- (void)_calculateBestSuggestionAndNotifyListeners
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = self->_currentBestSuggestion;
  currentBestSuggestion = self->_currentBestSuggestion;
  self->_currentBestSuggestion = 0;

  v5 = [(UABestAppSuggestion *)self->_continuityCurrentBestSuggestion type]!= 5 && [(UABestAppSuggestion *)self->_continuityCurrentBestSuggestion type]!= 10;
  currentProactiveBestSuggestion = self->_currentProactiveBestSuggestion;
  if (!self->_continuityCurrentBestSuggestion)
  {
    if (!currentProactiveBestSuggestion)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (currentProactiveBestSuggestion != 0 && !v5)
  {
LABEL_8:
    v7 = [[_SBProactiveAppSuggestion alloc] initWithAppSuggestion:self->_currentProactiveBestSuggestion];
    goto LABEL_9;
  }

  v7 = [[_SBUABestAppSuggestion alloc] initWithAppSuggestion:?];
LABEL_9:
  v8 = self->_currentBestSuggestion;
  self->_currentBestSuggestion = &v7->super;

LABEL_10:
  bundleIdentifier = [(SBBestAppSuggestion *)self->_currentBestSuggestion bundleIdentifier];
  if (bundleIdentifier)
  {
    v10 = +[SBApplicationController sharedInstance];
    v11 = [v10 applicationWithBundleIdentifier:bundleIdentifier];

    if (v11)
    {
      v12 = +[SBIconController sharedIconRepository];
      v13 = [v12 applicationIconForBundleIdentifier:bundleIdentifier];
      if (v13 && ([v12 isIconVisible:v13] & 1) == 0)
      {

        v14 = self->_currentBestSuggestion;
        self->_currentBestSuggestion = 0;

        v11 = 0;
      }
    }

    v15 = self->_currentBestSuggestion;
    if (v15)
    {
      v18 = @"SBNewSuggestedAppKey";
      v19[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_22;
  }

  if (v3 && !self->_currentBestSuggestion)
  {
    v16 = 0;
    v11 = 0;
LABEL_22:
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBSuggestedAppChangedNotification" object:self userInfo:v16];
  }
}

- (void)_registerForProactiveSuggestionNotifications
{
  p_proactiveSuggestionNotificationToken = &self->_proactiveSuggestionNotificationToken;
  if (!self->_proactiveSuggestionNotificationToken)
  {
    uTF8String = [*MEMORY[0x277CEB1C8] UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__SBAppSuggestionManager__registerForProactiveSuggestionNotifications__block_invoke;
    handler[3] = &unk_2783A95E8;
    handler[4] = self;
    notify_register_dispatch(uTF8String, p_proactiveSuggestionNotificationToken, MEMORY[0x277D85CD0], handler);
  }
}

void __40__SBAppSuggestionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBAppSuggestionManager);
  v1 = sharedInstance___sharedInstance_19;
  sharedInstance___sharedInstance_19 = v0;
}

- (SBAppSuggestionManager)init
{
  v8.receiver = self;
  v8.super_class = SBAppSuggestionManager;
  v2 = [(SBAppSuggestionManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(SBAppSuggestionManager *)v2 _createSuggestionSources];
    [(SBAppSuggestionManager *)v3 _listenForNotifications];
    v4 = objc_alloc_init(MEMORY[0x277CEF768]);
    [v4 setIdentifier:@"com.apple.SpringBoard.AppSuggestionManager"];
    [v4 setEventMask:3967];
    [v4 setAttentionLostTimeout:0.0];
    v5 = objc_alloc_init(SBAttentionAwarenessClient);
    idleTouchAwarenessClient = v3->_idleTouchAwarenessClient;
    v3->_idleTouchAwarenessClient = v5;

    [(SBAttentionAwarenessClient *)v3->_idleTouchAwarenessClient setConfiguration:v4];
    [(SBAttentionAwarenessClient *)v3->_idleTouchAwarenessClient setEnabled:1];
    [(SBAttentionAwarenessClient *)v3->_idleTouchAwarenessClient setDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(SBAppSuggestionManager *)self _stopListeningForNotifications];
  [(SBAppSuggestionManager *)self _destroySuggestionSources];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setDelegate:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient invalidate];
  v3.receiver = self;
  v3.super_class = SBAppSuggestionManager;
  [(SBAppSuggestionManager *)&v3 dealloc];
}

- (void)_createSuggestionSources
{
  v3 = objc_alloc_init(MEMORY[0x277D77BA0]);
  continuitySuggestionManager = self->_continuitySuggestionManager;
  self->_continuitySuggestionManager = v3;

  [(UABestAppSuggestionManager *)self->_continuitySuggestionManager setDelegate:self];
  v5 = [objc_alloc(MEMORY[0x277CEB7D8]) initWithConsumerSubType:31];
  proactiveSuggestionClient = self->_proactiveSuggestionClient;
  self->_proactiveSuggestionClient = v5;
}

- (void)_destroySuggestionSources
{
  [(UABestAppSuggestionManager *)self->_continuitySuggestionManager stopListeningForBestAppSuggestions];
  [(UABestAppSuggestionManager *)self->_continuitySuggestionManager setDelegate:0];

  [(SBAppSuggestionManager *)self _deregisterFromProactiveSuggestionNotifications];
}

- (void)_listenForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__screenDidUndim_ name:*MEMORY[0x277D67A38] object:0];
  [defaultCenter addObserver:self selector:sel__screenDidDim_ name:*MEMORY[0x277D67A18] object:0];
  [defaultCenter addObserver:self selector:sel__evaluateSuggestionUpdates_ name:*MEMORY[0x277D67A48] object:0];
  [defaultCenter addObserver:self selector:sel__handleInitialSpringBoardLaunch name:*MEMORY[0x277D76668] object:0];
  [defaultCenter addObserver:self selector:sel__handleAppUninstall_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

- (void)_stopListeningForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D67A38] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D67A18] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D67A48] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76668] object:0];
  [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

- (void)performWithCurrentSuggestedAppAndApplication:(id)application
{
  applicationCopy = application;
  v5 = +[SBApplicationController sharedInstance];
  bundleIdentifier = [(SBBestAppSuggestion *)self->_currentBestSuggestion bundleIdentifier];
  v7 = [v5 applicationWithBundleIdentifier:bundleIdentifier];

  applicationCopy[2](applicationCopy, self->_currentBestSuggestion, v7);
}

- (void)startFetchingPayloadForAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dispatch_get_global_queue(0, 2uLL);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__SBAppSuggestionManager_startFetchingPayloadForAppSuggestion___block_invoke;
    v6[3] = &unk_2783A92D8;
    v6[4] = self;
    v7 = suggestionCopy;
    dispatch_async(v5, v6);
  }
}

- (void)enableListeningForUpdatesForReason:(id)reason
{
  reasonCopy = reason;
  listeningReasons = self->_listeningReasons;
  v8 = reasonCopy;
  if (!listeningReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_listeningReasons;
    self->_listeningReasons = v6;

    reasonCopy = v8;
    listeningReasons = self->_listeningReasons;
  }

  if (([(NSCountedSet *)listeningReasons containsObject:reasonCopy]& 1) == 0)
  {
    [(NSCountedSet *)self->_listeningReasons addObject:v8];
    [(SBAppSuggestionManager *)self _evaluateSuggestionUpdates:0];
  }
}

- (void)disableListeningForUpdatesForReason:(id)reason
{
  reasonCopy = reason;
  if ([(NSCountedSet *)self->_listeningReasons containsObject:?])
  {
    [(NSCountedSet *)self->_listeningReasons removeObject:reasonCopy];
    [(SBAppSuggestionManager *)self _evaluateSuggestionUpdates:0];
  }
}

- (void)_screenDidUndim:(id)undim
{
  undimCopy = undim;
  userInfo = [undimCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D67A10]];

  if (v5)
  {
    intValue = [v5 intValue];
    if (intValue > 0x2F || ((1 << intValue) & 0x8001801002FCLL) == 0)
    {
      self->_screenOnAndLookingForEvent = 1;
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:1];
    }

    else
    {
      self->_screenOnDueToUserEvent = 1;
    }

    [(SBAppSuggestionManager *)self _evaluateSuggestionUpdates:undimCopy];
  }
}

- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event
{
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0, event];
  if (self->_screenOnAndLookingForEvent)
  {
    self->_screenOnAndLookingForEvent = 0;
    v5 = +[SBBacklightController sharedInstance];
    self->_screenOnDueToUserEvent = [v5 screenIsOn];

    [(SBAppSuggestionManager *)self _evaluateSuggestionUpdates:0];
  }
}

- (void)_handleInitialSpringBoardLaunch
{
  v3 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v3 isUILocked];

  if (isUILocked)
  {
    self->_screenOnDueToUserEvent = 1;

    [(SBAppSuggestionManager *)self _evaluateSuggestionUpdates:0];
  }
}

- (void)_evaluateSuggestionUpdates:(id)updates
{
  v8 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v8 isUILocked];
  v5 = self->_screenOnDueToUserEvent || self->_screenOnAndLookingForEvent;
  v6 = [(NSCountedSet *)self->_listeningReasons count];
  screenOnDueToUserEvent = v6 != 0;
  if (!v6 && ((isUILocked ^ 1) & 1) == 0)
  {
    screenOnDueToUserEvent = self->_screenOnDueToUserEvent;
  }

  [(SBAppSuggestionManager *)self _setContinuitySuggestionUpdatesEnabled:screenOnDueToUserEvent expertCenterSuggestionUpdatesEnabled:(screenOnDueToUserEvent | isUILocked & v5) & 1];
}

- (void)_setContinuitySuggestionUpdatesEnabled:(BOOL)enabled expertCenterSuggestionUpdatesEnabled:(BOOL)updatesEnabled
{
  updatesEnabledCopy = updatesEnabled;
  isListeningForContinuitySuggestion = self->_isListeningForContinuitySuggestion;
  isListeningForExpertCenterSuggestion = self->_isListeningForExpertCenterSuggestion;
  if (!enabled || self->_isListeningForContinuitySuggestion)
  {
    v9 = 0;
    if (!enabled && self->_isListeningForContinuitySuggestion)
    {
      v10 = SBLogContinuity();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "No longer listening for handoff app suggestions", v21, 2u);
      }

      [(UABestAppSuggestionManager *)self->_continuitySuggestionManager stopListeningForBestAppSuggestions];
      self->_isListeningForContinuitySuggestion = 0;
      continuityCurrentBestSuggestion = self->_continuityCurrentBestSuggestion;
      self->_continuityCurrentBestSuggestion = 0;

      v9 = 1;
    }
  }

  else
  {
    v8 = SBLogContinuity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Starting to listen for handoff app suggestions", buf, 2u);
    }

    [(UABestAppSuggestionManager *)self->_continuitySuggestionManager startListeningForBestAppSuggestions];
    v9 = 0;
    self->_isListeningForContinuitySuggestion = 1;
  }

  if (updatesEnabledCopy)
  {
    if (!self->_isListeningForExpertCenterSuggestion)
    {
      v12 = SBLogContinuity();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Starting to listen for Duet app suggestions", v20, 2u);
      }

      [(SBAppSuggestionManager *)self _registerForProactiveSuggestionNotifications];
      self->_isListeningForExpertCenterSuggestion = 1;
    }
  }

  else if (self->_isListeningForExpertCenterSuggestion)
  {
    v13 = SBLogContinuity();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "No longer listening for Duet app suggestions", v19, 2u);
    }

    [(SBAppSuggestionManager *)self _deregisterFromProactiveSuggestionNotifications];
    self->_isListeningForExpertCenterSuggestion = 0;
    currentProactiveBestSuggestion = self->_currentProactiveBestSuggestion;
    self->_currentProactiveBestSuggestion = 0;

    v9 = 1;
  }

  v15 = isListeningForContinuitySuggestion || isListeningForExpertCenterSuggestion;
  if (v15)
  {
    if (self->_isListeningForContinuitySuggestion || self->_isListeningForExpertCenterSuggestion)
    {
      goto LABEL_28;
    }

    v16 = MEMORY[0x277D66F80];
  }

  else
  {
    if (!self->_isListeningForContinuitySuggestion && !self->_isListeningForExpertCenterSuggestion)
    {
      goto LABEL_28;
    }

    v16 = MEMORY[0x277D66F78];
  }

  v17 = +[SBEventObserverRegistry sharedInstance];
  [v17 setValue:!v15 forState:*MEMORY[0x277D66FA0]];

  v18 = +[SBEventObserverRegistry sharedInstance];
  [v18 postEventToInterestedObservers:*v16];

LABEL_28:
  if (v9)
  {
    [(SBAppSuggestionManager *)self _calculateBestSuggestionAndNotifyListeners];
  }
}

- (void)noteActivatingForAppSuggestion:(id)suggestion fromSource:(int64_t)source
{
  suggestionCopy = suggestion;
  if (source == -1)
  {
    [SBAppSuggestionManager noteActivatingForAppSuggestion:a2 fromSource:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBAppSuggestionManager *)suggestionCopy noteActivatingForAppSuggestion:source fromSource:?];
  }
}

- (void)noteNotActivatingForAppSuggestion:(id)suggestion fromSource:(int64_t)source
{
  suggestionCopy = suggestion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [SBAppSuggestionManager noteNotActivatingForAppSuggestion:suggestionCopy fromSource:?];
  }
}

- (void)bestAppSuggestionChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBAppSuggestionManager_bestAppSuggestionChanged___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__SBAppSuggestionManager_bestAppSuggestionChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogContinuity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Got handoff app suggestion: %@", &v11, 0xCu);
  }

  if (!*(a1 + 32))
  {
    goto LABEL_10;
  }

  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 restrictionController];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v5 isApplicationIdentifierRestricted:v6];

  if (v7)
  {
    return;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 activityType];
  if ((TUIsCallHandoffActivityType() & 1) == 0)
  {

    goto LABEL_10;
  }

  v10 = TUShouldShowCallHandoff();

  if (v10)
  {
LABEL_10:
    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
    [*(a1 + 40) _calculateBestSuggestionAndNotifyListeners];
  }
}

- (void)_handleAppUninstall:(id)uninstall
{
  v24 = *MEMORY[0x277D85DE8];
  userInfo = [uninstall userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"SBInstalledApplicationsRemovedBundleIDs"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        bundleIdentifier = [(SBBestAppSuggestion *)self->_currentBestSuggestion bundleIdentifier];
        v14 = [v12 isEqualToString:bundleIdentifier];

        if (v14)
        {
          currentBestSuggestion = self->_currentBestSuggestion;
          self->_currentBestSuggestion = 0;

          v9 = 1;
        }

        bundleIdentifier2 = [(UABestAppSuggestion *)self->_continuityCurrentBestSuggestion bundleIdentifier];
        v17 = [v12 isEqualToString:bundleIdentifier2];

        if (v17)
        {
          continuityCurrentBestSuggestion = self->_continuityCurrentBestSuggestion;
          self->_continuityCurrentBestSuggestion = 0;

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);

    if (v9)
    {
      [(SBAppSuggestionManager *)self _calculateBestSuggestionAndNotifyListeners];
    }
  }

  else
  {
  }
}

- (void)proactiveSuggestionChanged
{
  v28 = *MEMORY[0x277D85DE8];
  suggestionLayoutFromCache = [(ATXProactiveSuggestionClient *)self->_proactiveSuggestionClient suggestionLayoutFromCache];
  allSuggestionsInLayout = [suggestionLayoutFromCache allSuggestionsInLayout];
  firstObject = [allSuggestionsInLayout firstObject];

  if (!firstObject)
  {
    goto LABEL_23;
  }

  executableSpecification = [firstObject executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType != 1)
  {

    v8 = SBLogContinuity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBAppSuggestionManager proactiveSuggestionChanged];
    }

    firstObject = 0;
  }

  executableSpecification2 = [firstObject executableSpecification];
  executableObject = [executableSpecification2 executableObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = SBLogContinuity();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBAppSuggestionManager proactiveSuggestionChanged];
    }

    firstObject = 0;
  }

  if (executableObject)
  {
    v12 = +[SBApplicationController sharedInstance];
    v13 = [v12 applicationWithBundleIdentifier:executableObject];
    processState = [v13 processState];
    if ([processState isForeground])
    {

LABEL_14:
      v18 = SBLogContinuity();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SBAppSuggestionManager proactiveSuggestionChanged];
      }

      firstObject = 0;
      goto LABEL_17;
    }

    v15 = +[SBApplicationController sharedInstance];
    restrictionController = [v15 restrictionController];
    v17 = [restrictionController isApplicationIdentifierRestricted:executableObject];

    if (v17)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  v19 = +[SBIconController sharedIconRepository];
  v20 = v19;
  if (executableObject)
  {
    v21 = [v19 applicationIconForBundleIdentifier:executableObject];
    v22 = [v20 isIconVisible:v21];

    if ((v22 & 1) == 0)
    {

      v23 = SBLogContinuity();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [SBAppSuggestionManager proactiveSuggestionChanged];
      }

      firstObject = 0;
    }
  }

LABEL_23:
  v24 = SBLogContinuity();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = firstObject;
    _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_INFO, "Got Proactive app suggestion: %@", &v26, 0xCu);
  }

  currentProactiveBestSuggestion = self->_currentProactiveBestSuggestion;
  self->_currentProactiveBestSuggestion = firstObject;

  [(SBAppSuggestionManager *)self _calculateBestSuggestionAndNotifyListeners];
}

uint64_t __63__SBAppSuggestionManager_startFetchingPayloadForAppSuggestion___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  return [v3 queueFetchOfPayloadForBestAppSuggestion:v4];
}

- (void)noteActivatingForAppSuggestion:(uint64_t)a1 fromSource:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppSuggestionManager.m" lineNumber:379 description:@"we're activating an app for continuity that didn't come from a source we know about"];
}

- (void)noteActivatingForAppSuggestion:(uint64_t)a3 fromSource:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  if ((a3 + 1) > 3)
  {
    v6 = 0x20000000;
  }

  else
  {
    v6 = qword_21F8A7790[a3 + 1];
  }

  v7 = v4;
  [v5 bestAppSuggestionWasLaunched:v7 withInteractionType:v6];
  [*(a2 + 8) removeBestApp:v7 options:&unk_283372760];
}

- (uint64_t)noteNotActivatingForAppSuggestion:(uint64_t)a1 fromSource:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  return [v2 bestAppSuggestionLaunchWasCancelled:v3];
}

@end