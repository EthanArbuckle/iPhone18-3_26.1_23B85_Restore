@interface RMActivationEngine
+ (BOOL)_isKeychainAsset:(id)a3;
- (BOOL)_attachAssetReferences:(id)a3;
- (BOOL)_attachConfigurationReferences:(id)a3;
- (BOOL)_deleteDeclarationsThatAreNoLongerNeeded:(id)a3;
- (BOOL)_processAllDeclarations:(id)a3;
- (BOOL)_processManagementProperties:(id)a3;
- (BOOL)_reconcile:(id)a3;
- (BOOL)_remove:(id)a3;
- (BOOL)_updateUnknownDeclarations:(id)a3;
- (BOOL)removeReturningError:(id *)a3;
- (RMActivationEngine)initWithManagementSourceObjectID:(id)a3 context:(id)a4;
- (id)_checkPredicateStatusKeysForActivations:(id)a3 managementSource:(id)a4;
- (id)getDeclarationsMarkedForRemovalFromFetchRequest:(id)a3 managementSource:(id)a4;
- (void)_assetsRemoved:(id)a3 storeIdentifier:(id)a4 personaID:(id)a5;
- (void)_predicateStatusItemDidChange:(id)a3;
- (void)deleteObjects:(id)a3 managementSourceIdentifier:(id)a4 removeStatus:(BOOL)a5;
- (void)syncWithCompletionHandler:(id)a3;
- (void)triggerAggregatingTimerAction;
@end

@implementation RMActivationEngine

- (RMActivationEngine)initWithManagementSourceObjectID:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = RMActivationEngine;
  v9 = [(RMActivationEngine *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managementSourceObjectID, a3);
    objc_storeStrong(&v10->_context, a4);
    v11 = [RMDebounceTimer debounceTimerWithMinimumInterval:v10 maximumInterval:@"RMActivationEngine" delegate:5.0 identifier:60.0];
    debouncer = v10->_debouncer;
    v10->_debouncer = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v10 selector:"_predicateStatusItemDidChange:" name:@"RMPredicateStatusUpdaterDidChangeNotification" object:0];
  }

  return v10;
}

- (void)triggerAggregatingTimerAction
{
  v3 = +[RMLog activationEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100006C88();
  }

  [(RMActivationEngine *)self syncWithCompletionHandler:&stru_1000D0E10];
}

- (void)_predicateStatusItemDidChange:(id)a3
{
  v8 = [a3 userInfo];
  v4 = [v8 objectForKeyedSubscript:@"RMUserInfoKeyPredicateUpdatedManagementSourceObjectIDs"];
  if (!v4 || (-[RMActivationEngine managementSourceObjectID](self, "managementSourceObjectID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 containsObject:v5], v5, v6))
  {
    v7 = [(RMActivationEngine *)self debouncer];
    [v7 trigger];
  }
}

- (void)syncWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "ActivationEngine: syncing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog activationEngine];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100006D58();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100002658;
  v16 = sub_100002668;
  v17 = 0;
  [(RMActivationEngine *)self context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002670;
  v7 = v8[3] = &unk_1000D0E38;
  v9 = v7;
  v10 = self;
  v11 = &v12;
  [v7 performBlockAndWait:v8];
  v4[2](v4, v13[5]);

  _Block_object_dispose(&v12, 8);
  os_activity_scope_leave(&state);
}

- (BOOL)removeReturningError:(id *)a3
{
  v5 = _os_activity_create(&_mh_execute_header, "ActivationEngine: removing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog activationEngine];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100006E90();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100002658;
  v19 = sub_100002668;
  v20 = 0;
  [(RMActivationEngine *)self context];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000029F4;
  v7 = v11[3] = &unk_1000D0E38;
  v12 = v7;
  v13 = self;
  v14 = &v15;
  [v7 performBlockAndWait:v11];
  if (a3)
  {
    v8 = v16[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v16[5] == 0;

  _Block_object_dispose(&v15, 8);
  os_activity_scope_leave(&state);

  return v9;
}

- (BOOL)_reconcile:(id)a3
{
  v4 = a3;
  if ([(RMActivationEngine *)self _deleteDeclarationsThatAreNoLongerNeeded:v4]&& [(RMActivationEngine *)self _updateUnknownDeclarations:v4]&& [(RMActivationEngine *)self _attachConfigurationReferences:v4]&& [(RMActivationEngine *)self _attachAssetReferences:v4]&& [(RMActivationEngine *)self _processManagementProperties:v4])
  {
    v5 = [(RMActivationEngine *)self _processAllDeclarations:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_remove:(id)a3
{
  v4 = a3;
  v5 = [v4 assets];
  v6 = [v5 allObjects];
  v7 = [v4 identifier];
  v8 = [v4 personaIdentifier];

  [(RMActivationEngine *)self _assetsRemoved:v6 storeIdentifier:v7 personaID:v8];
  return 1;
}

- (BOOL)_deleteDeclarationsThatAreNoLongerNeeded:(id)a3
{
  v4 = a3;
  v5 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
  v6 = +[RMLog activationEngine];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100006FC8();
  }

  v7 = +[RMConfigurationPayload fetchRequest];
  v8 = [(RMActivationEngine *)self getDeclarationsMarkedForRemovalFromFetchRequest:v7 managementSource:v4];

  if (v8)
  {
    v9 = +[RMActivationPayload fetchRequest];
    v10 = [(RMActivationEngine *)self getDeclarationsMarkedForRemovalFromFetchRequest:v9 managementSource:v4];

    if (v10)
    {
      v11 = +[RMAssetPayload fetchRequest];
      v12 = [(RMActivationEngine *)self getDeclarationsMarkedForRemovalFromFetchRequest:v11 managementSource:v4];

      v13 = v12 != 0;
      if (v12)
      {
        v14 = [v4 identifier];
        v15 = +[RMLog activationEngine];
        v56 = v8;
        v55 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v52 = [v10 count];
          if (v52)
          {
            log = v15;
            v16 = v10;
            v17 = [NSMutableArray arrayWithCapacity:[v16 count]];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v18 = v16;
            v19 = [v18 countByEnumeratingWithState:&v57 objects:buf count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v58;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v58 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = [*(*(&v57 + 1) + 8 * i) description];
                  [v17 addObject:v23];
                }

                v20 = [v18 countByEnumeratingWithState:&v57 objects:buf count:16];
              }

              while (v20);
            }

            v24 = [v17 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

            v8 = v56;
            v13 = v12 != 0;
            v14 = v55;
            v5 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
            v15 = log;
          }

          else
          {
            v24 = @"none";
          }

          *buf = 138543362;
          v62 = v24;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Deleting activations (no status): %{public}@", buf, 0xCu);
          if (v52)
          {
          }
        }

        [(RMActivationEngine *)self deleteObjects:v10 managementSourceIdentifier:v14 removeStatus:0];
        v25 = [v5[235] activationEngine];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v53 = [v8 count];
          if (v53)
          {
            loga = v25;
            v26 = v8;
            v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v26 count]);
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v28 = v26;
            v29 = [v28 countByEnumeratingWithState:&v57 objects:buf count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v58;
              do
              {
                for (j = 0; j != v30; j = j + 1)
                {
                  if (*v58 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [*(*(&v57 + 1) + 8 * j) description];
                  [v27 addObject:v33];
                }

                v30 = [v28 countByEnumeratingWithState:&v57 objects:buf count:16];
              }

              while (v30);
            }

            v34 = [v27 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

            v8 = v56;
            v13 = v12 != 0;
            v14 = v55;
            v5 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
            v25 = loga;
          }

          else
          {
            v34 = @"none";
          }

          *buf = 138543362;
          v62 = v34;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Deleting configurations (and status): %{public}@", buf, 0xCu);
          if (v53)
          {
          }
        }

        [(RMActivationEngine *)self deleteObjects:v8 managementSourceIdentifier:v14 removeStatus:1];
        v35 = [v5[235] activationEngine];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = [v12 count];
          v37 = v36;
          if (v36)
          {
            logb = v36;
            v54 = v35;
            v38 = v12;
            v39 = [NSMutableArray arrayWithCapacity:[v38 count]];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v40 = v38;
            v41 = [v40 countByEnumeratingWithState:&v57 objects:buf count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v58;
              do
              {
                for (k = 0; k != v42; k = k + 1)
                {
                  if (*v58 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = [*(*(&v57 + 1) + 8 * k) description];
                  [v39 addObject:v45];
                }

                v42 = [v40 countByEnumeratingWithState:&v57 objects:buf count:16];
              }

              while (v42);
            }

            v46 = [v39 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

            v8 = v56;
            v13 = v12 != 0;
            v35 = v54;
            v14 = v55;
            v37 = logb;
          }

          else
          {
            v46 = @"none";
          }

          *buf = 138543362;
          v62 = v46;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Deleting assets (and status): %{public}@", buf, 0xCu);
          if (v37)
          {
          }
        }

        v47 = [v4 personaIdentifier];
        [(RMActivationEngine *)self _assetsRemoved:v12 storeIdentifier:v14 personaID:v47];

        [(RMActivationEngine *)self deleteObjects:v12 managementSourceIdentifier:v14 removeStatus:1];
      }

      else
      {
        v14 = +[RMLog activationEngine];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Failed to delete assets.", buf, 2u);
        }
      }
    }

    else
    {
      v12 = +[RMLog activationEngine];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Failed to delete activations.", buf, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v10 = +[RMLog activationEngine];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Failed to delete configurations.", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)getDeclarationsMarkedForRemovalFromFetchRequest:(id)a3 managementSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 setIncludesPendingChanges:1];
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d)", @"managementSource", v6, @"loadState", 3];

  [v5 setPredicate:v7];
  v14[0] = @"declarationType";
  v14[1] = @"identifier";
  v14[2] = @"serverToken";
  v8 = [NSArray arrayWithObjects:v14 count:3];
  [v5 setPropertiesToFetch:v8];

  v13 = 0;
  v9 = [v5 execute:&v13];
  v10 = v13;
  if (!v9)
  {
    v11 = +[RMLog activationEngine];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100006FFC();
    }
  }

  return v9;
}

- (void)deleteObjects:(id)a3 managementSourceIdentifier:(id)a4 removeStatus:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (v5)
        {
          v14 = [*(*(&v17 + 1) + 8 * v12) identifier];
          v15 = [v13 serverToken];
          [RMConfigurationStatusArchiver removeStatusForStoreIdentifier:v8 declarationIdentifier:v14 declarationServerToken:v15 error:0];
        }

        v16 = [v13 managedObjectContext];
        [v16 deleteObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (BOOL)_updateUnknownDeclarations:(id)a3
{
  v3 = a3;
  v68 = [v3 managedObjectContext];
  v4 = +[RMActivationPayload fetchRequest];
  v66 = v3;
  v5 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d)", @"managementSource", v3, @"loadState", 4];
  [v4 setPredicate:v5];

  [v4 setIncludesPendingChanges:1];
  v85 = 0;
  v6 = [v4 execute:&v85];
  v7 = v85;
  if (!v6)
  {
    v8 = +[RMLog activationEngine];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10000708C();
    }
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v82;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v82 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v81 + 1) + 8 * i);
        v14 = [v13 declarationType];
        v15 = [v13 state];
        if ([RMModelDeclarationBase isDeclarationTypeKnown:v14])
        {
          if ([v13 reloadReturningError:0])
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [(RMActivationPayloadState *)v15 setInactiveReasons:&__NSArray0__struct];
          }
        }

        else if (!v15)
        {
          v15 = [[RMActivationPayloadState alloc] initWithContext:v68];
          [(RMActivationPayloadState *)v15 setActivation:v13];
          v17 = [RMModelStatusReason failedWithUnknownDeclarationType:v14];
          v95 = v17;
          v18 = [NSArray arrayWithObjects:&v95 count:1];
          [(RMActivationPayloadState *)v15 setInactiveReasons:v18];

          [v13 setState:v15];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
    }

    while (v10);
  }

  v19 = +[RMConfigurationPayload fetchRequest];
  v20 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d)", @"managementSource", v66, @"loadState", 4];
  [v19 setPredicate:v20];

  [v19 setIncludesPendingChanges:1];
  v85 = 0;
  v21 = [v19 execute:&v85];
  v22 = v85;
  if (!v21)
  {
    v23 = +[RMLog activationEngine];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_10000708C();
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v24 = v21;
  v25 = [v24 countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v78;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v78 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v77 + 1) + 8 * j);
        v30 = [v29 declarationType];
        v31 = [v29 state];
        if ([RMModelDeclarationBase isDeclarationTypeKnown:v30])
        {
          if ([v29 reloadReturningError:0])
          {
            v32 = v31 == 0;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            [(RMConfigurationPayloadState *)v31 setError:0];
          }
        }

        else if (!v31)
        {
          v31 = [[RMConfigurationPayloadState alloc] initWithContext:v68];
          [(RMConfigurationPayloadState *)v31 setConfiguration:v29];
          [(RMConfigurationPayloadState *)v31 setActive:0];
          v92 = @"Error.UnknownDeclarationType";
          v93 = v30;
          v33 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          [(RMConfigurationPayloadState *)v31 setError:v33];

          [v29 setState:v31];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v77 objects:v94 count:16];
    }

    while (v26);
  }

  v34 = +[RMAssetPayload fetchRequest];
  v35 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d)", @"managementSource", v66, @"loadState", 4];
  [v34 setPredicate:v35];

  [v34 setIncludesPendingChanges:1];
  v85 = 0;
  v36 = [v34 execute:&v85];
  v37 = v85;
  if (!v36)
  {
    v38 = +[RMLog activationEngine];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_10000708C();
    }
  }

  v65 = v24;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v39 = v36;
  v40 = [v39 countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v74;
    do
    {
      for (k = 0; k != v41; k = k + 1)
      {
        if (*v74 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v73 + 1) + 8 * k);
        v45 = [v44 declarationType];
        v46 = [v44 state];
        if ([RMModelDeclarationBase isDeclarationTypeKnown:v45])
        {
          if ([v44 reloadReturningError:0])
          {
            v47 = v46 == 0;
          }

          else
          {
            v47 = 1;
          }

          if (!v47)
          {
            [(RMAssetPayloadState *)v46 setError:0];
          }
        }

        else if (!v46)
        {
          v46 = [[RMAssetPayloadState alloc] initWithContext:v68];
          [(RMAssetPayloadState *)v46 setAsset:v44];
          v89 = @"Error.UnknownDeclarationType";
          v90 = v45;
          v48 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          [(RMAssetPayloadState *)v46 setError:v48];

          [v44 setState:v46];
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v41);
  }

  v49 = +[RMManagementPayload fetchRequest];
  v50 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d)", @"managementSource", v66, @"loadState", 4];
  [v49 setPredicate:v50];

  [v49 setIncludesPendingChanges:1];
  v85 = 0;
  v51 = [v49 execute:&v85];
  v52 = v85;
  if (!v51)
  {
    v53 = +[RMLog activationEngine];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      sub_10000708C();
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v54 = v51;
  v55 = [v54 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v70;
    do
    {
      for (m = 0; m != v56; m = m + 1)
      {
        if (*v70 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v69 + 1) + 8 * m);
        v60 = [v59 declarationType];
        v61 = [v59 state];
        if ([RMModelDeclarationBase isDeclarationTypeKnown:v60])
        {
          [v59 setLoadState:1];
          if ([v59 reloadReturningError:0])
          {
            v62 = v61 == 0;
          }

          else
          {
            v62 = 1;
          }

          if (!v62)
          {
            [(RMManagementPayloadState *)v61 setError:0];
          }
        }

        else if (!v61)
        {
          v61 = [[RMManagementPayloadState alloc] initWithContext:v68];
          [(RMManagementPayloadState *)v61 setManagement:v59];
          v86 = @"Error.UnknownDeclarationType";
          v87 = v60;
          v63 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          [(RMManagementPayloadState *)v61 setError:v63];

          [v59 setState:v61];
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v69 objects:v88 count:16];
    }

    while (v56);
  }

  return 1;
}

- (BOOL)_attachConfigurationReferences:(id)a3
{
  v3 = a3;
  v4 = +[RMLog activationEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100007128();
  }

  v5 = v3;
  v6 = +[RMConfigurationPayloadReference fetchRequest];
  [v6 setIncludesPendingChanges:1];
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) && ((%K == NULL) || (%K == %d))", @"activation.managementSource", v5, @"configuration", @"configuration.loadState", 3];
  [v6 setPredicate:v7];

  *buf = @"configurationIdentifier";
  v8 = [NSArray arrayWithObjects:buf count:1];
  [v6 setPropertiesToFetch:v8];

  *&v63 = 0;
  v9 = [v6 execute:&v63];
  v10 = v63;
  if (!v9)
  {
    v11 = +[RMLog activationEngine];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10000715C();
    }
  }

  if (!v9)
  {
    v48 = +[RMLog activationEngine];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v49 = "Failed to attach configuration references.";
LABEL_43:
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, v49, buf, 2u);
    goto LABEL_44;
  }

  if (![v9 count])
  {
    v48 = +[RMLog activationEngine];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v49 = "No configuration references to attach.";
    goto LABEL_43;
  }

  v53 = v9;
  v12 = [v9 valueForKey:@"configurationIdentifier"];
  v13 = +[RMConfigurationPayload fetchRequest];
  v51 = v5;
  v14 = v5;
  v15 = v12;
  [v13 setIncludesPendingChanges:1];
  v52 = v15;
  v16 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d) && (%K IN %@)", @"managementSource", v14, @"loadState", 1, @"identifier", v15];
  [v13 setPredicate:v16];

  v74 = @"identifier";
  v17 = [NSArray arrayWithObjects:&v74 count:1];
  [v13 setPropertiesToFetch:v17];

  v67 = 0;
  v18 = [v13 execute:&v67];
  v19 = v67;
  if (!v18)
  {
    v20 = +[RMLog activationEngine];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1000071C4();
    }
  }

  v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v18 count]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v22 = v18;
  v23 = [v22 countByEnumeratingWithState:&v63 objects:buf count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v64;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v64 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v63 + 1) + 8 * i);
        v28 = [v27 identifier];
        [v21 setObject:v27 forKeyedSubscript:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v63 objects:buf count:16];
    }

    while (v24);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = v53;
  v30 = [v29 countByEnumeratingWithState:&v59 objects:v68 count:16];
  v31 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
  if (v30)
  {
    v32 = v30;
    v33 = *v60;
    do
    {
      v34 = 0;
      do
      {
        if (*v60 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v59 + 1) + 8 * v34);
        v36 = [v35 configuration];
        v37 = [v35 configurationIdentifier];
        v38 = [v21 objectForKeyedSubscript:v37];

        if (v36 != v38)
        {
          v39 = [v31[235] activationEngine];
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
          if (v36)
          {
            if (v40)
            {
              v55 = [v35 activation];
              v57 = [v55 description];
              v54 = [v36 description];
              v41 = [v38 description];
              *buf = 138412802;
              *&buf[4] = v57;
              v70 = 2112;
              v71 = v54;
              v72 = 2112;
              v73 = v41;
              v42 = v41;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Reattaching configuration reference for %@ to from %@ to %@...", buf, 0x20u);

              v31 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
              v43 = v55;
              goto LABEL_34;
            }
          }

          else if (v40)
          {
            v58 = [v35 activation];
            v56 = [v58 description];
            v44 = [v38 description];
            *buf = 138412546;
            *&buf[4] = v56;
            v70 = 2112;
            v71 = v44;
            v45 = v44;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Attaching configuration reference for %@ to %@...", buf, 0x16u);

            v31 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
            v43 = v58;
LABEL_34:
          }

          [v35 setConfiguration:v38];
        }

        v34 = v34 + 1;
      }

      while (v32 != v34);
      v46 = [v29 countByEnumeratingWithState:&v59 objects:v68 count:16];
      v32 = v46;
    }

    while (v46);
  }

  v47 = [v31[235] activationEngine];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Attached configuration references.", buf, 2u);
  }

  v5 = v51;
  v48 = v52;
  v9 = v53;
LABEL_44:

  return v9 != 0;
}

- (BOOL)_attachAssetReferences:(id)a3
{
  v3 = a3;
  v4 = +[RMLog activationEngine];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100007254();
  }

  v5 = v3;
  v6 = +[RMAssetPayloadReference fetchRequest];
  [v6 setIncludesPendingChanges:1];
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) && ((%K == NULL) || (%K == %d))", @"configuration.managementSource", v5, @"asset", @"asset.loadState", 3];
  [v6 setPredicate:v7];

  *buf = @"assetIdentifier";
  v8 = [NSArray arrayWithObjects:buf count:1];
  [v6 setPropertiesToFetch:v8];

  *&v61 = 0;
  v9 = [v6 execute:&v61];
  v10 = v61;
  if (!v9)
  {
    v11 = +[RMLog activationEngine];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100007288();
    }
  }

  if (!v9)
  {
    v48 = +[RMLog activationEngine];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v49 = "Failed to attach asset references.";
LABEL_43:
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, v49, buf, 2u);
    goto LABEL_44;
  }

  if (![v9 count])
  {
    v48 = +[RMLog activationEngine];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v49 = "No asset references to attach.";
    goto LABEL_43;
  }

  v53 = v9;
  v12 = [v9 valueForKey:@"assetIdentifier"];
  v13 = +[RMAssetPayload fetchRequest];
  v51 = v5;
  v14 = v5;
  v15 = v12;
  [v13 setIncludesPendingChanges:1];
  v52 = v15;
  v16 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d) && (%K IN %@)", @"managementSource", v14, @"loadState", 1, @"identifier", v15];
  [v13 setPredicate:v16];

  v72 = @"identifier";
  v17 = [NSArray arrayWithObjects:&v72 count:1];
  [v13 setPropertiesToFetch:v17];

  v65 = 0;
  v18 = [v13 execute:&v65];
  v19 = v65;
  if (!v18)
  {
    v20 = +[RMLog activationEngine];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1000071C4();
    }
  }

  v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v18 count]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v22 = v18;
  v23 = [v22 countByEnumeratingWithState:&v61 objects:buf count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v62;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v61 + 1) + 8 * i);
        v28 = [v27 identifier];
        [v21 setObject:v27 forKeyedSubscript:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v61 objects:buf count:16];
    }

    while (v24);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v53;
  v29 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v58;
    do
    {
      v32 = 0;
      do
      {
        if (*v58 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v57 + 1) + 8 * v32);
        v34 = [v33 asset];
        v35 = [v33 assetIdentifier];
        v36 = [v21 objectForKeyedSubscript:v35];

        if (v34 != v36)
        {
          v37 = +[RMLog activationEngine];
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
          if (v34)
          {
            if (v38)
            {
              v55 = [v33 configuration];
              v54 = [v55 description];
              v39 = [v34 description];
              v40 = [v36 description];
              *buf = 138412802;
              *&buf[4] = v54;
              v68 = 2112;
              v69 = v39;
              v70 = 2112;
              v71 = v40;
              v41 = v40;
              _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Reattaching asset reference for %@ to from %@ to %@...", buf, 0x20u);

              goto LABEL_34;
            }
          }

          else if (v38)
          {
            v55 = [v33 configuration];
            v44 = [v55 description];
            v45 = [v36 description];
            *buf = 138412546;
            *&buf[4] = v44;
            v68 = 2112;
            v69 = v45;
            _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Attaching asset reference for %@ to %@...", buf, 0x16u);

LABEL_34:
          }

          v42 = [v33 assetIdentifier];
          v43 = [v21 objectForKeyedSubscript:v42];
          [v33 setAsset:v43];
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v46 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      v30 = v46;
    }

    while (v46);
  }

  v47 = +[RMLog activationEngine];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Attached asset references.", buf, 2u);
  }

  v5 = v51;
  v48 = v52;
  v9 = v53;
LABEL_44:

  return v9 != 0;
}

- (BOOL)_processManagementProperties:(id)a3
{
  v3 = a3;
  v4 = +[RMManagementPayload fetchRequest];
  v5 = +[RMModelManagementPropertiesDeclaration registeredIdentifier];
  v6 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %d) AND (%K == %@)", @"managementSource", v3, @"loadState", 1, @"declarationType", v5];
  [v4 setPredicate:v6];

  [v4 setIncludesPendingChanges:1];
  v39 = @"payload";
  v7 = [NSArray arrayWithObjects:&v39 count:1];
  [v4 setPropertiesToFetch:v7];

  v37 = 0;
  v8 = [v4 execute:&v37];
  v9 = v37;
  v10 = v9;
  if (v8)
  {
    v29 = v3;

    v11 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v34;
      while (2)
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = [*(*(&v33 + 1) + 8 * v17) payload];
          v32 = v18;
          v20 = [RMModelManagementPropertiesDeclaration loadData:v19 serializationType:0 error:&v32];
          v15 = v32;

          if (!v20)
          {
            v22 = +[RMLog activationEngine];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1000072F0();
            }

            v3 = v29;
            goto LABEL_22;
          }

          v21 = [v20 payloadANY];
          [v11 addEntriesFromDictionary:v21];

          v17 = v17 + 1;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 0;
    }

    v25 = v15;

    v3 = v29;
    v26 = [v29 identifier];
    v31 = v15;
    v27 = [RMManagementPropertiesArchiver persistPropertiesWithStoreIdentifier:v26 properties:v11 error:&v31];
    v15 = v31;

    if (v27)
    {
      v24 = 1;
      v8 = v30;
    }

    else
    {
      v12 = +[RMLog activationEngine];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100007358();
      }

LABEL_22:
      v8 = v30;

      v24 = 0;
    }
  }

  else
  {
    v23 = +[RMLog activationEngine];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1000073C0();
    }

    v24 = 0;
  }

  return v24;
}

- (BOOL)_processAllDeclarations:(id)a3
{
  v3 = a3;
  v4 = +[RMActivationPayload fetchRequest];
  v120 = v3;
  v5 = [NSPredicate predicateWithFormat:@"(%K == %@) AND ((%K == %d) OR ((%K != NULL) AND (%K.%K == YES)))", @"managementSource", v3, @"loadState", 1, @"state", @"state", @"active"];
  [v4 setPredicate:v5];

  [v4 setIncludesPendingChanges:1];
  v6 = [v4 entity];
  v7 = +[RMActivationPayload entity];
  v8 = [v6 isKindOfEntity:v7];

  if (v8)
  {
    v159[0] = @"identifier";
    v9 = [NSArray arrayWithObjects:v159 count:1];
    [v4 setPropertiesToFetch:v9];

    *v164 = @"state";
    *&v164[8] = @"configurationReferences";
    v10 = v164;
    v11 = 2;
  }

  else
  {
    v12 = +[RMConfigurationPayload entity];
    v13 = [v6 isKindOfEntity:v12];

    if (!v13)
    {
      goto LABEL_6;
    }

    *&v165 = @"identifier";
    v14 = [NSArray arrayWithObjects:&v165 count:1];
    [v4 setPropertiesToFetch:v14];

    *&v160 = @"state";
    v10 = &v160;
    v11 = 1;
  }

  v15 = [NSArray arrayWithObjects:v10 count:v11];
  [v4 setRelationshipKeyPathsForPrefetching:v15];

LABEL_6:
  *buf = 0;
  v16 = [v4 execute:buf];
  v17 = *buf;
  v18 = v17;
  v119 = v16;
  if (!v16)
  {
    v26 = v4;
    v27 = +[RMLog activationEngine];
    v28 = v120;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_100007428();
    }

    LOBYTE(v6) = 0;
    goto LABEL_100;
  }

  v19 = +[RMConfigurationPayload fetchRequest];
  v20 = [NSPredicate predicateWithFormat:@"(%K == %@) AND ((%K == %d) OR ((%K != NULL) AND (%K.%K == YES)))", @"managementSource", v120, @"loadState", 1, @"state", @"state", @"active"];
  [v19 setPredicate:v20];

  [v19 setIncludesPendingChanges:1];
  v6 = [v19 entity];
  v21 = +[RMActivationPayload entity];
  v22 = [v6 isKindOfEntity:v21];

  if (v22)
  {
    v159[0] = @"identifier";
    v23 = [NSArray arrayWithObjects:v159 count:1];
    [v19 setPropertiesToFetch:v23];

    *v164 = @"state";
    *&v164[8] = @"configurationReferences";
    v24 = v164;
    v25 = 2;
LABEL_14:
    v32 = [NSArray arrayWithObjects:v24 count:v25];
    [v19 setRelationshipKeyPathsForPrefetching:v32];

    goto LABEL_15;
  }

  v29 = +[RMConfigurationPayload entity];
  v30 = [v6 isKindOfEntity:v29];

  if (v30)
  {
    *&v165 = @"identifier";
    v31 = [NSArray arrayWithObjects:&v165 count:1];
    [v19 setPropertiesToFetch:v31];

    *&v160 = @"state";
    v24 = &v160;
    v25 = 1;
    goto LABEL_14;
  }

LABEL_15:
  *buf = 0;
  v26 = [v19 execute:buf];
  v33 = *buf;
  v34 = v33;
  if (v26)
  {

    v28 = v120;
    v35 = [v120 identifier];
    v150 = 0;
    v6 = [RMManagementPropertiesArchiver propertiesWithStoreIdentifier:v35 error:&v150];
    v36 = v150;

    v125 = v6;
    if (v6)
    {
      v37 = [(RMActivationEngine *)self _checkPredicateStatusKeysForActivations:v119 managementSource:v120];
      LOBYTE(v6) = v37 != 0;
      if (v37)
      {
        v118 = v36;
        v117 = v37;
        v38 = v37;
        v39 = v120;
        if ([v38 count])
        {
          v40 = [[RMManagementChannel alloc] initWithManagementSource:v39];
          v41 = objc_opt_new();
          v42 = [v41 queryForStatusWithKeyPaths:v38 onBehalfOfManagementChannel:v40];
          v123 = [v42 statusByKeyPath];
        }

        else
        {
          v123 = &__NSDictionary0__struct;
        }

        v127 = objc_opt_new();
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        obj = v119;
        v124 = v26;
        v126 = [obj countByEnumeratingWithState:&v146 objects:v153 count:16];
        if (v126)
        {
          v122 = *v147;
          do
          {
            v45 = 0;
            do
            {
              if (*v147 != v122)
              {
                objc_enumerationMutation(obj);
              }

              v46 = *(*(&v146 + 1) + 8 * v45);
              v47 = v123;
              v48 = v125;
              v49 = objc_opt_new();
              [v46 predicateDescription];
              v134 = v45;
              v137 = v49;
              v131 = v48;
              v130 = v132 = v47;
              if (v130)
              {
                v50 = [v46 predicateDescription];
                v151 = 0;
                v51 = [v50 evaluateWithStatus:v47 properties:v48 error:&v151];
                v52 = v151;

                v129 = v52;
                if (v51 == -1)
                {
                  v53 = [RMModelStatusReason predicateEvaluationFailedWithError:v52 forActivation:v46];
                }

                else
                {
                  if (v51)
                  {
                    goto LABEL_36;
                  }

                  v53 = [RMModelStatusReason predicateEvaluatedToFalseForActivation:v46];
                }

                v54 = v53;
                [v49 addObject:v53];
              }

              else
              {
                v129 = 0;
              }

LABEL_36:
              v136 = objc_opt_new();
              v133 = v46;
              v55 = [v46 configurationReferences];
              v56 = [v55 allObjects];

              v128 = [NSSortDescriptor sortDescriptorWithKey:@"configurationIdentifier" ascending:1];
              v169 = v128;
              v57 = [NSArray arrayWithObjects:&v169 count:1];
              v58 = [v56 sortedArrayUsingDescriptors:v57];

              v167 = 0u;
              v168 = 0u;
              v165 = 0u;
              v166 = 0u;
              v138 = v58;
              v141 = [v138 countByEnumeratingWithState:&v165 objects:v164 count:16];
              if (v141)
              {
                v139 = *v166;
                do
                {
                  for (i = 0; i != v141; i = i + 1)
                  {
                    if (*v166 != v139)
                    {
                      objc_enumerationMutation(v138);
                    }

                    v60 = *(*(&v165 + 1) + 8 * i);
                    v61 = [v60 configuration];
                    if (v61)
                    {
                      v62 = objc_autoreleasePoolPush();
                      v63 = objc_opt_new();
                      v64 = [v61 assetReferences];
                      v160 = 0u;
                      v161 = 0u;
                      v162 = 0u;
                      v163 = 0u;
                      v65 = [v64 countByEnumeratingWithState:&v160 objects:v159 count:16];
                      if (v65)
                      {
                        v66 = v65;
                        v67 = *v161;
                        do
                        {
                          for (j = 0; j != v66; j = j + 1)
                          {
                            if (*v161 != v67)
                            {
                              objc_enumerationMutation(v64);
                            }

                            v69 = *(*(&v160 + 1) + 8 * j);
                            v70 = [v69 asset];

                            if (!v70)
                            {
                              v71 = [v69 assetIdentifier];
                              [v63 addObject:v71];
                            }
                          }

                          v66 = [v64 countByEnumeratingWithState:&v160 objects:v159 count:16];
                        }

                        while (v66);
                      }

                      if ([v63 count])
                      {
                        v72 = +[RMLog activationEngine];
                        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                        {
                          v75 = [v61 identifier];
                          v76 = [v61 serverToken];
                          v135 = [v63 allObjects];
                          v77 = [v135 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
                          v78 = [v77 componentsJoinedByString:{@", "}];

                          *buf = 138412802;
                          *&buf[4] = v75;
                          v155 = 2112;
                          v156 = v76;
                          v157 = 2112;
                          v158 = v78;
                          _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "Configuration (%@:%@) is missing assets: %@", buf, 0x20u);
                        }

                        v73 = [RMModelStatusReason missingAssetIdentifiers:v63 forConfiguration:v61];
                        [v137 addObject:v73];
                      }

                      objc_autoreleasePoolPop(v62);
                    }

                    else
                    {
                      v74 = [v60 configurationIdentifier];
                      [v136 addObject:v74];
                    }
                  }

                  v141 = [v138 countByEnumeratingWithState:&v165 objects:v164 count:16];
                }

                while (v141);
              }

              v26 = v124;
              if ([v136 count])
              {
                v79 = +[RMLog activationEngine];
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                {
                  v93 = [v133 identifier];
                  v94 = [v133 serverToken];
                  v95 = [v136 allObjects];
                  v96 = [v95 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
                  v97 = [v96 componentsJoinedByString:{@", "}];

                  *buf = 138412802;
                  *&buf[4] = v93;
                  v155 = 2112;
                  v156 = v94;
                  v157 = 2112;
                  v158 = v97;
                  _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "Activation (%@:%@) is missing configurations: %@", buf, 0x20u);
                }

                v80 = [RMModelStatusReason missingConfigurationIdentifiers:v136 forActivation:v133];
                [v137 addObject:v80];
              }

              if (![v137 count])
              {
                v81 = [v133 configurationReferences];
                v82 = [v81 valueForKey:@"configuration"];

                [v127 unionSet:v82];
              }

              v83 = v133;
              v84 = v137;
              v85 = [v83 state];
              if (!v85)
              {
                v86 = [RMActivationPayloadState alloc];
                v87 = [v83 managedObjectContext];
                v85 = [(RMActivationPayloadState *)v86 initWithContext:v87];

                [(RMActivationPayloadState *)v85 setActivation:v83];
              }

              [(RMActivationPayloadState *)v85 setInactiveReasons:v84];
              if (([(RMActivationPayloadState *)v85 isInserted]& 1) != 0 || [(RMActivationPayloadState *)v85 hasChanges])
              {
                v88 = +[RMLog activationEngine];
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  v89 = [v83 description];
                  v90 = [(RMActivationPayloadState *)v85 active];
                  *v164 = 138412546;
                  v91 = @"active";
                  if (!v90)
                  {
                    v91 = @"inactive";
                  }

                  *&v164[4] = v89;
                  *&v164[12] = 2112;
                  *&v164[14] = v91;
                  v92 = v91;
                  _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "%@ state changed to %@", v164, 0x16u);
                }
              }

              v45 = v134 + 1;
            }

            while ((v134 + 1) != v126);
            v98 = [obj countByEnumeratingWithState:&v146 objects:v153 count:16];
            v126 = v98;
          }

          while (v98);
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v99 = v26;
        v100 = [v99 countByEnumeratingWithState:&v142 objects:v152 count:16];
        if (v100)
        {
          v101 = v100;
          v102 = *v143;
          do
          {
            v103 = 0;
            do
            {
              if (*v143 != v102)
              {
                objc_enumerationMutation(v99);
              }

              v104 = *(*(&v142 + 1) + 8 * v103);
              v105 = [v127 containsObject:v104];
              v106 = v104;
              v107 = [v106 state];
              if (!v107)
              {
                v108 = [RMConfigurationPayloadState alloc];
                v109 = [v106 managedObjectContext];
                v107 = [(RMConfigurationPayloadState *)v108 initWithContext:v109];

                [(RMConfigurationPayloadState *)v107 setConfiguration:v106];
              }

              if (v105 != [(RMConfigurationPayloadState *)v107 active])
              {
                [(RMConfigurationPayloadState *)v107 setActive:v105];
              }

              if (([(RMConfigurationPayloadState *)v107 isInserted]& 1) != 0 || [(RMConfigurationPayloadState *)v107 hasChanges])
              {
                v110 = +[RMLog activationEngine];
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v111 = [v106 description];
                  v112 = v111;
                  *v164 = 138412546;
                  v113 = @"active";
                  if (!v105)
                  {
                    v113 = @"inactive";
                  }

                  *&v164[4] = v111;
                  *&v164[12] = 2112;
                  *&v164[14] = v113;
                  v114 = v113;
                  _os_log_debug_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEBUG, "%@ state changed to %@", v164, 0x16u);
                }
              }

              v103 = v103 + 1;
            }

            while (v101 != v103);
            v115 = [v99 countByEnumeratingWithState:&v142 objects:v152 count:16];
            v101 = v115;
          }

          while (v115);
        }

        v28 = v120;
        v26 = v124;
        v36 = v118;
        LOBYTE(v6) = 1;
        v37 = v117;
      }
    }
  }

  else
  {
    v43 = v19;
    v44 = +[RMLog activationEngine];
    v28 = v120;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      sub_100007428();
    }

    LOBYTE(v6) = 0;
    v36 = v43;
  }

LABEL_100:
  return v6;
}

- (id)_checkPredicateStatusKeysForActivations:(id)a3 managementSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:buf count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v38 + 1) + 8 * i) predicateDescription];
        v16 = [v15 statusKeyPaths];
        [v9 addObjectsFromArray:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:buf count:16];
    }

    while (v12);
  }

  v17 = [v9 allObjects];
  v18 = [v17 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v19 = [v18 componentsJoinedByString:{@", "}];

  v20 = [v7 predicateStatusKeys];
  LOBYTE(v18) = [v20 isEqualToString:v19];

  if (v18)
  {
    goto LABEL_19;
  }

  v21 = +[RMLog activationEngine];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Activation predicate status key values have changed", buf, 2u);
  }

  v22 = [v7 predicateStatusKeys];
  v23 = [v22 componentsSeparatedByString:{@", "}];
  v24 = [NSSet setWithArray:v23];

  v25 = [v9 mutableCopy];
  [v25 minusSet:v24];
  [v7 setPredicateStatusKeys:v19];
  v26 = [(RMActivationEngine *)self context];
  v37 = 0;
  v27 = [v26 save:&v37];
  v28 = v37;

  v29 = +[RMLog activationEngine];
  v30 = v29;
  if (v27)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_10000751C();
    }

    v31 = +[RMExternalStatusPublisher sharedPublisher];
    [v31 listenToNotificationsForAllKeyPaths];

    if ([v25 count])
    {
      v32 = +[RMLog activationEngine];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_100007550();
      }

      v33 = +[RMExternalStatusPublisher sharedPublisher];
      v34 = [v7 identifier];
      [v33 publishStatusKeys:v25 storeIdentifier:v34];
    }

LABEL_19:
    v35 = v9;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    sub_1000074B4();
  }

  v35 = 0;
LABEL_23:

  return v35;
}

+ (BOOL)_isKeychainAsset:(id)a3
{
  v3 = qword_1000E6690;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1000075C4();
  }

  v5 = qword_1000E6688;
  v6 = [v4 declarationType];

  v7 = [v5 containsObject:v6];
  return v7;
}

- (void)_assetsRemoved:(id)a3 storeIdentifier:(id)a4 personaID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v8);
        }

        [(RMActivationEngine *)self _removedStoreAsset:*(*(&v15 + 1) + 8 * v14) storeIdentifier:v9 personaID:v10 isKeychain:[RMActivationEngine _isKeychainAsset:*(*(&v15 + 1) + 8 * v14)]];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

@end