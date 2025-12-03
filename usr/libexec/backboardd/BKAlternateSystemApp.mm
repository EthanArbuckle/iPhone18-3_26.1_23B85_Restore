@interface BKAlternateSystemApp
+ (id)_bundleInfoOverrides;
- (BKAlternateSystemApp)initWithBundleId:(id)id options:(id)options queue:(id)queue;
- (BOOL)launchWithResultBlock:(id)block exitBlock:(id)exitBlock;
- (BOOL)terminate;
- (void)_noteExitedWithContext:(id)context;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKAlternateSystemApp

- (void)_noteExitedWithContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_noteExitedWithContext: app:%{public}@ exitContext:%{public}@", &v10, 0x16u);
  }

  pendingExitBlock = self->_pendingExitBlock;
  if (pendingExitBlock)
  {
    pendingExitBlock[2](pendingExitBlock, contextCopy);
    v7 = self->_pendingExitBlock;
    self->_pendingExitBlock = 0;
  }

  [(RBSAssertion *)self->_visibilityAssertion invalidate];
  visibilityAssertion = self->_visibilityAssertion;
  self->_visibilityAssertion = 0;

  processHandle = self->_processHandle;
  self->_processHandle = 0;
}

- (BOOL)terminate
{
  dispatch_assert_queue_V2(self->_queue);
  pendingExitBlock = self->_pendingExitBlock;
  self->_pendingExitBlock = 0;

  [(RBSAssertion *)self->_visibilityAssertion invalidate];
  visibilityAssertion = self->_visibilityAssertion;
  self->_visibilityAssertion = 0;

  processHandle = self->_processHandle;
  if (processHandle)
  {
    v6 = [(RBSProcessHandle *)processHandle pid];
    v7 = [[RBSTerminateContext alloc] initWithExplanation:@"Alternate system app termination requested."];
    [v7 setReportType:0];
    [v7 setMaximumTerminationResistance:40];
    v8 = [RBSTerminateRequest alloc];
    v9 = [NSNumber numberWithInt:v6];
    v10 = [RBSProcessPredicate predicateMatchingIdentifier:v9];
    v11 = [v8 initWithPredicate:v10 context:v7];

    v17 = 0;
    LOBYTE(v10) = [v11 execute:&v17];
    v12 = v17;
    if ((v10 & 1) == 0)
    {
      v13 = BKLogAlternateSystemApp();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        bundleID = self->_bundleID;
        *buf = 138543618;
        v19 = bundleID;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to terminate %{public}@ with error: %{public}@", buf, 0x16u);
      }
    }

    v14 = self->_processHandle;
    self->_processHandle = 0;
  }

  return 1;
}

- (BOOL)launchWithResultBlock:(id)block exitBlock:(id)exitBlock
{
  blockCopy = block;
  exitBlockCopy = exitBlock;
  dispatch_assert_queue_V2(self->_queue);
  val = self;
  location = &self->_processHandle;
  if (self->_processHandle)
  {
    v61 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_processHandle == nil"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v62 = NSStringFromSelector(a2);
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      *buf = 138544642;
      selfCopy5 = v62;
      v111 = 2114;
      v112 = v64;
      v113 = 2048;
      selfCopy = self;
      v115 = 2114;
      v116 = @"BKAlternateSystemApp.m";
      v117 = 1024;
      v118 = 89;
      v119 = 2114;
      v120 = v61;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v65 = v61;
    [v61 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100031350);
  }

  v8 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "launchWithResultBlock: %{public}@", buf, 0xCu);
  }

  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_100031390;
  v104[3] = &unk_1000FC300;
  v104[4] = self;
  v76 = blockCopy;
  v105 = v76;
  v77 = objc_retainBlock(v104);
  v9 = [exitBlockCopy copy];
  pendingExitBlock = self->_pendingExitBlock;
  self->_pendingExitBlock = v9;

  _bundleInfoOverrides = [objc_opt_class() _bundleInfoOverrides];
  v11 = [_bundleInfoOverrides objectForKey:self->_bundleID];
  v83 = v11;
  if (v11)
  {
    v12 = [v11 objectForKey:@"OverrideURL"];
    v82 = [NSURL URLWithString:v12];

    path = [v83 objectForKey:@"OverrideAppType"];
    v13 = BKLogAlternateSystemApp();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      *buf = 134218754;
      selfCopy5 = self;
      v111 = 2114;
      v112 = bundleID;
      v113 = 2114;
      selfCopy = v82;
      v115 = 2114;
      v116 = path;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "launchWithResultBlock %p: Using built-in information for bundle ID %{public}@: URL=%{public}@ appType=%{public}@", buf, 0x2Au);
    }

    goto LABEL_11;
  }

  v15 = self->_bundleID;
  v103 = 0;
  path = [LSBundleRecord bundleRecordWithBundleIdentifier:v15 allowPlaceholder:0 error:&v103];
  v16 = v103;
  if (path && !v16)
  {
    v82 = [(__CFString *)path URL];
LABEL_11:

    path = [(BKAlternateSystemApp *)v82 path];
    v79 = [[BSCFBundle alloc] initWithPath:path];
    executablePath = [v79 executablePath];
    if (executablePath)
    {
      v17 = +[NSMutableDictionary dictionary];
      v87 = +[BSMutableMachServiceAliases new];
      v75 = [(NSString *)self->_bundleID stringByAppendingString:@".jail."];
      v74 = [v75 stringByAppendingString:@"com.apple.frontboard.systemappservices"];
      v73 = [v75 stringByAppendingString:@"com.apple.frontboard.workspace"];
      [v17 setObject:&__kCFBooleanTrue forKey:v74];
      [v17 setObject:&__kCFBooleanTrue forKey:v73];
      [(BSMutableMachServiceAliases *)v87 setService:v74 forAlias:@"com.apple.frontboard.systemappservices"];
      [(BSMutableMachServiceAliases *)v87 setService:v73 forAlias:@"com.apple.frontboard.workspace"];
      infoDictionary = [v79 infoDictionary];
      v72 = [infoDictionary bs_safeDictionaryForKey:@"BKSLaunchdPlist"];
      [v72 bs_safeDictionaryForKey:@"MachServices"];
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      obj = v100 = 0u;
      v18 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
      if (v18)
      {
        v19 = *v100;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v100 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v99 + 1) + 8 * i);
            if ([v21 length])
            {
              [v17 setObject:&__kCFBooleanTrue forKey:v21];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
        }

        while (v18);
      }

      [v72 bs_safeDictionaryForKey:@"AlternateMachServices"];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v22 = v96 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v95 objects:v107 count:16];
      if (v23)
      {
        v24 = *v96;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v96 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v95 + 1) + 8 * j);
            if ([(BKAlternateSystemApp *)v26 length])
            {
              v27 = [v22 bs_safeStringForKey:v26];
              if ([(__CFString *)v27 length])
              {
                v28 = [v17 objectForKey:v27];
                v29 = v28 == 0;

                v30 = BKLogAlternateSystemApp();
                v31 = v30;
                if (v29)
                {
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v33 = val->_bundleID;
                    *buf = 134218754;
                    selfCopy5 = val;
                    v111 = 2114;
                    v112 = v33;
                    v113 = 2114;
                    selfCopy = v26;
                    v115 = 2114;
                    v116 = v27;
                    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "launchWithResultBlock %p: [%{public}@] Ignoring alternate mach service for %{public}@ because mapped service %{public}@ does not exist.", buf, 0x2Au);
                  }
                }

                else
                {
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v32 = val->_bundleID;
                    *buf = 134218754;
                    selfCopy5 = val;
                    v111 = 2114;
                    v112 = v32;
                    v113 = 2112;
                    selfCopy = v27;
                    v115 = 2112;
                    v116 = v26;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "launchWithResultBlock %p: [%{public}@] Registering alternate mach service %@ in place of %@.", buf, 0x2Au);
                  }

                  [(BSMutableMachServiceAliases *)v87 setService:v27 forAlias:v26];
                }
              }
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v95 objects:v107 count:16];
        }

        while (v23);
      }

      v70 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:val->_bundleID];
      v34 = [RBSLaunchContext contextWithIdentity:v70];
      [v34 setSpawnType:1];
      [v34 _setOverrideExecutablePath:executablePath];
      environmentRepresentation = [(BSMutableMachServiceAliases *)v87 environmentRepresentation];
      [v34 _setAdditionalEnvironment:environmentRepresentation];

      allKeys = [v17 allKeys];
      [v34 _setAdditionalMachServices:allKeys];

      v69 = [[RBSLaunchRequest alloc] initWithContext:v34];
      v93 = 0;
      v94 = 0;
      v37 = [v69 execute:&v94 error:&v93];
      v38 = v94;
      v66 = v94;
      v85 = v93;
      if (v37)
      {
        objc_storeStrong(location, v38);
        objc_initWeak(&from, val);
        processHandle = val->_processHandle;
        v90[0] = _NSConcreteStackBlock;
        v90[1] = 3221225472;
        v90[2] = sub_10003147C;
        v90[3] = &unk_1000FAB80;
        objc_copyWeak(&v91, &from);
        [(RBSProcessHandle *)processHandle monitorForDeath:v90];
        locationa = +[RBSTarget targetWithPid:environmentIdentifier:](RBSTarget, "targetWithPid:environmentIdentifier:", [*location pid], @"com.apple.backboard.alternateSystemApp");
        v40 = [RBSAssertion alloc];
        v41 = [RBSEndowmentGrant grantWithNamespace:@"com.apple.frontboard.visibility" endowment:&__kCFBooleanTrue];
        v106[0] = v41;
        v42 = +[RBSJetsamPriorityGrant grantWithForegroundPriority];
        v106[1] = v42;
        v43 = +[RBSCPUAccessGrant grantWithUserInteractivity];
        v106[2] = v43;
        v44 = +[RBSGPUAccessGrant grant];
        v106[3] = v44;
        v45 = [RBSResistTerminationGrant grantWithResistance:40];
        v106[4] = v45;
        v46 = [NSArray arrayWithObjects:v106 count:5];
        v47 = [v40 initWithExplanation:@"Alternate system app" target:locationa attributes:v46];
        visibilityAssertion = val->_visibilityAssertion;
        val->_visibilityAssertion = v47;

        v49 = val->_visibilityAssertion;
        v89 = 0;
        v50 = [(RBSAssertion *)v49 acquireWithError:&v89];
        v51 = v89;

        if (v50)
        {
          v52 = BKLogAlternateSystemApp();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy5 = val;
            v111 = 2114;
            v112 = val;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "launchSucceeded %p: %{public}@", buf, 0x16u);
          }

          (*(v76 + 2))(v76, 0);
        }

        else
        {
          v56 = BKLogAlternateSystemApp();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v60 = [v51 descriptionWithMultilinePrefix:0];
            *buf = 134218242;
            selfCopy5 = val;
            v111 = 2114;
            v112 = v60;
            _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "launchWithResultBlock %p: launch succeeded but app was not made visible: %{public}@", buf, 0x16u);
          }

          [(BKAlternateSystemApp *)val terminate];
          (v77[2])();
        }

        objc_destroyWeak(&v91);
        objc_destroyWeak(&from);
        v85 = v51;
      }

      else
      {
        v54 = BKLogAlternateSystemApp();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v58 = [v85 descriptionWithMultilinePrefix:0];
          *buf = 134218242;
          selfCopy5 = val;
          v111 = 2114;
          v112 = v58;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "launchWithResultBlock %p: launch failed: %{public}@", buf, 0x16u);
        }

        (v77[2])();
        v50 = 0;
      }
    }

    else
    {
      v53 = BKLogAlternateSystemApp();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy5 = self;
        v111 = 2114;
        v112 = path;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "launchWithResultBlock %p: launch failed: no executable path for bundle at path %{public}@", buf, 0x16u);
      }

      (v77[2])();
      v50 = 0;
    }

    goto LABEL_58;
  }

  v82 = v16;
  v55 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v59 = self->_bundleID;
    *buf = 134218498;
    selfCopy5 = self;
    v111 = 2114;
    v112 = v59;
    v113 = 2114;
    selfCopy = v82;
    _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "launchWithResultBlock %p: launch failed: error from LS %{public}@ -- %{public}@", buf, 0x20u);
  }

  (v77[2])();
  v50 = 0;
LABEL_58:

  return v50;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000315D4;
  v5[3] = &unk_1000FD128;
  formatterCopy = formatter;
  selfCopy = self;
  v4 = formatterCopy;
  [v4 appendProem:self block:v5];
}

- (BKAlternateSystemApp)initWithBundleId:(id)id options:(id)options queue:(id)queue
{
  idCopy = id;
  optionsCopy = options;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = BKAlternateSystemApp;
  v11 = [(BKAlternateSystemApp *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BKAlternateSystemApp *)v11 setBundleID:idCopy];
    [(BKAlternateSystemApp *)v12 setOptions:optionsCopy];
    [(BKAlternateSystemApp *)v12 setQueue:queueCopy];
  }

  return v12;
}

+ (id)_bundleInfoOverrides
{
  v5[0] = @"OverrideURL";
  v5[1] = @"OverrideAppType";
  v6[0] = @"file:///Applications/PreBoard.app";
  v6[1] = @"System";
  v7 = @"com.apple.PreBoard";
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v3;
}

@end