@interface STDeviceStateCoreDataTransformerComponent
+ (NSDictionary)observationFiltersByTriggerPredicate;
+ (id)_allInstalledAppsForUserDeviceState:(id)a3 inContext:(id)a4;
+ (id)_appFromCoreDataChange:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)_appTombstoneFromCoreDataChange:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)_deviceWithID:(id)a3 associatedUser:(id)a4 inContext:(id)a5;
+ (id)_localDeviceFromPrimitives:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)_validatedDeviceStateChangeTypeFromSecondaryType:(int64_t)a3;
+ (id)_writeDevice:(id)a3 associatedUser:(id)a4 inContext:(id)a5;
+ (id)deviceStateChangeForCoreDataChanges:(id)a3 deviceInformationPrimitives:(id)a4 container:(id)a5 error:(id *)a6;
+ (id)deviceStateChangeForLocalDeviceUsingDeviceInformationPrimitives:(id)a3 persistentContainer:(id)a4;
+ (id)handleDeviceStateChange:(id)a3 deviceInformationPrimitives:(id)a4 container:(id)a5;
+ (int64_t)_devicePlatformFromOSPlatform:(signed __int16)a3;
+ (signed)_osPlatformFromDevicePlatform:(int64_t)a3;
@end

@implementation STDeviceStateCoreDataTransformerComponent

+ (id)deviceStateChangeForCoreDataChanges:(id)a3 deviceInformationPrimitives:(id)a4 container:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 newBackgroundContext];
  v58 = 0;
  v59[0] = &v58;
  v59[1] = 0x3032000000;
  v59[2] = sub_10002A9F8;
  v59[3] = sub_10002AA08;
  v60 = 0;
  v57 = 0;
  v14 = [a1 _localDeviceFromPrimitives:v11 inContext:v13 error:&v57];
  objc_storeStrong(&v60, v57);
  if (v14)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_10002A9F8;
    v55 = sub_10002AA08;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_10002A9F8;
    v49 = sub_10002AA08;
    v50 = objc_opt_new();
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_10002A9F8;
    v43 = sub_10002AA08;
    v44 = objc_opt_new();
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10002AA10;
    v31 = &unk_1001A3AE8;
    v32 = v13;
    v34 = &v58;
    v35 = &v51;
    v33 = v10;
    v36 = &v45;
    v37 = &v39;
    v38 = a1;
    [v32 performBlockAndWait:&v28];
    if (a6)
    {
      *a6 = *(v59[0] + 40);
    }

    if (*(v59[0] + 40))
    {
      v15 = 0;
    }

    else
    {
      v23 = [STDeviceStateChange alloc];
      v24 = [v14 deviceID];
      v25 = [v14 name];
      v26 = [v14 platform];
      v15 = [(STDeviceStateChange *)v23 initWithDeviceID:v24 deviceName:v25 devicePlatform:v26 installedApps:v46[5] removedApps:v40[5] associatedUser:v52[5]];
    }

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(&v51, 8);
  }

  else
  {
    v16 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100114188(v59, v16, v17, v18, v19, v20, v21, v22);
    }

    v15 = 0;
    if (a6)
    {
      *a6 = *(v59[0] + 40);
    }
  }

  _Block_object_dispose(&v58, 8);

  return v15;
}

+ (id)deviceStateChangeForLocalDeviceUsingDeviceInformationPrimitives:(id)a3 persistentContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_10002A9F8;
  v48 = sub_10002AA08;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10002A9F8;
  v42 = sub_10002AA08;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10002A9F8;
  v36 = sub_10002AA08;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10002B120;
  v21 = &unk_1001A3B10;
  v7 = [v6 newBackgroundContext];
  v22 = v7;
  v24 = &v32;
  v25 = &v44;
  v26 = &v38;
  v8 = v5;
  v23 = v8;
  v27 = &v28;
  [v7 performBlockAndWait:&v18];
  if (v29[3])
  {
    v9 = [STDeviceStateChange alloc];
    v10 = [v39[5] deviceID];
    v11 = [v39[5] name];
    v12 = [v39[5] platform];
    v13 = [v39[5] apps];
    v14 = objc_opt_new();
    v15 = [(STDeviceStateChange *)v9 initWithDeviceID:v10 deviceName:v11 devicePlatform:v12 installedApps:v13 removedApps:v14 associatedUser:v45[5]];

    v16 = [STResult success:v15];
  }

  else
  {
    v16 = [STResult failure:v33[5], v18, v19, v20, v21, v22];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v16;
}

+ (id)handleDeviceStateChange:(id)a3 deviceInformationPrimitives:(id)a4 container:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 newBackgroundContext];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002A9F8;
  v25 = sub_10002AA08;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B3CC;
  v16[3] = &unk_1001A36D8;
  v12 = v8;
  v17 = v12;
  v20 = a1;
  v13 = v11;
  v18 = v13;
  v19 = &v21;
  [v13 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

+ (id)_deviceWithID:(id)a3 associatedUser:(id)a4 inContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 dsid];
  v36 = 0;
  v11 = [STCoreUser fetchUserWithDSID:v10 inContext:v9 error:&v36];
  v12 = v36;

  if (v11)
  {
    v13 = [v8 identifier];
    v35 = v12;
    v14 = [STCoreDevice fetchDeviceWithIdentifier:v13 inContext:v9 error:&v35];
    v15 = v35;

    if (v14)
    {
      v16 = +[STUserDeviceState fetchRequest];
      v17 = [NSPredicate predicateWithFormat:@"%K == %@ AND %K == %@", @"user", v11, @"device", v14];
      [v16 setPredicate:v17];

      v34 = v15;
      v18 = [v16 execute:&v34];
      v19 = v34;

      if (v18)
      {
        v33 = v8;
        v20 = [v18 firstObject];
        if (v20)
        {
          v21 = [a1 _allInstalledAppsForUserDeviceState:v20 inContext:v9];
          v32 = v13;
          v22 = [STDevice alloc];
          [v14 name];
          v23 = v31 = v19;
          v24 = -[STDevice initWithID:name:platform:apps:](v22, "initWithID:name:platform:apps:", v33, v23, [a1 _devicePlatformFromOSPlatform:{objc_msgSend(v14, "platform")}], v21);
          v25 = [STResult success:v24];

          v13 = v32;
          v19 = v31;
        }

        else
        {
          v29 = +[STLog coreDataTransformer];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1001143D8();
          }

          v25 = [STResult failure:v19];
        }

        v8 = v33;
      }

      else
      {
        v28 = +[STLog coreDataTransformer];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100114440();
        }

        v25 = [STResult failure:v19];
      }

      v15 = v19;
    }

    else
    {
      v27 = +[STLog coreDataTransformer];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1001144A8();
      }

      v25 = [STResult failure:v15];
    }

    v12 = v15;
  }

  else
  {
    v26 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100114510();
    }

    v25 = [STResult failure:v12];
  }

  return v25;
}

+ (id)_localDeviceFromPrimitives:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v10 = [STUserDeviceState fetchLocalUserDeviceStateInContext:v9 error:&v22];
  v11 = v22;
  v12 = v11;
  if (v10)
  {
    v13 = [a1 _allInstalledAppsForUserDeviceState:v10 inContext:v9];
    v14 = [STDeviceID alloc];
    v15 = [v8 deviceUUID];
    v16 = [(STDeviceID *)v14 initWithIdentifier:v15];

    v17 = [STDevice alloc];
    v18 = [v8 deviceName];
    v19 = [(STDevice *)v17 initWithID:v16 name:v18 platform:+[STDevice apps:"currentPlatform"], v13];
  }

  else if (a5)
  {
    v20 = v11;
    v19 = 0;
    *a5 = v12;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_allInstalledAppsForUserDeviceState:(id)a3 inContext:(id)a4
{
  v4 = a3;
  v25 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v4;
  obj = [v4 installedApps];
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v26 = *v29;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [v6 bundleIdentifier];
        v8 = [v6 distributorID];
        v9 = [v6 adamID];
        if (v9)
        {
          v10 = [v6 adamID];
          v11 = [v10 unsignedLongLongValue];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v6 versionIdentifier];
        if (v12)
        {
          v13 = [v6 versionIdentifier];
          v14 = [v13 unsignedLongLongValue];
        }

        else
        {
          v14 = 0;
        }

        v15 = [v6 betaVersionIdentifier];
        if (v15)
        {
          v16 = [v6 betaVersionIdentifier];
          v17 = [v16 unsignedLongLongValue];
        }

        else
        {
          v17 = 0;
        }

        if (v7)
        {
          v18 = [STAppInformation alloc];
          v19 = [v6 displayName];
          v20 = [v6 iconData];
          v21 = -[STAppInformation initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:](v18, "initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:", v7, v19, v20, v8, [v6 distributorIsThirdParty], v11, v14, v17);
          [v25 addObject:v21];
        }

        else
        {
          v19 = +[STLog coreDataTransformer];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = v6;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Installed app missing bundle identifier: %{public}@", buf, 0xCu);
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  return v25;
}

+ (id)_appFromCoreDataChange:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v40 = 0;
  v6 = [STSharedCoreDataTransformerComponent changedObjectFromCoreDataChange:a3 inContext:a4 error:&v40];
  v7 = v40;
  if (!v6)
  {
    v13 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10011466C();
    }

    if (a5)
    {
      v14 = v7;
      v15 = 0;
      *a5 = v7;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100114578();
    }

    if (a5)
    {
      v17 = [NSError alloc];
      v18 = STErrorDomain;
      v43 = NSLocalizedDescriptionKey;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [NSString stringWithFormat:@"Changed Object Class: %@", v20];
      v44 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a5 = [v17 initWithDomain:v18 code:34 userInfo:v22];
    }

LABEL_14:
    v15 = 0;
    goto LABEL_29;
  }

  v8 = v6;
  v9 = [v8 bundleIdentifier];
  if (v9)
  {
    v10 = [v8 distributorID];
    v11 = [v8 adamID];
    if (v11)
    {
      v12 = [v8 adamID];
      v38 = [v12 unsignedLongLongValue];
    }

    else
    {
      v38 = 0;
    }

    v27 = [v8 versionIdentifier];
    if (v27)
    {
      v28 = [v8 versionIdentifier];
      v29 = [v28 unsignedLongLongValue];
    }

    else
    {
      v29 = 0;
    }

    v30 = [v8 betaVersionIdentifier];
    v39 = v9;
    if (v30)
    {
      v31 = [v8 betaVersionIdentifier];
      v32 = [v31 unsignedLongLongValue];
    }

    else
    {
      v32 = 0;
    }

    v33 = [STAppInformation alloc];
    v34 = [v8 bundleIdentifier];
    v35 = [v8 displayName];
    v36 = [v8 iconData];
    v15 = -[STAppInformation initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:](v33, "initWithBundleIdentifier:displayName:iconData:distributorID:distributorIsThirdParty:adamID:versionIdentifier:betaVersionIdentifier:", v34, v35, v36, v10, [v8 distributorIsThirdParty], v38, v29, v32);

    v9 = v39;
  }

  else
  {
    v23 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100114604();
    }

    if (!a5)
    {
      v15 = 0;
      goto LABEL_28;
    }

    v24 = [NSError alloc];
    v25 = STErrorDomain;
    v41 = NSLocalizedDescriptionKey;
    v42 = @"Installed app missing bundle identifier";
    v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v26 = [v24 initWithDomain:v25 code:34 userInfo:v10];
    v15 = 0;
    *a5 = v26;
  }

LABEL_28:
LABEL_29:

  return v15;
}

+ (id)_appTombstoneFromCoreDataChange:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 changeIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 changeIdentifier];
    v10 = [v9 objectForKeyedSubscript:@"bundleIdentifier"];
    v11 = [v9 objectForKeyedSubscript:@"uniqueIdentifier"];
    v12 = v11;
    if (v10 && v11)
    {
      v13 = [[STAppTombstone alloc] initWithBundleIdentifier:v10 uniqueIdentifier:v11];
    }

    else
    {
      v16 = +[STLog coreDataTransformer];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100114778(v12 == 0, v10 == 0);
      }

      if (a5)
      {
        v17 = [NSError alloc];
        v13 = 0;
        *a5 = [v17 initWithDomain:STErrorDomain code:40 userInfo:0];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001146D4(v6);
    }

    if (a5)
    {
      v15 = [NSError alloc];
      v13 = 0;
      *a5 = [v15 initWithDomain:STErrorDomain code:40 userInfo:0];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)_writeDevice:(id)a3 associatedUser:(id)a4 inContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 dsid];
  v92 = 0;
  v11 = [STCoreUser fetchUserWithDSID:v10 inContext:v9 error:&v92];
  v12 = v92;

  if (v11)
  {
    v13 = [v8 deviceID];
    v14 = [v13 identifier];

    v91 = v12;
    v15 = [STCoreDevice fetchDeviceWithIdentifier:v14 inContext:v9 error:&v91];
    v16 = v91;
    v17 = v12;
    v18 = v16;

    if (!v15)
    {
      v19 = +[STLog screentime];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v97 = "+[STDeviceStateCoreDataTransformerComponent _writeDevice:associatedUser:inContext:]";
        v98 = 2112;
        v99 = v14;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Creating CoreDevice with deviceIdentifier: (%@)", buf, 0x16u);
      }

      v20 = [[STCoreDevice alloc] initWithContext:v9];
      [v20 setIdentifier:v14];
      [v20 setPlatform:{objc_msgSend(a1, "_osPlatformFromDevicePlatform:", objc_msgSend(v8, "platform"))}];
      v21 = [[STUsage alloc] initWithContext:v9];
      v22 = +[NSDate now];
      [v21 setLastUpdatedDate:v22];

      v15 = v20;
      [v21 setDevice:v20];
      [v21 setUser:v11];
    }

    v23 = [v8 name];
    [v15 setName:v23];

    v24 = +[STUserDeviceState fetchRequest];
    v25 = [NSPredicate predicateWithFormat:@"%K == %@ AND %K == %@", @"user", v11, @"device", v15];
    [v24 setPredicate:v25];

    v90 = v18;
    v73 = v24;
    v26 = [v24 execute:&v90];
    v74 = v90;

    v75 = v15;
    v72 = v26;
    if (v26)
    {
      v77 = [v26 firstObject];
      if (!v77)
      {
        v27 = +[STLog screentime];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v11 dsid];
          v29 = [v75 identifier];
          *buf = 136446722;
          v97 = "+[STDeviceStateCoreDataTransformerComponent _writeDevice:associatedUser:inContext:]";
          v98 = 2112;
          v99 = v28;
          v100 = 2112;
          v101 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: Creating UserDeviceState for user: (%@), deviceIdentifier: (%@)", buf, 0x20u);
        }

        v30 = [[STUserDeviceState alloc] initWithContext:v9];
        [v30 setUser:v11];
        v77 = v30;
        [v30 setDevice:v75];
      }

      v69 = v14;
      v70 = v11;
      v76 = v9;
      v31 = [v8 apps];
      v32 = [v31 count];

      v33 = [NSMutableDictionary dictionaryWithCapacity:v32];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v71 = v8;
      v34 = [v8 apps];
      v35 = [v34 countByEnumeratingWithState:&v86 objects:v95 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v87;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v87 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v86 + 1) + 8 * i);
            v40 = [v39 bundleIdentifier];
            if (v40)
            {
              [v33 setObject:v39 forKeyedSubscript:v40];
            }

            else
            {
              v41 = +[STLog coreDataTransformer];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v97 = v39;
                _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Missing bundle identifier for app: %{public}@", buf, 0xCu);
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v86 objects:v95 count:16];
        }

        while (v36);
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v42 = [v77 installedApps];
      v43 = [v42 countByEnumeratingWithState:&v82 objects:v94 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v83;
        do
        {
          for (j = 0; j != v44; j = j + 1)
          {
            if (*v83 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v82 + 1) + 8 * j);
            v48 = [v47 bundleIdentifier];
            if (v48)
            {
              v49 = [v33 allKeys];
              v50 = [v49 containsObject:v48];

              if (v50)
              {
                [v33 removeObjectForKey:v48];
              }

              else
              {
                [v76 deleteObject:v47];
              }
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v82 objects:v94 count:16];
        }

        while (v44);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v51 = [v33 allValues];
      v52 = [v51 countByEnumeratingWithState:&v78 objects:v93 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v79;
        do
        {
          for (k = 0; k != v53; k = k + 1)
          {
            if (*v79 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v78 + 1) + 8 * k);
            v57 = [[STInstalledApp alloc] initWithContext:v76];
            v58 = [v56 bundleIdentifier];
            [v57 setBundleIdentifier:v58];

            [v57 setUserDeviceState:v77];
            v59 = [v56 displayName];
            [v57 setDisplayName:v59];

            v60 = [v56 iconData];
            [v57 setIconData:v60];

            v61 = [v56 distributorID];
            [v57 setDistributorID:v61];

            [v57 setDistributorIsThirdParty:{objc_msgSend(v56, "distributorIsThirdParty")}];
            v62 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v56 adamID]);
            [v57 setAdamID:v62];

            v63 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v56 versionIdentifier]);
            [v57 setVersionIdentifier:v63];

            v64 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v56 betaVersionIdentifier]);
            [v57 setBetaVersionIdentifier:v64];
          }

          v53 = [v51 countByEnumeratingWithState:&v78 objects:v93 count:16];
        }

        while (v53);
      }

      v65 = +[STResult success];

      v11 = v70;
      v8 = v71;
      v9 = v76;
      v14 = v69;
      v12 = v74;
    }

    else
    {
      v67 = +[STLog coreDataTransformer];
      v12 = v74;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_100114850();
      }

      v65 = [STResult failure:v74];
    }
  }

  else
  {
    v66 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_1001148B8();
    }

    v65 = [STResult failure:v12];
  }

  return v65;
}

+ (int64_t)_devicePlatformFromOSPlatform:(signed __int16)a3
{
  if ((a3 - 1) < 5)
  {
    return (a3 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

+ (signed)_osPlatformFromDevicePlatform:(int64_t)a3
{
  if ((a3 - 1) < 5)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (id)_validatedDeviceStateChangeTypeFromSecondaryType:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSNumber numberWithInteger:v3];
  }

  return v5;
}

+ (NSDictionary)observationFiltersByTriggerPredicate
{
  if (qword_1001E3908 != -1)
  {
    sub_100114920();
  }

  v3 = qword_1001E3900;

  return v3;
}

@end