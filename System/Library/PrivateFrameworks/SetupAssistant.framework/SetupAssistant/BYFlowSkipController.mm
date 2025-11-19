@interface BYFlowSkipController
+ (BOOL)_shouldObserveChangeFromNetworkSSID:(id *)a3;
+ (id)_actionForFlowSkipIdentifiers:(id)a3;
+ (id)_flowSkipIdentifierFromActionIdentifier:(id)a3;
+ (id)_localizedStringListingFlowSkipIdentifiers:(id)a3;
+ (id)_supportedIdentifiers;
+ (id)flowSkipIdentifiersFromFollowUpAction:(id)a3;
+ (id)sharedInstance;
+ (void)_clearShouldObserveChangeFromNetworkSSID;
+ (void)_setShouldObserveChangeFromNetworkSSID:(id)a3;
- (BOOL)_isBasicFunctionalityEnabled;
- (BOOL)_isPasscodeSet;
- (BYFlowSkipController)init;
- (id)_followUpController;
- (id)_pendingFollowUpItem;
- (id)getFlowSkipIdentifiers;
- (void)_pendingFollowUpItem;
- (void)_persistInitialNetworkSSID;
- (void)_postFollowUpItemForFlowSkipIdentifiers:(id)a3 previousFollowUpItem:(id)a4 forceNotification:(BOOL)a5;
- (void)_registerWiFiObserverActivityWithNeedsActivity:(BOOL)a3 handlerQueue:(id)a4;
- (void)_repostExistingFollowUpItemForcingNotification:(id)a3;
- (void)cancelPendingFlows;
- (void)didCompleteFlow:(id)a3;
- (void)didSkipFlow:(id)a3;
- (void)observeFinishSetupTriggers;
- (void)passcodeDidChange;
- (void)registerActivities;
- (void)revisePendingFollowUpsForcingRepost:(BOOL)a3;
- (void)setBasicFunctionalityEnabled:(BOOL)a3;
- (void)unregisterActivities;
@end

@implementation BYFlowSkipController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[BYFlowSkipController sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __38__BYFlowSkipController_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(BYFlowSkipController);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_followUpController
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_followUpController_doNotAccessDirectly)
  {
    v3 = [objc_alloc(MEMORY[0x1E6997AC8]) initWithClientIdentifier:@"com.apple.purplebuddy"];
    followUpController_doNotAccessDirectly = v2->_followUpController_doNotAccessDirectly;
    v2->_followUpController_doNotAccessDirectly = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_followUpController_doNotAccessDirectly;

  return v5;
}

- (BYFlowSkipController)init
{
  v6.receiver = self;
  v6.super_class = BYFlowSkipController;
  v2 = [(BYFlowSkipController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BYCapabilities);
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;
  }

  return v2;
}

- (void)setBasicFunctionalityEnabled:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  _basicFunctionalityEnabled_doNotAccessDirectly = a3;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = _basicFunctionalityEnabled_doNotAccessDirectly;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Flow skip basic functionality enabled: %d", v7, 8u);
  }

  objc_sync_exit(v4);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isBasicFunctionalityEnabled
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = _basicFunctionalityEnabled_doNotAccessDirectly;
  objc_sync_exit(v2);

  return v3;
}

+ (id)_supportedIdentifiers
{
  if (_supportedIdentifiers_onceToken != -1)
  {
    +[BYFlowSkipController _supportedIdentifiers];
  }

  v3 = _supportedIdentifiers__identifiers;

  return v3;
}

void __45__BYFlowSkipController__supportedIdentifiers__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"siri";
  v5[1] = @"applePay";
  v5[2] = @"appleID";
  v5[3] = @"passcode";
  v5[4] = @"touchID";
  v5[5] = @"faceID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _supportedIdentifiers__identifiers;
  _supportedIdentifiers__identifiers = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)didSkipFlow:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[BYFlowSkipController _supportedIdentifiers];
  v6 = [v5 containsObject:v4];

  if (!v6)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BYFlowSkipController *)v4 didSkipFlow:v7];
    }

    goto LABEL_12;
  }

  if ([(BYFlowSkipController *)self _isBasicFunctionalityEnabled])
  {
    v7 = [(BYFlowSkipController *)self _pendingFollowUpItem];
    v8 = [v7 actions];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v7 actions];
      v11 = [v10 firstObject];
      v12 = [v11 userInfo];
      v13 = [v12 objectForKeyedSubscript:@"flowSkipIdentifiers"];

      if (v13)
      {
        if (([v13 containsObject:v4] & 1) == 0)
        {
          v14 = [v13 arrayByAddingObject:v4];

          v13 = v14;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

    v16[0] = v4;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
LABEL_11:
    [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v13 previousFollowUpItem:v7 forceNotification:0];

LABEL_12:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didCompleteFlow:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[BYFlowSkipController _supportedIdentifiers];
  v6 = [v5 containsObject:v4];

  if (!v6)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BYFlowSkipController *)v4 didSkipFlow:v7];
    }

    goto LABEL_16;
  }

  if ([(BYFlowSkipController *)self _isBasicFunctionalityEnabled])
  {
    v7 = [(BYFlowSkipController *)self _pendingFollowUpItem];
    v8 = [v7 actions];
    v9 = [v8 firstObject];
    v10 = [v9 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"flowSkipIdentifiers"];

    if ([v11 containsObject:v4])
    {
      if (v11)
      {
        v12 = [v11 mutableCopy];
        [v12 removeObject:v4];
        v13 = [v12 copy];

        v11 = v13;
      }

      if ([v11 count])
      {
        [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v11 previousFollowUpItem:v7 forceNotification:0];
      }

      else
      {
        v14 = [(BYFlowSkipController *)self _followUpController];
        v27[0] = @"com.apple.purplebuddy.revisitSkippedSteps";
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
        v24 = 0;
        v16 = [v14 clearPendingFollowUpItemsWithUniqueIdentifiers:v15 error:&v24];
        v17 = v24;

        v18 = _BYLoggingFacility();
        v19 = v18;
        if (v16)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B862F000, v19, OS_LOG_TYPE_DEFAULT, "Cleared obsoleted follow up items", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          if (_BYIsInternalInstall())
          {
            v21 = 0;
            v22 = v17;
          }

          else if (v17)
          {
            v23 = MEMORY[0x1E696AEC0];
            v15 = [v17 domain];
            v22 = [v23 stringWithFormat:@"<Error domain: %@, code %ld>", v15, objc_msgSend(v17, "code")];
            v21 = 1;
          }

          else
          {
            v21 = 0;
            v22 = 0;
          }

          *buf = 138543362;
          v26 = v22;
          _os_log_error_impl(&dword_1B862F000, v19, OS_LOG_TYPE_ERROR, "Failed to clear obsoleted follow up items: %{public}@", buf, 0xCu);
          if (v21)
          {
          }
        }
      }
    }

LABEL_16:
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)cancelPendingFlows
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([(BYFlowSkipController *)self _isBasicFunctionalityEnabled])
  {
    v3 = [(BYFlowSkipController *)self _followUpController];
    v16[0] = @"com.apple.purplebuddy.revisitSkippedSteps";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = 0;
    v5 = [v3 clearPendingFollowUpItemsWithUniqueIdentifiers:v4 error:&v13];
    v6 = v13;

    v7 = _BYLoggingFacility();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Cleared pending follow up items", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (_BYIsInternalInstall())
      {
        v10 = 0;
        v11 = v6;
      }

      else if (v6)
      {
        v12 = MEMORY[0x1E696AEC0];
        v4 = [v6 domain];
        v11 = [v12 stringWithFormat:@"<Error domain: %@, code %ld>", v4, objc_msgSend(v6, "code")];
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *buf = 138543362;
      v15 = v11;
      _os_log_error_impl(&dword_1B862F000, v8, OS_LOG_TYPE_ERROR, "Failed to clear pending follow up items: %{public}@", buf, 0xCu);
      if (v10)
      {
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_pendingFollowUpItem
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(BYFlowSkipController *)self _followUpController];
  v21 = 0;
  v3 = [v2 pendingFollowUpItems:&v21];
  v4 = v21;

  if (v4)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BYFlowSkipController *)v4 _pendingFollowUpItem];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 isEqualToString:@"com.apple.purplebuddy.revisitSkippedSteps"];

        if (v13)
        {
          v14 = v11;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_postFollowUpItemForFlowSkipIdentifiers:(id)a3 previousFollowUpItem:(id)a4 forceNotification:(BOOL)a5
{
  v56 = a5;
  v63[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E6997AD0];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setUniqueIdentifier:@"com.apple.purplebuddy.revisitSkippedSteps"];
  [v10 setGroupIdentifier:*MEMORY[0x1E6997A98]];
  [v10 setTargetBundleIdentifier:*MEMORY[0x1E6997A88]];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FOLLOWUP_TITLE" value:&stru_1F309EFF0 table:@"FollowUp"];
  [v10 setTitle:v12];

  v13 = [(BYFlowSkipController *)self capabilities];
  LODWORD(v12) = [v13 supportsPearl];

  v57 = self;
  if (v12)
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"FOLLOWUP_DETAIL_FACEID";
  }

  else
  {
    v17 = [(BYFlowSkipController *)self capabilities];
    v18 = [v17 mgHasMesa];

    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = v14;
    if (v18)
    {
      v16 = @"FOLLOWUP_DETAIL_TOUCHID";
    }

    else
    {
      v16 = @"FOLLOWUP_DETAIL";
    }
  }

  v19 = [v14 localizedStringForKey:v16 value:&stru_1F309EFF0 table:@"FollowUp"];

  [v10 setInformativeText:v19];
  [v10 setDisplayStyle:0];
  v20 = [v9 userInfo];

  v21 = [v20 objectForKeyedSubscript:@"initialPostDate"];

  if (v21)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v23 = v22;
    [v21 doubleValue];
    v25 = v23 - v24;
  }

  else
  {
    v26 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v21 = [v26 numberWithDouble:?];
    v25 = 0.0;
  }

  v62 = @"initialPostDate";
  v63[0] = v21;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  [v10 setUserInfo:v27];

  v28 = [BYFlowSkipController _actionForFlowSkipIdentifiers:v7];
  v61 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  [v10 setActions:v29];

  if (v25 < [(BYFlowSkipController *)self _timeIntervalForNotifications])
  {
    v53 = v28;
    v54 = v19;
    v29 = objc_alloc_init(MEMORY[0x1E6997AD8]);
    v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"NOTIFICATION_TITLE" value:&stru_1F309EFF0 table:@"FollowUp"];
    [v29 setTitle:v31];

    v32 = [BYFlowSkipController _localizedStringListingFlowSkipIdentifiers:v7];
    v55 = v7;
    v33 = [v7 count];
    v34 = MEMORY[0x1E696AEC0];
    v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v36 = v35;
    if (v33 == 1)
    {
      v37 = @"NOTIFICATION_DETAIL_FLOW";
    }

    else
    {
      v37 = @"NOTIFICATION_DETAIL_FLOWS";
    }

    v38 = [v35 localizedStringForKey:v37 value:&stru_1F309EFF0 table:@"FollowUp"];
    v39 = [v34 localizedStringWithFormat:v38, v32];
    [v29 setInformativeText:v39];

    [v29 setFrequency:{dbl_1B867B180[v25 < -[BYFlowSkipController _timeIntervalForFrequentNotifications](v57, "_timeIntervalForFrequentNotifications")]}];
    [v29 setFirstNotificationDelay:3600.0];
    v40 = [MEMORY[0x1E6997AD8] defaultOptions];
    v41 = [v40 setByAddingObject:*MEMORY[0x1E6997AB8]];

    if (v56)
    {
      v42 = [v41 setByAddingObject:*MEMORY[0x1E6997AB0]];

      v41 = v42;
    }

    [v29 setOptions:v41];
    [v10 setNotification:v29];

    v19 = v54;
    v7 = v55;
    v28 = v53;
    self = v57;
  }

  v43 = [(BYFlowSkipController *)self _followUpController];
  v58 = 0;
  v44 = [v43 postFollowUpItem:v10 error:&v58];
  v45 = v58;

  v46 = _BYLoggingFacility();
  v47 = v46;
  if (v44)
  {
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v10;
      _os_log_impl(&dword_1B862F000, v47, OS_LOG_TYPE_DEFAULT, "Posted new follow up item: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v49 = v19;
    if (_BYIsInternalInstall())
    {
      v50 = 0;
      v51 = v45;
    }

    else if (v45)
    {
      v52 = MEMORY[0x1E696AEC0];
      v29 = [v45 domain];
      v51 = [v52 stringWithFormat:@"<Error domain: %@, code %ld>", v29, objc_msgSend(v45, "code")];
      v50 = 1;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    *buf = 138543362;
    v60 = v51;
    _os_log_error_impl(&dword_1B862F000, v47, OS_LOG_TYPE_ERROR, "Failed to post new follow up item: %{public}@", buf, 0xCu);
    if (v50)
    {
    }

    v19 = v49;
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)_repostExistingFollowUpItemForcingNotification:(id)a3
{
  v8 = a3;
  v4 = [v8 actions];
  v5 = [v4 firstObject];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"flowSkipIdentifiers"];

  if ([v7 count])
  {
    [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v7 previousFollowUpItem:v8 forceNotification:1];
  }
}

+ (id)flowSkipIdentifiersFromFollowUpAction:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [BYFlowSkipController _flowSkipIdentifierFromActionIdentifier:v4];

  if ([v5 isEqualToString:@"everything"])
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"flowSkipIdentifiers"];
  }

  else
  {
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_actionForFlowSkipIdentifiers:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E6997AC0]);
  if ([v3 count] < 2)
  {
    v7 = [v3 firstObject];
    v8 = [BYFlowSkipController _actionIdentifierForFlowSkipIdentifier:v7];
    [v4 setIdentifier:v8];

    v9 = MEMORY[0x1E696AEC0];
    v5 = [v3 firstObject];
    v6 = [v9 stringWithFormat:@"FOLLOWUP_ACTION_LABEL.%@", v5];
  }

  else
  {
    v5 = [BYFlowSkipController _actionIdentifierForFlowSkipIdentifier:@"everything"];
    [v4 setIdentifier:v5];
    v6 = @"FOLLOWUP_ACTION_LABEL_ALL";
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v6 value:&stru_1F309EFF0 table:@"FollowUp"];
  [v4 setLabel:v11];

  v19 = @"flowSkipIdentifiers";
  v20[0] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v4 setUserInfo:v12];

  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = MEMORY[0x1E695DFF8];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=SETUP_FINISH&flow=%@", v13];
  v16 = [v14 URLWithString:v15];
  [v4 setUrl:v16];

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_flowSkipIdentifierFromActionIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 lastObject];

  return v4;
}

- (void)passcodeDidChange
{
  if ([(BYFlowSkipController *)self _isPasscodeSet])
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "A passcode is now set; removing finish setup passcode follow up item", v4, 2u);
    }

    [(BYFlowSkipController *)self didCompleteFlow:@"passcode"];
  }
}

- (BOOL)_isPasscodeSet
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (void)revisePendingFollowUpsForcingRepost:(BOOL)a3
{
  v3 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v5 = [(BYFlowSkipController *)self _pendingFollowUpItem];
  v6 = [v5 actions];
  v7 = [v6 firstObject];
  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"flowSkipIdentifiers"];

  if (![v9 count])
  {
    goto LABEL_44;
  }

  v38 = [v9 mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
  v12 = v11 != 0;
  if (!v11)
  {
    goto LABEL_29;
  }

  v13 = v11;
  v35 = v11 != 0;
  v36 = v3;
  v37 = v9;
  v14 = 0;
  v15 = *v41;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v40 + 1) + 8 * i);
      if ([v17 isEqualToString:@"touchID"])
      {
        v18 = [(BYFlowSkipController *)self capabilities];
        v19 = [v18 canShowTouchIDScreen];
      }

      else if ([v17 isEqualToString:@"faceID"])
      {
        v18 = [(BYFlowSkipController *)self capabilities];
        v19 = [v18 canShowFaceIDScreen];
      }

      else if ([v17 isEqualToString:@"passcode"])
      {
        v18 = [(BYFlowSkipController *)self capabilities];
        v19 = [v18 canShowPasscodeScreen];
      }

      else if ([v17 isEqualToString:@"appleID"])
      {
        v18 = [(BYFlowSkipController *)self capabilities];
        v19 = [v18 canShowAppleIDScreen];
      }

      else if ([v17 isEqualToString:@"applePay"])
      {
        v18 = [(BYFlowSkipController *)self capabilities];
        v19 = [v18 canShowPaymentScreen];
      }

      else
      {
        if (![v17 isEqualToString:@"siri"])
        {
          continue;
        }

        v18 = [(BYFlowSkipController *)self capabilities];
        v19 = [v18 canShowSiriScreen];
      }

      v20 = v19;

      if ((v20 & 1) == 0)
      {
        [v38 removeObject:v17];
        v14 = 1;
      }
    }

    v13 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
  }

  while (v13);

  if ((v14 & 1) == 0)
  {
    v12 = 0;
    v9 = v37;
    v3 = v36;
    if (!v36)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v21 = _BYLoggingFacility();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v10 componentsJoinedByString:@", "];
    *buf = 138543362;
    v46 = v22;
    _os_log_impl(&dword_1B862F000, v21, OS_LOG_TYPE_DEFAULT, "Revising current flow skip identifiers: %{public}@", buf, 0xCu);
  }

  v10 = _BYLoggingFacility();
  v9 = v37;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v38 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v46 = v23;
    _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "New flow skip identifiers: %{public}@", buf, 0xCu);
  }

  v12 = v35;
  v3 = v36;
LABEL_29:

  if (v3)
  {
LABEL_32:
    v24 = _BYLoggingFacility();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v24, OS_LOG_TYPE_DEFAULT, "Forcing a repost of finish setup flows...", buf, 2u);
    }
  }

LABEL_35:
  if ([v38 count])
  {
    if (v12 || v3)
    {
      [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v38 previousFollowUpItem:v5 forceNotification:0];
    }
  }

  else
  {
    v25 = [(BYFlowSkipController *)self _followUpController];
    v44 = @"com.apple.purplebuddy.revisitSkippedSteps";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    v39 = 0;
    v27 = [v25 clearPendingFollowUpItemsWithUniqueIdentifiers:v26 error:&v39];
    v28 = v39;

    v29 = _BYLoggingFacility();
    v30 = v29;
    if (v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v30, OS_LOG_TYPE_DEFAULT, "Cleared obsoleted follow up items", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      if (_BYIsInternalInstall())
      {
        v32 = 0;
        v33 = v28;
      }

      else if (v28)
      {
        v34 = MEMORY[0x1E696AEC0];
        v26 = [v28 domain];
        v33 = [v34 stringWithFormat:@"<Error domain: %@, code %ld>", v26, objc_msgSend(v28, "code")];
        v32 = 1;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *buf = 138543362;
      v46 = v33;
      _os_log_error_impl(&dword_1B862F000, v30, OS_LOG_TYPE_ERROR, "Failed to clear obsoleted follow up items: %{public}@", buf, 0xCu);
      if (v32)
      {
      }
    }
  }

LABEL_44:
  v31 = *MEMORY[0x1E69E9840];
}

+ (id)_localizedStringListingFlowSkipIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:v9 value:&stru_1F309EFF0 table:@"FollowUp"];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)observeFinishSetupTriggers
{
  [(BYFlowSkipController *)self _persistInitialNetworkSSID];

  [(BYFlowSkipController *)self registerActivities];
}

+ (void)_setShouldObserveChangeFromNetworkSSID:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &unk_1F30A7790;
  }

  CFPreferencesSetAppValue(@"PBInitialNetworkSSID", v3, @"com.apple.purplebuddy.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
}

+ (BOOL)_shouldObserveChangeFromNetworkSSID:(id *)a3
{
  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
  v4 = CFPreferencesCopyAppValue(@"PBInitialNetworkSSID", @"com.apple.purplebuddy.notbackedup");
  v5 = v4;
  *a3 = v5;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *a3 = 0;
    }
  }

  return v4 != 0;
}

+ (void)_clearShouldObserveChangeFromNetworkSSID
{
  CFPreferencesSetAppValue(@"PBInitialNetworkSSID", 0, @"com.apple.purplebuddy.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
}

- (void)_persistInitialNetworkSSID
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(BYFlowSkipController *)self _pendingFollowUpItem];
  if (v2)
  {
    v3 = [getWFClientClass() sharedInstance];
    v4 = [v3 interface];
    v5 = [v4 currentNetwork];
    v6 = [v5 ssid];

    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Finish setup observing changes from network SSID: %@", &v9, 0xCu);
    }

    [BYFlowSkipController _setShouldObserveChangeFromNetworkSSID:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_registerWiFiObserverActivityWithNeedsActivity:(BOOL)a3 handlerQueue:(id)a4
{
  v6 = a4;
  v7 = +[BYXPCActivityRegistrar sharedInstance];
  v8 = *MEMORY[0x1E69E9C50];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke;
  v10[3] = &unk_1E7D033E0;
  v13 = a3;
  v11 = v6;
  v12 = self;
  v9 = v6;
  [v7 registerActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver" criteria:v8 handler:v10];
}

void __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_2;
  v7[3] = &unk_1E7D033B8;
  v10 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_2(uint64_t a1)
{
  v1 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = *(a1 + 56);
  if (v32 != 1)
  {
    goto LABEL_8;
  }

  v28 = 0;
  v3 = [BYFlowSkipController _shouldObserveChangeFromNetworkSSID:&v28];
  v1 = v28;
  *(v30 + 24) = v3;
  if (!v3)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Will not monitor for Wi-Fi SSID changes for finish setup", buf, 2u);
    }

    if ((v30[3] & 1) == 0)
    {
LABEL_8:
      v9 = +[BYXPCActivityRegistrar sharedInstance];
      [v9 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver"];

      goto LABEL_17;
    }
  }

  if (*(a1 + 48) == 2)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__5;
    v26 = __Block_byref_object_dispose__5;
    v27 = os_transaction_create();
    v5 = [getWFClientClass() sharedInstance];
    v6 = [v5 interface];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_105;
    v16[3] = &unk_1E7D03390;
    v1 = v1;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v17 = v1;
    v18 = v7;
    v20 = &v29;
    v19 = v8;
    v21 = buf;
    [v6 asyncCurrentNetwork:v16];

    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  v10 = [*(a1 + 40) criteria];
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v11, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  v12 = [*(a1 + 32) _timeIntervalForWifiObserver];
  xpc_dictionary_set_int64(v11, *MEMORY[0x1E69E9CB0], v12);
  if (v10 && xpc_equal(v10, v11))
  {
    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "finish setup wifi observer check-in already had correct criteria";
LABEL_15:
      _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

  else
  {
    [*(a1 + 40) setCriteria:v11];
    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "finish setup wifi observer check-in did set criteria";
      goto LABEL_15;
    }
  }

LABEL_17:
  v15 = _BYLoggingFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v15, OS_LOG_TYPE_DEFAULT, "WiFi Handler Finished", buf, 2u);
  }

  _Block_object_dispose(&v29, 8);
}

void __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_105(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a2 ssid];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v24 = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer initial network ssid %@ current network ssid %@", &v24, 0x16u);
  }

  v6 = [*(a1 + 40) _pendingFollowUpItem];
  if ([v3 length] && (objc_msgSend(*(a1 + 32), "isEqualToString:", v3) & 1) == 0)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer will force notification", &v24, 2u);
    }

    [*(a1 + 40) _repostExistingFollowUpItemForcingNotification:v6];
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_16;
  }

  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"initialPostDate"];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v11 = v10;
  [v9 doubleValue];
  v13 = v11 - v12;
  v14 = _BYLoggingFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v24 = 138412290;
    v25 = v15;
    _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer time interval since initial post %@", &v24, 0xCu);
  }

  if (v13 >= [*(a1 + 40) _timeoutForWifiObserver])
  {
    v16 = _BYLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer beyond timeout", &v24, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
LABEL_16:
    v17 = _BYLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer clearing initial network ssid", &v24, 2u);
    }

    +[BYFlowSkipController _clearShouldObserveChangeFromNetworkSSID];
  }

  v18 = _BYLoggingFacility();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 48) state];
    v24 = 134217984;
    v25 = v19;
    _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer did run. activity state %ld", &v24, 0xCu);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v20 = +[BYXPCActivityRegistrar sharedInstance];
    [v20 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver"];
  }

  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = 0;

  v23 = *MEMORY[0x1E69E9840];
}

- (void)registerActivities
{
  v3 = [(BYFlowSkipController *)self _pendingFollowUpItem];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"initialPostDate"];

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Registering XPC activities for finish setup...", buf, 2u);
  }

  if (registerActivities__onceToken != -1)
  {
    [BYFlowSkipController registerActivities];
  }

  v7 = v5 != 0;
  [(BYFlowSkipController *)self _registerWiFiObserverActivityWithNeedsActivity:v7 handlerQueue:registerActivities__activity_queue];
  v8 = +[BYXPCActivityRegistrar sharedInstance];
  v9 = *MEMORY[0x1E69E9C50];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__BYFlowSkipController_registerActivities__block_invoke_2;
  v13[3] = &unk_1E7D03408;
  v13[4] = self;
  v14 = v7;
  [v8 registerActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.firstreschedule" criteria:v9 handler:v13];

  v10 = +[BYXPCActivityRegistrar sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__BYFlowSkipController_registerActivities__block_invoke_113;
  v11[3] = &unk_1E7D03408;
  v11[4] = self;
  v12 = v7;
  [v10 registerActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.secondreschedule" criteria:v9 handler:v11];
}

uint64_t __42__BYFlowSkipController_registerActivities__block_invoke()
{
  registerActivities__activity_queue = dispatch_queue_create("com.apple.purplebuddy.finishsetup.xpcactivity", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __42__BYFlowSkipController_registerActivities__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = registerActivities__activity_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BYFlowSkipController_registerActivities__block_invoke_3;
  v7[3] = &unk_1E7D033B8;
  v8 = v3;
  v9 = v4;
  v7[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __42__BYFlowSkipController_registerActivities__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 2)
  {
    [*(a1 + 32) revisePendingFollowUpsForcingRepost:1];
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) state];
      v11 = 134217984;
      v12 = v3;
      v4 = "First finish setup reschedule ran; state is now %ld";
      v5 = v2;
      v6 = 12;
LABEL_11:
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, v4, &v11, v6);
    }
  }

  else if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) criteria];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_int64(v7, *MEMORY[0x1E69E9C68], [*(a1 + 32) _timeIntervalForFrequentNotifications]);
    if (v2 && xpc_equal(v2, v7))
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __42__BYFlowSkipController_registerActivities__block_invoke_3_cold_1(v8);
      }
    }

    else
    {
      [*(a1 + 40) setCriteria:v7];
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Updated first finish setup check-in", &v11, 2u);
      }
    }
  }

  else
  {
    v9 = +[BYXPCActivityRegistrar sharedInstance];
    [v9 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.firstreschedule"];

    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v4 = "Unregistered first finish setup reschedule";
      v5 = v2;
      v6 = 2;
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __42__BYFlowSkipController_registerActivities__block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = registerActivities__activity_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BYFlowSkipController_registerActivities__block_invoke_2_114;
  v7[3] = &unk_1E7D033B8;
  v8 = v3;
  v9 = v4;
  v7[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __42__BYFlowSkipController_registerActivities__block_invoke_2_114(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 2)
  {
    [*(a1 + 32) revisePendingFollowUpsForcingRepost:1];
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) state];
      v11 = 134217984;
      v12 = v3;
      v4 = "Second finish setup reschedule ran; state is now %ld";
      v5 = v2;
      v6 = 12;
LABEL_11:
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, v4, &v11, v6);
    }
  }

  else if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) criteria];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_int64(v7, *MEMORY[0x1E69E9C68], [*(a1 + 32) _timeIntervalForNotifications]);
    if (v2 && xpc_equal(v2, v7))
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __42__BYFlowSkipController_registerActivities__block_invoke_2_114_cold_1(v8);
      }
    }

    else
    {
      [*(a1 + 40) setCriteria:v7];
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Updated second finish setup check-in", &v11, 2u);
      }
    }
  }

  else
  {
    v9 = +[BYXPCActivityRegistrar sharedInstance];
    [v9 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.secondreschedule"];

    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v4 = "Unregistered second finish setup reschedule";
      v5 = v2;
      v6 = 2;
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivities
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering XPC activities for finish setup...", v6, 2u);
  }

  v3 = +[BYXPCActivityRegistrar sharedInstance];
  [v3 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.firstreschedule"];

  v4 = +[BYXPCActivityRegistrar sharedInstance];
  [v4 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.secondreschedule"];

  v5 = +[BYXPCActivityRegistrar sharedInstance];
  [v5 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver"];
}

- (id)getFlowSkipIdentifiers
{
  v2 = [(BYFlowSkipController *)self _pendingFollowUpItem];
  v3 = [v2 actions];
  v4 = [v3 firstObject];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"flowSkipIdentifiers"];

  return v6;
}

- (void)didSkipFlow:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Unknown flow skip identifier %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_pendingFollowUpItem
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _BYIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    v2 = [a1 domain];
    a1 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(a1, "code")];
  }

  *buf = 138543362;
  v9 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to get pending follow up items: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end