@interface SoftwareUpdateAdapter
- (BOOL)applyConfiguration:(id)configuration scope:(int64_t)scope returningReasons:(id *)reasons error:(id *)error;
- (BOOL)removeDeclarationKey:(id)key scope:(int64_t)scope error:(id *)error;
- (SoftwareUpdateAdapter)init;
- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation SoftwareUpdateAdapter

- (SoftwareUpdateAdapter)init
{
  v6.receiver = self;
  v6.super_class = SoftwareUpdateAdapter;
  v2 = [(SoftwareUpdateAdapter *)&v6 init];
  if (v2)
  {
    v3 = [[SUManagerClient alloc] initWithDelegate:0 queue:&_dispatch_main_q clientType:1];
    controller = v2->_controller;
    v2->_controller = v3;
  }

  return v2;
}

- (id)configurationClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error
{
  if (scope == 1)
  {
    v6 = +[NSSet set];
    controller = [(SoftwareUpdateAdapter *)self controller];
    v8 = objc_opt_respondsToSelector();

    controller2 = [(SoftwareUpdateAdapter *)self controller];
    v10 = controller2;
    if (v8)
    {
      v62 = 0;
      v11 = [controller2 declarationsWithError:&v62];
      v12 = v62;

      if (v12)
      {
        v13 = +[SUCoreDDMUtilities sharedLogger];
        oslog = [v13 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
          v65 = 2114;
          scopeCopy = v12;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Failed to get declarations; error = %{public}@", buf, 0x16u);
        }
      }

      else if (v11 && [v11 count])
      {
        errorCopy = error;
        v30 = +[SUCoreDDMUtilities sharedLogger];
        oslog2 = [v30 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
          v65 = 2114;
          scopeCopy = v11;
          _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "%s: All declarations: %{public}@", buf, 0x16u);
        }

        v54 = v6;

        v56 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v53 = v11;
        v32 = v11;
        v33 = [v32 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v33)
        {
          v34 = v33;
          v12 = 0;
          v35 = *v59;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v59 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v58 + 1) + 8 * i);
              declarationKey = [v37 declarationKey];
              v39 = [RMStoreDeclarationKey newDeclarationKey:declarationKey];

              if ([v39 isValid])
              {
                [v56 addObject:v39];
              }

              else
              {
                v40 = +[SUCoreDDMUtilities sharedLogger];
                oslog3 = [v40 oslog];

                if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
                {
                  declarationKey2 = [v37 declarationKey];
                  *buf = 136315650;
                  v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
                  v65 = 2114;
                  scopeCopy = v37;
                  v67 = 2114;
                  v68 = declarationKey2;
                  _os_log_error_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_ERROR, "%s: %{public}@ is invalid, not adding key (%{public}@)", buf, 0x20u);
                }

                declarationKey3 = [v37 declarationKey];
                v43 = [NSString stringWithFormat:@"Invalid declaration detected: %@", declarationKey3];

                v44 = +[SUCore sharedCore];
                v45 = [v44 buildError:9100 underlying:0 description:v43];

                v12 = v45;
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v58 objects:v69 count:16];
          }

          while (v34);
        }

        else
        {
          v12 = 0;
        }

        oslog = v56;
        v6 = [NSSet setWithArray:v56];

        error = errorCopy;
        v11 = v53;
      }

      else
      {
        v47 = +[SUCoreDDMUtilities sharedLogger];
        oslog = [v47 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: No declaration found, returning empty set", buf, 0xCu);
        }

        v12 = 0;
      }

      goto LABEL_49;
    }

    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      v28 = +[SUCoreDDMUtilities sharedLogger];
      oslog4 = [v28 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
        _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to get declaration keys", buf, 0xCu);
      }

      v11 = +[SUCore sharedCore];
      v12 = [v11 buildError:9101 underlying:0 description:@"No controller found to get keys"];
      goto LABEL_49;
    }

    controller3 = [(SoftwareUpdateAdapter *)self controller];
    v57 = 0;
    v11 = [controller3 declarationWithError:&v57];
    v12 = v57;

    v21 = +[SUCoreDDMUtilities sharedLogger];
    oslog5 = [v21 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
      v65 = 2114;
      scopeCopy = v11;
      _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "%s: Declaration: %{public}@", buf, 0x16u);
    }

    if (v12)
    {
      v23 = +[SUCoreDDMUtilities sharedLogger];
      oslog6 = [v23 oslog];

      if (!os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:

LABEL_49:
        if (error && v12)
        {
          v51 = v12;
          *error = v12;
        }

        goto LABEL_53;
      }

      *buf = 136315394;
      v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
      v65 = 2114;
      scopeCopy = v12;
      v25 = "%s: Failed to get declaration; error = %{public}@";
      v26 = oslog6;
      v27 = 22;
    }

    else
    {
      if (v11)
      {
        oslog6 = [v11 declarationKey];
        v48 = [RMStoreDeclarationKey newDeclarationKey:oslog6];
        v49 = [NSSet setWithObject:v48];

        v6 = v49;
        goto LABEL_45;
      }

      v50 = +[SUCoreDDMUtilities sharedLogger];
      oslog6 = [v50 oslog];

      if (!os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 136315138;
      v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
      v25 = "%s: No declaration found, returning empty set";
      v26 = oslog6;
      v27 = 12;
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_45;
  }

  v16 = +[SUCoreDDMUtilities sharedLogger];
  oslog7 = [v16 oslog];

  if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v64 = "[SoftwareUpdateAdapter allDeclarationKeysForScope:error:]";
    v65 = 2048;
    scopeCopy = scope;
    _os_log_impl(&_mh_execute_header, oslog7, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
  }

  if (error)
  {
    v18 = +[SUCore sharedCore];
    *error = [v18 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
  }

  v6 = objc_opt_new();
LABEL_53:

  return v6;
}

- (BOOL)applyConfiguration:(id)configuration scope:(int64_t)scope returningReasons:(id *)reasons error:(id *)error
{
  configurationCopy = configuration;
  if (scope == 1)
  {
    v10 = [(SoftwareUpdateAdapter *)self declarationKeyForConfiguration:configurationCopy];
    v11 = +[SUCoreDDMUtilities sharedLogger];
    oslog = [v11 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[SoftwareUpdateAdapter applyConfiguration:scope:returningReasons:error:]";
      v43 = 2114;
      v44[0] = v10;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Applying configuration with key: %{public}@", buf, 0x16u);
    }

    declaration = [configurationCopy declaration];
    v14 = +[NSMutableDictionary dictionary];
    v15 = [v10 key];
    [v14 setSafeObject:v15 forKey:SUCorePolicyDDMConfigurationKeyRMStoreDeclarationKey];

    payloadTargetLocalDateTime = [declaration payloadTargetLocalDateTime];
    [v14 setSafeObject:payloadTargetLocalDateTime forKey:SUCorePolicyDDMConfigurationKeyTargetLocalDateTime];

    payloadTargetOSVersion = [declaration payloadTargetOSVersion];
    [v14 setSafeObject:payloadTargetOSVersion forKey:SUCorePolicyDDMConfigurationKeyTargetVersion];

    payloadTargetBuildVersion = [declaration payloadTargetBuildVersion];
    [v14 setSafeObject:payloadTargetBuildVersion forKey:SUCorePolicyDDMConfigurationKeyTargetBuildVersion];

    payloadDetailsURL = [declaration payloadDetailsURL];
    [v14 setSafeObject:payloadDetailsURL forKey:SUCorePolicyDDMConfigurationKeyDetailsURL];

    v20 = +[SUCoreDDMUtilities sharedLogger];
    oslog2 = [v20 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[SoftwareUpdateAdapter applyConfiguration:scope:returningReasons:error:]";
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "%s: Scheduling update", buf, 0xCu);
    }

    controller = [(SoftwareUpdateAdapter *)self controller];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v14];
      controller2 = [(SoftwareUpdateAdapter *)self controller];
      v40 = 0;
      v26 = [controller2 scheduleUpdate:v24 withError:&v40];
      v27 = v40;
    }

    else
    {
      controller3 = [(SoftwareUpdateAdapter *)self controller];
      v32 = objc_opt_respondsToSelector();

      if ((v32 & 1) == 0)
      {
        v34 = +[SUCoreDDMUtilities sharedLogger];
        oslog3 = [v34 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = "[SoftwareUpdateAdapter applyConfiguration:scope:returningReasons:error:]";
          _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to enforce declaration", buf, 0xCu);
        }

        v24 = +[SUCore sharedCore];
        v28 = [v24 buildError:9101 underlying:0 description:@"No controller found to enforce declaration"];
        v26 = 0;
        goto LABEL_20;
      }

      v24 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v14];
      controller4 = [(SoftwareUpdateAdapter *)self controller];
      v26 = [controller4 scheduleUpdate:v24];

      if (v26)
      {
        v28 = 0;
        goto LABEL_20;
      }

      controller2 = +[SUCore sharedCore];
      v27 = [controller2 buildError:9102 underlying:0 description:@"Failed to schedule update"];
    }

    v28 = v27;

LABEL_20:
    v36 = +[SUCoreDDMUtilities sharedLogger];
    oslog4 = [v36 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v42 = "[SoftwareUpdateAdapter applyConfiguration:scope:returningReasons:error:]";
      v43 = 1024;
      LODWORD(v44[0]) = v26;
      WORD2(v44[0]) = 2114;
      *(v44 + 6) = v28;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Scheduled update, result = %d, error = %{public}@", buf, 0x1Cu);
    }

    if (error && v28)
    {
      v38 = v28;
      *error = v28;
    }

    goto LABEL_26;
  }

  v29 = +[SUCoreDDMUtilities sharedLogger];
  oslog5 = [v29 oslog];

  if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[SoftwareUpdateAdapter applyConfiguration:scope:returningReasons:error:]";
    v43 = 2048;
    v44[0] = scope;
    _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
  }

  if (error)
  {
    v10 = +[SUCore sharedCore];
    [v10 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
    *error = LOBYTE(v26) = 0;
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(v26) = 0;
LABEL_27:

  return v26;
}

- (BOOL)removeDeclarationKey:(id)key scope:(int64_t)scope error:(id *)error
{
  keyCopy = key;
  v9 = +[SUCoreDDMUtilities sharedLogger];
  oslog = [v9 oslog];

  v11 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (scope == 1)
  {
    if (v11)
    {
      *buf = 136315394;
      v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
      v42 = 2114;
      v43[0] = keyCopy;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Canceling update for key %{public}@", buf, 0x16u);
    }

    controller = [(SoftwareUpdateAdapter *)self controller];
    v13 = objc_opt_respondsToSelector();

    controller2 = [(SoftwareUpdateAdapter *)self controller];
    if (v13)
    {
      oslog4 = [keyCopy key];
      v39 = 0;
      v16 = [controller2 cancelUpdateForKey:oslog4 withError:&v39];
      v17 = v39;
LABEL_6:

LABEL_25:
      v31 = +[SUCoreDDMUtilities sharedLogger];
      oslog2 = [v31 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
        v42 = 1024;
        LODWORD(v43[0]) = v16;
        WORD2(v43[0]) = 2114;
        *(v43 + 6) = v17;
        _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "%s: Canceled update, result = %d; error = %{public}@", buf, 0x1Cu);
      }

      if (!error || !v17)
      {
        goto LABEL_31;
      }

      v18 = v17;
LABEL_30:
      *error = v18;
LABEL_31:

      goto LABEL_32;
    }

    if (objc_opt_respondsToSelector())
    {
      controller3 = [(SoftwareUpdateAdapter *)self controller];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        controller4 = [(SoftwareUpdateAdapter *)self controller];
        v38 = 0;
        controller2 = [controller4 declarationWithError:&v38];
        v17 = v38;

        v22 = +[SUCoreDDMUtilities sharedLogger];
        oslog3 = [v22 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
          v42 = 2114;
          v43[0] = controller2;
          _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "%s: Found declaration %{public}@", buf, 0x16u);
        }

        if (!controller2 || v17)
        {
          if (v17)
          {
LABEL_35:
            v35 = +[SUCoreDDMUtilities sharedLogger];
            oslog4 = [v35 oslog];

            if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
              v42 = 2114;
              v43[0] = v17;
              _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: No declaration found, error = %{public}@", buf, 0x16u);
            }

            v16 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          declarationKey = [controller2 declarationKey];
          v25 = [keyCopy key];
          v26 = [declarationKey isEqualToString:v25];

          if (v26)
          {
            controller5 = [(SoftwareUpdateAdapter *)self controller];
            v16 = [controller5 cancelUpdate:controller2];

            if (v16)
            {
              v17 = 0;
            }

            else
            {
              v36 = +[SUCore sharedCore];
              v17 = [v36 buildError:9102 underlying:0 description:@"Failed to cancel update"];
            }

            v37 = +[SUCoreDDMUtilities sharedLogger];
            oslog4 = [v37 oslog];

            if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
              v42 = 1024;
              LODWORD(v43[0]) = v16;
              _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Canceled update: %d", buf, 0x12u);
            }

            goto LABEL_6;
          }
        }

        v34 = +[SUCore sharedCore];
        v17 = [v34 buildError:9100 underlying:0 description:@"No declaration found"];

        goto LABEL_35;
      }
    }

    else
    {
    }

    v28 = +[SUCore sharedCore];
    v17 = [v28 buildError:9101 underlying:0 description:@"No controller found to remove declaration"];

    v29 = +[SUCoreDDMUtilities sharedLogger];
    controller2 = [v29 oslog];

    if (os_log_type_enabled(controller2, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [keyCopy key];
      *buf = 136315394;
      v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
      v42 = 2114;
      v43[0] = v30;
      _os_log_impl(&_mh_execute_header, controller2, OS_LOG_TYPE_DEFAULT, "%s: Anomaly: No controller found to cancel declaration for key %{public}@", buf, 0x16u);
    }

    v16 = 0;
    goto LABEL_25;
  }

  if (v11)
  {
    *buf = 136315394;
    v41 = "[SoftwareUpdateAdapter removeDeclarationKey:scope:error:]";
    v42 = 2048;
    v43[0] = scope;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Error, declarations required for non system scope: (long)%ld", buf, 0x16u);
  }

  if (error)
  {
    v17 = +[SUCore sharedCore];
    v18 = [v17 buildError:8114 underlying:0 description:@"Software update declarations only support system scope"];
    LOBYTE(v16) = 0;
    goto LABEL_30;
  }

  LOBYTE(v16) = 0;
LABEL_32:

  return v16;
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  store = [configurationCopy store];
  declaration = [configurationCopy declaration];

  v6 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.SoftwareUpdateExtension" store:store declaration:declaration];

  return v6;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v7 = +[SUCoreDDMUtilities sharedLogger];
  oslog = [v7 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 136315394;
    v54 = "[SoftwareUpdateAdapter configurationUIForConfiguration:scope:completionHandler:]";
    v55 = 2114;
    v56 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Get configuration UI for: %{public}@", buf, 0x16u);
  }

  v50 = configurationCopy;
  declaration2 = [configurationCopy declaration];
  v12 = +[NSMutableArray array];
  payloadTargetOSVersion = [declaration2 payloadTargetOSVersion];

  if (payloadTargetOSVersion)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SU_CONFIGURATION_OS_VERSION" value:&stru_10000C4A8 table:0];
    v62[0] = v15;
    payloadTargetOSVersion2 = [declaration2 payloadTargetOSVersion];
    v62[1] = payloadTargetOSVersion2;
    v17 = [NSArray arrayWithObjects:v62 count:2];
    [v12 addObject:v17];
  }

  payloadTargetBuildVersion = [declaration2 payloadTargetBuildVersion];

  if (payloadTargetBuildVersion)
  {
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"SU_CONFIGURATION_BUILD_VERSION" value:&stru_10000C4A8 table:0];
    v61[0] = v20;
    payloadTargetBuildVersion2 = [declaration2 payloadTargetBuildVersion];
    v61[1] = payloadTargetBuildVersion2;
    v22 = [NSArray arrayWithObjects:v61 count:2];
    [v12 addObject:v22];
  }

  payloadTargetLocalDateTime = [declaration2 payloadTargetLocalDateTime];

  v51 = declaration2;
  if (payloadTargetLocalDateTime)
  {
    v24 = objc_opt_new();
    v25 = +[NSTimeZone localTimeZone];
    [v24 setTimeZone:v25];

    [v24 setFormatOptions:819];
    payloadTargetLocalDateTime2 = [declaration2 payloadTargetLocalDateTime];
    v27 = [v24 dateFromString:payloadTargetLocalDateTime2];

    v28 = [NSDateFormatter localizedStringFromDate:v27 dateStyle:2 timeStyle:1];
    v29 = v28;
    if (v27 && v28)
    {
      v30 = [NSBundle bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"SU_CONFIGURATION_TARGET_DATE_TIME" value:&stru_10000C4A8 table:0];
      v52[0] = v31;
      v52[1] = v29;
      v32 = [NSArray arrayWithObjects:v52 count:2];
      v33 = v12;
      v34 = v32;
      v35 = v33;
      [v33 addObject:v32];

      v36 = 0;
    }

    else
    {
      v37 = +[SUCoreDDMUtilities sharedLogger];
      oslog2 = [v37 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v54 = "[SoftwareUpdateAdapter configurationUIForConfiguration:scope:completionHandler:]";
        v55 = 2114;
        v56 = declaration2;
        v57 = 2114;
        v58 = v27;
        v59 = 2114;
        v60 = v29;
        _os_log_fault_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_FAULT, "%s: ANOMALY: No date found for declaration? %{public}@, date: %{public}@, formattedDateString: %{public}@", buf, 0x2Au);
      }

      v35 = v12;

      v30 = +[SUCore sharedCore];
      v36 = [v30 buildError:9103 underlying:0 description:@"Invalid declaration payload"];
    }
  }

  else
  {
    v35 = v12;
    v36 = 0;
  }

  v39 = [NSBundle bundleForClass:objc_opt_class()];
  v40 = [v39 localizedStringForKey:@"SU_CONFIGURATION_TITLE" value:&stru_10000C4A8 table:0];
  payloadTargetOSVersion3 = [v51 payloadTargetOSVersion];
  v42 = [NSString localizedStringWithFormat:v40, payloadTargetOSVersion3];
  v43 = [NSBundle bundleForClass:objc_opt_class()];
  v44 = [v43 localizedStringForKey:@"SU_CONFIGURATION_DESCRIPTION" value:&stru_10000C4A8 table:0];
  v45 = [v35 copy];
  v46 = [RMConfigurationUIDetails configurationUIWithTitle:v42 description:v44 details:v45];

  v47 = +[SUCoreDDMUtilities sharedLogger];
  oslog3 = [v47 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v54 = "[SoftwareUpdateAdapter configurationUIForConfiguration:scope:completionHandler:]";
    v55 = 2114;
    v56 = v35;
    _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "%s: Applying configuration UI: %{public}@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, 1, v46, v36);
}

@end