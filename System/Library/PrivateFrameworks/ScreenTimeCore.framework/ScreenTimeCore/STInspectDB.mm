@interface STInspectDB
- (BOOL)runWithOptions:(id)a3;
- (id)_convertDateToString:(id)a3;
- (id)_fetchBlueprints:(id)a3;
- (id)_fetchCommunicationPoliciesMatchingAppleID:(id)a3;
- (id)_fetchFamilySettingsMatchingAppleID:(id)a3;
- (id)_schemaData;
- (id)_usageData:(id)a3;
- (id)options;
@end

@implementation STInspectDB

- (id)options
{
  v2 = objc_opt_new();
  [v2 setLongName:@"verbose"];
  [v2 setShortName:@"v"];
  [v2 setShortEnglishDescription:@"verbose inspection"];
  [v2 setParameterCount:0];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)runWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 dictionaryWithOptionsAndValues];
  [v4 finishArguments];

  v6 = [v5 objectForKeyedSubscript:@"verbose"];
  byte_1000157B8 = v6 != 0;

  v7 = +[STAdminPersistenceController sharedController];
  v8 = [v7 persistentContainer];

  if (!v8)
  {
    sub_100007B94();
  }

  v9 = [v8 newBackgroundContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001F40;
  v11[3] = &unk_1000103C0;
  v11[4] = self;
  [v9 performBlockAndWait:v11];

  return 1;
}

- (id)_schemaData
{
  v3 = &NSLog_ptr;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[STCoreUser fetchRequestMatchingLocalUser];
  v62 = 0;
  v6 = [v5 execute:&v62];
  v7 = v62;
  v8 = 0;
  if (!v7)
  {
    v53 = v5;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v52 = v6;
    obj = v6;
    v57 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v57)
    {
      v55 = *v59;
      v56 = v4;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v59 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v58 + 1) + 8 * i);
          v11 = objc_alloc_init(v3[104]);
          v12 = +[NSBundle mainBundle];
          v13 = [v12 bundleIdentifier];

          v14 = [v10 givenName];
          v15 = [v10 familyName];
          v16 = [NSString stringWithFormat:@"%@ %@", v14, v15];
          [v11 setObject:v16 forKeyedSubscript:@"user"];

          v17 = [v10 dsid];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = @"nil";
          }

          [v11 setObject:v19 forKeyedSubscript:@"identifier"];

          v20 = [v10 altDSID];
          [v11 setObject:v20 forKeyedSubscript:@"alternateIdentifier"];

          v21 = [v10 organizationIdentifier];
          [v11 setObject:v21 forKeyedSubscript:@"organizationIdentifier"];

          [v13 UTF8String];
          if ((os_variant_has_internal_ui() & 1) == 0)
          {
            [v11 setObject:off_100015688 forKeyedSubscript:@"user"];
            [v11 setObject:off_100015688 forKeyedSubscript:@"identifier"];
            [v11 setObject:off_100015688 forKeyedSubscript:@"alternateIdentifier"];
          }

          v22 = objc_alloc_init(v3[104]);
          v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 screenTimeEnabled]);
          [v22 setObject:v23 forKeyedSubscript:@"screenTimeEnabled"];

          v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isManaged]);
          [v22 setObject:v24 forKeyedSubscript:@"managed"];

          v25 = [v10 isAppAndWebsiteActivityEnabled];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = @"nil";
          }

          [v22 setObject:v27 forKeyedSubscript:@"appAndWebsiteActivity"];

          v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 syncingEnabled]);
          [v22 setObject:v28 forKeyedSubscript:@"cloudSyncingEnabled"];

          v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isEyeReliefEnabled]);
          [v22 setObject:v29 forKeyedSubscript:@"eyeRelief"];

          v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 shareWebUsage]);
          [v22 setObject:v30 forKeyedSubscript:@"shareWebUsage"];

          v31 = [v10 effectivePasscode];
          v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v31 length] != 0);
          [v22 setObject:v32 forKeyedSubscript:@"isPasscodeSet"];

          v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 needsToSetPasscode]);
          [v22 setObject:v33 forKeyedSubscript:@"needsToSetPasscode"];

          v34 = [v10 unmodeledManagingOrganizationSettings];
          [v34 modificationDate];
          v36 = v35 = v3;
          v37 = [(STInspectDB *)self _convertDateToString:v36];

          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = @"none";
          }

          [v22 setObject:v38 forKeyedSubscript:@"settingsModificationDate"];
          v39 = [v10 appleID];
          v40 = [(STInspectDB *)self _fetchCommunicationPoliciesMatchingAppleID:v39];
          [v22 setObject:v40 forKeyedSubscript:@"communicationPolicies"];

          [v11 setObject:v22 forKeyedSubscript:@"settings"];
          v41 = [v10 appleID];
          v42 = [(STInspectDB *)self _fetchFamilySettingsMatchingAppleID:v41];
          [v11 setObject:v42 forKeyedSubscript:@"familySettings"];

          v43 = [v10 appleID];
          v44 = [(STInspectDB *)self _usageData:v43];
          [v11 setObject:v44 forKeyedSubscript:@"aggregateUsage"];

          v45 = [v10 appleID];
          v46 = sub_100003548(v45);
          [v11 setObject:v46 forKeyedSubscript:@"perDeviceState"];

          v47 = [v10 appleID];
          v48 = [(STInspectDB *)self _fetchBlueprints:v47];
          [v11 setObject:v48 forKeyedSubscript:@"blueprints"];

          v3 = v35;
          v49 = [v10 localUserDeviceState];

          if (v49)
          {
            v50 = @"localUser";
          }

          else
          {
            v50 = @"remoteUser";
          }

          v4 = v56;
          [v56 setObject:v11 forKeyedSubscript:v50];
        }

        v57 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v57);
    }

    v8 = v4;
    v7 = 0;
    v5 = v53;
    v6 = v52;
  }

  return v8;
}

- (id)_fetchBlueprints:(id)a3
{
  v4 = [STCoreUser fetchRequestMatchingAppleID:a3];
  v57 = 0;
  v5 = [v4 execute:&v57];
  v6 = v57;
  v44 = 0;
  if (!v6)
  {
    v40 = v4;
    v39 = v5;
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v7 blueprints];
    v44 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v38 = v7;
    obj = [v7 blueprints];
    v45 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v45)
    {
      v42 = *v54;
      v43 = self;
      do
      {
        v9 = 0;
        do
        {
          if (*v54 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v9;
          v10 = *(*(&v53 + 1) + 8 * v9);
          v11 = [v10 configurations];
          v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = v10;
          v13 = [v10 configurations];
          v14 = [v13 countByEnumeratingWithState:&v49 objects:v62 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v50;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v50 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v49 + 1) + 8 * i);
                v19 = [v18 identifier];
                v60[0] = @"identifier";
                v20 = [v18 identifier];
                v60[1] = @"type";
                v61[0] = v20;
                v21 = [v18 type];
                v61[1] = v21;
                v22 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
                [v12 setObject:v22 forKeyedSubscript:v19];
              }

              v15 = [v13 countByEnumeratingWithState:&v49 objects:v62 count:16];
            }

            while (v15);
          }

          v46 = [v47 identifier];
          v23 = [v47 modificationDate];
          v24 = [(STInspectDB *)v43 _convertDateToString:v23];

          v25 = [v47 expiration];
          v26 = [(STInspectDB *)v43 _convertDateToString:v25];

          v27 = [v47 minimumInstallationDate];
          v28 = [(STInspectDB *)v43 _convertDateToString:v27];

          v58[0] = @"identifier";
          v29 = [v47 identifier];
          v59[0] = v29;
          v58[1] = @"type";
          v30 = [v47 type];
          v59[1] = v30;
          v58[2] = @"enabled";
          v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v47 enabled]);
          v32 = v31;
          v33 = @"none";
          if (v26)
          {
            v34 = v26;
          }

          else
          {
            v34 = @"none";
          }

          v59[2] = v31;
          v59[3] = v34;
          v58[3] = @"expiration";
          v58[4] = @"modifiedDate";
          if (v24)
          {
            v35 = v24;
          }

          else
          {
            v35 = @"none";
          }

          if (v28)
          {
            v33 = v28;
          }

          v59[4] = v35;
          v59[5] = v33;
          v58[5] = @"minimumInstallationDate";
          v58[6] = @"configurations";
          v59[6] = v12;
          v36 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:7];
          [v44 setObject:v36 forKeyedSubscript:v46];

          v9 = v48 + 1;
        }

        while ((v48 + 1) != v45);
        v45 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v45);
    }

    v6 = 0;
    v4 = v40;
    v5 = v39;
  }

  return v44;
}

- (id)_usageData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [STCoreUser fetchRequestMatchingAppleID:v3];
  v34 = 0;
  v6 = [v5 execute:&v34];
  v7 = v34;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v28 = v5;
    v29 = v3;
    v27 = v6;
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = +[NSCalendar currentCalendar];
    v11 = +[NSDate date];
    v12 = [v10 dateByAddingUnit:16 value:-6 toDate:v11 options:0];
    v13 = [v10 startOfDayForDate:v12];

    v14 = +[NSDate date];
    v25 = v10;
    v15 = [v10 startOfDayForDate:v14];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v9;
    v16 = [v9 usages];
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [v21 device];

          if (!v22)
          {
            v23 = sub_100001684(v21, v13, v15);

            v4 = v23;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v18);
    }

    v4 = v4;
    v8 = v4;
    v5 = v28;
    v3 = v29;
    v6 = v27;
  }

  return v8;
}

- (id)_fetchCommunicationPoliciesMatchingAppleID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [STCoreUser fetchRequestMatchingAppleID:v3];

  v17 = 0;
  v6 = [v5 execute:&v17];
  v7 = v6;
  v8 = 0;
  if (!v17)
  {
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 communicationPolicy]);
    [v4 setObject:v10 forKeyedSubscript:@"communicationPolicy"];

    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 communicationWhileLimitedPolicy]);
    [v4 setObject:v11 forKeyedSubscript:@"communicationWhileLimitedPolicy"];

    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isCommunicationSafetySendingRestricted]);
    [v4 setObject:v12 forKeyedSubscript:@"communicationSafetySendingRestricted"];

    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isCommunicationSafetyReceivingRestricted]);
    [v4 setObject:v13 forKeyedSubscript:@"communicationSafetyReceivingRestricted"];

    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isCommunicationSafetyNotificationEnabled]);
    [v4 setObject:v14 forKeyedSubscript:@"communicationSafetyNotification"];

    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isCommunicationSafetyAnalyticsEnabled]);
    [v4 setObject:v15 forKeyedSubscript:@"communicationSafetyAnalytics"];

    v8 = v4;
  }

  return v8;
}

- (id)_fetchFamilySettingsMatchingAppleID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [STCoreUser fetchRequestMatchingAppleID:v3];

  v17 = 0;
  v6 = [v5 execute:&v17];
  v7 = v6;
  v8 = 0;
  if (!v17)
  {
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [v9 familyMemberType];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"nil";
    }

    [v4 setObject:v12 forKeyedSubscript:@"memberType"];

    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isParent]);
    [v4 setObject:v13 forKeyedSubscript:@"isParent"];

    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isFamilyOrganizer]);
    [v4 setObject:v14 forKeyedSubscript:@"isFamilyOrganizer"];

    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 canSetUpFamily]);
    [v4 setObject:v15 forKeyedSubscript:@"canSetupFamily"];

    v8 = v4;
  }

  return v8;
}

- (id)_convertDateToString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    v5 = [v4 stringFromDate:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end