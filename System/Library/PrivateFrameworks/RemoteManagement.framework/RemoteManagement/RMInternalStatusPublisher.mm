@interface RMInternalStatusPublisher
+ (NSSet)supportedKeyPaths;
+ (RMInternalStatusPublisher)sharedPublisher;
+ (id)restrictedKeyPaths;
+ (void)start;
- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop;
- (NSSet)supportedKeyPaths;
- (RMInternalStatusPublisher)initWithInternalDeviceStatusByKeyPath:(id)path subscribedStatusKeyPathUpdater:(id)updater persistentHistoryNotifier:(id)notifier context:(id)context;
- (RMInternalStatusPublisherDelegate)delegate;
- (id)_queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementSource:(id)source;
- (id)queryForDeclarationStatusWithManagementSourceIdentifier:(id)identifier error:(id *)error;
- (id)queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementChannel:(id)channel error:(id *)error;
- (void)_notifyInternalDeviceStatusChangesIfNeeded;
- (void)_start;
- (void)_stop;
- (void)persistentHistoryNotifier:(id)notifier hasChanges:(id)changes;
@end

@implementation RMInternalStatusPublisher

+ (RMInternalStatusPublisher)sharedPublisher
{
  if (qword_1000E68D8 != -1)
  {
    sub_100048B40();
  }

  v3 = qword_1000E68D0;

  return v3;
}

- (RMInternalStatusPublisher)initWithInternalDeviceStatusByKeyPath:(id)path subscribedStatusKeyPathUpdater:(id)updater persistentHistoryNotifier:(id)notifier context:(id)context
{
  pathCopy = path;
  updaterCopy = updater;
  notifierCopy = notifier;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = RMInternalStatusPublisher;
  v14 = [(RMInternalStatusPublisher *)&v22 init];
  v15 = v14;
  if (v14)
  {
    if (pathCopy)
    {
      v16 = pathCopy;
    }

    else
    {
      v16 = &__NSDictionary0__struct;
    }

    objc_storeStrong(&v14->_internalDeviceStatusByKeyPath, v16);
    objc_storeStrong(&v15->_subscribedStatusKeyPathUpdater, updater);
    objc_storeStrong(&v15->_persistentHistoryNotifier, notifier);
    objc_storeStrong(&v15->_context, context);
    v17 = objc_opt_new();
    internalDeviceStatusByKeyPathLock = v15->_internalDeviceStatusByKeyPathLock;
    v15->_internalDeviceStatusByKeyPathLock = v17;

    v19 = objc_opt_new();
    internalDeviceStatusByKeyPathNotificationLock = v15->_internalDeviceStatusByKeyPathNotificationLock;
    v15->_internalDeviceStatusByKeyPathNotificationLock = v19;
  }

  return v15;
}

+ (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F064;
  block[3] = &unk_1000D12D0;
  block[4] = self;
  if (qword_1000E68E0 != -1)
  {
    dispatch_once(&qword_1000E68E0, block);
  }
}

- (void)_start
{
  v3 = _os_activity_create(&_mh_execute_header, "InternalStatusPublisher: Starting...", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v3, &v7);
  v4 = +[RMLog internalStatusPublisher];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100048B54(v4);
  }

  persistentHistoryNotifier = [(RMInternalStatusPublisher *)self persistentHistoryNotifier];
  [persistentHistoryNotifier setDelegate:self];
  [persistentHistoryNotifier start];
  v6 = +[RMLog internalStatusPublisher];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100048B98(v6);
  }

  [(RMInternalStatusPublisher *)self _notifyInternalDeviceStatusChangesIfNeeded];
  os_activity_scope_leave(&v7);
}

- (void)_stop
{
  [(RMInternalStatusPublisher *)self setSubscribedStatusKeyPathUpdater:0];
  persistentHistoryNotifier = [(RMInternalStatusPublisher *)self persistentHistoryNotifier];
  [persistentHistoryNotifier setDelegate:0];
}

- (void)_notifyInternalDeviceStatusChangesIfNeeded
{
  v28 = self->_internalDeviceStatusByKeyPathNotificationLock;
  objc_sync_enter(v28);
  v36 = objc_opt_new();
  obj = self->_internalDeviceStatusByKeyPathLock;
  objc_sync_enter(obj);
  selfCopy = self;
  location = &self->_internalDeviceStatusByKeyPath;
  v3 = self->_internalDeviceStatusByKeyPath;
  v4 = +[RMDevice currentDevice];
  v45[0] = RMModelStatusItemDeviceModelFamily;
  modelFamily = [v4 modelFamily];
  *buf = modelFamily;
  v45[1] = RMModelStatusItemDeviceModelIdentifier;
  modelIdentifier = [v4 modelIdentifier];
  *&buf[8] = modelIdentifier;
  v45[2] = RMModelStatusItemDeviceModelMarketingName;
  modelMarketingName = [v4 modelMarketingName];
  *&buf[16] = modelMarketingName;
  v45[3] = RMModelStatusItemDeviceModelNumber;
  modelNumber = [v4 modelNumber];
  v47 = modelNumber;
  v45[4] = RMModelStatusItemDeviceOperatingSystemBuildVersion;
  operatingSystemBuildVersion = [v4 operatingSystemBuildVersion];
  v48 = operatingSystemBuildVersion;
  v45[5] = RMModelStatusItemDeviceOperatingSystemFamily;
  operatingSystem = [v4 operatingSystem];
  v49 = operatingSystem;
  v45[6] = RMModelStatusItemDeviceOperatingSystemMarketingName;
  operatingSystemMarketingName = [v4 operatingSystemMarketingName];
  v50 = operatingSystemMarketingName;
  v45[7] = RMModelStatusItemDeviceOperatingSystemSupplementalBuildVersion;
  operatingSystemSupplementalBuildVersion = [v4 operatingSystemSupplementalBuildVersion];
  v51 = operatingSystemSupplementalBuildVersion;
  v45[8] = RMModelStatusItemDeviceOperatingSystemSupplementalExtraVersion;
  operatingSystemSupplementalExtraVersion = [v4 operatingSystemSupplementalExtraVersion];
  v52 = operatingSystemSupplementalExtraVersion;
  v45[9] = RMModelStatusItemDeviceOperatingSystemVersion;
  operatingSystemVersion = [v4 operatingSystemVersion];
  v53 = operatingSystemVersion;
  v45[10] = RMModelStatusItemDeviceSerialNumber;
  serialNumber = [v4 serialNumber];
  v54 = serialNumber;
  v45[11] = RMModelStatusItemDeviceUDID;
  uDID = [v4 UDID];
  v55 = uDID;
  v11 = [NSDictionary dictionaryWithObjects:buf forKeys:v45 count:12];

  if ([v11 isEqual:v3])
  {

    v12 = obj;
    objc_sync_exit(obj);
LABEL_17:

    goto LABEL_18;
  }

  allKeys = [(NSDictionary *)v3 allKeys];
  v14 = [NSMutableSet setWithArray:allKeys];

  allKeys2 = [v11 allKeys];
  [v14 addObjectsFromArray:allKeys2];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v17)
  {
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        v21 = [(NSDictionary *)v3 objectForKeyedSubscript:v20];
        v22 = [v11 objectForKeyedSubscript:v20];
        if (v21 != v22 && ([v21 isEqual:v22] & 1) == 0)
        {
          v23 = +[RMLog internalStatusPublisher];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543874;
            *&buf[4] = v20;
            *&buf[12] = 2114;
            *&buf[14] = v21;
            *&buf[22] = 2114;
            v47 = v22;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Key %{public}@ changed from: %{public}@ to: %{public}@", buf, 0x20u);
          }

          [v36 addObject:v20];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  objc_storeStrong(location, v11);
  objc_sync_exit(obj);

  if ([v36 count])
  {
    subscribedStatusKeyPathUpdater = [(RMInternalStatusPublisher *)selfCopy subscribedStatusKeyPathUpdater];
    [subscribedStatusKeyPathUpdater notifyStatusDidChangeForKeyPaths:v36];

    context = [(RMInternalStatusPublisher *)selfCopy context];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10003F81C;
    v37[3] = &unk_1000D1B58;
    v37[4] = selfCopy;
    v38 = v11;
    v39 = context;
    v12 = v39;
    [v39 performBlockAndWait:v37];

    goto LABEL_17;
  }

LABEL_18:

  objc_sync_exit(v28);
}

+ (NSSet)supportedKeyPaths
{
  v5[0] = RMModelStatusItemDeviceModelFamily;
  v5[1] = RMModelStatusItemDeviceModelIdentifier;
  v5[2] = RMModelStatusItemDeviceModelMarketingName;
  v5[3] = RMModelStatusItemDeviceModelNumber;
  v5[4] = RMModelStatusItemDeviceOperatingSystemBuildVersion;
  v5[5] = RMModelStatusItemDeviceOperatingSystemFamily;
  v5[6] = RMModelStatusItemDeviceOperatingSystemMarketingName;
  v5[7] = RMModelStatusItemDeviceOperatingSystemSupplementalBuildVersion;
  v5[8] = RMModelStatusItemDeviceOperatingSystemSupplementalExtraVersion;
  v5[9] = RMModelStatusItemDeviceOperatingSystemVersion;
  v5[10] = RMModelStatusItemDeviceSerialNumber;
  v5[11] = RMModelStatusItemDeviceUDID;
  v5[12] = RMModelStatusItemManagementDeclarations;
  v2 = [NSArray arrayWithObjects:v5 count:13];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (NSSet)supportedKeyPaths
{
  v2 = objc_opt_class();

  return [v2 supportedKeyPaths];
}

+ (id)restrictedKeyPaths
{
  v5[0] = RMModelStatusItemDeviceUDID;
  v5[1] = RMModelStatusItemDeviceSerialNumber;
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementChannel:(id)channel error:(id *)error
{
  pathsCopy = paths;
  channelCopy = channel;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10003FD10;
  v34 = sub_10003FD20;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10003FD10;
  v28 = sub_10003FD20;
  v29 = 0;
  context = [(RMInternalStatusPublisher *)self context];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003FD28;
  v17[3] = &unk_1000D21A0;
  v11 = channelCopy;
  v22 = &v30;
  v23 = &v24;
  v18 = v11;
  selfCopy = self;
  v12 = pathsCopy;
  v20 = v12;
  v13 = context;
  v21 = v13;
  [v13 performBlockAndWait:v17];
  v14 = v31[5];
  if (v14)
  {
    v15 = 0;
    if (error)
    {
      *error = v14;
    }
  }

  else
  {
    v15 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

- (id)queryForDeclarationStatusWithManagementSourceIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10003FD10;
  v28 = sub_10003FD20;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10003FD10;
  v22 = sub_10003FD20;
  v23 = 0;
  context = [(RMInternalStatusPublisher *)self context];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100040098;
  v13[3] = &unk_1000D21C8;
  v8 = identifierCopy;
  v14 = v8;
  v16 = &v24;
  v17 = &v18;
  v9 = context;
  v15 = v9;
  [v9 performBlockAndWait:v13];
  v10 = v25[5];
  if (v10)
  {
    v11 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    v11 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)_queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementSource:(id)source
{
  pathsCopy = paths;
  sourceCopy = source;
  v483 = objc_opt_new();
  v409 = RMModelStatusItemManagementDeclarations;
  v410 = pathsCopy;
  v411 = sourceCopy;
  if (![pathsCopy containsObject:?])
  {
    goto LABEL_421;
  }

  v406 = sourceCopy;
  activations = [v406 activations];
  v431 = objc_opt_new();
  v533 = 0u;
  v534 = 0u;
  v535 = 0u;
  v536 = 0u;
  obj = activations;
  v439 = [obj countByEnumeratingWithState:&v533 objects:v538 count:16];
  if (v439)
  {
    v435 = *v534;
    v427 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
    v421 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
    v424 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
    do
    {
      v8 = 0;
      do
      {
        if (*v534 != v435)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v447 = v8;
        v10 = *(*(&v533 + 1) + 8 * v8);
        if (![v10 loadState])
        {
          goto LABEL_104;
        }

        v463 = v10;
        v455 = v427;
        v459 = objc_opt_new();
        if ([v463 loadState] == 2)
        {
          v11 = v424;

          v451 = [RMModelStatusReason invalidPayloadForDeclaration:v463];
          [v459 addObject:v451];
          v12 = 0;
          v455 = v11;
          goto LABEL_100;
        }

        v13 = v463;
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          managementSource = [v13 managementSource];
          identifier = [managementSource identifier];
          identifier2 = [v13 identifier];
          serverToken = [v13 serverToken];
          v451 = [RMConfigurationStatusArchiver statusForStoreIdentifier:identifier declarationIdentifier:identifier2 serverToken:serverToken];
        }

        else
        {
          *&v539 = @"valid";
          v552 = &__kCFBooleanTrue;
          v451 = [NSDictionary dictionaryWithObjects:&v552 forKeys:&v539 count:1];
        }

        if (v451)
        {
          v18 = [v451 objectForKeyedSubscript:@"valid"];
          bOOLValue = [v18 BOOLValue];
          v20 = v421;
          if (!bOOLValue)
          {
            v20 = v424;
          }

          v21 = v20;

          v22 = [v451 objectForKeyedSubscript:@"reasons"];
          if (v22)
          {
            [v459 addObjectsFromArray:v22];
          }

          v455 = v21;
        }

        v443 = v13;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v443;
          state = [v23 state];
          v25 = state;
          if (state)
          {
            inactiveReasons = [state inactiveReasons];
            v27 = inactiveReasons;
            v28 = &__NSArray0__struct;
            if (inactiveReasons)
            {
              v28 = inactiveReasons;
            }

            v29 = v28;
          }

          else
          {
            v27 = [RMModelStatusReason missingStateForDeclaration:v23];
            v552 = v27;
            v29 = [NSArray arrayWithObjects:&v552 count:1];
          }

          v31 = v29;

          goto LABEL_96;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v511 = v443;
          state2 = [v511 state];
          v502 = state2;
          if (state2)
          {
            v31 = &__NSArray0__struct;
            if (([state2 active] & 1) == 0)
            {
              v520 = objc_opt_new();
              configurationReferences = [v511 configurationReferences];
              allObjects = [configurationReferences allObjects];

              v493 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
              *&v547 = v493;
              v34 = [NSArray arrayWithObjects:&v547 count:1];
              v35 = [allObjects sortedArrayUsingDescriptors:v34];

              v541 = 0u;
              v542 = 0u;
              v539 = 0u;
              v540 = 0u;
              v36 = v35;
              v37 = [v36 countByEnumeratingWithState:&v539 objects:&v552 count:16];
              if (v37)
              {
                v38 = *v540;
                do
                {
                  for (i = 0; i != v37; i = i + 1)
                  {
                    if (*v540 != v38)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v40 = *(*(&v539 + 1) + 8 * i);
                    activation = [v40 activation];
                    if (activation)
                    {
                      activation2 = [v40 activation];
                      state3 = [activation2 state];
                      v44 = state3;
                      if (state3)
                      {
                        inactiveReasons2 = [state3 inactiveReasons];
                        v46 = inactiveReasons2;
                        v47 = &__NSArray0__struct;
                        if (inactiveReasons2)
                        {
                          v47 = inactiveReasons2;
                        }

                        v48 = v47;
                      }

                      else
                      {
                        v46 = [RMModelStatusReason missingStateForDeclaration:activation2];
                        *&v564 = v46;
                        v48 = [NSArray arrayWithObjects:&v564 count:1];
                      }

                      v49 = v48;

                      if ([v49 count])
                      {
                        activation3 = [v40 activation];
                        v51 = [RMModelStatusReason activationFailed:activation3];
                        [v520 addObject:v51];
                      }
                    }
                  }

                  v37 = [v36 countByEnumeratingWithState:&v539 objects:&v552 count:16];
                }

                while (v37);
              }

              if ([v511 loadState] == 4)
              {
                declarationType = [v511 declarationType];
                v53 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType];
                [v520 addObject:v53];

                goto LABEL_92;
              }

              if (![v36 count])
              {
                declarationType = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v511];
                [v520 addObject:declarationType];
LABEL_92:
              }

              v87 = v520;

              v31 = v87;
LABEL_94:
            }

            goto LABEL_96;
          }

          v87 = [RMModelStatusReason missingStateForDeclaration:v511];
          v552 = v87;
          v31 = [NSArray arrayWithObjects:&v552 count:1];
          goto LABEL_94;
        }

        objc_opt_class();
        v31 = &__NSArray0__struct;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_96;
        }

        v415 = v443;
        v467 = objc_opt_new();
        assetReferences = [v415 assetReferences];
        allObjects2 = [assetReferences allObjects];

        v412 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
        v551 = v412;
        v56 = [NSArray arrayWithObjects:&v551 count:1];
        v57 = [allObjects2 sortedArrayUsingDescriptors:v56];

        v549 = 0u;
        v550 = 0u;
        v547 = 0u;
        v548 = 0u;
        v471 = v57;
        v484 = [v471 countByEnumeratingWithState:&v547 objects:&v539 count:16];
        if (!v484)
        {
          goto LABEL_84;
        }

        v479 = *v548;
        do
        {
          for (j = 0; j != v484; j = j + 1)
          {
            if (*v548 != v479)
            {
              objc_enumerationMutation(v471);
            }

            configuration = [*(*(&v547 + 1) + 8 * j) configuration];
            v503 = configuration;
            v59 = configuration;
            if (configuration)
            {
              v494 = configuration;
              state4 = [v494 state];
              v488 = state4;
              if (state4)
              {
                v61 = &__NSArray0__struct;
                if (([state4 active] & 1) == 0)
                {
                  v521 = objc_opt_new();
                  configurationReferences2 = [v494 configurationReferences];
                  allObjects3 = [configurationReferences2 allObjects];

                  v475 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                  v568 = v475;
                  v64 = [NSArray arrayWithObjects:&v568 count:1];
                  v65 = [allObjects3 sortedArrayUsingDescriptors:v64];

                  v566 = 0u;
                  v567 = 0u;
                  v564 = 0u;
                  v565 = 0u;
                  v66 = v65;
                  v67 = [v66 countByEnumeratingWithState:&v564 objects:&v552 count:16];
                  if (v67)
                  {
                    v68 = *v565;
                    do
                    {
                      for (k = 0; k != v67; k = k + 1)
                      {
                        if (*v565 != v68)
                        {
                          objc_enumerationMutation(v66);
                        }

                        v70 = *(*(&v564 + 1) + 8 * k);
                        activation4 = [v70 activation];
                        if (activation4)
                        {
                          activation5 = [v70 activation];
                          state5 = [activation5 state];
                          v74 = state5;
                          if (state5)
                          {
                            inactiveReasons3 = [state5 inactiveReasons];
                            v76 = inactiveReasons3;
                            v77 = &__NSArray0__struct;
                            if (inactiveReasons3)
                            {
                              v77 = inactiveReasons3;
                            }

                            v78 = v77;
                          }

                          else
                          {
                            v76 = [RMModelStatusReason missingStateForDeclaration:activation5];
                            v569 = v76;
                            v78 = [NSArray arrayWithObjects:&v569 count:1];
                          }

                          v79 = v78;

                          if ([v79 count])
                          {
                            activation6 = [v70 activation];
                            v81 = [RMModelStatusReason activationFailed:activation6];
                            [v521 addObject:v81];
                          }
                        }
                      }

                      v67 = [v66 countByEnumeratingWithState:&v564 objects:&v552 count:16];
                    }

                    while (v67);
                  }

                  if ([v494 loadState] == 4)
                  {
                    declarationType2 = [v494 declarationType];
                    v83 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType2];
                    [v521 addObject:v83];

                    goto LABEL_76;
                  }

                  if (![v66 count])
                  {
                    declarationType2 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v494];
                    [v521 addObject:declarationType2];
LABEL_76:
                  }

                  v84 = v521;

                  v61 = v84;
LABEL_78:
                }

                if ([v61 count])
                {
                  v85 = [RMModelStatusReason configurationFailed:v494];
                  [v467 addObject:v85];
                }

                v59 = v503;
                goto LABEL_82;
              }

              v84 = [RMModelStatusReason missingStateForDeclaration:v494];
              v552 = v84;
              v61 = [NSArray arrayWithObjects:&v552 count:1];
              goto LABEL_78;
            }

LABEL_82:
          }

          v484 = [v471 countByEnumeratingWithState:&v547 objects:&v539 count:16];
        }

        while (v484);
LABEL_84:

        if (![v471 count])
        {
          v86 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v415];
          [v467 addObject:v86];
        }

        v31 = v467;

LABEL_96:
        [v459 addObjectsFromArray:v31];

        v88 = v443;
        *&v539 = 0;
        *(&v539 + 1) = &v539;
        *&v540 = 0x2020000000;
        BYTE8(v540) = 0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          assetReferences2 = [v88 assetReferences];
          v552 = _NSConcreteStackBlock;
          v553 = 3221225472;
          v554 = sub_100048AB4;
          v555 = &unk_1000D21F0;
          v556 = &v539;
          [assetReferences2 enumerateObjectsUsingBlock:&v552];
        }

        else
        {
          assetReferences2 = [v88 state];
          active = [assetReferences2 active];
          *(*(&v539 + 1) + 24) = active;
        }

        v12 = *(*(&v539 + 1) + 24);
        _Block_object_dispose(&v539, 8);

LABEL_100:
        identifier3 = [v463 identifier];
        serverToken2 = [v463 serverToken];
        v93 = [NSNumber numberWithBool:v12 & 1];
        if ([v459 count])
        {
          v94 = v459;
        }

        else
        {
          v94 = 0;
        }

        v95 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:identifier3 serverToken:serverToken2 active:v93 valid:v455 reasons:v94];

        [v431 addObject:v95];
LABEL_104:
        v8 = v447 + 1;
      }

      while ((v447 + 1) != v439);
      v439 = [obj countByEnumeratingWithState:&v533 objects:v538 count:16];
    }

    while (v439);
  }

  v96 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
  v97 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
  v552 = v96;
  v553 = v97;
  v98 = [NSArray arrayWithObjects:&v552 count:2];
  v403 = [v431 sortedArrayUsingDescriptors:v98];

  configurations = [v406 configurations];
  v432 = objc_opt_new();
  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v425 = configurations;
  v440 = [v425 countByEnumeratingWithState:&v533 objects:v538 count:16];
  if (!v440)
  {
    goto LABEL_210;
  }

  v436 = *v534;
  v428 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
  v418 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
  v422 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
  do
  {
    v100 = 0;
    do
    {
      if (*v534 != v436)
      {
        v101 = v100;
        objc_enumerationMutation(v425);
        v100 = v101;
      }

      v448 = v100;
      v102 = *(*(&v533 + 1) + 8 * v100);
      if (![v102 loadState])
      {
        goto LABEL_208;
      }

      v464 = v102;
      v456 = v428;
      v460 = objc_opt_new();
      if ([v464 loadState] == 2)
      {
        v103 = v422;

        v452 = [RMModelStatusReason invalidPayloadForDeclaration:v464];
        [v460 addObject:v452];
        v104 = 0;
        v456 = v103;
        goto LABEL_204;
      }

      v105 = v464;
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        managementSource2 = [v105 managementSource];
        identifier4 = [managementSource2 identifier];
        identifier5 = [v105 identifier];
        serverToken3 = [v105 serverToken];
        v452 = [RMConfigurationStatusArchiver statusForStoreIdentifier:identifier4 declarationIdentifier:identifier5 serverToken:serverToken3];
      }

      else
      {
        *&v539 = @"valid";
        v552 = &__kCFBooleanTrue;
        v452 = [NSDictionary dictionaryWithObjects:&v552 forKeys:&v539 count:1];
      }

      if (v452)
      {
        v110 = [v452 objectForKeyedSubscript:@"valid"];
        bOOLValue2 = [v110 BOOLValue];
        v112 = v418;
        if (!bOOLValue2)
        {
          v112 = v422;
        }

        v113 = v112;

        v114 = [v452 objectForKeyedSubscript:@"reasons"];
        if (v114)
        {
          [v460 addObjectsFromArray:v114];
        }

        v456 = v113;
      }

      v444 = v105;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = v444;
        state6 = [v115 state];
        v117 = state6;
        if (state6)
        {
          inactiveReasons4 = [state6 inactiveReasons];
          v119 = inactiveReasons4;
          v120 = &__NSArray0__struct;
          if (inactiveReasons4)
          {
            v120 = inactiveReasons4;
          }

          v121 = v120;
        }

        else
        {
          v119 = [RMModelStatusReason missingStateForDeclaration:v115];
          v552 = v119;
          v121 = [NSArray arrayWithObjects:&v552 count:1];
        }

        v123 = v121;

        goto LABEL_200;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v513 = v444;
        state7 = [v513 state];
        v504 = state7;
        if (state7)
        {
          v123 = &__NSArray0__struct;
          if (([state7 active] & 1) == 0)
          {
            v522 = objc_opt_new();
            configurationReferences3 = [v513 configurationReferences];
            allObjects4 = [configurationReferences3 allObjects];

            v495 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
            *&v547 = v495;
            v126 = [NSArray arrayWithObjects:&v547 count:1];
            v127 = [allObjects4 sortedArrayUsingDescriptors:v126];

            v541 = 0u;
            v542 = 0u;
            v539 = 0u;
            v540 = 0u;
            v128 = v127;
            v129 = [v128 countByEnumeratingWithState:&v539 objects:&v552 count:16];
            if (v129)
            {
              v130 = *v540;
              do
              {
                for (m = 0; m != v129; m = m + 1)
                {
                  if (*v540 != v130)
                  {
                    objc_enumerationMutation(v128);
                  }

                  v132 = *(*(&v539 + 1) + 8 * m);
                  activation7 = [v132 activation];
                  if (activation7)
                  {
                    activation8 = [v132 activation];
                    state8 = [activation8 state];
                    v136 = state8;
                    if (state8)
                    {
                      inactiveReasons5 = [state8 inactiveReasons];
                      v138 = inactiveReasons5;
                      v139 = &__NSArray0__struct;
                      if (inactiveReasons5)
                      {
                        v139 = inactiveReasons5;
                      }

                      v140 = v139;
                    }

                    else
                    {
                      v138 = [RMModelStatusReason missingStateForDeclaration:activation8];
                      *&v564 = v138;
                      v140 = [NSArray arrayWithObjects:&v564 count:1];
                    }

                    v141 = v140;

                    if ([v141 count])
                    {
                      activation9 = [v132 activation];
                      v143 = [RMModelStatusReason activationFailed:activation9];
                      [v522 addObject:v143];
                    }
                  }
                }

                v129 = [v128 countByEnumeratingWithState:&v539 objects:&v552 count:16];
              }

              while (v129);
            }

            if ([v513 loadState] == 4)
            {
              declarationType3 = [v513 declarationType];
              v145 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType3];
              [v522 addObject:v145];

              goto LABEL_196;
            }

            if (![v128 count])
            {
              declarationType3 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v513];
              [v522 addObject:declarationType3];
LABEL_196:
            }

            v179 = v522;

            v123 = v179;
LABEL_198:
          }

          goto LABEL_200;
        }

        v179 = [RMModelStatusReason missingStateForDeclaration:v513];
        v552 = v179;
        v123 = [NSArray arrayWithObjects:&v552 count:1];
        goto LABEL_198;
      }

      objc_opt_class();
      v123 = &__NSArray0__struct;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_200;
      }

      v413 = v444;
      v468 = objc_opt_new();
      assetReferences3 = [v413 assetReferences];
      allObjects5 = [assetReferences3 allObjects];

      v407 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
      v551 = v407;
      v148 = [NSArray arrayWithObjects:&v551 count:1];
      v149 = [allObjects5 sortedArrayUsingDescriptors:v148];

      v549 = 0u;
      v550 = 0u;
      v547 = 0u;
      v548 = 0u;
      v472 = v149;
      v485 = [v472 countByEnumeratingWithState:&v547 objects:&v539 count:16];
      if (!v485)
      {
        goto LABEL_188;
      }

      v480 = *v548;
      do
      {
        for (n = 0; n != v485; n = n + 1)
        {
          if (*v548 != v480)
          {
            objc_enumerationMutation(v472);
          }

          configuration2 = [*(*(&v547 + 1) + 8 * n) configuration];
          v505 = configuration2;
          v151 = configuration2;
          if (configuration2)
          {
            v496 = configuration2;
            state9 = [v496 state];
            v489 = state9;
            if (state9)
            {
              v153 = &__NSArray0__struct;
              if (([state9 active] & 1) == 0)
              {
                v523 = objc_opt_new();
                configurationReferences4 = [v496 configurationReferences];
                allObjects6 = [configurationReferences4 allObjects];

                v476 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                v568 = v476;
                v156 = [NSArray arrayWithObjects:&v568 count:1];
                v157 = [allObjects6 sortedArrayUsingDescriptors:v156];

                v566 = 0u;
                v567 = 0u;
                v564 = 0u;
                v565 = 0u;
                v158 = v157;
                v159 = [v158 countByEnumeratingWithState:&v564 objects:&v552 count:16];
                if (v159)
                {
                  v160 = *v565;
                  do
                  {
                    for (ii = 0; ii != v159; ii = ii + 1)
                    {
                      if (*v565 != v160)
                      {
                        objc_enumerationMutation(v158);
                      }

                      v162 = *(*(&v564 + 1) + 8 * ii);
                      activation10 = [v162 activation];
                      if (activation10)
                      {
                        activation11 = [v162 activation];
                        state10 = [activation11 state];
                        v166 = state10;
                        if (state10)
                        {
                          inactiveReasons6 = [state10 inactiveReasons];
                          v168 = inactiveReasons6;
                          v169 = &__NSArray0__struct;
                          if (inactiveReasons6)
                          {
                            v169 = inactiveReasons6;
                          }

                          v170 = v169;
                        }

                        else
                        {
                          v168 = [RMModelStatusReason missingStateForDeclaration:activation11];
                          v569 = v168;
                          v170 = [NSArray arrayWithObjects:&v569 count:1];
                        }

                        v171 = v170;

                        if ([v171 count])
                        {
                          activation12 = [v162 activation];
                          v173 = [RMModelStatusReason activationFailed:activation12];
                          [v523 addObject:v173];
                        }
                      }
                    }

                    v159 = [v158 countByEnumeratingWithState:&v564 objects:&v552 count:16];
                  }

                  while (v159);
                }

                if ([v496 loadState] == 4)
                {
                  declarationType4 = [v496 declarationType];
                  v175 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType4];
                  [v523 addObject:v175];

                  goto LABEL_180;
                }

                if (![v158 count])
                {
                  declarationType4 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v496];
                  [v523 addObject:declarationType4];
LABEL_180:
                }

                v176 = v523;

                v153 = v176;
LABEL_182:
              }

              if ([v153 count])
              {
                v177 = [RMModelStatusReason configurationFailed:v496];
                [v468 addObject:v177];
              }

              v151 = v505;
              goto LABEL_186;
            }

            v176 = [RMModelStatusReason missingStateForDeclaration:v496];
            v552 = v176;
            v153 = [NSArray arrayWithObjects:&v552 count:1];
            goto LABEL_182;
          }

LABEL_186:
        }

        v485 = [v472 countByEnumeratingWithState:&v547 objects:&v539 count:16];
      }

      while (v485);
LABEL_188:

      if (![v472 count])
      {
        v178 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v413];
        [v468 addObject:v178];
      }

      v123 = v468;

LABEL_200:
      [v460 addObjectsFromArray:v123];

      v180 = v444;
      *&v539 = 0;
      *(&v539 + 1) = &v539;
      *&v540 = 0x2020000000;
      BYTE8(v540) = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        assetReferences4 = [v180 assetReferences];
        v552 = _NSConcreteStackBlock;
        v553 = 3221225472;
        v554 = sub_100048AB4;
        v555 = &unk_1000D21F0;
        v556 = &v539;
        [assetReferences4 enumerateObjectsUsingBlock:&v552];
      }

      else
      {
        assetReferences4 = [v180 state];
        active2 = [assetReferences4 active];
        *(*(&v539 + 1) + 24) = active2;
      }

      v104 = *(*(&v539 + 1) + 24);
      _Block_object_dispose(&v539, 8);

LABEL_204:
      identifier6 = [v464 identifier];
      serverToken4 = [v464 serverToken];
      v185 = [NSNumber numberWithBool:v104 & 1];
      if ([v460 count])
      {
        v186 = v460;
      }

      else
      {
        v186 = 0;
      }

      v187 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:identifier6 serverToken:serverToken4 active:v185 valid:v456 reasons:v186];

      [v432 addObject:v187];
LABEL_208:
      v100 = v448 + 1;
    }

    while ((v448 + 1) != v440);
    v440 = [v425 countByEnumeratingWithState:&v533 objects:v538 count:16];
  }

  while (v440);
LABEL_210:

  v188 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
  v189 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
  v552 = v188;
  v553 = v189;
  v190 = [NSArray arrayWithObjects:&v552 count:2];
  v401 = [v432 sortedArrayUsingDescriptors:v190];

  assets = [v406 assets];
  v433 = objc_opt_new();
  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v423 = assets;
  v441 = [v423 countByEnumeratingWithState:&v533 objects:v538 count:16];
  if (!v441)
  {
    goto LABEL_314;
  }

  v437 = *v534;
  v429 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
  v416 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
  v419 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
  while (2)
  {
    v192 = 0;
    while (2)
    {
      if (*v534 != v437)
      {
        v193 = v192;
        objc_enumerationMutation(v423);
        v192 = v193;
      }

      v449 = v192;
      v194 = *(*(&v533 + 1) + 8 * v192);
      if (![v194 loadState])
      {
        goto LABEL_312;
      }

      v465 = v194;
      v457 = v429;
      v461 = objc_opt_new();
      if ([v465 loadState] == 2)
      {
        v195 = v419;

        v453 = [RMModelStatusReason invalidPayloadForDeclaration:v465];
        [v461 addObject:v453];
        v196 = 0;
        v457 = v195;
        goto LABEL_308;
      }

      v197 = v465;
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        managementSource3 = [v197 managementSource];
        identifier7 = [managementSource3 identifier];
        identifier8 = [v197 identifier];
        serverToken5 = [v197 serverToken];
        v453 = [RMConfigurationStatusArchiver statusForStoreIdentifier:identifier7 declarationIdentifier:identifier8 serverToken:serverToken5];
      }

      else
      {
        *&v539 = @"valid";
        v552 = &__kCFBooleanTrue;
        v453 = [NSDictionary dictionaryWithObjects:&v552 forKeys:&v539 count:1];
      }

      if (v453)
      {
        v202 = [v453 objectForKeyedSubscript:@"valid"];
        bOOLValue3 = [v202 BOOLValue];
        v204 = v416;
        if (!bOOLValue3)
        {
          v204 = v419;
        }

        v205 = v204;

        v206 = [v453 objectForKeyedSubscript:@"reasons"];
        if (v206)
        {
          [v461 addObjectsFromArray:v206];
        }

        v457 = v205;
      }

      v445 = v197;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v207 = v445;
        state11 = [v207 state];
        v209 = state11;
        if (state11)
        {
          inactiveReasons7 = [state11 inactiveReasons];
          v211 = inactiveReasons7;
          v212 = &__NSArray0__struct;
          if (inactiveReasons7)
          {
            v212 = inactiveReasons7;
          }

          v213 = v212;
        }

        else
        {
          v211 = [RMModelStatusReason missingStateForDeclaration:v207];
          v552 = v211;
          v213 = [NSArray arrayWithObjects:&v552 count:1];
        }

        v215 = v213;

        goto LABEL_304;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v515 = v445;
        state12 = [v515 state];
        v506 = state12;
        if (state12)
        {
          v215 = &__NSArray0__struct;
          if (([state12 active] & 1) == 0)
          {
            v524 = objc_opt_new();
            configurationReferences5 = [v515 configurationReferences];
            allObjects7 = [configurationReferences5 allObjects];

            v497 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
            *&v547 = v497;
            v218 = [NSArray arrayWithObjects:&v547 count:1];
            v219 = [allObjects7 sortedArrayUsingDescriptors:v218];

            v541 = 0u;
            v542 = 0u;
            v539 = 0u;
            v540 = 0u;
            v220 = v219;
            v221 = [v220 countByEnumeratingWithState:&v539 objects:&v552 count:16];
            if (v221)
            {
              v222 = *v540;
              do
              {
                for (jj = 0; jj != v221; jj = jj + 1)
                {
                  if (*v540 != v222)
                  {
                    objc_enumerationMutation(v220);
                  }

                  v224 = *(*(&v539 + 1) + 8 * jj);
                  activation13 = [v224 activation];
                  if (activation13)
                  {
                    activation14 = [v224 activation];
                    state13 = [activation14 state];
                    v228 = state13;
                    if (state13)
                    {
                      inactiveReasons8 = [state13 inactiveReasons];
                      v230 = inactiveReasons8;
                      v231 = &__NSArray0__struct;
                      if (inactiveReasons8)
                      {
                        v231 = inactiveReasons8;
                      }

                      v232 = v231;
                    }

                    else
                    {
                      v230 = [RMModelStatusReason missingStateForDeclaration:activation14];
                      *&v564 = v230;
                      v232 = [NSArray arrayWithObjects:&v564 count:1];
                    }

                    v233 = v232;

                    if ([v233 count])
                    {
                      activation15 = [v224 activation];
                      v235 = [RMModelStatusReason activationFailed:activation15];
                      [v524 addObject:v235];
                    }
                  }
                }

                v221 = [v220 countByEnumeratingWithState:&v539 objects:&v552 count:16];
              }

              while (v221);
            }

            if ([v515 loadState] == 4)
            {
              declarationType5 = [v515 declarationType];
              v237 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType5];
              [v524 addObject:v237];

              goto LABEL_300;
            }

            if (![v220 count])
            {
              declarationType5 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v515];
              [v524 addObject:declarationType5];
LABEL_300:
            }

            v271 = v524;

            v215 = v271;
LABEL_302:
          }

          goto LABEL_304;
        }

        v271 = [RMModelStatusReason missingStateForDeclaration:v515];
        v552 = v271;
        v215 = [NSArray arrayWithObjects:&v552 count:1];
        goto LABEL_302;
      }

      objc_opt_class();
      v215 = &__NSArray0__struct;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_304;
      }

      v408 = v445;
      v469 = objc_opt_new();
      assetReferences5 = [v408 assetReferences];
      allObjects8 = [assetReferences5 allObjects];

      v404 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
      v551 = v404;
      v240 = [NSArray arrayWithObjects:&v551 count:1];
      v241 = [allObjects8 sortedArrayUsingDescriptors:v240];

      v549 = 0u;
      v550 = 0u;
      v547 = 0u;
      v548 = 0u;
      v473 = v241;
      v486 = [v473 countByEnumeratingWithState:&v547 objects:&v539 count:16];
      if (!v486)
      {
        goto LABEL_292;
      }

      v481 = *v548;
      while (2)
      {
        v516 = 0;
        while (2)
        {
          if (*v548 != v481)
          {
            objc_enumerationMutation(v473);
          }

          configuration3 = [*(*(&v547 + 1) + 8 * v516) configuration];
          v507 = configuration3;
          v243 = configuration3;
          if (configuration3)
          {
            v498 = configuration3;
            state14 = [v498 state];
            v490 = state14;
            if (!state14)
            {
              v268 = [RMModelStatusReason missingStateForDeclaration:v498];
              v552 = v268;
              v245 = [NSArray arrayWithObjects:&v552 count:1];
              goto LABEL_286;
            }

            v245 = &__NSArray0__struct;
            if (([state14 active] & 1) == 0)
            {
              v525 = objc_opt_new();
              configurationReferences6 = [v498 configurationReferences];
              allObjects9 = [configurationReferences6 allObjects];

              v477 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
              v568 = v477;
              v248 = [NSArray arrayWithObjects:&v568 count:1];
              v249 = [allObjects9 sortedArrayUsingDescriptors:v248];

              v566 = 0u;
              v567 = 0u;
              v564 = 0u;
              v565 = 0u;
              v250 = v249;
              v251 = [v250 countByEnumeratingWithState:&v564 objects:&v552 count:16];
              if (v251)
              {
                v252 = *v565;
                do
                {
                  for (kk = 0; kk != v251; kk = kk + 1)
                  {
                    if (*v565 != v252)
                    {
                      objc_enumerationMutation(v250);
                    }

                    v254 = *(*(&v564 + 1) + 8 * kk);
                    activation16 = [v254 activation];
                    if (activation16)
                    {
                      activation17 = [v254 activation];
                      state15 = [activation17 state];
                      v258 = state15;
                      if (state15)
                      {
                        inactiveReasons9 = [state15 inactiveReasons];
                        v260 = inactiveReasons9;
                        v261 = &__NSArray0__struct;
                        if (inactiveReasons9)
                        {
                          v261 = inactiveReasons9;
                        }

                        v262 = v261;
                      }

                      else
                      {
                        v260 = [RMModelStatusReason missingStateForDeclaration:activation17];
                        v569 = v260;
                        v262 = [NSArray arrayWithObjects:&v569 count:1];
                      }

                      v263 = v262;

                      if ([v263 count])
                      {
                        activation18 = [v254 activation];
                        v265 = [RMModelStatusReason activationFailed:activation18];
                        [v525 addObject:v265];
                      }
                    }
                  }

                  v251 = [v250 countByEnumeratingWithState:&v564 objects:&v552 count:16];
                }

                while (v251);
              }

              if ([v498 loadState] == 4)
              {
                declarationType6 = [v498 declarationType];
                v267 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType6];
                [v525 addObject:v267];

                goto LABEL_284;
              }

              if (![v250 count])
              {
                declarationType6 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v498];
                [v525 addObject:declarationType6];
LABEL_284:
              }

              v268 = v525;

              v245 = v268;
LABEL_286:
            }

            if ([v245 count])
            {
              v269 = [RMModelStatusReason configurationFailed:v498];
              [v469 addObject:v269];
            }

            v243 = v507;
          }

          if (++v516 != v486)
          {
            continue;
          }

          break;
        }

        v486 = [v473 countByEnumeratingWithState:&v547 objects:&v539 count:16];
        if (v486)
        {
          continue;
        }

        break;
      }

LABEL_292:

      if (![v473 count])
      {
        v270 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v408];
        [v469 addObject:v270];
      }

      v215 = v469;

LABEL_304:
      [v461 addObjectsFromArray:v215];

      v272 = v445;
      *&v539 = 0;
      *(&v539 + 1) = &v539;
      *&v540 = 0x2020000000;
      BYTE8(v540) = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        assetReferences6 = [v272 assetReferences];
        v552 = _NSConcreteStackBlock;
        v553 = 3221225472;
        v554 = sub_100048AB4;
        v555 = &unk_1000D21F0;
        v556 = &v539;
        [assetReferences6 enumerateObjectsUsingBlock:&v552];
      }

      else
      {
        assetReferences6 = [v272 state];
        active3 = [assetReferences6 active];
        *(*(&v539 + 1) + 24) = active3;
      }

      v196 = *(*(&v539 + 1) + 24);
      _Block_object_dispose(&v539, 8);

LABEL_308:
      identifier9 = [v465 identifier];
      serverToken6 = [v465 serverToken];
      v277 = [NSNumber numberWithBool:v196 & 1];
      if ([v461 count])
      {
        v278 = v461;
      }

      else
      {
        v278 = 0;
      }

      v279 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:identifier9 serverToken:serverToken6 active:v277 valid:v457 reasons:v278];

      [v433 addObject:v279];
LABEL_312:
      v192 = v449 + 1;
      if ((v449 + 1) != v441)
      {
        continue;
      }

      break;
    }

    v441 = [v423 countByEnumeratingWithState:&v533 objects:v538 count:16];
    if (v441)
    {
      continue;
    }

    break;
  }

LABEL_314:

  v280 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
  v281 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
  v552 = v280;
  v553 = v281;
  v282 = [NSArray arrayWithObjects:&v552 count:2];
  v400 = [v433 sortedArrayUsingDescriptors:v282];

  management = [v406 management];
  v434 = objc_opt_new();
  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v420 = management;
  v442 = [v420 countByEnumeratingWithState:&v533 objects:v538 count:16];
  if (!v442)
  {
    goto LABEL_418;
  }

  v438 = *v534;
  v430 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
  v414 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
  v417 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
  while (2)
  {
    v284 = 0;
    while (2)
    {
      if (*v534 != v438)
      {
        v285 = v284;
        objc_enumerationMutation(v420);
        v284 = v285;
      }

      v450 = v284;
      v286 = *(*(&v533 + 1) + 8 * v284);
      if (![v286 loadState])
      {
        goto LABEL_416;
      }

      v466 = v286;
      v458 = v430;
      v462 = objc_opt_new();
      if ([v466 loadState] == 2)
      {
        v287 = v417;

        v454 = [RMModelStatusReason invalidPayloadForDeclaration:v466];
        [v462 addObject:v454];
        v288 = 0;
        v458 = v287;
        goto LABEL_412;
      }

      v289 = v466;
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        managementSource4 = [v289 managementSource];
        identifier10 = [managementSource4 identifier];
        identifier11 = [v289 identifier];
        serverToken7 = [v289 serverToken];
        v454 = [RMConfigurationStatusArchiver statusForStoreIdentifier:identifier10 declarationIdentifier:identifier11 serverToken:serverToken7];
      }

      else
      {
        *&v539 = @"valid";
        v552 = &__kCFBooleanTrue;
        v454 = [NSDictionary dictionaryWithObjects:&v552 forKeys:&v539 count:1];
      }

      if (v454)
      {
        v294 = [v454 objectForKeyedSubscript:@"valid"];
        bOOLValue4 = [v294 BOOLValue];
        v296 = v414;
        if (!bOOLValue4)
        {
          v296 = v417;
        }

        v297 = v296;

        v298 = [v454 objectForKeyedSubscript:@"reasons"];
        if (v298)
        {
          [v462 addObjectsFromArray:v298];
        }

        v458 = v297;
      }

      v446 = v289;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v299 = v446;
        state16 = [v299 state];
        v301 = state16;
        if (state16)
        {
          inactiveReasons10 = [state16 inactiveReasons];
          v303 = inactiveReasons10;
          v304 = &__NSArray0__struct;
          if (inactiveReasons10)
          {
            v304 = inactiveReasons10;
          }

          v305 = v304;
        }

        else
        {
          v303 = [RMModelStatusReason missingStateForDeclaration:v299];
          v552 = v303;
          v305 = [NSArray arrayWithObjects:&v552 count:1];
        }

        v307 = v305;

        goto LABEL_408;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v517 = v446;
        state17 = [v517 state];
        v508 = state17;
        if (state17)
        {
          v307 = &__NSArray0__struct;
          if (([state17 active] & 1) == 0)
          {
            v526 = objc_opt_new();
            configurationReferences7 = [v517 configurationReferences];
            allObjects10 = [configurationReferences7 allObjects];

            v499 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
            *&v547 = v499;
            v310 = [NSArray arrayWithObjects:&v547 count:1];
            v311 = [allObjects10 sortedArrayUsingDescriptors:v310];

            v541 = 0u;
            v542 = 0u;
            v539 = 0u;
            v540 = 0u;
            v312 = v311;
            v313 = [v312 countByEnumeratingWithState:&v539 objects:&v552 count:16];
            if (v313)
            {
              v314 = *v540;
              do
              {
                for (mm = 0; mm != v313; mm = mm + 1)
                {
                  if (*v540 != v314)
                  {
                    objc_enumerationMutation(v312);
                  }

                  v316 = *(*(&v539 + 1) + 8 * mm);
                  activation19 = [v316 activation];
                  if (activation19)
                  {
                    activation20 = [v316 activation];
                    state18 = [activation20 state];
                    v320 = state18;
                    if (state18)
                    {
                      inactiveReasons11 = [state18 inactiveReasons];
                      v322 = inactiveReasons11;
                      v323 = &__NSArray0__struct;
                      if (inactiveReasons11)
                      {
                        v323 = inactiveReasons11;
                      }

                      v324 = v323;
                    }

                    else
                    {
                      v322 = [RMModelStatusReason missingStateForDeclaration:activation20];
                      *&v564 = v322;
                      v324 = [NSArray arrayWithObjects:&v564 count:1];
                    }

                    v325 = v324;

                    if ([v325 count])
                    {
                      activation21 = [v316 activation];
                      v327 = [RMModelStatusReason activationFailed:activation21];
                      [v526 addObject:v327];
                    }
                  }
                }

                v313 = [v312 countByEnumeratingWithState:&v539 objects:&v552 count:16];
              }

              while (v313);
            }

            if ([v517 loadState] == 4)
            {
              declarationType7 = [v517 declarationType];
              v329 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType7];
              [v526 addObject:v329];

              goto LABEL_404;
            }

            if (![v312 count])
            {
              declarationType7 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v517];
              [v526 addObject:declarationType7];
LABEL_404:
            }

            v363 = v526;

            v307 = v363;
LABEL_406:
          }

          goto LABEL_408;
        }

        v363 = [RMModelStatusReason missingStateForDeclaration:v517];
        v552 = v363;
        v307 = [NSArray arrayWithObjects:&v552 count:1];
        goto LABEL_406;
      }

      objc_opt_class();
      v307 = &__NSArray0__struct;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_408;
      }

      v405 = v446;
      v470 = objc_opt_new();
      assetReferences7 = [v405 assetReferences];
      allObjects11 = [assetReferences7 allObjects];

      v402 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
      v551 = v402;
      v332 = [NSArray arrayWithObjects:&v551 count:1];
      v333 = [allObjects11 sortedArrayUsingDescriptors:v332];

      v549 = 0u;
      v550 = 0u;
      v547 = 0u;
      v548 = 0u;
      v474 = v333;
      v487 = [v474 countByEnumeratingWithState:&v547 objects:&v539 count:16];
      if (!v487)
      {
        goto LABEL_396;
      }

      v482 = *v548;
      while (2)
      {
        v518 = 0;
        while (2)
        {
          if (*v548 != v482)
          {
            objc_enumerationMutation(v474);
          }

          configuration4 = [*(*(&v547 + 1) + 8 * v518) configuration];
          v509 = configuration4;
          v335 = configuration4;
          if (configuration4)
          {
            v500 = configuration4;
            state19 = [v500 state];
            v491 = state19;
            if (!state19)
            {
              v360 = [RMModelStatusReason missingStateForDeclaration:v500];
              v552 = v360;
              v337 = [NSArray arrayWithObjects:&v552 count:1];
              goto LABEL_390;
            }

            v337 = &__NSArray0__struct;
            if (([state19 active] & 1) == 0)
            {
              v527 = objc_opt_new();
              configurationReferences8 = [v500 configurationReferences];
              allObjects12 = [configurationReferences8 allObjects];

              v478 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
              v568 = v478;
              v340 = [NSArray arrayWithObjects:&v568 count:1];
              v341 = [allObjects12 sortedArrayUsingDescriptors:v340];

              v566 = 0u;
              v567 = 0u;
              v564 = 0u;
              v565 = 0u;
              v342 = v341;
              v343 = [v342 countByEnumeratingWithState:&v564 objects:&v552 count:16];
              if (v343)
              {
                v344 = *v565;
                do
                {
                  for (nn = 0; nn != v343; nn = nn + 1)
                  {
                    if (*v565 != v344)
                    {
                      objc_enumerationMutation(v342);
                    }

                    v346 = *(*(&v564 + 1) + 8 * nn);
                    activation22 = [v346 activation];
                    if (activation22)
                    {
                      activation23 = [v346 activation];
                      state20 = [activation23 state];
                      v350 = state20;
                      if (state20)
                      {
                        inactiveReasons12 = [state20 inactiveReasons];
                        v352 = inactiveReasons12;
                        v353 = &__NSArray0__struct;
                        if (inactiveReasons12)
                        {
                          v353 = inactiveReasons12;
                        }

                        v354 = v353;
                      }

                      else
                      {
                        v352 = [RMModelStatusReason missingStateForDeclaration:activation23];
                        v569 = v352;
                        v354 = [NSArray arrayWithObjects:&v569 count:1];
                      }

                      v355 = v354;

                      if ([v355 count])
                      {
                        activation24 = [v346 activation];
                        v357 = [RMModelStatusReason activationFailed:activation24];
                        [v527 addObject:v357];
                      }
                    }
                  }

                  v343 = [v342 countByEnumeratingWithState:&v564 objects:&v552 count:16];
                }

                while (v343);
              }

              if ([v500 loadState] == 4)
              {
                declarationType8 = [v500 declarationType];
                v359 = [RMModelStatusReason failedWithUnknownDeclarationType:declarationType8];
                [v527 addObject:v359];

                goto LABEL_388;
              }

              if (![v342 count])
              {
                declarationType8 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v500];
                [v527 addObject:declarationType8];
LABEL_388:
              }

              v360 = v527;

              v337 = v360;
LABEL_390:
            }

            if ([v337 count])
            {
              v361 = [RMModelStatusReason configurationFailed:v500];
              [v470 addObject:v361];
            }

            v335 = v509;
          }

          if (++v518 != v487)
          {
            continue;
          }

          break;
        }

        v487 = [v474 countByEnumeratingWithState:&v547 objects:&v539 count:16];
        if (v487)
        {
          continue;
        }

        break;
      }

LABEL_396:

      if (![v474 count])
      {
        v362 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v405];
        [v470 addObject:v362];
      }

      v307 = v470;

LABEL_408:
      [v462 addObjectsFromArray:v307];

      v364 = v446;
      *&v539 = 0;
      *(&v539 + 1) = &v539;
      *&v540 = 0x2020000000;
      BYTE8(v540) = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        assetReferences8 = [v364 assetReferences];
        v552 = _NSConcreteStackBlock;
        v553 = 3221225472;
        v554 = sub_100048AB4;
        v555 = &unk_1000D21F0;
        v556 = &v539;
        [assetReferences8 enumerateObjectsUsingBlock:&v552];
      }

      else
      {
        assetReferences8 = [v364 state];
        active4 = [assetReferences8 active];
        *(*(&v539 + 1) + 24) = active4;
      }

      v288 = *(*(&v539 + 1) + 24);
      _Block_object_dispose(&v539, 8);

LABEL_412:
      identifier12 = [v466 identifier];
      serverToken8 = [v466 serverToken];
      v369 = [NSNumber numberWithBool:v288 & 1];
      if ([v462 count])
      {
        v370 = v462;
      }

      else
      {
        v370 = 0;
      }

      v371 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:identifier12 serverToken:serverToken8 active:v369 valid:v458 reasons:v370];

      [v434 addObject:v371];
LABEL_416:
      v284 = v450 + 1;
      if ((v450 + 1) != v442)
      {
        continue;
      }

      break;
    }

    v442 = [v420 countByEnumeratingWithState:&v533 objects:v538 count:16];
    if (v442)
    {
      continue;
    }

    break;
  }

LABEL_418:

  v372 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
  v373 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
  v552 = v372;
  v553 = v373;
  v374 = [NSArray arrayWithObjects:&v552 count:2];
  v375 = [v434 sortedArrayUsingDescriptors:v374];

  v376 = [RMModelStatusManagementDeclarations buildRequiredOnlyWithActivations:v403 configurations:v401 assets:v400 management:v375];

  v377 = [v376 serializeWithType:1];

  if (v377)
  {
    [v483 setObject:v377 forKeyedSubscript:v409];
  }

  sourceCopy = v411;
LABEL_421:
  conduitConfig = [sourceCopy conduitConfig];
  state21 = [conduitConfig state];
  if (state21)
  {
    v380 = [v411 enrollmentType] == 0;
  }

  else
  {
    v380 = 0;
  }

  v381 = +[RMDevice currentDevice];
  *&v539 = RMModelStatusItemDeviceModelFamily;
  modelFamily = [v381 modelFamily];
  v552 = modelFamily;
  *(&v539 + 1) = RMModelStatusItemDeviceModelIdentifier;
  modelIdentifier = [v381 modelIdentifier];
  v553 = modelIdentifier;
  *&v540 = RMModelStatusItemDeviceModelMarketingName;
  modelMarketingName = [v381 modelMarketingName];
  v554 = modelMarketingName;
  *(&v540 + 1) = RMModelStatusItemDeviceModelNumber;
  modelNumber = [v381 modelNumber];
  v555 = modelNumber;
  *&v541 = RMModelStatusItemDeviceOperatingSystemBuildVersion;
  operatingSystemBuildVersion = [v381 operatingSystemBuildVersion];
  v556 = operatingSystemBuildVersion;
  *(&v541 + 1) = RMModelStatusItemDeviceOperatingSystemFamily;
  operatingSystem = [v381 operatingSystem];
  v557 = operatingSystem;
  *&v542 = RMModelStatusItemDeviceOperatingSystemMarketingName;
  operatingSystemMarketingName = [v381 operatingSystemMarketingName];
  v558 = operatingSystemMarketingName;
  *(&v542 + 1) = RMModelStatusItemDeviceOperatingSystemSupplementalBuildVersion;
  operatingSystemSupplementalBuildVersion = [v381 operatingSystemSupplementalBuildVersion];
  v559 = operatingSystemSupplementalBuildVersion;
  v543 = RMModelStatusItemDeviceOperatingSystemSupplementalExtraVersion;
  operatingSystemSupplementalExtraVersion = [v381 operatingSystemSupplementalExtraVersion];
  v560 = operatingSystemSupplementalExtraVersion;
  v544 = RMModelStatusItemDeviceOperatingSystemVersion;
  operatingSystemVersion = [v381 operatingSystemVersion];
  v561 = operatingSystemVersion;
  v545 = RMModelStatusItemDeviceSerialNumber;
  serialNumber = [v381 serialNumber];
  v562 = serialNumber;
  v546 = RMModelStatusItemDeviceUDID;
  uDID = [v381 UDID];
  v563 = uDID;
  v389 = [NSDictionary dictionaryWithObjects:&v552 forKeys:&v539 count:12];

  v529 = 0u;
  v530 = 0u;
  v531 = 0u;
  v532 = 0u;
  v390 = v410;
  v391 = [v390 countByEnumeratingWithState:&v529 objects:v537 count:16];
  if (v391)
  {
    v392 = *v530;
    do
    {
      for (i1 = 0; i1 != v391; i1 = i1 + 1)
      {
        if (*v530 != v392)
        {
          objc_enumerationMutation(v390);
        }

        v394 = *(*(&v529 + 1) + 8 * i1);
        if (v380 && (+[RMInternalStatusPublisher restrictedKeyPaths](RMInternalStatusPublisher, "restrictedKeyPaths"), v395 = objc_claimAutoreleasedReturnValue(), v396 = [v395 containsObject:v394], v395, v396))
        {
          v397 = [RMErrorUtilities createDisallowedStatusValueErrorWithKeyPath:v394];
          [v483 setObject:v397 forKeyedSubscript:v394];
        }

        else
        {
          v397 = [v389 valueForKeyPath:v394];
          if (v397)
          {
            [v483 setObject:v397 forKeyedSubscript:v394];
          }
        }
      }

      v391 = [v390 countByEnumeratingWithState:&v529 objects:v537 count:16];
    }

    while (v391);
  }

  v398 = v483;
  return v483;
}

- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop
{
  interestingCopy = interesting;
  updatedProperties = [interestingCopy updatedProperties];
  v7 = [updatedProperties valueForKey:@"name"];

  changedObjectID = [interestingCopy changedObjectID];
  changeType = [interestingCopy changeType];
  v10 = changedObjectID;
  v11 = v7;
  if (changeType != 2)
  {
    v12 = objc_opt_new();
    entity = [v10 entity];
    v14 = +[RMActivationPayload entity];
    v15 = [entity isKindOfEntity:v14];
    if (changeType == 1)
    {
      if (v15 && [(RMDeclarationPayload *)RMActivationPayload isSignificantChange:v11])
      {
        goto LABEL_22;
      }

      v16 = +[RMActivationPayloadState entity];
      if ([entity isKindOfEntity:v16])
      {
        goto LABEL_21;
      }

      v17 = +[RMAssetPayload entity];
      if ([entity isKindOfEntity:v17] && +[RMDeclarationPayload isSignificantChange:](RMAssetPayload, "isSignificantChange:", v11))
      {
        goto LABEL_20;
      }

      v18 = +[RMAssetPayloadState entity];
      if ([entity isKindOfEntity:v18])
      {
        goto LABEL_19;
      }

      v24 = +[RMConfigurationPayload entity];
      if (![entity isKindOfEntity:?] || !+[RMConfigurationPayload isSignificantChange:](RMConfigurationPayload, "isSignificantChange:", v11))
      {
        v22 = +[RMConfigurationPayloadState entity];
        LODWORD(v23) = [entity isKindOfEntity:v22];

        if ((v23 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v19 = v24;
    }

    else
    {
      if (v15)
      {
LABEL_22:

LABEL_23:
        [v12 addObject:{RMModelStatusItemManagementDeclarations, v23}];
LABEL_24:

        goto LABEL_25;
      }

      v16 = +[RMActivationPayloadState entity];
      if ([entity isKindOfEntity:v16])
      {
LABEL_21:

        goto LABEL_22;
      }

      v17 = +[RMAssetPayload entity];
      if ([entity isKindOfEntity:v17])
      {
LABEL_20:

        goto LABEL_21;
      }

      v18 = +[RMAssetPayloadState entity];
      if ([entity isKindOfEntity:v18])
      {
LABEL_19:

        goto LABEL_20;
      }

      v19 = +[RMConfigurationPayload entity];
      if (([entity isKindOfEntity:v19] & 1) == 0)
      {
        v23 = +[RMConfigurationPayloadState entity];
        v25 = [entity isKindOfEntity:v23];

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_19;
  }

  v12 = objc_opt_new();
LABEL_25:

  v20 = [v12 count] != 0;
  return v20;
}

- (void)persistentHistoryNotifier:(id)notifier hasChanges:(id)changes
{
  notifierCopy = notifier;
  changesCopy = changes;
  persistentHistoryToken = [notifierCopy persistentHistoryToken];
  persistentHistoryToken2 = [changesCopy persistentHistoryToken];
  v10 = [RMPersistentHistoryNotifierChanges isExistingPersistentHistoryToken:persistentHistoryToken fromSameStoreAsUpdatedToken:persistentHistoryToken2];

  if (v10)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10003FD10;
    v25 = sub_10003FD20;
    v26 = 0;
    [(RMInternalStatusPublisher *)self context];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100048190;
    v17[3] = &unk_1000D12F8;
    v11 = v20 = &v21;
    v18 = v11;
    v19 = changesCopy;
    [v11 performBlockAndWait:v17];
    if ([v22[5] count])
    {
      subscribedStatusKeyPathUpdater = [(RMInternalStatusPublisher *)self subscribedStatusKeyPathUpdater];
      [subscribedStatusKeyPathUpdater notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:v22[5]];
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    subscribedStatusKeyPathUpdater2 = [(RMInternalStatusPublisher *)self subscribedStatusKeyPathUpdater];
    v14 = +[RMInternalStatusPublisher supportedKeyPaths];
    [subscribedStatusKeyPathUpdater2 notifyStatusDidChangeForKeyPaths:v14];
  }

  delegate = [(RMInternalStatusPublisher *)self delegate];
  persistentHistoryToken3 = [changesCopy persistentHistoryToken];
  [delegate internalStatusPublisher:self didChangeCommandAndDeclarationsPersistentHistoryToken:persistentHistoryToken3];
}

- (RMInternalStatusPublisherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end