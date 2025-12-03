@interface STConcreteOrganizationControllerConfigurationAdapter
- (STConcreteOrganizationControllerConfigurationAdapter)initWithFamilySettingsManager:(id)manager requestManager:(id)requestManager persistentContainer:(id)container;
- (id)_handleConfigurationAsBlueprint:(id)blueprint timeout:(unint64_t)timeout;
- (id)_handleConfigurationAsSettings:(id)settings;
- (id)handleConfigurationChange:(id)change;
@end

@implementation STConcreteOrganizationControllerConfigurationAdapter

- (STConcreteOrganizationControllerConfigurationAdapter)initWithFamilySettingsManager:(id)manager requestManager:(id)requestManager persistentContainer:(id)container
{
  managerCopy = manager;
  requestManagerCopy = requestManager;
  containerCopy = container;
  v18.receiver = self;
  v18.super_class = STConcreteOrganizationControllerConfigurationAdapter;
  v11 = [(STConcreteOrganizationControllerConfigurationAdapter *)&v18 init];
  familySettingsManager = v11->_familySettingsManager;
  v11->_familySettingsManager = managerCopy;
  v13 = managerCopy;

  requestManager = v11->_requestManager;
  v11->_requestManager = requestManagerCopy;
  v15 = requestManagerCopy;

  persistentContainer = v11->_persistentContainer;
  v11->_persistentContainer = containerCopy;

  return v11;
}

- (id)handleConfigurationChange:(id)change
{
  changeCopy = change;
  configuration = [changeCopy configuration];
  configurationType = [changeCopy configurationType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = +[STLog organizationControllerConfigurationAdapter];
  v9 = v8;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100112E34(configuration, v9);
    }

    v14 = [NSError alloc];
    v15 = STErrorDomain;
    v35 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"Unsupported configuration: %@", objc_opt_class()];
    v36 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v10 = [v14 initWithDomain:v15 code:37 userInfo:v17];

    v18 = [STResult failure:v10];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handleConfigurationChange - configuration is a dictionary", buf, 2u);
  }

  v10 = configuration;
  v11 = +[STLog organizationControllerConfigurationAdapter];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [changeCopy configurationType] - 1;
    if (v12 > 5)
    {
      v13 = @"Invalid";
    }

    else
    {
      v13 = off_1001A3348[v12];
    }

    author = [changeCopy author];
    *buf = 138543618;
    v32 = v13;
    v33 = 2114;
    v34 = author;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Handling configuration changes of type '%{public}@' by author: %{public}@", buf, 0x16u);
  }

  if (configurationType <= 6)
  {
    if (((1 << configurationType) & 0x74) != 0)
    {
      v20 = +[STLog organizationControllerConfigurationAdapter];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Handling configuration changes as 'blueprint'", buf, 2u);
      }

      v18 = [(STConcreteOrganizationControllerConfigurationAdapter *)self _handleConfigurationAsBlueprint:v10 timeout:60];
LABEL_21:
      configurationType = v18;
      goto LABEL_22;
    }

    if (((1 << configurationType) & 0xA) != 0)
    {
      v21 = +[STLog organizationControllerConfigurationAdapter];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Handling configuration changes as 'settings'", buf, 2u);
      }

      v18 = [(STConcreteOrganizationControllerConfigurationAdapter *)self _handleConfigurationAsSettings:v10];
      goto LABEL_21;
    }

    v23 = [NSError alloc];
    v24 = STErrorDomain;
    nSLocalizedDescriptionKey = [NSString stringWithFormat:@"Unsupported configuration: %@ - %@", objc_opt_class(), @"Invalid", NSLocalizedDescriptionKey];
    v30 = nSLocalizedDescriptionKey;
    v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v27 = [v23 initWithDomain:v24 code:37 userInfo:v26];

    v28 = +[STLog organizationControllerConfigurationAdapter];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100112EC8();
    }

    configurationType = [STResult failure:v27];
  }

LABEL_22:

  return configurationType;
}

- (id)_handleConfigurationAsBlueprint:(id)blueprint timeout:(unint64_t)timeout
{
  blueprintCopy = blueprint;
  v7 = +[STLog organizationControllerConfigurationAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = timeout;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Entered _handleConfigurationAsBlueprint with timeout: %{public}lld", &buf, 0xCu);
  }

  v39 = blueprintCopy;
  v40 = @"Blueprints";
  v8 = [NSArray arrayWithObjects:&v39 count:1];
  v41 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

  v10 = [STUnifiedTransportPayload alloc];
  v37 = @"TreatPayloadAsDelta";
  v38 = @"YES";
  v11 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v12 = [(STUnifiedTransportPayload *)v10 initWithPayload:v9 type:@"RMUnifiedTransportPayloadTypeBlueprints" userInfo:v11];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = sub_100019CB0;
  v35 = sub_100019CC0;
  v36 = 0;
  v13 = dispatch_semaphore_create(0);
  requestManager = [(STConcreteOrganizationControllerConfigurationAdapter *)self requestManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100019CC8;
  v27[3] = &unk_1001A32A0;
  p_buf = &buf;
  v15 = v13;
  v28 = v15;
  [requestManager persistBlueprintsFromBlueprintPayload:v12 withCompletion:v27];

  v16 = dispatch_time(0, 1000000000 * timeout);
  if (dispatch_semaphore_wait(v15, v16))
  {
    v17 = +[STLog organizationControllerConfigurationAdapter];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100112F30(v17);
    }

    v18 = [NSError alloc];
    v30 = NSLocalizedDescriptionKey;
    v31 = @"Request manager persist blueprints operation timed out";
    v19 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = [v18 initWithDomain:STErrorDomain code:38 userInfo:v19];

    v21 = [STResult failure:v20];
    v22 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v21;
  }

  v23 = +[STLog organizationControllerConfigurationAdapter];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Synchronous request manager persisting blueprints - succeeded", v26, 2u);
  }

  v24 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v24;
}

- (id)_handleConfigurationAsSettings:(id)settings
{
  settingsCopy = settings;
  v5 = +[STLog organizationControllerConfigurationAdapter];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Entered _handleConfigurationAsSettings", buf, 2u);
  }

  persistentContainer = [(STConcreteOrganizationControllerConfigurationAdapter *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_100019CB0;
  v22 = sub_100019CC0;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001A158;
  v14[3] = &unk_1001A3328;
  v14[4] = self;
  v8 = settingsCopy;
  v15 = v8;
  v9 = newBackgroundContext;
  v16 = v9;
  v17 = buf;
  [v9 performBlockAndWait:v14];
  v10 = +[STLog organizationControllerConfigurationAdapter];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Exiting _handleConfigurationAsSettings - succeeded", v13, 2u);
  }

  v11 = *(v19 + 5);
  _Block_object_dispose(buf, 8);

  return v11;
}

@end