@interface STFamilySettingsManager
+ (BOOL)_updateScreenTimeSettingsForAppAndWebsiteActivityStateTransition:(int64_t)transition managementStateTransition:(int64_t)stateTransition withFamilySettings:(id)settings inContext:(id)context error:(id *)error;
+ (id)_childPresentedContactManagementNotificationForTransition:(int64_t)transition childIsManaged:(BOOL)managed;
+ (id)_notificationForClearingChildContactManagementUserNotification;
+ (id)_notificationForClearingParentContactManagementUserNotificiationAboutChildWithName:(id)name;
+ (id)_parentPresentedContactManagementNotificationForTransition:(int64_t)transition childName:(id)name;
+ (id)_processFamilySettings:(id)settings inContext:(id)context error:(id *)error;
+ (id)_screenTimeManagementNotificationForTransition:(int64_t)transition;
+ (int64_t)_appAndWebsiteActivityStateTransitionFromOldAppAndWebsiteActivityState:(id)state toNewAppAndWebsiteActivityState:(id)activityState;
+ (int64_t)_contactManagementStateTransitionFromOldManagementState:(int64_t)state toNewContactManagementState:(int64_t)managementState;
+ (int64_t)_screenTimeManagementStateTransitionFromOldManagementState:(BOOL)state toNewManagementState:(BOOL)managementState;
+ (void)_postScreenTimeManagementEnabledNotification:(id)notification;
+ (void)_updateScreenTimeEnabledNotificationShownUserDefaultForTransition:(int64_t)transition;
- (STFamilySettingsManager)initWithCapabilities:(id)capabilities persistenceController:(id)controller;
- (id)handleFamilySettings:(id)settings inContext:(id)context;
- (void)_handleApproveNotificationForManageContactsRequest:(id)request;
- (void)_handleDontApproveNotificationForManageContactsRequest:(id)request;
- (void)_performEffectsForProcessSettingsResult:(id)result localUserDSID:(id)d localUserIsParent:(BOOL)parent context:(id)context;
- (void)_postContactManagementNotification:(id)notification notificationIsForParent:(BOOL)parent;
- (void)_updateContactManagementToState:(int64_t)state;
- (void)handleFamilySettingsPayload:(id)payload withCompletion:(id)completion;
- (void)prepareSettingsPayloadsWithCompletion:(id)completion;
- (void)registerFamilyMembers:(id)members;
@end

@implementation STFamilySettingsManager

- (STFamilySettingsManager)initWithCapabilities:(id)capabilities persistenceController:(id)controller
{
  capabilitiesCopy = capabilities;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = STFamilySettingsManager;
  v9 = [(STFamilySettingsManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capabilities, capabilities);
    objc_storeStrong(&v10->_persistenceController, controller);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v10 selector:"_handleApproveNotificationForManageContactsRequest:" name:STUserNotificationAskToManageContactsResponseReceivedApprove object:0];
    [v11 addObserver:v10 selector:"_handleDontApproveNotificationForManageContactsRequest:" name:STUserNotificationAskToManageContactsResponseReceivedDontApprove object:0];
  }

  return v10;
}

- (void)registerFamilyMembers:(id)members
{
  membersCopy = members;
  v5 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registering family members", buf, 2u);
  }

  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = membersCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 isMe] & 1) == 0)
        {
          appleID = [v12 appleID];

          if (appleID)
          {
            appleID2 = [v12 appleID];
            [v6 setObject:v12 forKeyedSubscript:appleID2];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  [(STFamilySettingsManager *)self setFamilyMemberByAppleID:v6];
}

- (void)prepareSettingsPayloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[STFamilySettingsManager prepareSettingsPayloadsWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: \nStarted", buf, 0xCu);
  }

  v6 = os_transaction_create();
  persistenceController = [(STFamilySettingsManager *)self persistenceController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100039E80;
  v10[3] = &unk_1001A3EE0;
  v11 = v6;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  [persistenceController performBackgroundTaskAndWait:v10];
}

- (void)handleFamilySettingsPayload:(id)payload withCompletion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v8 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = payloadCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Handling settings payload: %@", buf, 0xCu);
  }

  payloadType = [payloadCopy payloadType];
  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeFamilySettings"])
  {
    payloadDictionary = [payloadCopy payloadDictionary];
    v11 = [payloadDictionary objectForKeyedSubscript:@"Settings"];

    if ([v11 count])
    {
      v12 = os_transaction_create();
      persistenceController = [(STFamilySettingsManager *)self persistenceController];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10003A970;
      v17[3] = &unk_1001A3F08;
      v18 = v12;
      v19 = payloadCopy;
      selfCopy = self;
      v21 = v11;
      v22 = completionCopy;
      v14 = v12;
      [persistenceController performBackgroundTaskAndWait:v17];
    }

    else
    {
      v16 = +[STLog familySettingsManager];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Settings payload contained no settings, aborting.", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    v15 = +[STLog familySettingsManager];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001164E8();
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)handleFamilySettings:(id)settings inContext:(id)context
{
  settingsCopy = settings;
  contextCopy = context;
  v8 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = [settingsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling (%lu) settings dictionaries", buf, 0xCu);
  }

  v30 = 0;
  v9 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v30];
  v10 = v30;
  if (v9)
  {
    v29 = 0;
    v11 = [STFamilySettingsManager _processFamilySettings:settingsCopy inContext:contextCopy error:&v29];
    v12 = v29;
    if (!v11)
    {
      v24 = +[STLog familyScreenTimeManager];
      v25 = v24;
      if (v12)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1001166F8();
        }

        v26 = [STResult failure:v12];
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Processed family settings: Out of date", buf, 2u);
        }

        v26 = [STResult success:&off_1001B2218];
      }

      v23 = v26;
      goto LABEL_26;
    }

    v13 = +[STLog familySettingsManager];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Processed family settings: Performing effects", buf, 2u);
    }

    dsid = [v9 dsid];
    -[STFamilySettingsManager _performEffectsForProcessSettingsResult:localUserDSID:localUserIsParent:context:](self, "_performEffectsForProcessSettingsResult:localUserDSID:localUserIsParent:context:", v11, dsid, [v9 isParent], contextCopy);

    if ([contextCopy hasChanges])
    {
      v28 = 0;
      v15 = [contextCopy save:&v28];
      v16 = v28;
      if ((v15 & 1) == 0)
      {
        v17 = +[STLog familySettingsManager];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100116690();
        }

        v18 = [STResult failure:v16];
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = [STResult success:&off_1001B2200];
LABEL_21:
    v23 = v18;

LABEL_26:
    goto LABEL_27;
  }

  v19 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100116760();
  }

  v20 = [NSError alloc];
  v21 = STErrorDomain;
  v31 = NSUnderlyingErrorKey;
  v32 = v10;
  v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v12 = [v20 initWithDomain:v21 code:10 userInfo:v22];

  v23 = [STResult failure:v12];
LABEL_27:

  return v23;
}

+ (id)_processFamilySettings:(id)settings inContext:(id)context error:(id *)error
{
  settingsCopy = settings;
  contextCopy = context;
  v8 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing family settings", buf, 2u);
  }

  v9 = [settingsCopy count];
  v10 = [NSMutableDictionary dictionaryWithCapacity:v9];
  v11 = [NSMutableDictionary dictionaryWithCapacity:v9];
  v12 = [NSMutableDictionary dictionaryWithCapacity:v9];
  v13 = [NSMutableDictionary dictionaryWithCapacity:v9];
  v14 = [NSMutableDictionary dictionaryWithCapacity:v9];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = settingsCopy;
  v51 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v51)
  {
    v41 = 0;
    v15 = 0;
    goto LABEL_36;
  }

  v15 = 0;
  v50 = *v58;
  errorCopy = error;
  v53 = v11;
  v54 = v10;
  v48 = v14;
  v49 = v13;
  v52 = v12;
  while (2)
  {
    v16 = 0;
    v17 = v15;
    do
    {
      if (*v58 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v57 + 1) + 8 * v16);
      v56 = v17;
      errorCopy = [STFamilyOrganizationSettings fetchOrCreateWithDictionaryRepresentation:v18 inContext:contextCopy error:&v56, errorCopy];
      v15 = v56;

      if (!errorCopy)
      {
        errorCopy = +[STLog familySettingsManager];
        if (os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR))
        {
          sub_10011680C();
        }

        goto LABEL_35;
      }

      isManaged = [errorCopy isManaged];
      isAppAndWebsiteActivityEnabled = [errorCopy isAppAndWebsiteActivityEnabled];
      contactManagementState = [errorCopy contactManagementState];
      if (([errorCopy updateWithDictionaryRepresentation:v18]& 1) == 0)
      {
        v42 = +[STLog familySettingsManager];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1001167C8(v42);
        }

LABEL_35:
        error = errorCopy;
        v11 = v53;
        v10 = v54;
        v12 = v52;

        v41 = 0;
        goto LABEL_36;
      }

      v23 = [v18 objectForKeyedSubscript:@"user"];
      [v14 setObject:errorCopy forKeyedSubscript:v23];
      isManaged2 = [errorCopy isManaged];
      isAppAndWebsiteActivityEnabled2 = [errorCopy isAppAndWebsiteActivityEnabled];
      contactManagementState2 = [errorCopy contactManagementState];
      v27 = [STFamilySettingsManager _screenTimeManagementStateTransitionFromOldManagementState:isManaged toNewManagementState:isManaged2];
      v28 = [NSNumber numberWithInteger:v27];
      [v54 setObject:v28 forKeyedSubscript:v23];

      v29 = +[STLog familySettingsManager];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = @"None";
        if (v27 == 1)
        {
          v30 = @"Became Managed";
        }

        *buf = 138543619;
        if (v27 == 2)
        {
          v30 = @"Request Unmanged";
        }

        v62 = v30;
        v63 = 2113;
        v64 = v23;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Computed ScreenTime Management State transition: %{public}@ for user: %{private}@", buf, 0x16u);
      }

      v31 = [STFamilySettingsManager _appAndWebsiteActivityStateTransitionFromOldAppAndWebsiteActivityState:isAppAndWebsiteActivityEnabled toNewAppAndWebsiteActivityState:isAppAndWebsiteActivityEnabled2];
      v32 = [NSNumber numberWithInteger:v31];
      [v53 setObject:v32 forKeyedSubscript:v23];

      v33 = +[STLog familySettingsManager];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = @"None";
        if (v31 == 1)
        {
          v34 = @"Enabled";
        }

        *buf = 138543619;
        if (v31 == 2)
        {
          v34 = @"Disabled";
        }

        v62 = v34;
        v63 = 2113;
        v64 = v23;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Computed App & Website Activity State transition: %{public}@ for user: %{private}@", buf, 0x16u);
      }

      v35 = [STFamilySettingsManager _contactManagementStateTransitionFromOldManagementState:contactManagementState toNewContactManagementState:contactManagementState2];
      v36 = [NSNumber numberWithInteger:v35];
      [v52 setObject:v36 forKeyedSubscript:v23];

      v37 = +[STLog familySettingsManager];
      v13 = v49;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = @"None";
        if ((v35 - 1) <= 4)
        {
          v38 = off_1001A3FF0[v35 - 1];
        }

        *buf = 138543619;
        v62 = v38;
        v63 = 2113;
        v64 = v23;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Computed Contact Management State transition: %{public}@ for user: %{private}@", buf, 0x16u);
      }

      user = [errorCopy user];
      givenName = [user givenName];
      [v49 setObject:givenName forKeyedSubscript:v23];

      v16 = v16 + 1;
      v17 = v15;
      v14 = v48;
    }

    while (v51 != v16);
    v41 = 1;
    error = errorCopy;
    v11 = v53;
    v10 = v54;
    v51 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    v12 = v52;
    if (v51)
    {
      continue;
    }

    break;
  }

LABEL_36:

  if (error)
  {
    v43 = v15;
    *error = v15;
  }

  if (v41)
  {
    v44 = [[STProcessFamilySettingsResult alloc] initWithScreenTimeManagementStateTransitionsByDSID:v10 appAndWebsiteActivityStateTransitionsByDSID:v11 contactManagementStateTransitionsByDSID:v12 givenChildNamesByDSID:v13 updatedSettingsByUserDSID:v14];
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (void)_performEffectsForProcessSettingsResult:(id)result localUserDSID:(id)d localUserIsParent:(BOOL)parent context:(id)context
{
  dCopy = d;
  contextCopy = context;
  resultCopy = result;
  v13 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Performing effects for processed settings", buf, 2u);
  }

  screenTimeManagementStateTransitionsByDSID = [resultCopy screenTimeManagementStateTransitionsByDSID];
  appAndWebsiteActivityStateTransitionsByDSID = [resultCopy appAndWebsiteActivityStateTransitionsByDSID];
  contactManagementStateTransitionsByDSID = [resultCopy contactManagementStateTransitionsByDSID];
  givenChildNamesByDSID = [resultCopy givenChildNamesByDSID];
  updatedSettingsByUserDSID = [resultCopy updatedSettingsByUserDSID];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10003B83C;
  v25[3] = &unk_1001A3F30;
  v26 = dCopy;
  v27 = screenTimeManagementStateTransitionsByDSID;
  v28 = contextCopy;
  v29 = appAndWebsiteActivityStateTransitionsByDSID;
  parentCopy = parent;
  v30 = contactManagementStateTransitionsByDSID;
  v31 = givenChildNamesByDSID;
  selfCopy = self;
  v19 = givenChildNamesByDSID;
  v20 = contactManagementStateTransitionsByDSID;
  v21 = appAndWebsiteActivityStateTransitionsByDSID;
  v22 = contextCopy;
  v23 = screenTimeManagementStateTransitionsByDSID;
  v24 = dCopy;
  [updatedSettingsByUserDSID enumerateKeysAndObjectsUsingBlock:v25];
}

+ (int64_t)_screenTimeManagementStateTransitionFromOldManagementState:(BOOL)state toNewManagementState:(BOOL)managementState
{
  v4 = 1;
  if (state && !managementState)
  {
    v4 = 2;
  }

  if (state != managementState)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (id)_screenTimeManagementNotificationForTransition:(int64_t)transition
{
  v4 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"None";
    if (transition == 1)
    {
      v5 = @"Became Managed";
    }

    if (transition == 2)
    {
      v5 = @"Request Unmanged";
    }

    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Generating notification for Screen Time management state transition: %@", &v10, 0xCu);
  }

  if (transition == 1)
  {
    v6 = off_1001A6310;
    goto LABEL_11;
  }

  if (transition == 2)
  {
    v6 = off_1001A6318;
LABEL_11:
    v7 = objc_opt_new();
    v8 = [[NSNotification alloc] initWithName:*v6 object:v7 userInfo:0];
    goto LABEL_13;
  }

  v8 = 0;
  v7 = 0;
LABEL_13:

  return v8;
}

+ (void)_postScreenTimeManagementEnabledNotification:(id)notification
{
  if (notification)
  {
    notificationCopy = notification;
    v4 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Posting Screen Time Management enabled user notification", v6, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotification:notificationCopy];
  }
}

+ (void)_updateScreenTimeEnabledNotificationShownUserDefaultForTransition:(int64_t)transition
{
  v4 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"None";
    if (transition == 1)
    {
      v5 = @"Became Managed";
    }

    if (transition == 2)
    {
      v5 = @"Request Unmanged";
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating Screen Time Enabled 'hasShown' default for Screen Time management state transition: %@", &v9, 0xCu);
  }

  if (transition == 2)
  {
    v8 = +[STLog familySettingsManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing ScreenTimeEnabledNotificationShown default", &v9, 2u);
    }

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 removeObjectForKey:@"ScreenTimeEnabledNotificationShown"];
  }

  else
  {
    if (transition != 1)
    {
      return;
    }

    v6 = +[STLog familySettingsManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting ScreenTimeEnabledNotificationShown default to YES", &v9, 2u);
    }

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setBool:1 forKey:@"ScreenTimeEnabledNotificationShown"];
  }
}

+ (int64_t)_appAndWebsiteActivityStateTransitionFromOldAppAndWebsiteActivityState:(id)state toNewAppAndWebsiteActivityState:(id)activityState
{
  stateCopy = state;
  activityStateCopy = activityState;
  v7 = activityStateCopy;
  if (stateCopy)
  {
    bOOLValue = [stateCopy BOOLValue];
    if (bOOLValue == [v7 BOOLValue])
    {
LABEL_3:
      v9 = 0;
      goto LABEL_8;
    }
  }

  else if (!activityStateCopy)
  {
    goto LABEL_3;
  }

  if ([v7 BOOLValue])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

LABEL_8:

  return v9;
}

+ (BOOL)_updateScreenTimeSettingsForAppAndWebsiteActivityStateTransition:(int64_t)transition managementStateTransition:(int64_t)stateTransition withFamilySettings:(id)settings inContext:(id)context error:(id *)error
{
  settingsCopy = settings;
  if (transition || stateTransition == 1)
  {
    v24 = 0;
    v13 = [STScreenTimeSettings fetchScreenTimeSettingsInContext:context error:&v24];
    v14 = v24;
    v12 = v13 != 0;
    if (v13)
    {
      if (stateTransition == 1)
      {
        isAppAndWebsiteActivityEnabled = [settingsCopy isAppAndWebsiteActivityEnabled];
        if ([isAppAndWebsiteActivityEnabled BOOLValue])
        {
          v16 = 1;
        }

        else
        {
          isAppAndWebsiteActivityEnabled2 = [settingsCopy isAppAndWebsiteActivityEnabled];
          v16 = isAppAndWebsiteActivityEnabled2 == 0;
        }
      }

      else
      {
        v16 = transition == 1;
      }

      v20 = +[STLog familySettingsManager];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = @"NO";
        if (v16)
        {
          v21 = @"YES";
        }

        v22 = v21;
        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating ScreenTimeEnabled setting to: %{public}@", buf, 0xCu);
      }

      [v13 setScreenTimeEnabled:v16];
    }

    else if (error)
    {
      v17 = +[STLog familySettingsManager];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001168DC();
      }

      v18 = v14;
      *error = v14;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (int64_t)_contactManagementStateTransitionFromOldManagementState:(int64_t)state toNewContactManagementState:(int64_t)managementState
{
  if (state == 2)
  {
    if (managementState)
    {
      return managementState == 1;
    }

    else
    {
      return 5;
    }
  }

  else if (state == 1)
  {
    if (managementState >= 3)
    {
      return 0;
    }

    else
    {
      return qword_10013F260[managementState];
    }
  }

  else
  {
    v4 = managementState == 1;
    if (managementState == 2)
    {
      v4 = 4;
    }

    if (state)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }
}

+ (id)_parentPresentedContactManagementNotificationForTransition:(int64_t)transition childName:(id)name
{
  nameCopy = name;
  v6 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if ((transition - 1) > 4)
    {
      v7 = @"None";
    }

    else
    {
      v7 = off_1001A3FF0[transition - 1];
    }

    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Generating parent-presented Contact Management notification for transition: %@", &v13, 0xCu);
  }

  v8 = transition - 1;
  if ((transition - 1) > 4)
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v9 = off_1001A3FC8[v8];
    v10 = [objc_alloc(*off_1001A3FA0[v8]) initWithChildName:nameCopy];
    v11 = [[NSNotification alloc] initWithName:*v9 object:v10 userInfo:0];
  }

  return v11;
}

+ (id)_childPresentedContactManagementNotificationForTransition:(int64_t)transition childIsManaged:(BOOL)managed
{
  managedCopy = managed;
  v6 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if ((transition - 1) > 4)
    {
      v7 = @"None";
    }

    else
    {
      v7 = off_1001A3FF0[transition - 1];
    }

    v8 = @"NO";
    if (managedCopy)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v16 = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Generating child-presented Contact Management notification for transition: %{public}@, childIsManaged: %{public}@", &v16, 0x16u);
  }

  if (managedCopy)
  {
    if ((transition - 1) > 4)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v10 = off_1001A4018[transition - 1];
      v11 = objc_opt_new();
      v12 = [[NSNotification alloc] initWithName:*v10 object:v11 userInfo:0];
    }

    v13 = v12;
    v14 = v13;
  }

  else
  {
    v11 = objc_opt_new();
    v13 = [[NSNotification alloc] initWithName:@"STUserNotificationManagerShouldRemoveNotification" object:v11 userInfo:0];
    v14 = 0;
  }

  return v13;
}

- (void)_postContactManagementNotification:(id)notification notificationIsForParent:(BOOL)parent
{
  parentCopy = parent;
  notificationCopy = notification;
  v7 = notificationCopy;
  if (notificationCopy)
  {
    if (parentCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003C738;
      block[3] = &unk_1001A3020;
      block[4] = self;
      v12 = notificationCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v8 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Posting Contact Management user notification", v10, 2u);
      }

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotification:v7];
    }
  }
}

+ (id)_notificationForClearingParentContactManagementUserNotificiationAboutChildWithName:(id)name
{
  nameCopy = name;
  v4 = [[STAskToManageContactsApprovedResponseReceivedUserNotificationContext alloc] initWithChildName:nameCopy];

  v5 = [[NSNotification alloc] initWithName:@"STUserNotificationManagerShouldRemoveNotification" object:v4 userInfo:0];

  return v5;
}

+ (id)_notificationForClearingChildContactManagementUserNotification
{
  v2 = objc_opt_new();
  v3 = [[NSNotification alloc] initWithName:@"STUserNotificationManagerShouldRemoveNotification" object:v2 userInfo:0];

  return v3;
}

- (void)_updateContactManagementToState:(int64_t)state
{
  persistenceController = [(STFamilySettingsManager *)self persistenceController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003CA28;
  v6[3] = &unk_1001A3F80;
  v6[4] = self;
  v6[5] = state;
  [persistenceController performBackgroundTask:v6];
}

- (void)_handleApproveNotificationForManageContactsRequest:(id)request
{
  v4 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received approve notification for manage contacts request", v5, 2u);
  }

  [(STFamilySettingsManager *)self _updateContactManagementToState:2];
}

- (void)_handleDontApproveNotificationForManageContactsRequest:(id)request
{
  v4 = +[STLog familySettingsManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received don't approve notification for manage contacts request", v5, 2u);
  }

  [(STFamilySettingsManager *)self _updateContactManagementToState:0];
}

@end