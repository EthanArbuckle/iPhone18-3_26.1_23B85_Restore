@interface SoftwareUpdateStatus
+ (id)supportedStatusClasses;
+ (id)supportedStatusKeys;
- (SoftwareUpdateStatus)init;
- (void)queryForStatusWithKeyPaths:(id)a3 store:(id)a4 completionHandler:(id)a5;
@end

@implementation SoftwareUpdateStatus

- (SoftwareUpdateStatus)init
{
  v6.receiver = self;
  v6.super_class = SoftwareUpdateStatus;
  v2 = [(SoftwareUpdateStatus *)&v6 init];
  if (v2)
  {
    v3 = [[SUManagerClient alloc] initWithDelegate:0 clientType:1];
    controller = v2->_controller;
    v2->_controller = v3;
  }

  return v2;
}

+ (id)supportedStatusKeys
{
  v5[0] = SUCorePolicyDDMStatusKeyInstallReason;
  v5[1] = SUCorePolicyDDMStatusKeyPendingVersion;
  v5[2] = SUCorePolicyDDMStatusKeyInstallState;
  v5[3] = SUCorePolicyDDMStatusKeyFailureReason;
  v5[4] = SUCorePolicyDDMStatusKeyDeviceID;
  v5[5] = SUCorePolicyDDMStatusKeyBetaEnrollment;
  v2 = [NSArray arrayWithObjects:v5 count:6];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)supportedStatusClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (void)queryForStatusWithKeyPaths:(id)a3 store:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v33 = a5;
  v7 = +[SUCoreDDMUtilities sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "[SoftwareUpdateStatus queryForStatusWithKeyPaths:store:completionHandler:]";
    v45 = 2114;
    v46 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Querying status for key paths: %{public}@", buf, 0x16u);
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v10 = [(__CFString *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v13 = SUCorePolicyDDMStatusKeyDeviceID;
    v14 = SUCorePolicyDDMStatusKeyBetaEnrollment;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        if ([v16 isEqualToString:v13])
        {
          v17 = +[SUUtility currentProductType];
          [v9 setObject:v17 forKeyedSubscript:v13];
        }

        if ([v16 isEqualToString:v14])
        {
          v18 = +[SDBetaManager sharedManager];
          v19 = [v18 enrolledBetaProgramForCurrentDevice];

          if (v19)
          {
            v20 = [v19 title];
            [v9 setObject:v20 forKeyedSubscript:v14];
          }

          else
          {
            [v9 setObject:&stru_10000C4A8 forKeyedSubscript:v14];
          }
        }
      }

      v11 = [(__CFString *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  if (self->_controller)
  {
    v21 = v33;
    if (objc_opt_respondsToSelector())
    {
      v22 = +[SUCoreDDMUtilities sharedLogger];
      v23 = [v22 oslog];

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v44 = "[SoftwareUpdateStatus queryForStatusWithKeyPaths:store:completionHandler:]";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Querying for status", buf, 0xCu);
      }

      controller = self->_controller;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = __75__SoftwareUpdateStatus_queryForStatusWithKeyPaths_store_completionHandler___block_invoke;
      v35[3] = &unk_10000C348;
      v36 = v9;
      v37 = v33;
      [(SUCoreDDMControllerProtocol *)controller getDDMStatusWithKeys:obj completion:v35];

      v25 = v36;
      goto LABEL_29;
    }

    if (self->_controller)
    {
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
    }

    else
    {
      v25 = @"nil";
    }
  }

  else
  {
    v25 = @"nil";
    v21 = v33;
  }

  v27 = +[SUCoreDDMUtilities sharedLogger];
  v28 = [v27 oslog];

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "[SoftwareUpdateStatus queryForStatusWithKeyPaths:store:completionHandler:]";
    v45 = 2114;
    v46 = v25;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: No valid controller (%{public}@)", buf, 0x16u);
  }

  v29 = +[SUCore sharedCore];
  v30 = [NSString stringWithFormat:@"No valid controller: %@", v25];
  v31 = [v29 buildError:8122 underlying:0 description:v30];

  (v21)[2](v21, 0, v31);
LABEL_29:
}

void __75__SoftwareUpdateStatus_queryForStatusWithKeyPaths_store_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addEntriesFromDictionary:a2];
  v6 = +[SUCoreDDMUtilities sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[SoftwareUpdateStatus queryForStatusWithKeyPaths:store:completionHandler:]_block_invoke";
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Reporting status %{public}@ %{public}@", &v10, 0x20u);
  }

  v9 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

@end