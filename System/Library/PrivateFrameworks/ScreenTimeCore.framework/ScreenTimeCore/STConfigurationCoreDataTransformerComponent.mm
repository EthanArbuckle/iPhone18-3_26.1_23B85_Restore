@interface STConfigurationCoreDataTransformerComponent
+ (NSDictionary)observationFiltersByTriggerPredicate;
+ (id)_blueprintBackedConfigurationChangesOfBlueprintType:(id)a3 configurationType:(int64_t)a4 userID:(id)a5 containter:(id)a6;
+ (id)_configurationFromChangedObject:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)_coreDataChangeFromBlueprintConfiguration:(id)a3 configurationType:(int64_t)a4 container:(id)a5;
+ (id)_coreDataChangeFromSettingsConfiguration:(id)a3 configurationType:(int64_t)a4 container:(id)a5;
+ (id)_familyManagedCoreUsersFromCoreUsers:(id)a3 inContext:(id)a4;
+ (id)_familySettingsBackedConfigurationChangesForUserID:(id)a3 configurationType:(int64_t)a4 container:(id)a5;
+ (id)_fetchAuthorCoreUserInContext:(id)a3 error:(id *)a4;
+ (id)_setupConfigurationFromSettingsConfiguration:(id)a3 familyProvider:(id)a4 container:(id)a5;
+ (id)_targetCoreUserFromChangedObject:(id)a3 ofConfigurationType:(int64_t)a4 error:(id *)a5;
+ (id)_targetDevicesForCoreUser:(id)a3;
+ (id)_validatedConfigurationTypeFromSecondaryType:(int64_t)a3;
+ (id)communicationConfigurationForLocalUserFromPersistentContainer:(id)a3;
+ (id)communicationConfigurationForUserID:(id)a3 container:(id)a4;
+ (id)configurationChangeForCoreDataChange:(id)a3 container:(id)a4 error:(id *)a5;
+ (id)configurationChangeForRelatedConfigurationChange:(id)a3 container:(id)a4;
+ (id)configurationChangesOfType:(int64_t)a3 userID:(id)a4 containter:(id)a5;
+ (id)downtimeConfigurationForUserID:(id)a3 container:(id)a4;
+ (id)handleOnDemandDowntimeToggleForUserID:(id)a3 persistentContainer:(id)a4;
+ (id)handleSetupConfiguration:(id)a3 persistentContainter:(id)a4;
+ (id)setupConfigurationFromSettingsConfigurationChange:(id)a3 familyProvider:(id)a4 container:(id)a5;
+ (int64_t)_setupConfigurationContactManagementStateForContactManagementState:(int64_t)a3;
+ (int64_t)_setupConfigurationScreenTimeStateForManagementState:(BOOL)a3;
@end

@implementation STConfigurationCoreDataTransformerComponent

+ (id)configurationChangeForCoreDataChange:(id)a3 container:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 newBackgroundContext];
  if ([v8 primaryType] != 1)
  {
    v12 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001132BC();
    }

    goto LABEL_12;
  }

  v11 = [a1 _validatedConfigurationTypeFromSecondaryType:{objc_msgSend(v8, "secondaryType")}];
  v12 = v11;
  if (!v11)
  {
    v14 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100113324();
    }

LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  v17 = [v11 integerValue];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_100020F10;
  v56 = sub_100020F20;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100020F10;
  v50 = sub_100020F20;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100020F10;
  v44 = sub_100020F20;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100020F10;
  v38 = sub_100020F20;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100020F10;
  v32 = sub_100020F20;
  v33 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100020F28;
  v18[3] = &unk_1001A35C0;
  v19 = v8;
  v20 = v10;
  v21 = &v28;
  v25 = &v34;
  v26 = a1;
  v27 = v17;
  v22 = &v40;
  v23 = &v52;
  v24 = &v46;
  [v20 performBlockAndWait:v18];
  if (a5)
  {
    *a5 = v29[5];
  }

  if (v29[5])
  {
    v13 = 0;
  }

  else
  {
    v15 = [STConfigurationChange alloc];
    v13 = [(STConfigurationChange *)v15 initWithTargetUser:v53[5] targetDevices:v47[5] configuration:v41[5] configurationType:v17 author:v35[5]];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
LABEL_15:

  return v13;
}

+ (id)configurationChangeForRelatedConfigurationChange:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v6 configurationType];
    if (v10 > 6)
    {
      v18 = 0;
      goto LABEL_11;
    }

    if (((1 << v10) & 0x74) != 0)
    {
      v11 = [a1 _coreDataChangeFromBlueprintConfiguration:v9 configurationType:v10 container:v7];
    }

    else
    {
      if (((1 << v10) & 0xA) == 0)
      {
        v20 = [NSError alloc];
        v21 = STErrorDomain;
        v28 = NSLocalizedDescriptionKey;
        v22 = [NSString stringWithFormat:@"Unsupported configuration: %@ - %@", objc_opt_class(), @"Invalid"];
        v29 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v24 = [v20 initWithDomain:v21 code:37 userInfo:v23];
        v18 = [STResult failure:v24];

        goto LABEL_11;
      }

      v11 = [a1 _coreDataChangeFromSettingsConfiguration:v9 configurationType:v10 container:v7];
    }

    v18 = v11;
LABEL_11:
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000215C4;
    v25[3] = &unk_1001A35E8;
    v27 = a1;
    v26 = v7;
    v17 = [v18 flatMap:v25];

    goto LABEL_12;
  }

  v12 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10011338C();
  }

  v13 = [NSError alloc];
  v14 = STErrorDomain;
  v30 = NSLocalizedDescriptionKey;
  v15 = [NSString stringWithFormat:@"Unsupported configuration: %@", objc_opt_class()];
  v31 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v9 = [v13 initWithDomain:v14 code:37 userInfo:v16];

  v17 = [STResult failure:v9];
LABEL_12:

  return v17;
}

+ (id)configurationChangesOfType:(int64_t)a3 userID:(id)a4 containter:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v13 = [NSError alloc];
      v14 = STErrorDomain;
      v15 = [NSString stringWithFormat:@"Invalid type: %@", @"Invalid", NSLocalizedDescriptionKey];
      v20 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = [v13 initWithDomain:v14 code:32 userInfo:v16];

      v9 = [STResult failure:v17];

      goto LABEL_17;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_17;
      }

      v10 = STBlueprintTypeDowntime;
      v11 = 2;
      goto LABEL_15;
    }
  }

  else
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v10 = STBlueprintTypeRestrictions;
        v11 = 5;
      }

      else
      {
        if (a3 != 6)
        {
          goto LABEL_17;
        }

        v10 = STBlueprintTypeManagedUser;
        v11 = 6;
      }

      goto LABEL_15;
    }

    if (a3 != 3)
    {
      v10 = STBlueprintTypeAlwaysAllowedApps;
      v11 = 4;
LABEL_15:
      v12 = [STConfigurationCoreDataTransformerComponent _blueprintBackedConfigurationChangesOfBlueprintType:v10 configurationType:v11 userID:v7 containter:v8];
      goto LABEL_16;
    }
  }

  v12 = [STConfigurationCoreDataTransformerComponent _familySettingsBackedConfigurationChangesForUserID:v7 configurationType:a3 container:v8];
LABEL_16:
  v9 = v12;
LABEL_17:

  return v9;
}

+ (id)communicationConfigurationForLocalUserFromPersistentContainer:(id)a3
{
  v3 = a3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100020F10;
  v25 = sub_100020F20;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021B58;
  v9[3] = &unk_1001A3610;
  v4 = [v3 newBackgroundContext];
  v10 = v4;
  v11 = &v21;
  v12 = &v39;
  v13 = &v35;
  v14 = &v31;
  v15 = &v27;
  v16 = &v17;
  [v4 performBlockAndWait:v9];
  if (v18[3])
  {
    v5 = [STCommunicationConfiguration alloc];
    v6 = [v5 initWithCommunicationSafetySendingRestricted:*(v40 + 24) communicationSafetyReceivingRestricted:*(v36 + 24) communicationSafetyNotificationEnabled:*(v32 + 24) communicationSafetyAnalyticsEnabled:*(v28 + 24)];
    v7 = [STResult success:v6];
  }

  else
  {
    v7 = [STResult failure:v22[5]];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v7;
}

+ (id)communicationConfigurationForUserID:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 newBackgroundContext];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100020F10;
  v34 = sub_100020F20;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100021EDC;
  v17 = &unk_1001A3638;
  v8 = v5;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v20 = &v30;
  v21 = &v48;
  v22 = &v44;
  v23 = &v40;
  v24 = &v36;
  v25 = &v26;
  [v9 performBlockAndWait:&v14];
  if (v27[3])
  {
    v10 = [STCommunicationConfiguration alloc];
    v11 = [v10 initWithCommunicationSafetySendingRestricted:*(v49 + 24) communicationSafetyReceivingRestricted:*(v45 + 24) communicationSafetyNotificationEnabled:*(v41 + 24) communicationSafetyAnalyticsEnabled:{*(v37 + 24), v14, v15, v16, v17, v18}];
    v12 = [STResult success:v11];
  }

  else
  {
    v12 = [STResult failure:v31[5], v14, v15, v16, v17, v18];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v12;
}

+ (id)downtimeConfigurationForUserID:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 newBackgroundContext];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100020F10;
  v30 = sub_100020F20;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100020F10;
  v24 = sub_100020F20;
  v25 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100022198;
  v15 = &unk_1001A3660;
  v18 = &v26;
  v8 = v5;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v19 = &v20;
  [v9 performBlockAndWait:&v12];
  if (v27[5])
  {
    [STResult success:v12, v13, v14, v15, v16];
  }

  else
  {
    [STResult failure:v21[5], v12, v13, v14, v15, v16];
  }
  v10 = ;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

+ (id)_blueprintBackedConfigurationChangesOfBlueprintType:(id)a3 configurationType:(int64_t)a4 userID:(id)a5 containter:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100020F10;
  v27 = sub_100020F20;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000223A0;
  v17[3] = &unk_1001A3688;
  v12 = [v11 newBackgroundContext];
  v18 = v12;
  v21 = &v23;
  v13 = v10;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  v22 = a4;
  [v12 performBlockAndWait:v17];
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

+ (id)_familyManagedCoreUsersFromCoreUsers:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([STSharedCoreDataTransformerComponent managingOrganizationIsFamilyOrganizationForCoreUser:v13 inContext:v6, v16])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

+ (id)_targetDevicesForCoreUser:(id)a3
{
  v3 = [a3 userDeviceStates];
  if (v3)
  {
    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) device];
          if (v10)
          {
            v11 = [STDeviceID alloc];
            v12 = [v10 identifier];
            v13 = [(STDeviceID *)v11 initWithIdentifier:v12];

            [v4 addObject:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  return v14;
}

+ (id)_familySettingsBackedConfigurationChangesForUserID:(id)a3 configurationType:(int64_t)a4 container:(id)a5
{
  v7 = a3;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100020F10;
  v22 = sub_100020F20;
  v23 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100022D10;
  v13[3] = &unk_1001A36B0;
  v9 = [v8 newBackgroundContext];
  v14 = v9;
  v16 = &v18;
  v10 = v7;
  v15 = v10;
  v17 = a4;
  [v9 performBlockAndWait:v13];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

+ (id)_validatedConfigurationTypeFromSecondaryType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSNumber numberWithInteger:v3];
  }

  return v5;
}

+ (id)_configurationFromChangedObject:(id)a3 context:(id)a4 error:(id *)a5
{
  v6 = a3;
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___STSerializableManagedObject])
  {
    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___STVersionVectorable])
    {
      a5 = [v6 dictionaryRepresentation];
      goto LABEL_12;
    }
  }

  else
  {
    v7 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100113418();
    }

    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___STVersionVectorable])
    {
      goto LABEL_10;
    }
  }

  v8 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001134A4();
  }

LABEL_10:
  if (a5)
  {
    v9 = [NSError alloc];
    v10 = STErrorDomain;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [NSString stringWithFormat:@"Changed Object Class: %@", v12, NSLocalizedDescriptionKey];
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *a5 = [v9 initWithDomain:v10 code:34 userInfo:v14];

    a5 = 0;
  }

LABEL_12:

  return a5;
}

+ (id)_targetCoreUserFromChangedObject:(id)a3 ofConfigurationType:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (a4 <= 6)
  {
    if (((1 << a4) & 0x74) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 users];
        v9 = [v8 anyObject];

        if (v9)
        {
          goto LABEL_14;
        }
      }
    }

    else if (((1 << a4) & 0xA) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v7 user];
        if (v9)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = +[STLog coreDataTransformer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100113530();
  }

  if (a5)
  {
    v11 = [NSError alloc];
    v12 = STErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [NSString stringWithFormat:@"Changed object class: %@, does not map to configuration type: %ld", v14, a4];
    v19 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *a5 = [v11 initWithDomain:v12 code:34 userInfo:v16];
  }

  v9 = 0;
LABEL_14:

  return v9;
}

+ (id)_fetchAuthorCoreUserInContext:(id)a3 error:(id *)a4
{
  v12 = 0;
  v5 = [STCoreUser fetchLocalUserInContext:a3 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = +[STLog coreDataTransformer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001135CC();
    }

    if (a4)
    {
      if (v6)
      {
        v13 = NSUnderlyingErrorKey;
        v14 = v6;
        v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      }

      else
      {
        v9 = 0;
      }

      v10 = [NSError alloc];
      *a4 = [v10 initWithDomain:STErrorDomain code:32 userInfo:v9];
    }
  }

  return v5;
}

+ (id)_coreDataChangeFromSettingsConfiguration:(id)a3 configurationType:(int64_t)a4 container:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 newBackgroundContext];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100020F10;
  v23 = sub_100020F20;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000236DC;
  v14[3] = &unk_1001A36D8;
  v10 = v7;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v17 = &v19;
  v18 = a4;
  [v11 performBlockAndWait:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

+ (id)_coreDataChangeFromBlueprintConfiguration:(id)a3 configurationType:(int64_t)a4 container:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 newBackgroundContext];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100020F10;
  v23 = sub_100020F20;
  v24 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023974;
  v14[3] = &unk_1001A36D8;
  v10 = v7;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v17 = &v19;
  v18 = a4;
  [v11 performBlockAndWait:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

+ (id)setupConfigurationFromSettingsConfigurationChange:(id)a3 familyProvider:(id)a4 container:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 matchingAny:&off_1001B2520];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100023BCC;
  v17[3] = &unk_1001A3700;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 flatMap:v17];

  return v15;
}

+ (id)_setupConfigurationFromSettingsConfiguration:(id)a3 familyProvider:(id)a4 container:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 newBackgroundContext];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100020F10;
  v27 = sub_100020F20;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100023F04;
  v17[3] = &unk_1001A3778;
  v12 = v8;
  v18 = v12;
  v13 = v11;
  v19 = v13;
  v21 = &v23;
  v22 = a1;
  v14 = v9;
  v20 = v14;
  [v13 performBlockAndWait:v17];
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

+ (int64_t)_setupConfigurationScreenTimeStateForManagementState:(BOOL)a3
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)_setupConfigurationContactManagementStateForContactManagementState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (NSDictionary)observationFiltersByTriggerPredicate
{
  if (qword_1001E38F8 != -1)
  {
    sub_1001137DC();
  }

  v3 = qword_1001E38F0;

  return v3;
}

+ (id)handleSetupConfiguration:(id)a3 persistentContainter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100020F10;
  v19 = sub_100020F20;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002482C;
  v11[3] = &unk_1001A37C0;
  v7 = [v6 newBackgroundContext];
  v12 = v7;
  v14 = &v15;
  v8 = v5;
  v13 = v8;
  [v7 performBlockAndWait:v11];
  if (v16[5])
  {
    [STResult failure:?];
  }

  else
  {
    +[STResult success];
  }
  v9 = ;

  _Block_object_dispose(&v15, 8);

  return v9;
}

+ (id)handleOnDemandDowntimeToggleForUserID:(id)a3 persistentContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 newBackgroundContext];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100020F10;
  v30 = sub_100020F20;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100025010;
  v15 = &unk_1001A37E8;
  v18 = v34;
  v8 = v5;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v19 = &v26;
  v20 = v32;
  v21 = &v22;
  [v9 performBlockAndWait:&v12];
  if (v23[3])
  {
    [STResult success:v12];
  }

  else
  {
    [STResult failure:v27[5], v12, v13, v14, v15, v16];
  }
  v10 = ;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  return v10;
}

@end