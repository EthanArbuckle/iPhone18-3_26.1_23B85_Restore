@interface STCoreAnalyticsManager
+ (id)_createScreenTimePopulationEventWithContext:(id)a3;
- (STCoreAnalyticsManager)initWithPersistenceController:(id)a3;
- (id)_createCommunicationSafetyStateEventWithContext:(id)a3;
- (id)_createRecoveryEmailMismatchEventWithContext:(id)a3;
- (id)_createWebContentFilterEventWithContext:(id)a3;
- (void)startSendingEvents;
@end

@implementation STCoreAnalyticsManager

- (STCoreAnalyticsManager)initWithPersistenceController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = STCoreAnalyticsManager;
  v6 = [(STCoreAnalyticsManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, a3);
    v8 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.screentime.activity.analytics"];
    backgroundActivity = v7->_backgroundActivity;
    v7->_backgroundActivity = v8;
  }

  return v7;
}

- (void)startSendingEvents
{
  v3 = [(STCoreAnalyticsManager *)self backgroundActivity];
  [v3 setPreregistered:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E3EC;
  v4[3] = &unk_1001A6258;
  v4[4] = self;
  [v3 scheduleWithBlock:v4];
}

+ (id)_createScreenTimePopulationEventWithContext:(id)a3
{
  v19 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:a3 error:&v19];
  v4 = v19;
  if (v3)
  {
    v5 = [STScreenTimePopulationCoreAnalyticsEvent alloc];
    v6 = [v3 screenTimeEnabled];
    v7 = [v3 syncingEnabled];
    v8 = v5;
    v9 = v6;
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
    v7 = 0;
  }

  v17 = [v8 initWithIsScreenTimeEnabled:v9 isShareAcrossDevicesEnabled:v7];

  return v17;
}

- (id)_createCommunicationSafetyStateEventWithContext:(id)a3
{
  v14 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:a3 error:&v14];
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

- (id)_createWebContentFilterEventWithContext:(id)a3
{
  v32 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:a3 error:&v32];
  v4 = v32;
  if (v3)
  {
    v5 = [v3 dsid];
    v6 = STBlueprintTypeRestrictions;
    v7 = [v3 managingOrganization];
    v8 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v5 ofType:v6 fromOrganization:v7];

    v31 = v4;
    v9 = [v8 execute:&v31];
    v10 = v31;

    if (v9)
    {
      v11 = [v9 firstObject];
      v12 = v11;
      if (v11 && [v11 enabled])
      {
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = [v12 configurations];
        v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v33 + 1) + 8 * i);
              v20 = [v19 type];
              v21 = [v20 isEqualToString:v16];

              if (v21)
              {
                v22 = v19;
                goto LABEL_18;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          v24 = [v22 cemConfiguration];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v24 payloadUseContentFilter];
            v23 = [v25 BOOLValue];
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v4 = v10;
  }

  else
  {
    v23 = 0;
  }

  v26 = [[STWebContentFilterCoreAnalyticsEvent alloc] initWithWebContentFilterEnabled:v23];

  return v26;
}

- (id)_createRecoveryEmailMismatchEventWithContext:(id)a3
{
  v21 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:a3 error:&v21];
  v4 = v21;
  if (v3)
  {
    if (([v3 isManaged] & 1) == 0)
    {
      v5 = [v3 effectivePasscode];
      if (!v5)
      {
        goto LABEL_10;
      }

      v14 = [v3 effectiveRecoveryAltDSID];

      if (v14)
      {
        v15 = objc_opt_new();
        v16 = [v15 aa_primaryAppleAccount];
        v17 = [v16 aa_altDSID];
        v18 = [v3 effectiveRecoveryAltDSID];
        v19 = [v18 isEqualToString:v17];

        v5 = v19 ^ 1;
        goto LABEL_10;
      }
    }

    v5 = 0;
LABEL_10:
    v13 = [[STRecoveryEmailMismatchCoreAnalyticsEvent alloc] initWithRecoveryEmailMismatched:v5];
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