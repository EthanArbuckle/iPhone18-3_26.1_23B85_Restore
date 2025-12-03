@interface STCoreAnalyticsManager
+ (id)_createScreenTimePopulationEventWithContext:(id)context;
- (STCoreAnalyticsManager)initWithPersistenceController:(id)controller;
- (id)_createCommunicationSafetyStateEventWithContext:(id)context;
- (id)_createRecoveryEmailMismatchEventWithContext:(id)context;
- (id)_createWebContentFilterEventWithContext:(id)context;
- (void)startSendingEvents;
@end

@implementation STCoreAnalyticsManager

- (STCoreAnalyticsManager)initWithPersistenceController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = STCoreAnalyticsManager;
  v6 = [(STCoreAnalyticsManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, controller);
    v8 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.screentime.activity.analytics"];
    backgroundActivity = v7->_backgroundActivity;
    v7->_backgroundActivity = v8;
  }

  return v7;
}

- (void)startSendingEvents
{
  backgroundActivity = [(STCoreAnalyticsManager *)self backgroundActivity];
  [backgroundActivity setPreregistered:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E3EC;
  v4[3] = &unk_1001A6258;
  v4[4] = self;
  [backgroundActivity scheduleWithBlock:v4];
}

+ (id)_createScreenTimePopulationEventWithContext:(id)context
{
  v19 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:context error:&v19];
  v4 = v19;
  if (v3)
  {
    v5 = [STScreenTimePopulationCoreAnalyticsEvent alloc];
    screenTimeEnabled = [v3 screenTimeEnabled];
    syncingEnabled = [v3 syncingEnabled];
    v8 = v5;
    v9 = screenTimeEnabled;
  }

  else
  {
    v10 = +[STLog coreAnalytics];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001216FC(v4, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = [STScreenTimePopulationCoreAnalyticsEvent alloc];
    v9 = 0;
    syncingEnabled = 0;
  }

  v17 = [v8 initWithIsScreenTimeEnabled:v9 isShareAcrossDevicesEnabled:syncingEnabled];

  return v17;
}

- (id)_createCommunicationSafetyStateEventWithContext:(id)context
{
  v14 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:context error:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [[STCommunicationSafetyStateCoreAnalyticsEvent alloc] initWithCommunicationSafetyEnabled:{objc_msgSend(v3, "isCommunicationSafetyReceivingRestricted")}];
  }

  else
  {
    v6 = +[STLog coreAnalytics];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100121768(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_createWebContentFilterEventWithContext:(id)context
{
  v32 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:context error:&v32];
  v4 = v32;
  if (v3)
  {
    dsid = [v3 dsid];
    v6 = STBlueprintTypeRestrictions;
    managingOrganization = [v3 managingOrganization];
    v8 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:v6 fromOrganization:managingOrganization];

    v31 = v4;
    v9 = [v8 execute:&v31];
    v10 = v31;

    if (v9)
    {
      firstObject = [v9 firstObject];
      v12 = firstObject;
      if (firstObject && [firstObject enabled])
      {
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        configurations = [v12 configurations];
        v14 = [configurations countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v14)
        {
          v15 = v14;
          v28 = v12;
          v29 = v10;
          v30 = v8;
          v16 = STBlueprintConfigurationTypeSystemWebContentFilterBasic;
          v17 = *v34;
          while (2)
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(configurations);
              }

              v19 = *(*(&v33 + 1) + 8 * i);
              type = [v19 type];
              v21 = [type isEqualToString:v16];

              if (v21)
              {
                v22 = v19;
                goto LABEL_18;
              }
            }

            v15 = [configurations countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

          v22 = 0;
LABEL_18:
          v10 = v29;
          v8 = v30;
          v12 = v28;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          cemConfiguration = [v22 cemConfiguration];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            payloadUseContentFilter = [cemConfiguration payloadUseContentFilter];
            bOOLValue = [payloadUseContentFilter BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }
        }

        else
        {
          bOOLValue = 0;
        }
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }

    v4 = v10;
  }

  else
  {
    bOOLValue = 0;
  }

  v26 = [[STWebContentFilterCoreAnalyticsEvent alloc] initWithWebContentFilterEnabled:bOOLValue];

  return v26;
}

- (id)_createRecoveryEmailMismatchEventWithContext:(id)context
{
  v21 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:context error:&v21];
  v4 = v21;
  if (v3)
  {
    if (([v3 isManaged] & 1) == 0)
    {
      effectivePasscode = [v3 effectivePasscode];
      if (!effectivePasscode)
      {
        goto LABEL_10;
      }

      effectiveRecoveryAltDSID = [v3 effectiveRecoveryAltDSID];

      if (effectiveRecoveryAltDSID)
      {
        v15 = objc_opt_new();
        aa_primaryAppleAccount = [v15 aa_primaryAppleAccount];
        aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
        effectiveRecoveryAltDSID2 = [v3 effectiveRecoveryAltDSID];
        v19 = [effectiveRecoveryAltDSID2 isEqualToString:aa_altDSID];

        effectivePasscode = v19 ^ 1;
        goto LABEL_10;
      }
    }

    effectivePasscode = 0;
LABEL_10:
    v13 = [[STRecoveryEmailMismatchCoreAnalyticsEvent alloc] initWithRecoveryEmailMismatched:effectivePasscode];
    goto LABEL_11;
  }

  v6 = +[STLog coreAnalytics];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100121768(v4, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end