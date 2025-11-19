@interface STCoreDataConfigurationStore
- (STConfigurationStoreChangeObserverDelegate)delegate;
- (STCoreDataConfigurationStore)initWithObserver:(id)a3 transformer:(id)a4 reverseTransformer:(id)a5;
- (id)communicationConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)a3;
- (id)downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)a3;
- (id)readCommunicationConfigurationForLocalUser;
- (id)readCommunicationConfigurationForUserID:(id)a3;
- (id)readConfigurationChangesOfType:(int64_t)a3 userID:(id)a4;
- (id)readConfigurationRelatedToConfiguration:(id)a3;
- (id)readDowntimeConfigurationForUserID:(id)a3;
- (id)readSetupConfigurationForUserID:(id)a3 familyProvider:(id)a4;
- (id)toggleOnDemandDowntimeConfigurationForUserID:(id)a3;
- (id)writeConfigurationChange:(id)a3;
- (id)writeSetupConfiguration:(id)a3;
- (void)observer:(id)a3 didObserveCoreDataChanges:(id)a4;
@end

@implementation STCoreDataConfigurationStore

- (id)readCommunicationConfigurationForLocalUser
{
  v2 = [(STCoreDataConfigurationStore *)self transformer];
  v3 = [v2 communicationConfigurationForLocalUser];

  return v3;
}

- (STCoreDataConfigurationStore)initWithObserver:(id)a3 transformer:(id)a4 reverseTransformer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = STCoreDataConfigurationStore;
  v11 = [(STCoreDataConfigurationStore *)&v21 init];
  observer = v11->_observer;
  v11->_observer = v8;
  v13 = v8;

  transformer = v11->_transformer;
  v11->_transformer = v9;
  v15 = v9;

  reverseTransformer = v11->_reverseTransformer;
  v11->_reverseTransformer = v10;
  v17 = v10;

  v18 = v11->_observer;
  v19 = [(STCoreDataConfigurationTransformer *)v15 configurationObservationFiltersByTriggerPredicate];
  [(STCoreDataObserver *)v18 addObservationFiltersByTriggerPredicate:v19 forDelegate:v11];

  return v11;
}

- (id)readConfigurationRelatedToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataConfigurationStore *)self transformer];
  v6 = [v5 configurationChangeForRelatedConfigurationChange:v4];

  return v6;
}

- (id)readConfigurationChangesOfType:(int64_t)a3 userID:(id)a4
{
  v6 = a4;
  v7 = [(STCoreDataConfigurationStore *)self transformer];
  v8 = [v7 configurationChangesOfType:a3 userID:v6];

  return v8;
}

- (id)readSetupConfigurationForUserID:(id)a3 familyProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCoreDataConfigurationStore *)self readConfigurationChangesOfType:1 userID:v6];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025AF0;
  v16[3] = &unk_1001A3810;
  v16[4] = self;
  v17 = v7;
  v9 = v7;
  v10 = [v8 flatMap:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100025B68;
  v14[3] = &unk_1001A3838;
  v15 = v6;
  v11 = v6;
  v12 = [v10 mapError:v14];

  return v12;
}

- (id)readCommunicationConfigurationForUserID:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataConfigurationStore *)self transformer];
  v6 = [v5 communicationConfigurationForUserID:v4];

  return v6;
}

- (id)readDowntimeConfigurationForUserID:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataConfigurationStore *)self transformer];
  v6 = [v5 downtimeConfigurationForUserID:v4];

  return v6;
}

- (id)communicationConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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
          v12 = [v11 dsid];
          v13 = [[STUserID alloc] initWithDSID:v12];
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

- (id)downtimeConfigurationOfChildrenByUserIDForTargetableFamilyMembers:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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
          v13 = [v11 dsid];
          v14 = [v12 initWithDSID:v13];

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

- (id)writeConfigurationChange:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataConfigurationStore *)self reverseTransformer];
  v6 = [v5 handleConfigurationChange:v4];

  return v6;
}

- (id)writeSetupConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataConfigurationStore *)self reverseTransformer];
  v6 = [v5 handleSetupConfiguration:v4];

  return v6;
}

- (id)toggleOnDemandDowntimeConfigurationForUserID:(id)a3
{
  v4 = a3;
  v5 = [(STCoreDataConfigurationStore *)self reverseTransformer];
  v6 = [v5 handleOnDemandDowntimeToggleForUserID:v4];

  return v6;
}

- (void)observer:(id)a3 didObserveCoreDataChanges:(id)a4
{
  v18 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(STCoreDataConfigurationStore *)self transformer];
        v19 = 0;
        v14 = [v13 configurationChangeForCoreDataChange:v11 error:&v19];
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

        v16 = [(STCoreDataConfigurationStore *)self delegate];
        [v16 changeObserver:self didObserveConfigurationChange:v14];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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