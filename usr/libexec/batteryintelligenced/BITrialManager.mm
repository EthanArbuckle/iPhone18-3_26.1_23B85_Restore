@interface BITrialManager
- (BITrialManager)initWithNamespaceName:(id)name;
- (id)loadModelFromPath:(id)path withConfiguration:(id)configuration alreadyCompiled:(BOOL)compiled;
- (id)loadTrialMLModelForModelName:(id)name withConfiguration:(id)configuration;
@end

@implementation BITrialManager

- (BITrialManager)initWithNamespaceName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BITrialManager;
  v6 = [(BITrialManager *)&v13 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.batteryintelligence", "trialmanager");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_trialNamespaceName, name);
    v9 = +[TRIClient client];
    trialClient = v6->_trialClient;
    v6->_trialClient = v9;

    v11 = v6->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = nameCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initializing trial manager for namespace %@", buf, 0xCu);
    }
  }

  return v6;
}

- (id)loadModelFromPath:(id)path withConfiguration:(id)configuration alreadyCompiled:(BOOL)compiled
{
  compiledCopy = compiled;
  pathCopy = path;
  configurationCopy = configuration;
  v10 = os_transaction_create();
  log = self->_log;
  if (pathCopy)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = pathCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Request to load model from path: %@ ", buf, 0xCu);
    }

    v12 = [NSURL fileURLWithPath:pathCopy];
    v13 = v12;
    if (compiledCopy)
    {
      v14 = v12;
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading compiled model from %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loading uncompiled model from %@ and compiling..", buf, 0xCu);
      }

      v26 = 0;
      v14 = [MLModel compileModelAtURL:v13 error:&v26];
      v18 = v26;
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10002E97C();
        }

        goto LABEL_26;
      }
    }

    if (configurationCopy)
    {
      v24 = 0;
      v20 = &v24;
      v21 = [MLModel modelWithContentsOfURL:v14 configuration:configurationCopy error:&v24];
    }

    else
    {
      v25 = 0;
      v20 = &v25;
      v21 = [MLModel modelWithContentsOfURL:v14 error:&v25];
    }

    v16 = v21;
    v19 = *v20;
    v22 = self->_log;
    if (!v19 && v16)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully loaded compiled model.", buf, 2u);
      }

      v19 = 0;
      goto LABEL_27;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10002E9E4();
    }

LABEL_26:
    v16 = 0;
LABEL_27:

    goto LABEL_28;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10002EA4C(log);
  }

  v16 = 0;
LABEL_28:

  return v16;
}

- (id)loadTrialMLModelForModelName:(id)name withConfiguration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    trialNamespaceName = self->_trialNamespaceName;
    *buf = 138412546;
    v28 = nameCopy;
    v29 = 2112;
    v30 = trialNamespaceName;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loading ML model with factor name: %@ from trial under namespace: %@.", buf, 0x16u);
  }

  v10 = [(BITrialManager *)self trialFactorLevel:nameCopy];
  levelOneOfCase = [v10 levelOneOfCase];
  if (levelOneOfCase == 101)
  {
    [v10 directoryValue];
  }

  else
  {
    [v10 fileValue];
  }
  v12 = ;
  path = [v12 path];

  v14 = [path containsString:@"System/Library/PrivateFrameworks/BatteryIntelligence.framework/assets_BATTERYINTELLIGENCE_BATTERY_ANALYSIS/"];
  if (v14)
  {
    v26 = configurationCopy;
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = path;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading compiled trial model stored locally from default assets. Original (requested) path: %@", buf, 0xCu);
    }

    lastPathComponent = [path lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v18 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"mlmodelc"];

    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    v19StringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];
    v21 = [v19StringByDeletingLastPathComponent stringByAppendingPathComponent:v18];

    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Corrected model path is: %@.", buf, 0xCu);
    }

    configurationCopy = v26;
  }

  else
  {
    v21 = path;
  }

  if (levelOneOfCase == 101)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14;
  }

  v24 = [(BITrialManager *)self loadModelFromPath:v21 withConfiguration:configurationCopy alreadyCompiled:v23];

  return v24;
}

@end