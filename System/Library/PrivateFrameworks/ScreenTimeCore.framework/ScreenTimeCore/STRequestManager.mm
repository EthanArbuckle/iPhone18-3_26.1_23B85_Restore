@interface STRequestManager
+ (BOOL)_bundleIdentifiersContainCommunicationBundleIdentifier:(id)a3;
+ (void)_performDeviceManagementRequest:(id)a3;
- (STRequestManager)initWithOrganizationIdentifier:(id)a3 persistenceController:(id)a4;
- (STRequestManagerDelegate)delegate;
- (id)_expiredNotificationTimesForPredicates:(id)a3;
- (id)operationToSendStatusUpdate:(id)a3;
- (void)_processBlueprintChanges;
- (void)_processDeclarationsPayload:(id)a3;
- (void)_processStatusPayload:(id)a3;
- (void)_updateWithImageGenerationThenPerformRequest:(id)a3 requestPayload:(id)a4;
- (void)debouncer:(id)a3 didDebounce:(id)a4;
- (void)installFromRequest:(id)a3;
- (void)invalidate;
- (void)persistBlueprintsFromBlueprintPayload:(id)a3 withCompletion:(id)a4;
- (void)processBlueprintChanges;
@end

@implementation STRequestManager

- (STRequestManager)initWithOrganizationIdentifier:(id)a3 persistenceController:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = STRequestManager;
  v7 = a3;
  v8 = [(STRequestManager *)&v17 init];
  v9 = [v7 copy];

  organizationIdentifier = v8->_organizationIdentifier;
  v8->_organizationIdentifier = v9;

  persistenceController = v8->_persistenceController;
  v8->_persistenceController = v6;
  v12 = v6;

  if (_os_feature_enabled_impl())
  {
    v13 = 0.1;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = [[STDebouncer alloc] initWithMinCoalescenceInterval:v13 maxCoalescenceInterval:10.0];
  changeNotificationDebouncer = v8->_changeNotificationDebouncer;
  v8->_changeNotificationDebouncer = v14;

  [(STDebouncer *)v8->_changeNotificationDebouncer setDelegate:v8];
  return v8;
}

- (void)invalidate
{
  v3 = +[STLog requestManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ : Invalidating", &v4, 0xCu);
  }
}

- (void)processBlueprintChanges
{
  v3 = +[STLog requestManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Process blueprint changes", v5, 2u);
  }

  v4 = [(STRequestManager *)self changeNotificationDebouncer];
  [v4 bounce:0];
}

- (void)debouncer:(id)a3 didDebounce:(id)a4
{
  v5 = a3;
  v6 = [(STRequestManager *)self changeNotificationDebouncer];

  if (v6 == v5)
  {

    [(STRequestManager *)self _processBlueprintChanges];
  }
}

- (void)_processBlueprintChanges
{
  v3 = +[STLog requestManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Process installed blueprints starting", buf, 2u);
  }

  v4 = [(STRequestManager *)self persistenceController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006E874;
  v5[3] = &unk_1001A5748;
  v5[4] = self;
  [STProcessBlueprintChanges processBlueprintsChangesWithPersistenceController:v4 completionHandler:v5];
}

- (void)persistBlueprintsFromBlueprintPayload:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog requestManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Persist blueprint payload: %@", buf, 0xCu);
  }

  v9 = [(STRequestManager *)self persistenceController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006EB0C;
  v11[3] = &unk_1001A5770;
  v12 = v7;
  v10 = v7;
  [STPersistBlueprints persistBlueprintsPayload:v6 persistenceController:v9 completionHandler:v11];
}

- (void)installFromRequest:(id)a3
{
  v4 = a3;
  v5 = +[STLog requestManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Install requests", buf, 2u);
  }

  v6 = [v4 payloadType];
  if (![v6 isEqualToString:@"Status"])
  {
    if ([v6 isEqualToString:@"Events"])
    {
      v7 = +[STLog requestManager];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received event payload, ignoring", v8, 2u);
      }
    }

    else
    {
      if ([v6 isEqualToString:@"Set"])
      {
        [(STRequestManager *)self _processDeclarationsPayload:v4];
        goto LABEL_13;
      }

      v7 = +[STLog requestManager];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10011C340();
      }
    }

    goto LABEL_13;
  }

  [(STRequestManager *)self _processStatusPayload:v4];
LABEL_13:
}

- (void)_processStatusPayload:(id)a3
{
  v4 = a3;
  v5 = [(STRequestManager *)self persistenceController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EE68;
  v7[3] = &unk_1001A3DE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBackgroundTask:v7];
}

+ (BOOL)_bundleIdentifiersContainCommunicationBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[DMFCommunicationPolicyMonitor communicationBundleIdentifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 containsObject:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_processDeclarationsPayload:(id)a3
{
  v4 = a3;
  v5 = [(STRequestManager *)self organizationIdentifier];
  v6 = [v4 deviceManagementRequestForOrganizationID:v5];

  if (v6)
  {
    v7 = [v4 underlyingPayload];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(STRequestManager *)self _updateWithImageGenerationThenPerformRequest:v6 requestPayload:v4];
    }

    else
    {
      v10 = +[STLog requestManager];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10011C4A8();
      }

      [objc_opt_class() _performDeviceManagementRequest:v6];
    }
  }

  else
  {
    v9 = +[STLog requestManager];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10011C510();
    }
  }
}

- (void)_updateWithImageGenerationThenPerformRequest:(id)a3 requestPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 underlyingPayload];
  v9 = +[STLog checkpoint];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v7 UUID];
    v13 = [v8 declarations];
    *buf = 138543875;
    v27 = v10;
    v28 = 2114;
    v29 = v12;
    v30 = 2113;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Original declarations: %{public}@ %{private}@", buf, 0x20u);
  }

  v14 = objc_alloc_init(STRestrictionPayloadUtility);
  v15 = [(STRequestManager *)self persistenceController];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100070510;
  v20[3] = &unk_1001A57E8;
  v21 = v6;
  v22 = v7;
  v23 = self;
  v24 = v14;
  v25 = v8;
  v16 = v8;
  v17 = v14;
  v18 = v7;
  v19 = v6;
  [v15 performBackgroundTask:v20];
}

+ (void)_performDeviceManagementRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMFConnection systemConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100070A30;
  v6[3] = &unk_1001A5808;
  v6[4] = a1;
  [v5 performRequest:v4 completion:v6];
}

- (id)_expiredNotificationTimesForPredicates:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v21;
    v7 = DMFDeclarationStatePredicatePayloadStatusKey;
    v8 = DMFDeclarationStatePredicatePayloadStatusExpiredNotificationTimesKey;
    v9 = DMFDeclarationStatePredicateSubPredicatesKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:v7];
        v13 = [v12 objectForKeyedSubscript:v8];
        [v4 addObjectsFromArray:v13];
        v14 = [v11 objectForKeyedSubscript:v9];
        v15 = [(STRequestManager *)self _expiredNotificationTimesForPredicates:v14];
        if ([v15 count])
        {
          [v4 addObjectsFromArray:v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)operationToSendStatusUpdate:(id)a3
{
  v4 = a3;
  v5 = +[STLog requestManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C7C4();
  }

  v6 = [[STReportStatusAndEventOperation alloc] initWithStatus:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100070E1C;
  v8[3] = &unk_1001A5830;
  v8[4] = self;
  [(STReportStatusAndEventOperation *)v6 setPayloadHandler:v8];

  return v6;
}

- (STRequestManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end