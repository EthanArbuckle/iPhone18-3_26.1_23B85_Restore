@interface STCoreDataConfigurationStore
- (STConfigurationStoreChangeObserverDelegate)delegate;
- (STCoreDataConfigurationStore)initWithObserver:(id)observer transformer:(id)transformer reverseTransformer:(id)reverseTransformer;
- (id)communicationConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)members;
- (id)downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)members;
- (id)readCommunicationConfigurationForLocalUser;
- (id)readCommunicationConfigurationForUserID:(id)d;
- (id)readConfigurationChangesOfType:(int64_t)type userID:(id)d;
- (id)readConfigurationRelatedToConfiguration:(id)configuration;
- (id)readDowntimeConfigurationForUserID:(id)d;
- (id)readSetupConfigurationForUserID:(id)d familyProvider:(id)provider;
- (id)toggleOnDemandDowntimeConfigurationForUserID:(id)d;
- (id)writeConfigurationChange:(id)change;
- (id)writeSetupConfiguration:(id)configuration;
- (void)observer:(id)observer didObserveCoreDataChanges:(id)changes;
@end

@implementation STCoreDataConfigurationStore

- (id)readCommunicationConfigurationForLocalUser
{
  transformer = [(STCoreDataConfigurationStore *)self transformer];
  communicationConfigurationForLocalUser = [transformer communicationConfigurationForLocalUser];

  return communicationConfigurationForLocalUser;
}

- (STCoreDataConfigurationStore)initWithObserver:(id)observer transformer:(id)transformer reverseTransformer:(id)reverseTransformer
{
  observerCopy = observer;
  transformerCopy = transformer;
  reverseTransformerCopy = reverseTransformer;
  v21.receiver = self;
  v21.super_class = STCoreDataConfigurationStore;
  v11 = [(STCoreDataConfigurationStore *)&v21 init];
  observer = v11->_observer;
  v11->_observer = observerCopy;
  v13 = observerCopy;

  transformer = v11->_transformer;
  v11->_transformer = transformerCopy;
  v15 = transformerCopy;

  reverseTransformer = v11->_reverseTransformer;
  v11->_reverseTransformer = reverseTransformerCopy;
  v17 = reverseTransformerCopy;

  v18 = v11->_observer;
  configurationObservationFiltersByTriggerPredicate = [(STCoreDataConfigurationTransformer *)v15 configurationObservationFiltersByTriggerPredicate];
  [(STCoreDataObserver *)v18 addObservationFiltersByTriggerPredicate:configurationObservationFiltersByTriggerPredicate forDelegate:v11];

  return v11;
}

- (id)readConfigurationRelatedToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  transformer = [(STCoreDataConfigurationStore *)self transformer];
  v6 = [transformer configurationChangeForRelatedConfigurationChange:configurationCopy];

  return v6;
}

- (id)readConfigurationChangesOfType:(int64_t)type userID:(id)d
{
  dCopy = d;
  transformer = [(STCoreDataConfigurationStore *)self transformer];
  v8 = [transformer configurationChangesOfType:type userID:dCopy];

  return v8;
}

- (id)readSetupConfigurationForUserID:(id)d familyProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  v8 = [(STCoreDataConfigurationStore *)self readConfigurationChangesOfType:1 userID:dCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025AF0;
  v16[3] = &unk_1001A3810;
  v16[4] = self;
  v17 = providerCopy;
  v9 = providerCopy;
  v10 = [v8 flatMap:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100025B68;
  v14[3] = &unk_1001A3838;
  v15 = dCopy;
  v11 = dCopy;
  v12 = [v10 mapError:v14];

  return v12;
}

- (id)readCommunicationConfigurationForUserID:(id)d
{
  dCopy = d;
  transformer = [(STCoreDataConfigurationStore *)self transformer];
  v6 = [transformer communicationConfigurationForUserID:dCopy];

  return v6;
}

- (id)readDowntimeConfigurationForUserID:(id)d
{
  dCopy = d;
  transformer = [(STCoreDataConfigurationStore *)self transformer];
  v6 = [transformer downtimeConfigurationForUserID:dCopy];

  return v6;
}

- (id)communicationConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)members
{
  membersCopy = members;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(membersCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = membersCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([v11 isParent] & 1) == 0)
        {
          dsid = [v11 dsid];
          v13 = [[STUserID alloc] initWithDSID:dsid];
          v14 = [(STCoreDataConfigurationStore *)self readCommunicationConfigurationForUserID:v13];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100025F90;
          v18[3] = &unk_1001A3860;
          v19 = v5;
          v20 = v13;
          v15 = v13;
          [v14 evaluateWithSuccess:v18 failure:&stru_1001A3880];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];

  return v16;
}

- (id)downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)members
{
  membersCopy = members;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(membersCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = membersCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([v11 isParent] & 1) == 0)
        {
          v12 = [STUserID alloc];
          dsid = [v11 dsid];
          v14 = [v12 initWithDSID:dsid];

          v15 = [(STCoreDataConfigurationStore *)self readDowntimeConfigurationForUserID:v14];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100026220;
          v18[3] = &unk_1001A38A8;
          v19 = v5;
          v20 = v14;
          v16 = v14;
          [v15 evaluateWithSuccess:v18 failure:&stru_1001A38C8];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)writeConfigurationChange:(id)change
{
  changeCopy = change;
  reverseTransformer = [(STCoreDataConfigurationStore *)self reverseTransformer];
  v6 = [reverseTransformer handleConfigurationChange:changeCopy];

  return v6;
}

- (id)writeSetupConfiguration:(id)configuration
{
  configurationCopy = configuration;
  reverseTransformer = [(STCoreDataConfigurationStore *)self reverseTransformer];
  v6 = [reverseTransformer handleSetupConfiguration:configurationCopy];

  return v6;
}

- (id)toggleOnDemandDowntimeConfigurationForUserID:(id)d
{
  dCopy = d;
  reverseTransformer = [(STCoreDataConfigurationStore *)self reverseTransformer];
  v6 = [reverseTransformer handleOnDemandDowntimeToggleForUserID:dCopy];

  return v6;
}

- (void)observer:(id)observer didObserveCoreDataChanges:(id)changes
{
  observerCopy = observer;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  changesCopy = changes;
  v7 = [changesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(changesCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        transformer = [(STCoreDataConfigurationStore *)self transformer];
        v19 = 0;
        v14 = [transformer configurationChangeForCoreDataChange:v11 error:&v19];
        v15 = v19;

        if (!v14)
        {
          v17 = +[STLog coreDataConfigurationStore];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100113B64(v11, v15, v17);
          }

          objc_autoreleasePoolPop(v12);
          goto LABEL_13;
        }

        delegate = [(STCoreDataConfigurationStore *)self delegate];
        [delegate changeObserver:self didObserveConfigurationChange:v14];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [changesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (STConfigurationStoreChangeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end