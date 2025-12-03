@interface STProcessBlueprintChanges
+ (BOOL)_cleanupDeletedUserBlueprintsWithContext:(id)context error:(id *)error;
+ (BOOL)_cleanupDuplicateBlueprintConfigurationsWithContext:(id)context error:(id *)error;
+ (BOOL)_cleanupDuplicateRestrictionsBlueprintsWithContext:(id)context user:(id)user error:(id *)error;
+ (BOOL)_migrateBlueprintsToVersion2CategoriesWithContext:(id)context user:(id)user error:(id *)error;
+ (id)_requestFromBlueprints:(id)blueprints forUser:(id)user error:(id *)error;
+ (void)_postShareMyLocationNotificationForOldAllowFindMyFriendsModification:(id)modification newAllowFindMyFriendsModification:(id)friendsModification;
+ (void)processBlueprintsChangesWithPersistenceController:(id)controller completionHandler:(id)handler;
@end

@implementation STProcessBlueprintChanges

+ (void)processBlueprintsChangesWithPersistenceController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "STProcessBlueprintChangesOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[STLog blueprint];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "STProcessBlueprintChanges : Started", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100058D44;
  v12[3] = &unk_1001A4798;
  v10 = handlerCopy;
  v14 = v10;
  selfCopy = self;
  v11 = controllerCopy;
  v13 = v11;
  [v11 performBackgroundTask:v12];

  os_activity_scope_leave(&state);
}

+ (BOOL)_cleanupDuplicateBlueprintConfigurationsWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = +[STBlueprint fetchRequest];
  sTBlueprintTypeDowntime = [NSPredicate predicateWithFormat:@"(%K == %@) OR (%K == %@) OR (%K == %@)", @"type", STBlueprintTypeRestrictions, @"type", STBlueprintTypeAlwaysAllowedApps, @"type", STBlueprintTypeDowntime];
  [v6 setPredicate:sTBlueprintTypeDowntime];

  v46 = @"configurations";
  v8 = [NSArray arrayWithObjects:&v46 count:1];
  [v6 setRelationshipKeyPathsForPrefetching:v8];

  v9 = [v6 execute:error];
  if (v9)
  {
    v27 = v6;
    v10 = [NSSortDescriptor sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
    v45 = v10;
    v29 = [NSArray arrayWithObjects:&v45 count:1];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = v9;
    obj = v9;
    v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (!v30)
    {
      goto LABEL_26;
    }

    v28 = *v38;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v11;
        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        configurations = [v12 configurations];
        v15 = [configurations sortedArrayUsingDescriptors:v29];

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            v19 = 0;
            do
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * v19);
              type = [v20 type];
              if (!type || ([v20 payloadPlist], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
              {
                [contextCopy deleteObject:v20];
LABEL_19:
                [v12 setIsDirty:1];
                goto LABEL_20;
              }

              if ([v13 containsObject:type])
              {
                [contextCopy deleteObject:v20];
                v23 = +[STLog blueprint];
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v42 = v20;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Deleting duplicate blueprint configuration %@", buf, 0xCu);
                }

                goto LABEL_19;
              }

              [v13 addObject:type];
LABEL_20:

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v24 = [v15 countByEnumeratingWithState:&v33 objects:v43 count:16];
            v17 = v24;
          }

          while (v24);
        }

        v11 = v32 + 1;
      }

      while ((v32 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v30)
      {
LABEL_26:

        v9 = v26;
        v6 = v27;
        goto LABEL_29;
      }
    }
  }

  v29 = +[STLog blueprint];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10011A59C(error);
  }

LABEL_29:

  return v9 != 0;
}

+ (BOOL)_cleanupDeletedUserBlueprintsWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v16 = +[STBlueprint fetchRequestMatchingOrphanedBlueprints];
  v6 = [v16 execute:error];
  v7 = v6;
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = +[STLog blueprint];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting blueprint with no user %@", buf, 0xCu);
          }

          [contextCopy deleteObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10011A604(error);
    }
  }

  return v7 != 0;
}

+ (BOOL)_cleanupDuplicateRestrictionsBlueprintsWithContext:(id)context user:(id)user error:(id *)error
{
  contextCopy = context;
  userCopy = user;
  dsid = [userCopy dsid];
  v10 = STBlueprintTypeRestrictions;
  managingOrganization = [userCopy managingOrganization];
  v12 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:v10 fromOrganization:managingOrganization];

  v13 = [v12 execute:error];
  v14 = v13;
  if (!v13)
  {
    v15 = +[STLog blueprint];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10011A604(error);
    }

    goto LABEL_15;
  }

  if ([v13 count] >= 2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v24 = v12;
      v25 = userCopy;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = +[STLog blueprint];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            type = [v20 type];
            *buf = 138412546;
            v31 = v20;
            v32 = 2114;
            v33 = type;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleting duplicated blueprint %@ of type %{public}@", buf, 0x16u);
          }

          [contextCopy deleteObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v17);
      v12 = v24;
      userCopy = v25;
    }

LABEL_15:
  }

  return v14 != 0;
}

+ (BOOL)_migrateBlueprintsToVersion2CategoriesWithContext:(id)context user:(id)user error:(id *)error
{
  v6 = [STBlueprint fetchRequest:context];
  sTBlueprintTypeDowntime = [NSPredicate predicateWithFormat:@"(%K == %@) OR (%K == %@)", @"type", STBlueprintTypeUsageLimit, @"type", STBlueprintTypeDowntime];
  [v6 setPredicate:sTBlueprintTypeDowntime];

  v30[0] = @"configurations";
  v30[1] = @"usageLimit";
  v8 = [NSArray arrayWithObjects:v30 count:2];
  [v6 setRelationshipKeyPathsForPrefetching:v8];

  v9 = [v6 execute:error];
  v10 = v9;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = +[STLog blueprint];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v15 identifier];
            type = [v15 type];
            *buf = 138543618;
            v26 = identifier;
            v27 = 2114;
            v28 = type;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Performing category migration while processing blueprint: %{public}@ with type: %{public}@", buf, 0x16u);
          }

          [v15 migrateToVersion2CategoriesIfNeeded];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v19 = +[STLog blueprint];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_10011A66C(error);
    }
  }

  return v10 != 0;
}

+ (id)_requestFromBlueprints:(id)blueprints forUser:(id)user error:(id *)error
{
  blueprintsCopy = blueprints;
  userCopy = user;
  v9 = objc_opt_new();
  unmodeledManagingOrganizationSettings = [userCopy unmodeledManagingOrganizationSettings];
  v11 = +[NSUserDefaults standardUserDefaults];
  v49 = [v11 objectForKey:@"allowFindMyFriendsModification"];

  v55 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v12 = blueprintsCopy;
  v64 = [v12 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v64)
  {
    v54 = 0;
    v63 = *v66;
    v62 = STBlueprintTypeUsageLimit;
    v59 = STBlueprintTypeDowntime;
    v58 = STBlueprintTypeManagedUser;
    v57 = STBlueprintTypeRestrictions;
    v13 = STBlueprintConfigurationTypeSystemICloud;
    v61 = v12;
    v52 = v9;
    v53 = userCopy;
    errorCopy = error;
    v51 = unmodeledManagingOrganizationSettings;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v66 != v63)
      {
        objc_enumerationMutation(v12);
      }

      v15 = *(*(&v65 + 1) + 8 * v14);
      type = [v15 type];
      if (![type isEqualToString:v62])
      {
        break;
      }

      if ([v15 limitEnabled])
      {
        allLimitsEnabled = [unmodeledManagingOrganizationSettings allLimitsEnabled];
LABEL_10:
        v18 = allLimitsEnabled;
        goto LABEL_12;
      }

      v18 = 0;
LABEL_12:

      users = [v15 users];
      if (![users containsObject:userCopy])
      {
        goto LABEL_48;
      }

      if (v18)
      {

LABEL_17:
        if ([self _shouldInstallBlueprint:v15])
        {
          type2 = [v15 type];
          v12 = v61;
          if ([type2 isEqualToString:v58])
          {
            passcode = [unmodeledManagingOrganizationSettings passcode];

            if (!passcode)
            {
              goto LABEL_49;
            }
          }

          else
          {
          }

          type3 = [v15 type];
          v25 = [type3 isEqualToString:v57];

          if (v25)
          {
            v26 = v15;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v56 = v26;
            configurations = [v26 configurations];
            v28 = [configurations countByEnumeratingWithState:&v69 objects:v76 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v70;
LABEL_27:
              v31 = 0;
              while (1)
              {
                if (*v70 != v30)
                {
                  objc_enumerationMutation(configurations);
                }

                v32 = *(*(&v69 + 1) + 8 * v31);
                type4 = [v32 type];
                v34 = [type4 isEqualToString:v13];

                if (v34)
                {
                  break;
                }

                if (v29 == ++v31)
                {
                  v29 = [configurations countByEnumeratingWithState:&v69 objects:v76 count:16];
                  if (v29)
                  {
                    goto LABEL_27;
                  }

                  v54 = 0;
                  v35 = configurations;
                  v9 = v52;
                  userCopy = v53;
                  error = errorCopy;
                  unmodeledManagingOrganizationSettings = v51;
                  v12 = v61;
                  goto LABEL_44;
                }
              }

              v35 = v32;

              if (!v35)
              {
                v54 = 0;
                v9 = v52;
                userCopy = v53;
                error = errorCopy;
                unmodeledManagingOrganizationSettings = v51;
                v12 = v61;
                goto LABEL_45;
              }

              cemConfiguration = [v35 cemConfiguration];
              objc_opt_class();
              error = errorCopy;
              unmodeledManagingOrganizationSettings = v51;
              v12 = v61;
              if (objc_opt_isKindOfClass())
              {
                payloadAllowFindMyFriendsModification = [cemConfiguration payloadAllowFindMyFriendsModification];
                v38 = payloadAllowFindMyFriendsModification;
                if (!payloadAllowFindMyFriendsModification || (v39 = [payloadAllowFindMyFriendsModification BOOLValue], v40 = &__kCFBooleanFalse, v39))
                {
                  v40 = 0;
                }

                v54 = v40;
              }

              else
              {
                v54 = 0;
              }

              v9 = v52;
              userCopy = v53;
            }

            else
            {
              v54 = 0;
              v35 = configurations;
            }

LABEL_44:

LABEL_45:
            [v55 addWebContentFilterPoliciesFrom:v56];
          }

          v41 = [v15 declarationsWithError:error];
          if (!v41)
          {
            v42 = 0;
            v43 = v12;
            v44 = v49;
            goto LABEL_57;
          }

          users = v41;
          [v9 addObjectsFromArray:v41];
          goto LABEL_48;
        }

        goto LABEL_21;
      }

      type5 = [v15 type];
      if (([type5 isEqualToString:v59] & 1) == 0)
      {

LABEL_48:
        goto LABEL_49;
      }

      activeOverride = [v15 activeOverride];

      if (activeOverride)
      {
        goto LABEL_17;
      }

LABEL_21:
      v12 = v61;
LABEL_49:
      if (++v14 == v64)
      {
        v64 = [v12 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v64)
        {
          goto LABEL_3;
        }

        goto LABEL_54;
      }
    }

    allLimitsEnabled = [v15 enabled];
    goto LABEL_10;
  }

  v54 = 0;
LABEL_54:

  applyWebContentFilter = [v55 applyWebContentFilter];
  effectivePasscode = [userCopy effectivePasscode];
  v47 = [effectivePasscode length];

  +[ManagedSettingsApplicator applySafariSettingsRestrictions:](_TtC15ScreenTimeAgent25ManagedSettingsApplicator, "applySafariSettingsRestrictions:", +[ManagedSettingsApplicator shouldRestrictSafariSettingsWithIsPasscodeSet:isUserManaged:isWebContentFilterEnabled:](_TtC15ScreenTimeAgent25ManagedSettingsApplicator, "shouldRestrictSafariSettingsWithIsPasscodeSet:isUserManaged:isWebContentFilterEnabled:", v47 != 0, [userCopy isManaged], applyWebContentFilter));
  v44 = v49;
  if (v47)
  {
    [self _postShareMyLocationNotificationForOldAllowFindMyFriendsModification:v49 newAllowFindMyFriendsModification:v54];
  }

  v73[0] = @"Declarations";
  v73[1] = @"RequestType";
  v74[0] = v9;
  v74[1] = @"Set";
  v73[2] = @"RequestUUID";
  v73[3] = @"SyncToken";
  v74[2] = @"-";
  v74[3] = @"-";
  v43 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4, v49];
  v42 = [(STRemoteManagementRequest *)STSetRequest requestForPayload:v43 error:error];
LABEL_57:

  return v42;
}

+ (void)_postShareMyLocationNotificationForOldAllowFindMyFriendsModification:(id)modification newAllowFindMyFriendsModification:(id)friendsModification
{
  modificationCopy = modification;
  friendsModificationCopy = friendsModification;
  v7 = friendsModificationCopy;
  if (modificationCopy)
  {
    bOOLValue = [modificationCopy BOOLValue];
    if (!v7 && (bOOLValue & 1) == 0)
    {
      v9 = +[STLog blueprint];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Posting Location Sharing notification: unlocked", v19, 2u);
      }

      v10 = [NSNotification alloc];
      v11 = objc_opt_new();
      v12 = [v10 initWithName:@"STUserNotificationManagerShouldPostNotification" object:v11 userInfo:0];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotification:v12];

      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 removeObjectForKey:@"allowFindMyFriendsModification"];
LABEL_12:
    }
  }

  else if (friendsModificationCopy && ([friendsModificationCopy BOOLValue] & 1) == 0)
  {
    v15 = +[STLog blueprint];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Posting Location Sharing notification: locked", buf, 2u);
    }

    v16 = [NSNotification alloc];
    v17 = objc_opt_new();
    v12 = [v16 initWithName:@"STUserNotificationManagerShouldPostNotification" object:v17 userInfo:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 postNotification:v12];

    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 setValue:&__kCFBooleanFalse forKey:@"allowFindMyFriendsModification"];
    goto LABEL_12;
  }
}

@end