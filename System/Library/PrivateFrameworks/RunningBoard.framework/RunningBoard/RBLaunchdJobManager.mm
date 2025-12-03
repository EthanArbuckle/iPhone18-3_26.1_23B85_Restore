@interface RBLaunchdJobManager
+ (id)lastExitStatusForLabel:(id)label error:(id *)error;
- (BOOL)_addAppPropertiesToData:(id)data forIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error;
- (BOOL)_addContainerPropertiesFromExtensionContext:(id)context toServiceDict:(id)dict;
- (BOOL)_addPersonaFromExtensionContext:(id)context toServiceDict:(id)dict;
- (BOOL)_isRunningBoardLaunched:(id)launched;
- (BOOL)_removeJobWithInstance:(id)instance orJob:(id)job error:(id *)error;
- (RBLaunchdJobManager)initWithLaunchdInterface:(id)interface personaManager:(id)manager containerManager:(id)containerManager bundlePropertiesManager:(id)propertiesManager;
- (id)_containerURLForExtensionContext:(id)context;
- (id)_createAndSubmitExtensionJob:(id)job UUID:(id)d error:(id *)error;
- (id)_createLaunchdJobWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error;
- (id)_generateDataWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error;
- (id)createAndLaunchWithIdentity:(id)identity context:(id)context error:(id *)error;
- (id)synchronizeJobs;
- (unint64_t)test_trackedJobCount;
- (void)_addDextPropertiesToData:(id)data forIdentity:(id)identity context:(id)context;
- (void)_addExtensionContainerURL:(id)l toServiceDict:(id)dict;
- (void)_addExtensionEnvironmentFromContainerURL:(id)l toServiceDict:(id)dict;
- (void)_addReslideIdentityIfNeeded:(id)needed exitStatus:(id)status;
- (void)_addSharedPropertiesToData:(id)data forIdentity:(id)identity context:(id)context;
- (void)_addStandardAppPropertiesToData:(id)data;
- (void)_adjustLaunchdJobProperties:(id)properties context:(id)context;
- (void)invokeOnProcessDeath:(id)death handler:(id)handler onQueue:(id)queue;
- (void)synchronizeJobs;
@end

@implementation RBLaunchdJobManager

+ (id)lastExitStatusForLabel:(id)label error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v6 = labelCopy;
  if (!labelCopy)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v21 = 0;
  [labelCopy UTF8String];
  last_exit_reason_4SB = _launch_get_last_exit_reason_4SB();
  if (!last_exit_reason_4SB)
  {
    v18 = rbs_job_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v6;
      _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Launchd says label %{public}@ has never exited", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v8 = last_exit_reason_4SB;
  v9 = [MEMORY[0x277D46F38] statusWithDomain:0 code:0];
  v10 = xpc_strerror();
  v11 = rbs_job_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v25 = v6;
    v26 = 2080;
    v27 = v10;
    v28 = 1024;
    v29 = v8;
    _os_log_error_impl(&dword_262485000, v11, OS_LOG_TYPE_ERROR, "failed to get process exit details for %{public}@ : %s (%d)", buf, 0x1Cu);
  }

  if (error)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get process exit details for label %@", v6];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v16 = *MEMORY[0x277CCA470];
    v22[0] = *MEMORY[0x277CCA450];
    v22[1] = v16;
    v23[0] = v12;
    v23[1] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    *error = [v14 errorWithDomain:v15 code:v8 userInfo:v17];
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (RBLaunchdJobManager)initWithLaunchdInterface:(id)interface personaManager:(id)manager containerManager:(id)containerManager bundlePropertiesManager:(id)propertiesManager
{
  interfaceCopy = interface;
  managerCopy = manager;
  containerManagerCopy = containerManager;
  propertiesManagerCopy = propertiesManager;
  v27.receiver = self;
  v27.super_class = RBLaunchdJobManager;
  v15 = [(RBLaunchdJobManager *)&v27 init];
  if (v15)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lock_jobsByIdentifier = v15->_lock_jobsByIdentifier;
    v15->_lock_jobsByIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    lock_monitoredJobsByIdentifier = v15->_lock_monitoredJobsByIdentifier;
    v15->_lock_monitoredJobsByIdentifier = dictionary2;

    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_launchdInterface, interface);
    objc_storeStrong(&v15->_personaManager, manager);
    objc_storeStrong(&v15->_containerManager, containerManager);
    objc_storeStrong(&v15->_bundlePropertiesManager, propertiesManager);
    v20 = objc_alloc_init(MEMORY[0x277CBEB40]);
    lock_reslideIdentities = v15->_lock_reslideIdentities;
    v15->_lock_reslideIdentities = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.runningboard.launchdLogging", v22);
    logQueue = v15->_logQueue;
    v15->_logQueue = v23;

    v25 = v15;
  }

  return v15;
}

- (void)_addReslideIdentityIfNeeded:(id)needed exitStatus:(id)status
{
  neededCopy = needed;
  statusCopy = status;
  if ([neededCopy isApplication] && (objc_msgSend(statusCopy, "os_reason_flags") & 0x400) != 0)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableOrderedSet *)self->_lock_reslideIdentities removeObject:neededCopy];
    [(NSMutableOrderedSet *)self->_lock_reslideIdentities addObject:neededCopy];
    if ([(NSMutableOrderedSet *)self->_lock_reslideIdentities count]>= 0x1A)
    {
      [(NSMutableOrderedSet *)self->_lock_reslideIdentities removeObjectAtIndex:0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_addSharedPropertiesToData:(id)data forIdentity:(id)identity context:(id)context
{
  v56 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identityCopy = identity;
  contextCopy = context;
  executionOptions = [contextCopy executionOptions];
  xpc_dictionary_set_string(dataCopy, "_ManagedBy", "com.apple.runningboard");
  applicationJobLabel = [identityCopy applicationJobLabel];

  if (applicationJobLabel)
  {
    applicationJobLabel2 = [identityCopy applicationJobLabel];
    goto LABEL_13;
  }

  v12 = identityCopy;
  if ([v12 isEmbeddedApplication])
  {
    v13 = MEMORY[0x277CCACA8];
    embeddedApplicationIdentifier = [v12 embeddedApplicationIdentifier];
    applicationJobLabel2 = [v13 stringWithFormat:@"UIKitApplication:%@[%04x][rb-legacy]", embeddedApplicationIdentifier, arc4random() % 0xFFFF];
  }

  else
  {
    if ([v12 hasConsistentLaunchdJob])
    {
      consistentLaunchdJobLabel = [v12 consistentLaunchdJobLabel];
    }

    else if ([v12 isApplication])
    {
      consistentLaunchdJobLabel = [v12 applicationJobLabel];
    }

    else
    {
      if (![v12 isDext])
      {
        applicationJobLabel2 = &stru_287507640;
        goto LABEL_12;
      }

      consistentLaunchdJobLabel = [v12 dextLabel];
    }

    applicationJobLabel2 = consistentLaunchdJobLabel;
  }

LABEL_12:

LABEL_13:
  xpc_dictionary_set_string(dataCopy, "Label", [(__CFString *)applicationJobLabel2 UTF8String]);

  v16 = xpc_array_create(0, 0);
  _overrideExecutablePath = [contextCopy _overrideExecutablePath];
  fileSystemRepresentation = [_overrideExecutablePath fileSystemRepresentation];

  v40 = executionOptions;
  v41 = identityCopy;
  if (fileSystemRepresentation)
  {
    xpc_array_set_string(v16, 0xFFFFFFFFFFFFFFFFLL, fileSystemRepresentation);
    xpc_dictionary_set_string(dataCopy, "Program", fileSystemRepresentation);
  }

  else
  {
    v19 = rbs_process_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchdJobManager _addSharedPropertiesToData:contextCopy forIdentity:? context:?];
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  arguments = [contextCopy arguments];
  v21 = [arguments countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v49;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(arguments);
        }

        v25 = [*(*(&v48 + 1) + 8 * i) description];
        xpc_array_set_string(v16, 0xFFFFFFFFFFFFFFFFLL, [v25 UTF8String]);
      }

      v22 = [arguments countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v22);
  }

  v42 = dataCopy;
  xpc_dictionary_set_value(dataCopy, "ProgramArguments", v16);
  v26 = xpc_dictionary_create(0, 0, 0);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  _additionalEnvironment = [contextCopy _additionalEnvironment];
  v28 = [_additionalEnvironment countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(_additionalEnvironment);
        }

        v32 = *(*(&v44 + 1) + 8 * j);
        _additionalEnvironment2 = [contextCopy _additionalEnvironment];
        v34 = [_additionalEnvironment2 objectForKey:v32];

        v35 = [v32 description];
        uTF8String = [v35 UTF8String];
        v37 = [v34 description];
        xpc_dictionary_set_string(v26, uTF8String, [v37 UTF8String]);
      }

      v29 = [_additionalEnvironment countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v29);
  }

  if ((v40 & 4) != 0)
  {
    v38 = rbs_job_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v53 = v41;
      _os_log_impl(&dword_262485000, v38, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ to build DYLD closure. The new process will exit as soon as the operation completes.", buf, 0xCu);
    }

    xpc_dictionary_set_string(v26, "DYLD_JUST_BUILD_CLOSURE", "1");
  }

  xpc_dictionary_set_value(v42, "EnvironmentVariables", v26);
  if ((v40 & 0x100000) != 0)
  {
    xpc_dictionary_set_BOOL(v42, "RunAtLoad", 1);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_addDextPropertiesToData:(id)data forIdentity:(id)identity context:(id)context
{
  xdict = data;
  identityCopy = identity;
  contextCopy = context;
  executionOptions = [contextCopy executionOptions];
  xpc_dictionary_set_string(xdict, "ProcessType", "Driver");
  xpc_dictionary_set_BOOL(xdict, "RunAtLoad", 1);
  xpc_dictionary_set_BOOL(xdict, "LaunchOnlyOnce", 1);
  xpc_dictionary_set_string(xdict, "UserName", "_driverkit");
  xpc_dictionary_set_string(xdict, "SandboxProfile", "com.apple.dext");
  xpc_dictionary_set_BOOL(xdict, "_NullBootstrapPort", 1);
  if ((executionOptions & 0x40) != 0)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "Core", 0x7FFFFFFFFFFFFFFFuLL);
    xpc_dictionary_set_value(xdict, "HardResourceLimits", v10);
    xpc_dictionary_set_value(xdict, "SoftResourceLimits", v10);
  }

  dextServerName = [identityCopy dextServerName];

  if (dextServerName)
  {
    dextServerName2 = [identityCopy dextServerName];
    xpc_dictionary_set_string(xdict, "_JetsamPropertiesIdentifier", [dextServerName2 UTF8String]);
  }

  if ((executionOptions & 0x20) != 0)
  {
    xpc_dictionary_set_BOOL(xdict, "ReslideSharedCache", 1);
  }

  [contextCopy dextCheckInPort];
  xpc_dictionary_set_mach_send();
}

- (void)_addStandardAppPropertiesToData:(id)data
{
  xdict = data;
  xpc_dictionary_set_string(xdict, "UserName", "mobile");
  xpc_dictionary_set_BOOL(xdict, "MaterializeDatalessFiles", 1);
  xpc_dictionary_set_BOOL(xdict, "EnablePressuredExit", 0);
  xpc_dictionary_set_BOOL(xdict, "EnableTransactions", 0);
  xpc_dictionary_set_int64(xdict, "ThrottleInterval", 0x7FFFFFFFLL);
  xpc_dictionary_set_int64(xdict, "ExitTimeOut", 1);
}

- (BOOL)_addAppPropertiesToData:(id)data forIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error
{
  v118 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identityCopy = identity;
  contextCopy = context;
  executionOptions = [contextCopy executionOptions];
  *actualIdentity = 0;
  [(RBLaunchdJobManager *)self _addStandardAppPropertiesToData:dataCopy];
  v93 = contextCopy;
  if (([contextCopy lsSpawnFlags] & 4) == 0)
  {
    spawnType = [contextCopy spawnType];
    if (spawnType)
    {
      v16 = spawnType;
      if (spawnType == 1)
      {
        v17 = "SystemApp";
      }

      else
      {
        v18 = rbs_general_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [RBLaunchdJobManager _addAppPropertiesToData:v16 forIdentity:v18 context:? actualIdentity:? error:?];
        }

        v17 = 0;
      }
    }

    else
    {
      v17 = "App";
    }

    xpc_dictionary_set_string(dataCopy, "ProcessType", v17);
    xpc_dictionary_set_int64(dataCopy, "_LaunchType", 3);
  }

  v19 = [identityCopy description];
  xpc_dictionary_set_string(dataCopy, "_ResourceCoalition", [v19 UTF8String]);

  bundleIdentifier = [contextCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [contextCopy bundleIdentifier];
    xpc_dictionary_set_string(dataCopy, "CFBundleIdentifier", [bundleIdentifier2 UTF8String]);
  }

  if ((executionOptions & 0x10) != 0)
  {
    xpc_dictionary_set_BOOL(dataCopy, "NSBuiltWithThreadSanitizer", 1);
  }

  _additionalMachServices = [contextCopy _additionalMachServices];
  launchRequestIdentifierToMachNameMap = [contextCopy launchRequestIdentifierToMachNameMap];
  v24 = launchRequestIdentifierToMachNameMap;
  v90 = dataCopy;
  selfCopy = self;
  if ((executionOptions & 4) != 0)
  {

    v92 = 0;
    _additionalMachServices = 0;
  }

  else
  {
    v92 = launchRequestIdentifierToMachNameMap;
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v25 = _additionalMachServices;
  v26 = [v25 countByEnumeratingWithState:&v108 objects:v117 count:16];
  obj = v25;
  if (v26)
  {
    v27 = v26;
    v28 = *v109;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v109 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v108 + 1) + 8 * i);
        v31 = rbs_general_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v114 = v30;
          v115 = 2114;
          v116 = identityCopy;
          _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "Inserting mach service %{public}@ into job for %{public}@", buf, 0x16u);
        }

        v32 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v32, "ResetAtClose", 1);
        xpc_dictionary_set_value(xdict, [v30 UTF8String], v32);
      }

      v25 = obj;
      v27 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
    }

    while (v27);
  }

  xpc_dictionary_set_value(v90, "MachServices", xdict);
  v33 = v92;
  if ([v92 count])
  {
    v34 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v92, "count")}];
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke;
    v104[3] = &unk_279B33140;
    v105 = identityCopy;
    v106 = v25;
    v107 = v34;
    v35 = v34;
    [v92 enumerateKeysAndObjectsUsingBlock:v104];
    empty = xpc_array_create_empty();
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke_45;
    v102[3] = &unk_279B33168;
    v103 = empty;
    v37 = empty;
    [v35 enumerateObjectsUsingBlock:v102];
    xpc_dictionary_set_value(v90, "_ManagedBy_Services", v37);
  }

  v38 = v93;
  standardOutputPath = [v93 standardOutputPath];

  if (standardOutputPath)
  {
    standardOutputPath2 = [v93 standardOutputPath];
    xpc_dictionary_set_string(v90, "StandardOutPath", [standardOutputPath2 UTF8String]);
  }

  standardErrorPath = [v93 standardErrorPath];

  if (standardErrorPath)
  {
    standardErrorPath2 = [v93 standardErrorPath];
    xpc_dictionary_set_string(v90, "StandardErrorPath", [standardErrorPath2 UTF8String]);
  }

  standardInPath = [v93 standardInPath];

  v44 = selfCopy;
  if (standardInPath)
  {
    standardInPath2 = [v93 standardInPath];
    xpc_dictionary_set_string(v90, "StandardInPath", [standardInPath2 UTF8String]);
  }

  if ((executionOptions & 5) == 1)
  {
    xpc_dictionary_set_BOOL(v90, "WaitForDebugger", 1);
  }

  if ((executionOptions & 6) == 2)
  {
    xpc_dictionary_set_BOOL(v90, "DisableASLR", 1);
  }

  if (executionOptions < 0)
  {
    v46 = rbs_job_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v114 = identityCopy;
      _os_log_impl(&dword_262485000, v46, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with MTE enabled.", buf, 0xCu);
    }

    xpc_dictionary_set_BOOL(v90, "EnableCheckedAllocations", 1);
  }

  if ([v93 lsSpawnFlags])
  {
    xpc_dictionary_set_BOOL(v90, "WaitForDebugger", 1);
  }

  if ([v93 initialRole])
  {
    [v93 initialRole];
    v47 = RBSDarwinRoleFromRBSRole();
    xpc_dictionary_set_int64(v90, "InitialTaskRole", v47);
  }

  lsBinpref = [v93 lsBinpref];
  if (lsBinpref && (v49 = lsBinpref, [v93 lsBinprefSubtype], v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v50))
  {
    v51 = xpc_array_create(0, 0);
    lsBinpref2 = [v93 lsBinpref];
    v53 = [lsBinpref2 count];

    if (v53)
    {
      v54 = identityCopy;
      v55 = 0;
      do
      {
        lsBinpref3 = [v93 lsBinpref];
        v57 = [lsBinpref3 objectAtIndex:v55];

        v58 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v58, "CPUType", [v57 integerValue]);
        lsBinprefSubtype = [v93 lsBinprefSubtype];
        v60 = [lsBinprefSubtype count];

        if (v60 <= v55)
        {
          integerValue = -1;
        }

        else
        {
          lsBinprefSubtype2 = [v93 lsBinprefSubtype];
          v62 = [lsBinprefSubtype2 objectAtIndex:v55];
          integerValue = [v62 integerValue];
        }

        xpc_dictionary_set_int64(v58, "CPUSubtype", integerValue);
        xpc_array_set_value(v51, 0xFFFFFFFFFFFFFFFFLL, v58);

        ++v55;
        lsBinpref4 = [v93 lsBinpref];
        v65 = [lsBinpref4 count];
      }

      while (v65 > v55);
      identityCopy = v54;
      v44 = selfCopy;
      v33 = v92;
    }
  }

  else
  {
    lsBinpref5 = [v93 lsBinpref];

    if (!lsBinpref5)
    {
      goto LABEL_65;
    }

    v51 = xpc_array_create(0, 0);
    *&value[1] = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    lsBinpref6 = [v93 lsBinpref];
    v68 = [lsBinpref6 countByEnumeratingWithState:&value[1] objects:v112 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v99;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v99 != v70)
          {
            objc_enumerationMutation(lsBinpref6);
          }

          xpc_array_set_int64(v51, 0xFFFFFFFFFFFFFFFFLL, [*(*&value[3] + 8 * j) unsignedIntegerValue]);
        }

        v69 = [lsBinpref6 countByEnumeratingWithState:&value[1] objects:v112 count:16];
      }

      while (v69);
    }

    v38 = v93;
  }

  xpc_dictionary_set_value(v90, "BinaryOrderPreference", v51);

LABEL_65:
  if ([v38 lsUMask])
  {
    xpc_dictionary_set_int64(v90, "Umask", [v38 lsUMask]);
  }

  if ([identityCopy platform])
  {
    xpc_dictionary_set_int64(v90, "Platform", [identityCopy platform]);
  }

  os_unfair_lock_lock(&v44->_lock);
  if ([(NSMutableOrderedSet *)v44->_lock_reslideIdentities containsObject:identityCopy])
  {
    xpc_dictionary_set_BOOL(v90, "ReslideSharedCache", 1);
  }

  os_unfair_lock_unlock(&v44->_lock);
  value[0] = 0;
  personaManager = v44->_personaManager;
  v97 = 0;
  v73 = [(RBPersonaManager *)personaManager personaForIdentity:identityCopy context:v38 personaUID:value personaUniqueString:&v97];
  v74 = v97;
  if (v73)
  {
    xpc_dictionary_set_int64(v90, "PersonaEnterprise", value[0]);
    v75 = [identityCopy copyWithPersonaString:v74];

    v76 = v75;
    *v89 = v75;
    v77 = [v76 description];
    xpc_dictionary_set_string(v90, "_ResourceCoalition", [v77 UTF8String]);

    _addRBProperties(v90, v75, v38);
    identityCopy = v75;
  }

  preventContainerization = [v38 preventContainerization];
  bOOLValue = [preventContainerization BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    containerManager = v44->_containerManager;
    v96 = 0;
    v82 = [(RBContainerManager *)containerManager containerPathForIdentity:identityCopy context:v38 persona:v74 error:&v96];
    v83 = v96;
    v80 = v83;
    if (v82)
    {
      fileSystemRepresentation = [v82 fileSystemRepresentation];
      xpc_dictionary_set_string(v90, "SandboxContainer", fileSystemRepresentation);
      v85 = xpc_dictionary_get_value(v90, "EnvironmentVariables");
      v86 = v85;
      if (v85)
      {
        xpc_dictionary_set_value(v85, "HOME", 0);
        xpc_dictionary_set_value(v86, "CFFIXED_USER_HOME", 0);
        xpc_dictionary_set_value(v86, "TMPDIR", 0);
        xpc_dictionary_set_value(v86, "_DYLD_CLOSURE_HOME", 0);
        xpc_dictionary_set_string(v86, "HOME", fileSystemRepresentation);
      }

      v33 = v92;
    }

    else
    {
      if (!v83)
      {
LABEL_84:

        goto LABEL_85;
      }

      v86 = rbs_job_log();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdJobManager _addAppPropertiesToData:forIdentity:context:actualIdentity:error:];
      }
    }

    goto LABEL_84;
  }

  v80 = rbs_job_log();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v114 = identityCopy;
    v115 = 2114;
    v116 = v38;
    _os_log_impl(&dword_262485000, v80, OS_LOG_TYPE_DEFAULT, "'%{public}@' Skipping container path lookup because containerization was prevented (%{public}@)", buf, 0x16u);
  }

LABEL_85:

  v87 = *MEMORY[0x277D85DE8];
  return 1;
}

void __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v6;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v10 = [v6 BOOLValue], v8 = v5, (v10))
  {
    v9 = v8;
    if (v9 && [*(a1 + 40) containsObject:v9])
    {
      [*(a1 + 48) addObject:v9];
    }
  }

  else
  {
    v11 = rbs_job_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring unsupported MANAGEDBY_SERVICES value for launchIdentifier %{public}@: value=%{public}@", &v14, 0x20u);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke_45(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 UTF8String];

  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, v5);
}

- (id)_generateDataWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error
{
  identityCopy = identity;
  contextCopy = context;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = objc_autoreleasePoolPush();
  _addRBProperties(v12, identityCopy, contextCopy);
  [(RBLaunchdJobManager *)self _addSharedPropertiesToData:v12 forIdentity:identityCopy context:contextCopy];
  if ([identityCopy isDext])
  {
    [(RBLaunchdJobManager *)self _addDextPropertiesToData:v12 forIdentity:identityCopy context:contextCopy];
    objc_autoreleasePoolPop(v13);
    v14 = 0;
LABEL_3:
    v15 = 0;
LABEL_6:
    v18 = v12;
    goto LABEL_7;
  }

  v21 = 0;
  v22 = 0;
  v16 = [(RBLaunchdJobManager *)self _addAppPropertiesToData:v12 forIdentity:identityCopy context:contextCopy actualIdentity:&v22 error:&v21];
  v15 = v22;
  v14 = v21;
  objc_autoreleasePoolPop(v13);
  if (v15)
  {
    v17 = v15;
    *actualIdentity = v15;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_3;
  }

  if (error)
  {
    v20 = v14;
    v18 = 0;
    *error = v14;
  }

  else
  {
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (id)_createLaunchdJobWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error
{
  v146 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  isApplication = [identityCopy isApplication];
  if (!contextCopy && isApplication)
  {
    contextCopy = [MEMORY[0x277D46EB0] contextWithIdentity:identityCopy];
  }

  if (![identityCopy isApplication])
  {
    v20 = 0;
    goto LABEL_52;
  }

  if (!contextCopy)
  {
    [RBLaunchdJobManager _createLaunchdJobWithIdentity:context:actualIdentity:error:];
  }

  v13 = contextCopy;
  bundleIdentifier = [v13 bundleIdentifier];
  dictionary = rbs_general_log();
  v16 = os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT);
  if (!bundleIdentifier)
  {
    if (v16)
    {
      identity = [v13 identity];
      *buf = 138543362;
      *&buf[4] = identity;
      _os_log_impl(&dword_262485000, dictionary, OS_LOG_TYPE_DEFAULT, "Bailing out of _mutateContextIfNeeded for %{public}@", buf, 0xCu);
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_50;
  }

  if (v16)
  {
    *buf = 138543362;
    *&buf[4] = bundleIdentifier;
    _os_log_impl(&dword_262485000, dictionary, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded called for %{public}@", buf, 0xCu);
  }

  selfCopy = self;

  _additionalEnvironment = [v13 _additionalEnvironment];

  v18 = MEMORY[0x277CBEB38];
  actualIdentityCopy = actualIdentity;
  if (_additionalEnvironment)
  {
    _additionalEnvironment2 = [v13 _additionalEnvironment];
    dictionary = [v18 dictionaryWithDictionary:_additionalEnvironment2];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  _overrideExecutablePath = [v13 _overrideExecutablePath];
  if (os_variant_has_internal_content())
  {
    v25 = [v13 isTesting] ^ 1;
  }

  else
  {
    v25 = 1;
  }

  _additionalMachServices = [v13 _additionalMachServices];

  v27 = MEMORY[0x277CBEB18];
  if (_additionalMachServices)
  {
    _additionalMachServices2 = [v13 _additionalMachServices];
    v29 = [v27 arrayWithArray:_additionalMachServices2];

    array = v29;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v128 = array;
  [v13 _setAdditionalMachServices:array];
  if (_os_feature_enabled_impl())
  {
    if (((_os_feature_enabled_impl() ^ 1) & v25 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v25)
  {
LABEL_26:
    [v13 setPreventContainerization:MEMORY[0x277CBEC38]];
  }

LABEL_27:
  if (_overrideExecutablePath)
  {
    preventContainerization = [v13 preventContainerization];
    errorCopy = error;
    v33 = bundleIdentifier;
    v34 = [preventContainerization BOOLValue] ^ 1;

    v35 = v34 & v25;
    bundleIdentifier = v33;
    error = errorCopy;
    if (v35 == 1)
    {
      v36 = rbs_job_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier2 = [v13 bundleIdentifier];
        *buf = 138543618;
        *&buf[4] = bundleIdentifier2;
        *&buf[12] = 2114;
        *&buf[14] = _overrideExecutablePath;
        _os_log_impl(&dword_262485000, v36, OS_LOG_TYPE_DEFAULT, "Not pre-containerizing %{public}@ because executable file specified (%{public}@)", buf, 0x16u);
      }

      [v13 setPreventContainerization:MEMORY[0x277CBEC38]];
    }
  }

  requiredCacheUUID = [v13 requiredCacheUUID];
  requiredSequenceNumber = [v13 requiredSequenceNumber];
  v39 = rbs_general_log();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  v129 = requiredSequenceNumber;
  if (_overrideExecutablePath && !requiredCacheUUID && !requiredSequenceNumber)
  {
    v130 = v39;
    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded No proxy needed", buf, 2u);
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_49;
  }

  if (v40)
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded using proxy", buf, 2u);
  }

  v41 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:bundleIdentifier];
  appState = [v41 appState];
  v130 = v41;
  if (([appState isInstalled] & 1) == 0)
  {
    errorCopy2 = error;
    v51 = bundleIdentifier;
    v52 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA5B8];
    v138[0] = *MEMORY[0x277CCA450];
    *buf = @"Unable to load a valid LSApplicationProxy.";
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v138 count:1];
    v22 = [v52 errorWithDomain:v53 code:22 userInfo:v54];

    v55 = v22;
    cacheGUID = rbs_general_log();
    if (os_log_type_enabled(cacheGUID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, cacheGUID, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded unable to load a valid LSApplicationProxy.", buf, 2u);
    }

    v23 = 0;
    bundleIdentifier = v51;
    error = errorCopy2;
    goto LABEL_48;
  }

  correspondingApplicationRecord = [v41 correspondingApplicationRecord];
  jobLabel = [correspondingApplicationRecord jobLabel];

  if (jobLabel)
  {
    v122 = bundleIdentifier;
    v44 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA5B8];
    v138[0] = *MEMORY[0x277CCA450];
    *buf = @"Trying to launch a daemon, agent, or angel as an app.";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v138 count:1];
    v22 = [v44 errorWithDomain:v45 code:22 userInfo:v46];

    v47 = v22;
    cacheGUID = rbs_general_log();
    if (os_log_type_enabled(cacheGUID, OS_LOG_TYPE_DEFAULT))
    {
      correspondingApplicationRecord2 = [v130 correspondingApplicationRecord];
      jobLabel2 = [correspondingApplicationRecord2 jobLabel];
      *buf = 138543362;
      *&buf[4] = jobLabel2;
      _os_log_impl(&dword_262485000, cacheGUID, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded Trying to launch %{public}@ as an app", buf, 0xCu);
    }

    v23 = 0;
    bundleIdentifier = v122;
    goto LABEL_48;
  }

  environmentVariables = [v41 environmentVariables];
  [dictionary addEntriesFromDictionary:environmentVariables];

  [v13 _setAdditionalEnvironment:dictionary];
  canonicalExecutablePath = [v41 canonicalExecutablePath];

  if (!canonicalExecutablePath)
  {
    v22 = _posixErrorWithCodeAndDescription(22, @"Unable to find executable path");
    v79 = v22;
    cacheGUID = rbs_general_log();
    if (os_log_type_enabled(cacheGUID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, cacheGUID, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded unable to find xecutable path.", buf, 2u);
    }

    _overrideExecutablePath = 0;
    v23 = 0;
    goto LABEL_48;
  }

  _overrideExecutablePath = canonicalExecutablePath;
  v77 = v41;
  [v13 _setOverrideExecutablePath:canonicalExecutablePath];
  v78 = v129;
  if (requiredCacheUUID)
  {
    cacheGUID = [v41 cacheGUID];
  }

  else
  {
    cacheGUID = 0;
  }

  if (v129)
  {
    v80 = MEMORY[0x277CCABB0];
    sequenceNumber = [v77 sequenceNumber];
    v82 = v80;
    v78 = v129;
    v121 = [v82 numberWithUnsignedInteger:sequenceNumber];
  }

  else
  {
    v121 = 0;
  }

  if (requiredCacheUUID != cacheGUID && (!requiredCacheUUID || !cacheGUID || !-[NSObject isEqual:](requiredCacheUUID, "isEqual:", cacheGUID)) || v78 != v121 && (!v78 || !v121 || ([v78 isEqual:v121] & 1) == 0))
  {
    v88 = rbs_job_log();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      bundleIdentifier3 = [v13 bundleIdentifier];
      [requiredCacheUUID UUIDString];
      v118 = _overrideExecutablePath;
      v109 = cacheGUID;
      errorCopy3 = error;
      v112 = v111 = bundleIdentifier;
      *buf = 138544386;
      *&buf[4] = bundleIdentifier3;
      *&buf[12] = 2114;
      *&buf[14] = v112;
      v140 = 2114;
      v141 = v129;
      v142 = 2114;
      v143 = v109;
      v144 = 2114;
      v145 = v121;
      _os_log_error_impl(&dword_262485000, v88, OS_LOG_TYPE_ERROR, "LaunchServices database mismatch: Failed to lookup executable path for app %{public}@ with {UUID: %{public}@, Sequence: %{public}@} vs {UUID: %{public}@, Sequence: %{public}@", buf, 0x34u);

      bundleIdentifier = v111;
      error = errorCopy3;
      cacheGUID = v109;
      _overrideExecutablePath = v118;
    }

    v22 = _posixErrorWithCodeAndDescription(22, @"Failed to lookup executable path.");
    v89 = v22;
    v23 = 0;
    goto LABEL_126;
  }

  v124 = bundleIdentifier;
  applicationType = [v77 applicationType];
  v84 = objc_opt_class();
  v120 = [v77 objectForInfoDictionaryKey:@"SBMachServices" ofClass:v84 valuesOfClass:objc_opt_class()];
  v119 = applicationType;
  if (([applicationType isEqualToString:*MEMORY[0x277CC1E30]] & 1) != 0 || (objc_msgSend(applicationType, "isEqualToString:", *MEMORY[0x277CC1E00]) & 1) != 0 || objc_msgSend(applicationType, "isEqualToString:", *MEMORY[0x277CC1E08]))
  {
    [v13 setSpawnType:1];
    if (![v120 count])
    {
      goto LABEL_107;
    }

    v116 = RBSAppViewServiceMachServiceName();
    if ([v120 containsObject:v116] && -[NSObject rb_hasEntitlement:](v77, "rb_hasEntitlement:", *MEMORY[0x277D47040]))
    {
      v85 = _knownViewServices();
      v86 = [v85 containsObject:v124];

      if ((v86 & 1) == 0)
      {
        v113 = rbs_job_log();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          [RBLaunchdJobManager _createLaunchdJobWithIdentity:v113 context:? actualIdentity:? error:?];
        }

        v22 = _posixErrorWithCodeAndDescription(22, @"Unknown ViewService App: ViewService Apps are deprecated and you should not be adding new ones - if you need an exception please file a radar to RunningBoard|All to be added to the allowlist.");
        v114 = v22;
        v23 = 0;
        bundleIdentifier = v124;
        v107 = v116;
        goto LABEL_125;
      }

      v87 = 1;
    }

    else
    {
      v87 = 0;
    }

    v90 = rbs_general_log();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = applicationType;
      *&buf[12] = 2114;
      *&buf[14] = v120;
      _os_log_impl(&dword_262485000, v90, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded bundleType %{public}@ SBMachServices %{public}@", buf, 0x16u);
    }

    [v128 addObjectsFromArray:v120];
    if (v87)
    {
      v138[0] = v116;
      v138[1] = @"com.apple.frontboard.workspace-service";
      *buf = MEMORY[0x277CBEC38];
      *&buf[8] = v116;
      v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v138 count:2];
      [v13 setLaunchRequestIdentifierToMachNameMap:v91];

      v92 = v116;
      v77 = v130;
    }

    else
    {
      v77 = v130;
      v92 = v116;
    }

    goto LABEL_106;
  }

  if ([v120 count])
  {
    v92 = rbs_general_log();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = applicationType;
      *&buf[12] = 2114;
      *&buf[14] = v120;
      _os_log_impl(&dword_262485000, v92, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded bundleType %{public}@ refusing SBMachServices %{public}@", buf, 0x16u);
    }

LABEL_106:
  }

LABEL_107:
  correspondingApplicationRecord3 = [v77 correspondingApplicationRecord];
  wasBuiltWithThreadSanitizer = [correspondingApplicationRecord3 wasBuiltWithThreadSanitizer];

  if (wasBuiltWithThreadSanitizer)
  {
    [v13 setExecutionOptions:{objc_msgSend(v13, "executionOptions") | 0x10}];
  }

  [v13 _setAdditionalMachServices:v128];
  preventContainerization2 = [v13 preventContainerization];

  if (!preventContainerization2)
  {
    isContainerized = [v130 isContainerized];
    v97 = [MEMORY[0x277CCABB0] numberWithBool:isContainerized ^ 1u];
    [v13 setPreventContainerization:v97];
  }

  preventContainerization3 = [v13 preventContainerization];
  if ([preventContainerization3 BOOLValue])
  {
    goto LABEL_114;
  }

  containerIdentifier = [v13 containerIdentifier];

  if (!containerIdentifier)
  {
    v100 = objc_opt_self();
    preventContainerization3 = [v130 entitlementValueForKey:@"com.apple.private.security.container-required" ofClass:v100];

    [v13 setContainerIdentifier:preventContainerization3];
    [v13 setCalculatedContainerIdentifier:1];
LABEL_114:
  }

  v117 = _overrideExecutablePath;
  managedPersonas = [v130 managedPersonas];
  v102 = [managedPersonas count];
  v115 = managedPersonas;
  if (v102)
  {
    v103 = v102;
    v104 = [managedPersonas objectAtIndexedSubscript:{0, managedPersonas}];
    v105 = rbs_job_log();
    v106 = v105;
    bundleIdentifier = v124;
    if (v103 == 1)
    {
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        *v136 = 138543362;
        v137 = v104;
        _os_log_impl(&dword_262485000, v106, OS_LOG_TYPE_INFO, "Persona chosen for bundle identifier: %{public}@", v136, 0xCu);
      }
    }

    else if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchdJobManager _createLaunchdJobWithIdentity:context:actualIdentity:error:];
    }
  }

  else
  {
    v106 = rbs_job_log();
    bundleIdentifier = v124;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      *v136 = 138543362;
      v137 = v124;
      _os_log_impl(&dword_262485000, v106, OS_LOG_TYPE_INFO, "No personas found for bundle identifier: %{public}@", v136, 0xCu);
    }

    v104 = 0;
  }

  [v13 setManagedPersona:v104];
  v22 = 0;
  v107 = v104;
  v23 = 1;
  _overrideExecutablePath = v117;
LABEL_125:

LABEL_126:
LABEL_48:

LABEL_49:
  actualIdentity = actualIdentityCopy;
  self = selfCopy;
LABEL_50:

  v56 = v22;
  v57 = v56;
  if ((v23 & 1) == 0)
  {
    if (error)
    {
      v71 = v56;
      v65 = 0;
      *error = v57;
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_68;
  }

  v20 = v56;
LABEL_52:
  _overrideExecutablePath2 = [contextCopy _overrideExecutablePath];

  if (_overrideExecutablePath2)
  {
    v135 = v20;
    v59 = [(RBLaunchdJobManager *)self _generateDataWithIdentity:identityCopy context:contextCopy actualIdentity:actualIdentity error:&v135];
    v57 = v135;

    if (v59)
    {
      v60 = *actualIdentity;
      if (!*actualIdentity)
      {
        v60 = identityCopy;
      }

      v61 = v60;
      logQueue = self->_logQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__RBLaunchdJobManager__createLaunchdJobWithIdentity_context_actualIdentity_error___block_invoke;
      block[3] = &unk_279B32B80;
      v133 = v61;
      v63 = v59;
      v134 = v63;
      v64 = v61;
      dispatch_async(logQueue, block);
      v65 = [(RBLaunchdInterfacing *)self->_launchdInterface jobWithPlist:v63];
    }

    else if (error)
    {
      v72 = v57;
      v65 = 0;
      *error = v57;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    if (error)
    {
      v66 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA5B8];
      v138[0] = *MEMORY[0x277CCA450];
      *buf = @"Unable to determine executable path.";
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v138 count:1];
      v69 = [v66 errorWithDomain:v67 code:22 userInfo:v68];

      v70 = v69;
      v65 = 0;
      *error = v69;
    }

    else
    {
      v65 = 0;
    }

    v57 = v20;
  }

LABEL_68:

  v73 = *MEMORY[0x277D85DE8];

  return v65;
}

void __82__RBLaunchdJobManager__createLaunchdJobWithIdentity_context_actualIdentity_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = rbs_job_oversize_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = _describeXPCObject();
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "'%@' Constructed job description:\n%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addPersonaFromExtensionContext:(id)context toServiceDict:(id)dict
{
  contextCopy = context;
  dictCopy = dict;
  if (![(RBPersonaManager *)self->_personaManager personaRequiredForExtensionContext:contextCopy serviceDict:dictCopy])
  {
    goto LABEL_4;
  }

  LODWORD(value) = -1;
  personaManager = self->_personaManager;
  identity = [contextCopy identity];
  v10 = [(RBPersonaManager *)personaManager personaForIdentity:identity context:contextCopy personaUID:&value personaUniqueString:0];

  if (v10)
  {
    xpc_dictionary_set_int64(dictCopy, "PersonaEnterprise", value);
LABEL_4:
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)_addExtensionEnvironmentFromContainerURL:(id)l toServiceDict:(id)dict
{
  lCopy = l;
  dictCopy = dict;
  v6 = lCopy;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v8 = xpc_dictionary_get_dictionary(dictCopy, "EnvironmentVariables");
  if (!v8)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(dictCopy, "EnvironmentVariables", v8);
  }

  if (!xpc_dictionary_get_string(v8, "HOME"))
  {
    xpc_dictionary_set_string(v8, "HOME", fileSystemRepresentation);
    xpc_dictionary_set_string(v8, "CFFIXED_USER_HOME", fileSystemRepresentation);
    v9 = [lCopy URLByAppendingPathComponent:@"tmp"];
    xpc_dictionary_set_string(v8, "TMPDIR", [v9 fileSystemRepresentation]);
  }
}

- (void)_addExtensionContainerURL:(id)l toServiceDict:(id)dict
{
  lCopy = l;
  xdict = dict;
  xpc_dictionary_set_string(xdict, "_SandboxContainer", [l fileSystemRepresentation]);
}

- (id)_containerURLForExtensionContext:(id)context
{
  contextCopy = context;
  bundlePropertiesManager = self->_bundlePropertiesManager;
  identity = [contextCopy identity];
  v7 = [(RBBundlePropertiesManaging *)bundlePropertiesManager propertiesForIdentity:identity identifier:0];

  containerOverrideIdentifier = [v7 containerOverrideIdentifier];
  identity2 = [contextCopy identity];
  personaString = [identity2 personaString];
  v11 = personaString | containerOverrideIdentifier;

  if (v11)
  {
    [(RBContainerManager *)self->_containerManager sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:containerOverrideIdentifier];
  }

  else
  {
    [v7 dataContainerURL];
  }
  v12 = ;

  return v12;
}

- (BOOL)_addContainerPropertiesFromExtensionContext:(id)context toServiceDict:(id)dict
{
  contextCopy = context;
  dictCopy = dict;
  if ([(RBContainerManager *)self->_containerManager containerRequiredForServiceDict:dictCopy])
  {
    v8 = [(RBContainerManager *)self->_containerManager sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:0];
    if (!v8)
    {
      v10 = 0;
      goto LABEL_5;
    }

    v9 = v8;
    [(RBLaunchdJobManager *)self _addExtensionContainerURL:v8 toServiceDict:dictCopy];
    [(RBLaunchdJobManager *)self _addExtensionEnvironmentFromContainerURL:v9 toServiceDict:dictCopy];
  }

  v10 = 1;
LABEL_5:

  return v10;
}

- (void)_adjustLaunchdJobProperties:(id)properties context:(id)context
{
  propertiesCopy = properties;
  contextCopy = context;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBLaunchdJobManager _adjustLaunchdJobProperties:context:];
  }

  identity = [contextCopy identity];
  additionalProperties = [propertiesCopy additionalProperties];
  v9 = [additionalProperties mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v57 = v12;
  v13 = [v12 objectForKeyedSubscript:@"RunningBoard"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = objc_opt_new();

    v13 = v14;
  }

  v15 = [v13 mutableCopy];
  v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v16 encodeRootObject:identity];
  [v16 finishEncoding];
  encodedData = [v16 encodedData];
  [v15 setObject:encodedData forKeyedSubscript:@"RunningBoardLaunchedIdentity"];

  [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RunningBoardLaunched"];
  v18 = [v15 objectForKeyedSubscript:@"Managed"];
  if (v18)
  {
  }

  else if ([identity defaultManageFlags] == 255)
  {
    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Managed"];
  }

  beforeTranslocationBundlePath = [contextCopy beforeTranslocationBundlePath];

  if (beforeTranslocationBundlePath)
  {
    beforeTranslocationBundlePath2 = [contextCopy beforeTranslocationBundlePath];
    [v15 setObject:beforeTranslocationBundlePath2 forKeyedSubscript:@"BeforeTranslocationBundlePath"];
  }

  homeDirectory = [contextCopy homeDirectory];

  if (homeDirectory)
  {
    homeDirectory2 = [contextCopy homeDirectory];
    [v15 setObject:homeDirectory2 forKeyedSubscript:@"HOME"];
  }

  tmpDirectory = [contextCopy tmpDirectory];

  if (tmpDirectory)
  {
    tmpDirectory2 = [contextCopy tmpDirectory];
    [v15 setObject:tmpDirectory2 forKeyedSubscript:@"TMPDIR"];
  }

  launchRequestIdentifierToMachNameMap = [contextCopy launchRequestIdentifierToMachNameMap];
  if ([launchRequestIdentifierToMachNameMap count])
  {
    v26 = objc_opt_new();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __59__RBLaunchdJobManager__adjustLaunchdJobProperties_context___block_invoke;
    v61[3] = &unk_279B33190;
    v62 = v26;
    v63 = identity;
    v27 = v26;
    [launchRequestIdentifierToMachNameMap enumerateKeysAndObjectsUsingBlock:v61];
    [v15 setObject:v27 forKeyedSubscript:@"LaunchRequestEndpointIdentifiers"];
  }

  clientRestriction = [contextCopy clientRestriction];
  dictionaryRepresentation = [clientRestriction dictionaryRepresentation];

  if ([dictionaryRepresentation count])
  {
    v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionaryRepresentation requiringSecureCoding:1 error:0];
    [v15 setObject:v30 forKeyedSubscript:@"ClientRestriction"];
  }

  v31 = [v15 copy];
  [v12 setObject:v31 forKeyedSubscript:@"RunningBoard"];

  v32 = [v12 copy];
  [propertiesCopy setAdditionalProperties:v32];

  spawnConstraint = [contextCopy spawnConstraint];
  [propertiesCopy setSpawnConstraint:spawnConstraint];

  v58 = identity;
  personaString = [identity personaString];
  if (personaString)
  {
    v35 = personaString;
    personaString2 = [propertiesCopy personaString];

    if (!personaString2)
    {
      v60 = -1;
      personaManager = self->_personaManager;
      v59 = 0;
      if ([(RBPersonaManager *)personaManager personaForIdentity:v58 context:contextCopy personaUID:&v60 personaUniqueString:&v59])
      {
        v38 = v60;
        v39 = v59;
        [propertiesCopy setEnterprisePersona:v38];
        [propertiesCopy setPersonaString:v39];
      }
    }
  }

  sandboxContainer = [propertiesCopy sandboxContainer];
  if (!sandboxContainer)
  {
    oneShotUUID = [propertiesCopy oneShotUUID];

    if (oneShotUUID)
    {
      goto LABEL_29;
    }

    containerManager = self->_containerManager;
    bundleIdentifier = [contextCopy bundleIdentifier];
    sandboxContainer = [(RBContainerManager *)containerManager sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:bundleIdentifier];

    if (sandboxContainer)
    {
      [propertiesCopy setSandboxContainer:sandboxContainer];
      environmentVariables = [propertiesCopy environmentVariables];
      v45 = [environmentVariables objectForKeyedSubscript:@"HOME"];

      if (v45)
      {
        environmentVariables2 = [propertiesCopy environmentVariables];
        v47 = [environmentVariables2 mutableCopy];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = objc_opt_new();
        }

        v56 = v49;

        path = [sandboxContainer path];
        [v56 setObject:path forKeyedSubscript:@"HOME"];

        path2 = [sandboxContainer path];
        [v56 setObject:path2 forKeyedSubscript:@"CFFIXED_USER_HOME"];

        v52 = [sandboxContainer URLByAppendingPathComponent:@"tmp"];
        path3 = [v52 path];
        [v56 setObject:path3 forKeyedSubscript:@"TMPDIR"];

        v54 = [v56 copy];
        [propertiesCopy setEnvironmentVariables:v54];
      }
    }

    v12 = v57;
  }

LABEL_29:
  [propertiesCopy setOverlay:&unk_28751B018];
}

void __59__RBLaunchdJobManager__adjustLaunchdJobProperties_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v6 BOOLValue])
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = rbs_job_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring unsupported LaunchRequestEndpointIdentifiers value for launchIdentifier %{public}@: value=%{public}@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_createAndSubmitExtensionJob:(id)job UUID:(id)d error:(id *)error
{
  v80[2] = *MEMORY[0x277D85DE8];
  jobCopy = job;
  dCopy = d;
  v10 = -[RBLaunchdInterfacing domainForPid:](self->_launchdInterface, "domainForPid:", [jobCopy hostPid]);
  launchdJobProperties = [jobCopy launchdJobProperties];
  if (launchdJobProperties && _os_feature_enabled_impl())
  {
    [(RBLaunchdJobManager *)self _adjustLaunchdJobProperties:launchdJobProperties context:jobCopy];
    v12 = MEMORY[0x277CBEBC0];
    _overrideExecutablePath = [jobCopy _overrideExecutablePath];
    v14 = [v12 fileURLWithPath:_overrideExecutablePath];

    logQueue = self->_logQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke;
    block[3] = &unk_279B331B8;
    v75 = dCopy;
    v76 = jobCopy;
    v77 = v14;
    v16 = launchdJobProperties;
    v78 = v16;
    v17 = v14;
    dispatch_async(logQueue, block);
    launchdInterface = self->_launchdInterface;
    v73 = 0;
    v19 = [(RBLaunchdInterfacing *)launchdInterface submitExtensionWithExecutableURL:v17 properties:v16 domain:v10 error:&v73];
    v20 = v73;

    goto LABEL_4;
  }

  extensionOverlay = [jobCopy extensionOverlay];
  if (!extensionOverlay)
  {
    if (!error)
    {
      v26 = 0;
      goto LABEL_28;
    }

    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA5B8];
    *buf = *MEMORY[0x277CCA450];
    v80[0] = @"Unable to launch extension without overlay";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:buf count:1];
    v32 = [v33 errorWithDomain:v34 code:22 userInfo:v35];

    v26 = 0;
    goto LABEL_18;
  }

  v25 = _CFXPCCreateXPCObjectFromCFObject();
  v26 = v25;
  if (!v25 || (v27 = MEMORY[0x26672A380](v25), v28 = MEMORY[0x277D86468], v27 != MEMORY[0x277D86468]))
  {
    if (!error)
    {
LABEL_28:

      v19 = 0;
      v20 = 0;
LABEL_29:
      v38 = 0;
      goto LABEL_36;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA5B8];
    *buf = *MEMORY[0x277CCA450];
    v80[0] = @"Unable to launch extension using invalid overlay (not a dictionary)";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:buf count:1];
    v32 = [v29 errorWithDomain:v30 code:22 userInfo:v31];

LABEL_18:
    v36 = v32;
    *error = v32;
    goto LABEL_28;
  }

  v39 = xpc_dictionary_get_dictionary(v26, "XPCService");
  v40 = v39;
  if (!v39 || MEMORY[0x26672A380](v39) != v28)
  {
    if (!error)
    {
LABEL_26:

      goto LABEL_28;
    }

    v64 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA5B8];
    *buf = *MEMORY[0x277CCA450];
    v80[0] = @"Unable to launch extension using invalid overlay (missing XPCService dict)";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:buf count:1];
    v43 = v42 = v40;
    v44 = [v64 errorWithDomain:v41 code:22 userInfo:v43];

    v40 = v42;
LABEL_25:
    v45 = v44;
    *error = v44;
    goto LABEL_26;
  }

  xpc_dictionary_set_string(v40, "_ManagedBy", "com.apple.runningboard");
  identity = [jobCopy identity];
  _addRBProperties(v40, identity, jobCopy);

  identity2 = [jobCopy identity];
  [identity2 personaString];
  v55 = v63 = v40;

  if (v55)
  {
    v40 = v63;
    if ([(RBLaunchdJobManager *)self _addPersonaFromExtensionContext:jobCopy toServiceDict:v63])
    {
      if ([(RBLaunchdJobManager *)self _addContainerPropertiesFromExtensionContext:jobCopy toServiceDict:v63])
      {
        goto LABEL_44;
      }

      if (!error)
      {
        goto LABEL_26;
      }

      v61 = @"Unable to launch extension (could not add container path to overlay)";
    }

    else
    {
      if (!error)
      {
        goto LABEL_26;
      }

      v61 = @"Unable to launch extension (could not get persona values for overlay)";
    }

    v44 = _posixErrorWithCodeAndDescription(22, v61);
    goto LABEL_25;
  }

LABEL_44:
  _overrideExecutablePath2 = [jobCopy _overrideExecutablePath];
  v65 = _overrideExecutablePath2;
  if (_overrideExecutablePath2)
  {
    v57 = _overrideExecutablePath2;
    queue = self->_logQueue;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke_151;
    v68[3] = &unk_279B331B8;
    v69 = dCopy;
    v70 = jobCopy;
    v58 = v57;
    v71 = v58;
    v59 = v26;
    v72 = v59;
    dispatch_async(queue, v68);
    v60 = self->_launchdInterface;
    v67 = 0;
    v19 = [(RBLaunchdInterfacing *)v60 submitExtension:v58 overlay:v59 domain:v10 error:&v67];
    v20 = v67;
  }

  else if (error)
  {
    _posixErrorWithCodeAndDescription(22, @"Unable to launch extension without path");
    v19 = 0;
    *error = v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (!v65)
  {
    goto LABEL_29;
  }

LABEL_4:
  if (!v19)
  {
    if (error)
    {
      v37 = v20;
      v19 = 0;
      v38 = 0;
      *error = v20;
      goto LABEL_36;
    }

    v19 = 0;
    goto LABEL_29;
  }

  if (dCopy || ([jobCopy oneShotUUID], (dCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v80[0] = 0;
    v80[1] = 0;
    [dCopy getUUIDBytes:{v80, queue}];
    v21 = rbs_job_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = dCopy;
      _os_log_impl(&dword_262485000, v21, OS_LOG_TYPE_INFO, "Setting one-shot instance on launch: %{public}@", buf, 0xCu);
    }

    v22 = self->_launchdInterface;
    if (launchdJobProperties)
    {
      v23 = [(RBLaunchdInterfacing *)self->_launchdInterface instancePropertiesFromJobProperties:launchdJobProperties];
    }

    else
    {
      extensionOverlay2 = [jobCopy extensionOverlay];
      v23 = [(RBLaunchdInterfacing *)v22 instancePropertiesFromOverlay:extensionOverlay2];
    }

    v47 = self->_launchdInterface;
    v66 = 0;
    v48 = [(RBLaunchdInterfacing *)v47 forJob:v19 createInstance:v80 properties:v23 error:&v66];
    v49 = v66;

    if (error && !v48)
    {
      v50 = v49;
      *error = v49;
    }

    v20 = v49;
  }

  else
  {
    v48 = v19;
  }

  v19 = v48;
  v38 = v19;
LABEL_36:

  v51 = *MEMORY[0x277D85DE8];

  return v38;
}

void __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = rbs_job_oversize_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) hostPid];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) debugDescription];
    v8 = 138544130;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "'%{public}@' Submitting extension job properties (host PID %d, path %{public}@):\n%{public}@", &v8, 0x26u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke_151(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = rbs_job_oversize_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) hostPid];
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = _describeXPCObject();
    v9 = 138544130;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "'%{public}@' Submitting extension overlay (host PID %d, path %{public}@):\n%{public}@", &v9, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)createAndLaunchWithIdentity:(id)identity context:(id)context error:(id *)error
{
  v118[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  v10 = rbs_job_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = identityCopy;
    _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Creating and launching job for: %{public}@", buf, 0xCu);
  }

  hasConsistentLaunchdJob = [identityCopy hasConsistentLaunchdJob];
  if (hasConsistentLaunchdJob)
  {
    consistentLaunchdJobLabel = [identityCopy consistentLaunchdJobLabel];
    if (consistentLaunchdJobLabel)
    {
      launchdInterface = self->_launchdInterface;
      currentDomain = [MEMORY[0x277CEBF20] currentDomain];
      v15 = [(RBLaunchdInterfacing *)launchdInterface copyJobWithLabel:consistentLaunchdJobLabel domain:currentDomain];

      if (v15)
      {
        v16 = self->_launchdInterface;
        v96 = 0;
        handle = [(RBLaunchdInterfacing *)v16 propertiesForJob:v15 error:&v96];
        v18 = v96;
        if (!handle)
        {
          v32 = rbs_process_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          goto LABEL_30;
        }

        if ([identityCopy osServiceType] == 3 && objc_msgSend(handle, "serviceType") != 3)
        {
          v79 = rbs_process_log();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          v84 = MEMORY[0x277CCA9B8];
          v82 = *MEMORY[0x277D47098];
          v114 = *MEMORY[0x277CCA450];
          v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd could not find angel job"];
          v115 = v88;
          v20 = MEMORY[0x277CBEAC0];
          v21 = &v115;
          v22 = &v114;
        }

        else
        {
          if ([identityCopy osServiceType] != 2 || objc_msgSend(handle, "serviceType") != 3)
          {
            goto LABEL_31;
          }

          v19 = rbs_process_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          v84 = MEMORY[0x277CCA9B8];
          v82 = *MEMORY[0x277D47098];
          v112 = *MEMORY[0x277CCA450];
          v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd found an angel job for requested daemon launch"];
          v113 = v88;
          v20 = MEMORY[0x277CBEAC0];
          v21 = &v113;
          v22 = &v112;
        }

        v80 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
        v86 = [v84 errorWithDomain:v82 code:4 userInfo:v80];

        v32 = v15;
        v18 = v86;
LABEL_29:
        v15 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D47098];
      v116 = *MEMORY[0x277CCA450];
      handle = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd could not find job"];
      v117 = handle;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v33 = v36;
      v34 = v37;
      v35 = 4;
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277D47098];
      v110 = *MEMORY[0x277CCA450];
      handle = [MEMORY[0x277CCACA8] stringWithFormat:@"Identity doesn't have required label"];
      v111 = handle;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v33 = v30;
      v34 = v31;
      v35 = 3;
    }

    v18 = [v33 errorWithDomain:v34 code:v35 userInfo:v32];
    goto LABEL_29;
  }

  if ([identityCopy isExtension])
  {
    uuid = [identityCopy uuid];
    v95 = 0;
    v15 = [(RBLaunchdJobManager *)self _createAndSubmitExtensionJob:contextCopy UUID:uuid error:&v95];
    v18 = v95;

    consistentLaunchdJobLabel = rbs_general_log();
    if (!os_log_type_enabled(consistentLaunchdJobLabel, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    handle = [v15 handle];
    *buf = 138543362;
    *&buf[4] = handle;
    _os_log_impl(&dword_262485000, consistentLaunchdJobLabel, OS_LOG_TYPE_INFO, "submitted extension job %{public}@", buf, 0xCu);
LABEL_31:

LABEL_32:
    if (v15)
    {
      v89 = contextCopy;
      v29 = hasConsistentLaunchdJob ^ 1;
      v91 = v18;
      v27 = &v91;
      v28 = [v15 start:&v91];
LABEL_34:
      v38 = *v27;

      if (!v28)
      {
        if (v38)
        {
          goto LABEL_67;
        }

        errorCopy3 = error;
        v39 = v29;
        v50 = rbs_general_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [RBLaunchdJobManager createAndLaunchWithIdentity:v50 context:? error:?];
        }

        v51 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277D47098];
        v103 = *MEMORY[0x277CCA450];
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed for unknown reason"];
        v104 = v38;
        v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v54 = [v51 errorWithDomain:v52 code:0 userInfo:v53];

        goto LABEL_65;
      }

      if ([v28 state] == 2)
      {
        if ([v28 pid] > 0)
        {
          goto LABEL_66;
        }

        errorCopy3 = error;
        v39 = v29;
        v40 = rbs_general_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
        }

        v41 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277D47098];
        v97 = *MEMORY[0x277CCA450];
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed for unknown reason"];
        v98 = v43;
        v44 = MEMORY[0x277CBEAC0];
        v45 = &v98;
        v46 = &v97;
        goto LABEL_61;
      }

      state = [v28 state];
      errorCopy3 = error;
      if (state <= 2)
      {
        if (state == 1)
        {
LABEL_60:
          v39 = v29;
          v41 = MEMORY[0x277CCA9B8];
          v42 = *MEMORY[0x277D47098];
          v99 = *MEMORY[0x277CCA450];
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed for unknown reason"];
          v100 = v43;
          v44 = MEMORY[0x277CBEAC0];
          v45 = &v100;
          v46 = &v99;
LABEL_61:
          v65 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
          v54 = [v41 errorWithDomain:v42 code:0 userInfo:v65];

          v38 = v43;
          goto LABEL_65;
        }

        if (state == 2)
        {
          abort();
        }
      }

      else
      {
        if (state == 4)
        {
          v39 = v29;
          v83 = MEMORY[0x277CCA9B8];
          v81 = *MEMORY[0x277D47098];
          v101 = *MEMORY[0x277CCA450];
          v66 = MEMORY[0x277CCACA8];
          lastExitStatus = [v28 lastExitStatus];
          os_reason_namespace = [lastExitStatus os_reason_namespace];
          lastExitStatus2 = [v28 lastExitStatus];
          v69 = [v66 stringWithFormat:@"Launchd job spawn immediately exited with namespace %d code %lld", os_reason_namespace, objc_msgSend(lastExitStatus2, "os_reason_code")];
          v102 = v69;
          v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
          v54 = [v83 errorWithDomain:v81 code:0 userInfo:v70];

          v38 = lastExitStatus;
          goto LABEL_65;
        }

        if (state == 3)
        {
          v39 = v29;
          lastSpawnError = [v28 lastSpawnError];
          v57 = MEMORY[0x277CCA9B8];
          v58 = *MEMORY[0x277CCA5B8];
          v118[0] = *MEMORY[0x277CCA450];
          *buf = @"Launchd job spawn failed";
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v118 count:1];
          v54 = [v57 errorWithDomain:v58 code:lastSpawnError userInfo:v59];

LABEL_65:
          v38 = v54;
          v29 = v39;
          error = errorCopy3;
LABEL_66:
          if (!v38)
          {
            v76 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v28, "pid")}];
            if (v29)
            {
              os_unfair_lock_lock(&self->_lock);
              [(NSMutableDictionary *)self->_lock_jobsByIdentifier setObject:v15 forKey:v76];
              os_unfair_lock_unlock(&self->_lock);
            }

            v49 = [MEMORY[0x277D46F70] instanceWithIdentifier:v76 identity:identityCopy];
            v75 = 0;
            contextCopy = v89;
            goto LABEL_83;
          }

LABEL_67:
          v71 = rbs_general_log();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          contextCopy = v89;
          if (error)
          {
            v72 = v38;
            *error = v38;
          }

          if (!v29)
          {
            v49 = 0;
            goto LABEL_84;
          }

          v73 = rbs_general_log();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_262485000, v73, OS_LOG_TYPE_INFO, "Removing job after failed start", buf, 2u);
          }

          v90 = v38;
          v74 = [v15 remove:&v90];
          v75 = v90;

          if (v74)
          {
            v49 = 0;
            v38 = v75;
            contextCopy = v89;
LABEL_84:

            v18 = v38;
            goto LABEL_85;
          }

          v76 = rbs_general_log();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          v49 = 0;
          contextCopy = v89;
LABEL_83:

          v38 = v75;
          goto LABEL_84;
        }
      }

      v64 = rbs_general_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
      }

      goto LABEL_60;
    }

    goto LABEL_40;
  }

  v93 = 0;
  v94 = 0;
  v15 = [(RBLaunchdJobManager *)self _createLaunchdJobWithIdentity:identityCopy context:contextCopy actualIdentity:&v94 error:&v93];
  v24 = v94;
  v18 = v93;
  if (_os_feature_enabled_impl() && v24 && v24 != identityCopy && ([v24 isEqual:identityCopy] & 1) == 0)
  {
    v25 = rbs_job_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = identityCopy;
      v108 = 2114;
      v109 = v24;
      _os_log_impl(&dword_262485000, v25, OS_LOG_TYPE_DEFAULT, "Adjusting identity of job from %{public}@ to %{public}@", buf, 0x16u);
    }

    v26 = v24;
    identityCopy = v26;
  }

  if (v15)
  {
    v89 = contextCopy;
    v92 = v18;
    v27 = &v92;
    v28 = [v15 submitAndStart:&v92];
    v29 = 1;
    goto LABEL_34;
  }

LABEL_40:
  v47 = rbs_general_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
  }

  if (error)
  {
    if (v18)
    {
      v48 = v18;
      v49 = 0;
      *error = v18;
      goto LABEL_85;
    }

    v60 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277D47098];
    v105 = *MEMORY[0x277CCA450];
    v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed to create job"];
    v106 = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    *error = [v60 errorWithDomain:v61 code:0 userInfo:v63];

    v18 = 0;
  }

  v49 = 0;
LABEL_85:

  v77 = *MEMORY[0x277D85DE8];

  return v49;
}

- (BOOL)_isRunningBoardLaunched:(id)launched
{
  v19 = *MEMORY[0x277D85DE8];
  launchdInterface = self->_launchdInterface;
  v16 = 0;
  v4 = [(RBLaunchdInterfacing *)launchdInterface propertiesForJob:launched error:&v16];
  v5 = v16;
  if (v4)
  {
    additionalProperties = [v4 additionalProperties];
    v7 = additionalProperties;
    if (additionalProperties && (v8 = MEMORY[0x26672A380](additionalProperties), v9 = MEMORY[0x277D86468], v8 == MEMORY[0x277D86468]))
    {
      v12 = xpc_dictionary_get_value(v7, "RunningBoard");
      v10 = v12;
      if (v12 && MEMORY[0x26672A380](v12) == v9)
      {
        v11 = xpc_dictionary_get_BOOL(v10, "RunningBoardLaunched");
        goto LABEL_15;
      }

      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "_isRunningBoardLaunched has no RBProperties", buf, 2u);
      }
    }

    else
    {
      v10 = rbs_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "_isRunningBoardLaunched has no additionalProperties", buf, 2u);
      }
    }

    v11 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v7 = rbs_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "propertiesForJob failed for _isRunningBoardLaunched %{public}@", buf, 0xCu);
  }

  v11 = 1;
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_removeJobWithInstance:(id)instance orJob:(id)job error:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  jobCopy = job;
  if (!instanceCopy)
  {
    [RBLaunchdJobManager _removeJobWithInstance:orJob:error:];
  }

  v10 = rbs_job_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = instanceCopy;
    _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "Cleaning out %{public}@ from job manager", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (jobCopy)
  {
LABEL_9:
    os_unfair_lock_unlock(&self->_lock);
    identity = [instanceCopy identity];
    if (([identity isApplication] & 1) == 0 && !objc_msgSend(identity, "isDext"))
    {
      v25 = 1;
LABEL_31:

      goto LABEL_32;
    }

    if (([identity isXPCService] & 1) != 0 || -[RBLaunchdJobManager _isRunningBoardLaunched:](self, "_isRunningBoardLaunched:", jobCopy))
    {
      v20 = rbs_job_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = instanceCopy;
        _os_log_impl(&dword_262485000, v20, OS_LOG_TYPE_DEFAULT, "Removing launch job for: %{public}@", buf, 0xCu);
      }

      v43 = 0;
      v21 = [jobCopy remove:&v43];
      v22 = v43;
      v23 = v22;
      if ((v21 & 1) != 0 || [v22 code] == 36)
      {
        v24 = rbs_job_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = instanceCopy;
          _os_log_impl(&dword_262485000, v24, OS_LOG_TYPE_DEFAULT, "Removed job for %{public}@", buf, 0xCu);
        }

        v25 = 1;
        goto LABEL_29;
      }

      v32 = rbs_general_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdJobManager _removeJobWithInstance:orJob:error:];
      }

      if (error)
      {
        instanceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to delete job with label %@", instanceCopy];
        code = [v23 code];
        v35 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA5B8];
        v45[0] = *MEMORY[0x277CCA450];
        *buf = instanceCopy;
        v37 = MEMORY[0x277CBEAC0];
        v24 = instanceCopy;
        v38 = [v37 dictionaryWithObjects:buf forKeys:v45 count:1];
        v39 = [v35 errorWithDomain:v36 code:code userInfo:v38];

        v40 = v39;
        v25 = 0;
        *error = v39;
        goto LABEL_29;
      }
    }

    else
    {
      v26 = rbs_general_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdJobManager _removeJobWithInstance:orJob:error:];
      }

      if (error)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to delete job not submitted by RunningBoard"];
        v27 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA5B8];
        v45[0] = *MEMORY[0x277CCA450];
        *buf = v24;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v45 count:1];
        v30 = [v27 errorWithDomain:v28 code:-1 userInfo:v29];

        v31 = v30;
        v23 = 0;
        v25 = 0;
        *error = v30;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      v23 = 0;
    }

    v25 = 0;
    goto LABEL_30;
  }

  lock_monitoredJobsByIdentifier = self->_lock_monitoredJobsByIdentifier;
  identifier = [instanceCopy identifier];
  jobCopy = [(NSMutableDictionary *)lock_monitoredJobsByIdentifier objectForKey:identifier];

  if (jobCopy || (v13 = self->_lock_jobsByIdentifier, [instanceCopy identifier], v14 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v13, "objectForKey:", v14), jobCopy = objc_claimAutoreleasedReturnValue(), v14, jobCopy))
  {
    lock_jobsByIdentifier = self->_lock_jobsByIdentifier;
    identifier2 = [instanceCopy identifier];
    [(NSMutableDictionary *)lock_jobsByIdentifier removeObjectForKey:identifier2];

    v17 = self->_lock_monitoredJobsByIdentifier;
    identifier3 = [instanceCopy identifier];
    [(NSMutableDictionary *)v17 removeObjectForKey:identifier3];

    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  jobCopy = rbs_general_log();
  if (os_log_type_enabled(jobCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = instanceCopy;
    _os_log_impl(&dword_262485000, jobCopy, OS_LOG_TYPE_DEFAULT, "removeJobWithInstance called for identity without existing job %{public}@", buf, 0xCu);
  }

  v25 = 1;
LABEL_32:

  v41 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)synchronizeJobs
{
  v70 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  launchdInterface = self->_launchdInterface;
  v62 = 0;
  v34 = [(RBLaunchdInterfacing *)launchdInterface copyJobsManagedBy:@"com.apple.runningboard" error:&v62];
  v3 = v62;
  if (v34)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v34;
    v4 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (!v4)
    {
      goto LABEL_46;
    }

    v44 = *v59;
    while (1)
    {
      v5 = 0;
      v6 = v3;
      do
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v58 + 1) + 8 * v5);
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        if (_synchronizeJobsQueue_onceToken != -1)
        {
          [RBLaunchdJobManager synchronizeJobs];
        }

        v8 = _synchronizeJobsQueue_queue;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __38__RBLaunchdJobManager_synchronizeJobs__block_invoke;
        v53[3] = &unk_279B331E0;
        v53[4] = v7;
        v53[5] = &v54;
        [v7 monitorOnQueue:v8 withHandler:v53];

        [v7 cancelMonitor];
        v9 = self->_launchdInterface;
        v52 = 0;
        v10 = [(RBLaunchdInterfacing *)v9 propertiesForJob:v7 error:&v52];
        v3 = v52;

        if (v10)
        {
          additionalProperties = [v10 additionalProperties];
          v12 = additionalProperties;
          if (!additionalProperties || MEMORY[0x26672A380](additionalProperties) != MEMORY[0x277D86468])
          {
            v13 = rbs_general_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              [(RBLaunchdJobManager *)&v50 synchronizeJobs];
            }

            goto LABEL_43;
          }

          v14 = xpc_dictionary_get_value(v12, "RunningBoard");
          v13 = v14;
          if (!v14 || MEMORY[0x26672A380](v14) != MEMORY[0x277D86468])
          {
            v15 = rbs_general_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              [(RBLaunchdJobManager *)&v48 synchronizeJobs];
            }

            goto LABEL_42;
          }

          v15 = xpc_dictionary_get_value(v13, "RunningBoardLaunchedIdentity");
          if (v15)
          {
            v16 = objc_alloc(MEMORY[0x277D46F50]);
            v17 = *(v55 + 6);
            if (!v17)
            {
              v17 = getpid();
            }

            v42 = [v16 initWithPid:{v17, v34}];
            if (MEMORY[0x26672A380](v15) != MEMORY[0x277D86458])
            {
              if (MEMORY[0x26672A380](v15) == MEMORY[0x277D86468])
              {
                v18 = MEMORY[0x277D46F60];
                instance = [v10 instance];
                v20 = v18;
                v21 = instance;
                v22 = [v20 decodeFromJob:v15 uuid:instance];
                v23 = v21;
                v24 = v22;
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            loga = MEMORY[0x277CBEA90];
            bytes_ptr = xpc_data_get_bytes_ptr(v15);
            logb = [loga dataWithBytes:bytes_ptr length:xpc_data_get_length(v15)];
            v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:logb error:0];
            v23 = logb;
LABEL_29:

            if (v24)
            {
LABEL_34:
              log = v24;
              v36 = [MEMORY[0x277D46F70] instanceWithIdentifier:v42 identity:v24];
              if (*(v55 + 6))
              {
                [array addObject:v36];
                os_unfair_lock_lock(&self->_lock);
                [(NSMutableDictionary *)self->_lock_jobsByIdentifier setObject:v7 forKey:v42];
                os_unfair_lock_unlock(&self->_lock);
              }

              else
              {
                v28 = rbs_general_log();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  handle = [v7 handle];
                  [(RBLaunchdJobManager *)handle synchronizeJobs:v63];
                }

                [(RBLaunchdJobManager *)self _removeJobWithInstance:v36 orJob:v7 error:0];
              }
            }

            else
            {
LABEL_30:
              if (MEMORY[0x26672A380](v15) == MEMORY[0x277D86458])
              {
                logc = MEMORY[0x277CBEA90];
                v27 = xpc_data_get_bytes_ptr(v15);
                logd = [logc dataWithBytes:v27 length:xpc_data_get_length(v15)];
                v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:logd error:0];

                if (v24)
                {
                  goto LABEL_34;
                }
              }

              log = rbs_general_log();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                handle2 = [v7 handle];
                [(RBLaunchdJobManager *)handle2 synchronizeJobs:v65];
              }
            }
          }

          else
          {
            v42 = rbs_general_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
            {
              [(RBLaunchdJobManager *)&v46 synchronizeJobs];
            }
          }

LABEL_42:
LABEL_43:

          goto LABEL_44;
        }

        v12 = rbs_general_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v68 = v3;
          _os_log_fault_impl(&dword_262485000, v12, OS_LOG_TYPE_FAULT, "propertiesForPid failed for job %{public}@", buf, 0xCu);
        }

LABEL_44:

        _Block_object_dispose(&v54, 8);
        ++v5;
        v6 = v3;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (!v4)
      {
LABEL_46:
        v30 = obj;
        goto LABEL_49;
      }
    }
  }

  v31 = rbs_general_log();
  v30 = v31;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    [RBLaunchdJobManager synchronizeJobs];
    v30 = v31;
  }

LABEL_49:

  v32 = *MEMORY[0x277D85DE8];

  return array;
}

void __38__RBLaunchdJobManager_synchronizeJobs__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 pid];
  }

  else
  {
    v3 = rbs_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38__RBLaunchdJobManager_synchronizeJobs__block_invoke_cold_1(a1);
    }
  }
}

- (void)invokeOnProcessDeath:(id)death handler:(id)handler onQueue:(id)queue
{
  deathCopy = death;
  handlerCopy = handler;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_lock);
  identifier = [deathCopy identifier];
  v12 = [(NSMutableDictionary *)self->_lock_monitoredJobsByIdentifier objectForKey:identifier];

  if (v12)
  {
    v13 = rbs_process_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchdJobManager invokeOnProcessDeath:deathCopy handler:? onQueue:?];
    }
  }

  v14 = [(NSMutableDictionary *)self->_lock_jobsByIdentifier objectForKey:identifier];
  if (!v14)
  {
    if ([identifier pid] <= 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v15 = -[RBLaunchdInterfacing copyJobWithPid:](self->_launchdInterface, "copyJobWithPid:", [identifier pid]);
      os_unfair_lock_unlock(&self->_lock);
      if (v15)
      {
        goto LABEL_7;
      }
    }

    [deathCopy invokeHandlerOnProcessDeath:handlerCopy onQueue:queueCopy];
    goto LABEL_13;
  }

  v15 = v14;
  [(NSMutableDictionary *)self->_lock_monitoredJobsByIdentifier setObject:v14 forKey:identifier];
  [(NSMutableDictionary *)self->_lock_jobsByIdentifier removeObjectForKey:identifier];
  os_unfair_lock_unlock(&self->_lock);
LABEL_7:
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke;
  v24[3] = &unk_279B33208;
  v25 = deathCopy;
  v28 = handlerCopy;
  v16 = v15;
  v26 = v16;
  selfCopy = self;
  v17 = MEMORY[0x266729AD0](v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_199;
  block[3] = &unk_279B32F78;
  v21 = v16;
  v22 = queueCopy;
  v23 = v17;
  v18 = v17;
  v19 = v16;
  dispatch_async(v22, block);

LABEL_13:
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke(uint64_t a1, void *a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if ([v5 pid])
    {
      v7 = [v6 pid];
      v8 = (a1 + 32);
      if (v7 != [*(a1 + 32) rbs_pid])
      {
        v9 = [*v8 identity];
        v10 = [v9 isApplication];

        v11 = rbs_general_log();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_1((a1 + 32), v6);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *v8;
          v37 = 138543618;
          v38 = v22;
          v39 = 1024;
          v40 = [v6 pid];
          _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ reported with incorrect pid %d", &v37, 0x12u);
        }
      }
    }

    v23 = [v6 state];
    if (v23 <= 2)
    {
      if (v23 == 1)
      {
        v14 = rbs_general_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 32);
          v37 = 138543362;
          v38 = v35;
          v25 = "%{public}@ reported to RB as never ran";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v23 == 2)
      {
        v14 = rbs_general_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v37 = 138543362;
          v38 = v24;
          v25 = "%{public}@ reported to RB as running";
LABEL_33:
          _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, v25, &v37, 0xCu);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

LABEL_29:
      v14 = rbs_general_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_3(a1, v6);
      }

      goto LABEL_34;
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_29;
      }

      v14 = [v6 lastExitStatus];
      if (v14)
      {
LABEL_28:
        v33 = *(a1 + 48);
        v34 = [*(a1 + 32) identity];
        [v33 _addReslideIdentityIfNeeded:v34 exitStatus:v14];

        _handleDeath(*(a1 + 32), *(a1 + 56), v14);
        [*(a1 + 40) cancelMonitor];
        goto LABEL_34;
      }

      v26 = rbs_general_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_2(a1, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    v14 = 0;
    goto LABEL_28;
  }

  v13 = rbs_general_log();
  v14 = v13;
  if (a3 != 113)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_4(a1, v14, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_34;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v37 = 138543362;
    v38 = v15;
    _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ job reported to RB as removed", &v37, 0xCu);
  }

  _handleDeath(*(a1 + 32), *(a1 + 56), 0);
  [*(a1 + 40) cancelMonitor];
LABEL_35:

  v36 = *MEMORY[0x277D85DE8];
}

- (unint64_t)test_trackedJobCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_monitoredJobsByIdentifier count];
  v4 = [(NSMutableDictionary *)self->_lock_jobsByIdentifier count];
  os_unfair_lock_unlock(&self->_lock);
  return v4 + v3;
}

+ (void)lastExitStatusForLabel:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_262485000, v4, OS_LOG_TYPE_ERROR, "Unexpected exit reason from launchd %{public}@: %llu", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addSharedPropertiesToData:(void *)a1 forIdentity:context:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identity];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addAppPropertiesToData:(int)a1 forIdentity:(NSObject *)a2 context:actualIdentity:error:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "Unrecognized RBSLaunchSpawnType %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addAppPropertiesToData:forIdentity:context:actualIdentity:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_262485000, v1, OS_LOG_TYPE_FAULT, "'%{public}@' container path lookup failed: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createLaunchdJobWithIdentity:context:actualIdentity:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Multiple personas available for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_adjustLaunchdJobProperties:context:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v0, v1, "Attempted to launch angel found a non-angel job: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v0, v1, "Attempted to launch daemon found an angel job: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v0, v1, "Failed to fetch properties for job for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v8 = *MEMORY[0x277D85DE8];
  [v1 pid];
  [v0 state];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v8 = *MEMORY[0x277D85DE8];
  [v1 pid];
  [v0 state];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Process start failed with %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Job remove after failed start failed with %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Process start failed to launch/find job with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removeJobWithInstance:orJob:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"RBLaunchdJobManager.m" lineNumber:1499 description:{@"Invalid parameter not satisfying: %@", @"instance"}];
}

- (void)_removeJobWithInstance:orJob:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v0, v1, "About to attempt job removal for job not submitted by RunningBoard: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removeJobWithInstance:orJob:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v0, v1, "Job removal failed with %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeJobs
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v0, v1, "copyJobsManagedBy failed with %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__RBLaunchdJobManager_synchronizeJobs__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) handle];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invokeOnProcessDeath:(void *)a1 handler:onQueue:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  [a2 pid];
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_5(&dword_262485000, a2, a3, "%{public}@ termination reported but no exit status is present", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  [a2 state];
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_5(&dword_262485000, a2, a3, "OSLaunchdJob monitor called with nil info for %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end