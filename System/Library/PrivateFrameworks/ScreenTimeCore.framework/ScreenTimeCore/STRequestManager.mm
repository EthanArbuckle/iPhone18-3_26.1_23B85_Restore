@interface STRequestManager
+ (BOOL)_bundleIdentifiersContainCommunicationBundleIdentifier:(id)identifier;
+ (void)_performDeviceManagementRequest:(id)request;
- (STRequestManager)initWithOrganizationIdentifier:(id)identifier persistenceController:(id)controller;
- (STRequestManagerDelegate)delegate;
- (id)_expiredNotificationTimesForPredicates:(id)predicates;
- (id)operationToSendStatusUpdate:(id)update;
- (void)_processBlueprintChanges;
- (void)_processDeclarationsPayload:(id)payload;
- (void)_processStatusPayload:(id)payload;
- (void)_updateWithImageGenerationThenPerformRequest:(id)request requestPayload:(id)payload;
- (void)debouncer:(id)debouncer didDebounce:(id)debounce;
- (void)installFromRequest:(id)request;
- (void)invalidate;
- (void)persistBlueprintsFromBlueprintPayload:(id)payload withCompletion:(id)completion;
- (void)processBlueprintChanges;
@end

@implementation STRequestManager

- (STRequestManager)initWithOrganizationIdentifier:(id)identifier persistenceController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = STRequestManager;
  identifierCopy = identifier;
  v8 = [(STRequestManager *)&v17 init];
  v9 = [identifierCopy copy];

  organizationIdentifier = v8->_organizationIdentifier;
  v8->_organizationIdentifier = v9;

  persistenceController = v8->_persistenceController;
  v8->_persistenceController = controllerCopy;
  v12 = controllerCopy;

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
    selfCopy = self;
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

  changeNotificationDebouncer = [(STRequestManager *)self changeNotificationDebouncer];
  [changeNotificationDebouncer bounce:0];
}

- (void)debouncer:(id)debouncer didDebounce:(id)debounce
{
  debouncerCopy = debouncer;
  changeNotificationDebouncer = [(STRequestManager *)self changeNotificationDebouncer];

  if (changeNotificationDebouncer == debouncerCopy)
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

  persistenceController = [(STRequestManager *)self persistenceController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006E874;
  v5[3] = &unk_1001A5748;
  v5[4] = self;
  [STProcessBlueprintChanges processBlueprintsChangesWithPersistenceController:persistenceController completionHandler:v5];
}

- (void)persistBlueprintsFromBlueprintPayload:(id)payload withCompletion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v8 = +[STLog requestManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = payloadCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Persist blueprint payload: %@", buf, 0xCu);
  }

  persistenceController = [(STRequestManager *)self persistenceController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006EB0C;
  v11[3] = &unk_1001A5770;
  v12 = completionCopy;
  v10 = completionCopy;
  [STPersistBlueprints persistBlueprintsPayload:payloadCopy persistenceController:persistenceController completionHandler:v11];
}

- (void)installFromRequest:(id)request
{
  requestCopy = request;
  v5 = +[STLog requestManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Install requests", buf, 2u);
  }

  payloadType = [requestCopy payloadType];
  if (![payloadType isEqualToString:@"Status"])
  {
    if ([payloadType isEqualToString:@"Events"])
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
      if ([payloadType isEqualToString:@"Set"])
      {
        [(STRequestManager *)self _processDeclarationsPayload:requestCopy];
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

  [(STRequestManager *)self _processStatusPayload:requestCopy];
LABEL_13:
}

- (void)_processStatusPayload:(id)payload
{
  payloadCopy = payload;
  persistenceController = [(STRequestManager *)self persistenceController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EE68;
  v7[3] = &unk_1001A3DE0;
  v8 = payloadCopy;
  selfCopy = self;
  v6 = payloadCopy;
  [persistenceController performBackgroundTask:v7];
}

+ (BOOL)_bundleIdentifiersContainCommunicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[DMFCommunicationPolicyMonitor communicationBundleIdentifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = identifierCopy;
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

- (void)_processDeclarationsPayload:(id)payload
{
  payloadCopy = payload;
  organizationIdentifier = [(STRequestManager *)self organizationIdentifier];
  v6 = [payloadCopy deviceManagementRequestForOrganizationID:organizationIdentifier];

  if (v6)
  {
    underlyingPayload = [payloadCopy underlyingPayload];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(STRequestManager *)self _updateWithImageGenerationThenPerformRequest:v6 requestPayload:payloadCopy];
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

- (void)_updateWithImageGenerationThenPerformRequest:(id)request requestPayload:(id)payload
{
  requestCopy = request;
  payloadCopy = payload;
  underlyingPayload = [payloadCopy underlyingPayload];
  v9 = +[STLog checkpoint];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    uUID = [payloadCopy UUID];
    declarations = [underlyingPayload declarations];
    *buf = 138543875;
    v27 = v10;
    v28 = 2114;
    v29 = uUID;
    v30 = 2113;
    v31 = declarations;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Original declarations: %{public}@ %{private}@", buf, 0x20u);
  }

  v14 = objc_alloc_init(STRestrictionPayloadUtility);
  persistenceController = [(STRequestManager *)self persistenceController];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100070510;
  v20[3] = &unk_1001A57E8;
  v21 = requestCopy;
  v22 = payloadCopy;
  selfCopy = self;
  v24 = v14;
  v25 = underlyingPayload;
  v16 = underlyingPayload;
  v17 = v14;
  v18 = payloadCopy;
  v19 = requestCopy;
  [persistenceController performBackgroundTask:v20];
}

+ (void)_performDeviceManagementRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMFConnection systemConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100070A30;
  v6[3] = &unk_1001A5808;
  v6[4] = self;
  [v5 performRequest:requestCopy completion:v6];
}

- (id)_expiredNotificationTimesForPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = predicatesCopy;
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

- (id)operationToSendStatusUpdate:(id)update
{
  updateCopy = update;
  v5 = +[STLog requestManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C7C4();
  }

  v6 = [[STReportStatusAndEventOperation alloc] initWithStatus:updateCopy];
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