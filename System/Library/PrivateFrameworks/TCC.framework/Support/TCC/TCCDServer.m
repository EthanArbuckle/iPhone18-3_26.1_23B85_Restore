@interface TCCDServer
+ (id)newErrorWithCode:(int64_t)a3 format:(id)a4 arguments:(char *)a5;
- (BOOL)canProcess:(id)a3 callFunction:(id)a4 forService:(id)a5 withAccessIdentity:(id)a6;
- (BOOL)evaluateAccessToService:(id)a3 defaultAccessAllowed:(BOOL)a4 by:(id)a5 checkCodeRequirements:(BOOL)a6 authorizationResult:(unint64_t *)a7 authorizationReason:(unint64_t *)a8 flags:(int *)a9 subjectCodeIdentityDataResult:(id *)a10;
- (BOOL)evaluateComposedAuthorizationToService:(id)a3 andAccessSubject:(id)a4 withRelation:(int64_t)a5 authorizationResult:(unint64_t *)a6 authorizationReason:(unint64_t *)a7 subjectCodeIdentityDataResult:(id *)a8;
- (BOOL)generateBacktraceOnPrompt;
- (BOOL)internalPreferenceBoolValueForName:(id)a3;
- (BOOL)internalPreferenceBoolValueForName:(id)a3 present:(BOOL *)a4;
- (BOOL)isAccessEntryWithAge:(int)a3 authorizationValue:(unint64_t)a4 expiredForService:(id)a5;
- (BOOL)isProcessServiceCompositionManager:(id)a3;
- (BOOL)sendRecordMetricsForService:(const char *)a3;
- (BOOL)targetAuditToken:(id *)a3 fromMessage:(id)a4 error:(id *)a5;
- (BOOL)updateAccessRecord:(id)a3 replaceOnly:(BOOL)a4 doCompositionWithChildService:(BOOL)a5 withRequestingProcess:(id)a6 function:(id)a7 accessIdentity:(id)a8;
- (BOOL)updateAuthorizationRecordFromContext:(id)a3 forResult:(id)a4 syncedUpdate:(BOOL *)a5;
- (NSString)stateDirectory;
- (NSString)userHomeDirectory;
- (TCCDServer)init;
- (id)_descriptionForXPCDictionary:(id)a3 depth:(int)a4;
- (id)_descriptionForXPCObject:(id)a3 depth:(int)a4;
- (id)_evaluateForProcess:(id)a3 entitlementName:(id)a4 containsService:(id)a5 options:(unint64_t)a6;
- (id)_indentForDepth:(int)a3;
- (id)accessRecordFromStep:(sqlite3_stmt *)a3;
- (id)descriptionDictionariesForAllAccessRecords;
- (id)evaluateUserIndependentEntitlementsForAccessByAttributionChain:(id)a3 forFunction:(id)a4 toService:(id)a5 error:(id *)a6;
- (id)fetchAllAccessRecords;
- (id)fetchAllActivePolicies;
- (id)fetchAllOverriddenServiceNames;
- (id)fetchAllPolicies;
- (id)recordForAccessoryIdentityFromMessage:(id)a3 error:(id *)a4;
- (id)recordForCodeIdentityFromMessage:(id)a3 accessIdentity:(id *)a4 indirectObjectIdentity:(id *)a5 error:(id *)a6;
- (id)recordFromMessage:(id)a3 accessIdentity:(id *)a4 indirectObjectIdentity:(id *)a5 error:(id *)a6;
- (id)serviceFromMessage:(id)a3 error:(id *)a4;
- (id)setupTemporaryDirectoryForName:(int)a3;
- (id)stateDumpDictionary;
- (id)stringFromErrorCode:(int64_t)a3;
- (unint64_t)numberOfRecordsForService:(id)a3 withAuthorizationValue:(unint64_t)a4;
- (void)buildErrorString:(id)a3 forError:(id)a4 contextString:(id)a5;
- (void)createStateHandler;
- (void)makeError:(id *)a3 withCode:(int64_t)a4 infoText:(id)a5;
- (void)publishAccessChangedEvent:(unint64_t)a3 forService:(id)a4 client:(id)a5 clientType:(int)a6 authValue:(unint64_t)a7 authReason:(unint64_t)a8 andKillClient:(BOOL)a9 attributionChain:(id)a10;
- (void)purgeAllExpiredAccessEntries;
- (void)purgeExpiredAccessEntriesForService:(id)a3;
- (void)scheduleAccessEntryExpiryCheckForService:(id)a3;
- (void)sendAnalyticsForEntitlement:(id)a3 withProcess:(id)a4 service:(id)a5 function:(id)a6;
- (void)sendAnalyticsIfMigrationPluginForProcess:(id)a3 withService:(id)a4 API:(id)a5;
- (void)setPlatform:(id)a3;
- (void)setupTemporaryDirectories;
- (void)updateClient:(id)a3 client:(const char *)a4 clientType:(int)a5;
@end

@implementation TCCDServer

+ (id)newErrorWithCode:(int64_t)a3 format:(id)a4 arguments:(char *)a5
{
  if (a4)
  {
    v7 = a4;
    v8 = [[NSString alloc] initWithFormat:v7 locale:0 arguments:a5];

    v12 = NSLocalizedDescriptionKey;
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSError errorWithDomain:@"kTCCErrorDomain" code:a3 userInfo:v9];

  return v10;
}

- (void)updateClient:(id)a3 client:(const char *)a4 clientType:(int)a5
{
  v64 = 0;
  v46 = a3;
  v7 = [v46 isRevocable];
  if (!a5 && (v7 & 1) == 0)
  {
    v45 = [NSString stringWithUTF8String:a4];
    if (v45)
    {
      v44 = a4;
      if (&_SBSProcessIDForDisplayIdentifier && SBSProcessIDForDisplayIdentifier())
      {
        v8 = [v46 name];
        v9 = [NSString stringWithFormat:@"Access to service %@ changed.", v8];

        [v9 UTF8String];
        v10 = terminate_with_reason();
        v11 = [(TCCDServer *)self logHandle];
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v13 = *__error();
            v14 = __error();
            v15 = strerror(*v14);
            v16 = [v46 name];
            *buf = 136447234;
            v68 = v44;
            v69 = 1024;
            *v70 = v64;
            *&v70[4] = 1024;
            *&v70[6] = v13;
            *&v70[10] = 2082;
            *&v70[12] = v15;
            LOWORD(v71[0]) = 2114;
            *(v71 + 2) = v16;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to terminate_with_reason() %{public}s[%d]: %d (%{public}s) for service %{public}@", buf, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v46 name];
          *buf = 136446722;
          v68 = a4;
          v69 = 1024;
          *v70 = v64;
          *&v70[4] = 2114;
          *&v70[6] = v17;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Terminating %{public}s[%d] because access to the %{public}@ service changed.", buf, 0x1Cu);
        }
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v18 = [LSApplicationProxy applicationProxyForIdentifier:v45];
      v19 = [v18 plugInKitPlugins];

      v20 = [v19 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v61;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v61 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v60 + 1) + 8 * i);
            v25 = [v24 bundleIdentifier];
            [v25 UTF8String];

            v26 = [v24 bundleVersion];
            [v26 UTF8String];

            v27 = dispatch_get_global_queue(0, 0);
            v52 = _NSConcreteStackBlock;
            v53 = 3221225472;
            v54 = sub_100038C74;
            v55 = &unk_1000A61B8;
            v56 = self;
            v57 = v24;
            v58 = v45;
            v59 = v46;
            launch_remove_external_service();
          }

          v21 = [v19 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v21);
      }

      v28 = [v46 name];
      v29 = [NSString stringWithFormat:@"%@ authorization changed for assumed identity %@", v28, v45];

      v30 = [(TCCDServer *)self assumedIdentityMonitor];
      v31 = [v30 monitoredProcessesAssumingIdentityWithIdentifier:v45];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v48 objects:v65 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v49;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v49 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v48 + 1) + 8 * j);
            [v37 pid];
            [v29 UTF8String];
            v38 = terminate_with_reason();
            v39 = tcc_assumed_identity_monitor_log();
            v40 = v39;
            if (v38)
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v41 = [v46 name];
                v42 = *__error();
                *buf = 138544130;
                v68 = v37;
                v69 = 2082;
                *v70 = v44;
                *&v70[8] = 2114;
                *&v70[10] = v41;
                *&v70[18] = 1024;
                v71[0] = v42;
                _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Unable to terminate_with_reason() %{public}@ assuming identity %{public}s for %{public}@: %{darwin.errno}d", buf, 0x26u);
              }
            }

            else
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [v46 name];
                *buf = 138543874;
                v68 = v37;
                v69 = 2082;
                *v70 = v44;
                *&v70[8] = 2114;
                *&v70[10] = v43;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Terminated %{public}@ assuming identity %{public}s because the assumed identity's %{public}@ authorization changed.", buf, 0x20u);
              }

              v40 = [(TCCDServer *)self assumedIdentityMonitor];
              [v40 stopMonitoringProcess:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v48 objects:v65 count:16];
        }

        while (v34);
      }
    }
  }
}

- (void)publishAccessChangedEvent:(unint64_t)a3 forService:(id)a4 client:(id)a5 clientType:(int)a6 authValue:(unint64_t)a7 authReason:(unint64_t)a8 andKillClient:(BOOL)a9 attributionChain:(id)a10
{
  v11 = *&a6;
  v15 = a4;
  v16 = a5;
  v17 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *name = 136316674;
    v27 = "[TCCDServer publishAccessChangedEvent:forService:client:clientType:authValue:authReason:andKillClient:attributionChain:]";
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 1024;
    v35 = v11;
    v36 = 2048;
    v37 = a7;
    v38 = 1024;
    v39 = a9;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: event_type=%lld, service=%@, client=%@, client_type=%d, auth_value=%lld, kill_client=%d", name, 0x40u);
  }

  if (v15)
  {
    if (a9)
    {
      -[TCCDServer updateClient:client:clientType:](self, "updateClient:client:clientType:", v15, [v16 UTF8String], v11);
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v18 = [v15 name];
      v19 = tcc_service_singleton_for_CF_name();
      tcc_authorization_changed_for_service_notification_name();

      LODWORD(v19) = notify_post(name);
      v20 = [(TCCDServer *)self logHandle];
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100040688();
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315138;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Posted notification: %s", &v24, 0xCu);
      }
    }

    v22 = [[TCCDEvent alloc] initWithEventType:a3 service:v15 subjectIdentifierType:v11 subjectIdentifier:v16 authValue:a7];
    v23 = [(TCCDServer *)self eventPublisher];
    [v23 publish:v22];
  }

  else
  {
    v22 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(&v22->super, OS_LOG_TYPE_ERROR))
    {
      sub_100040704(v16);
    }
  }
}

- (id)setupTemporaryDirectoryForName:(int)a3
{
  bzero(v8, 0x400uLL);
  if (!confstr(a3, v8, 0x400uLL))
  {
    sub_1000407C0();
  }

  if (mkdir(v8, 0x1C0u) && *__error() != 17)
  {
    sub_100040788();
  }

  v4 = realpath_DARWIN_EXTSN(v8, 0);
  if (!v4)
  {
    sub_1000407A4();
  }

  v5 = v4;
  v6 = [[NSString alloc] initWithUTF8String:v4];
  free(v5);

  return v6;
}

- (void)setupTemporaryDirectories
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    sub_1000407DC();
  }

  self->_temporaryDirectory = [(TCCDServer *)self setupTemporaryDirectoryForName:65537];

  _objc_release_x1();
}

- (TCCDServer)init
{
  v14.receiver = self;
  v14.super_class = TCCDServer;
  v2 = [(TCCDServer *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(TCCDServer *)v2 setupTemporaryDirectories];
    [(TCCDServer *)v3 createStateHandler];
    v4 = objc_alloc_init(TCCDReminderMonitor);
    reminderMonitor = v3->_reminderMonitor;
    v3->_reminderMonitor = v4;

    v6 = dispatch_get_global_queue(-32768, 0);
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    authAnalyticsTimer = v3->_authAnalyticsTimer;
    v3->_authAnalyticsTimer = v7;

    v9 = dispatch_time(0, 86400000000000);
    dispatch_source_set_timer(v3->_authAnalyticsTimer, v9, 0x4E94914F0000uLL, 0x34630B8A000uLL);
    v10 = v3->_authAnalyticsTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000392CC;
    handler[3] = &unk_1000A4F58;
    v13 = v3;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_activate(v3->_authAnalyticsTimer);
  }

  return v3;
}

- (NSString)userHomeDirectory
{
  p_super = &self->super;
  if (self->_userHomeDirectory)
  {
LABEL_8:
    isa = p_super[1].isa;

    return isa;
  }

  if ([(TCCDServer *)self macos_isSystemServer])
  {
    v3 = p_super[1].isa;
    p_super[1].isa = @"/";

    goto LABEL_8;
  }

  v4 = getuid();
  v5 = getpwuid(v4);
  if (!v5)
  {
    p_super = [p_super logHandle];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1000408F4();
    }

    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  pw_dir = v5->pw_dir;
  if (!pw_dir)
  {
LABEL_14:
    p_super = [p_super logHandle];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_100040874();
    }

    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  v7 = [NSString stringWithUTF8String:pw_dir];
  v14 = 0;
  v8 = [v7 stringByResolvingRealPathWithError:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = p_super[1].isa;
    p_super[1].isa = v8;

    goto LABEL_8;
  }

LABEL_17:
  v13 = [p_super logHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000407F8();
  }

  result = _os_crash();
  __break(1u);
  return result;
}

- (NSString)stateDirectory
{
  stateDirectory = self->_stateDirectory;
  if (!stateDirectory)
  {
    v4 = [(TCCDServer *)self userHomeDirectory];
    v5 = [(TCCDServer *)self platform];
    v6 = [v5 homeRelativePathToStateDirectory];
    v7 = [v4 stringByAppendingPathComponent:v6];
    v8 = self->_stateDirectory;
    self->_stateDirectory = v7;

    stateDirectory = self->_stateDirectory;
  }

  return stateDirectory;
}

- (BOOL)internalPreferenceBoolValueForName:(id)a3
{
  v4 = a3;
  if ([(TCCDServer *)self allowsInternalSecurityPolicies]&& (v5 = CFPreferencesCopyValue(v4, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) != 0)
  {
    v6 = v5;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      v8 = CFBooleanGetValue(v6) != 0;
      v9 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100040974();
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)internalPreferenceBoolValueForName:(id)a3 present:(BOOL *)a4
{
  v6 = a3;
  *a4 = 0;
  if ([(TCCDServer *)self allowsInternalSecurityPolicies]&& (v7 = CFPreferencesCopyValue(v6, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) != 0)
  {
    v8 = v7;
    *a4 = 1;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      v10 = CFBooleanGetValue(v8) != 0;
      v11 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100040974();
      }
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)stringFromErrorCode:(int64_t)a3
{
  if (a3 > 9)
  {
    return @"Unknown Error Code";
  }

  else
  {
    return *(&off_1000A6310 + a3);
  }
}

- (void)setPlatform:(id)a3
{
  objc_storeStrong(&self->_platform, a3);
  v5 = a3;
  [(TCCDPlatform *)self->_platform setServer:self];
}

- (void)makeError:(id *)a3 withCode:(int64_t)a4 infoText:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      v10 = NSLocalizedDescriptionKey;
      v11 = v7;
      v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    }

    else
    {
      v9 = 0;
    }

    *a3 = [NSError errorWithDomain:@"com.apple.tccd" code:a4 userInfo:v9];
  }
}

- (void)buildErrorString:(id)a3 forError:(id)a4 contextString:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    [v13 appendFormat:@"%@, ", v9];
  }

  if (v8)
  {
    v11 = [v8 localizedDescription];
    [v13 appendFormat:@"%@", v11];

    v12 = -[TCCDServer stringFromErrorCode:](self, "stringFromErrorCode:", [v8 code]);
    [v13 appendFormat:@"(%@) ", v12];
  }
}

- (id)_indentForDepth:(int)a3
{
  v4 = objc_opt_new();
  if (a3 >= 1)
  {
    do
    {
      [v4 appendString:@"\t"];
      --a3;
    }

    while (a3);
  }

  v5 = [v4 copy];

  return v5;
}

- (id)_descriptionForXPCDictionary:(id)a3 depth:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 appendString:@"{\n"];
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100039B50;
  applier[3] = &unk_1000A61E0;
  v13 = v7;
  v14 = self;
  v15 = v4;
  v8 = v7;
  xpc_dictionary_apply(v6, applier);

  v9 = [(TCCDServer *)self _indentForDepth:v4];
  [v8 appendString:v9];

  [v8 appendString:@"}"];
  v10 = [v8 copy];

  return v10;
}

- (id)_descriptionForXPCObject:(id)a3 depth:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_opt_new();
  if (xpc_get_type(v6) == &_xpc_type_string)
  {
    [v7 appendFormat:@"%s", xpc_string_get_string_ptr(v6), v18];
    goto LABEL_16;
  }

  if (xpc_get_type(v6) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v6);
    v10 = "false";
    if (value)
    {
      v10 = "true";
    }

    [v7 appendFormat:@"%s", v10, v18];
  }

  else
  {
    if (xpc_get_type(v6) == &_xpc_type_uint64)
    {
      v11 = xpc_uint64_get_value(v6);
      [v7 appendFormat:@"%llu (0x%llx)", v11, xpc_uint64_get_value(v6)];
      goto LABEL_16;
    }

    if (xpc_get_type(v6) == &_xpc_type_int64)
    {
      v17 = xpc_int64_get_value(v6);
      v18 = xpc_int64_get_value(v6);
      v12 = @"%lld (0x%llx)";
LABEL_15:
      [v7 appendFormat:v12, v17, v18];
      goto LABEL_16;
    }

    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      v15 = [(TCCDServer *)self _descriptionForXPCDictionary:v6 depth:v4];
      [v7 appendFormat:@"%@", v15];
    }

    else
    {
      if (xpc_get_type(v6) != &_xpc_type_array)
      {
        if (xpc_get_type(v6) != &_xpc_type_null)
        {
          v8 = xpc_copy_description(v6);
          [v7 appendFormat:@"%s", v8];
          free(v8);
          goto LABEL_16;
        }

        v12 = @"<xpc_null>";
        goto LABEL_15;
      }

      v16 = [(TCCDServer *)self _indentForDepth:v4];
      [v7 appendFormat:@"\n"];
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10003A038;
      applier[3] = &unk_1000A6208;
      applier[4] = self;
      v22 = v4;
      v20 = v7;
      v21 = v16;
      v15 = v16;
      xpc_array_apply(v6, applier);
    }
  }

LABEL_16:
  v13 = [v7 copy];

  return v13;
}

- (BOOL)targetAuditToken:(id *)a3 fromMessage:(id)a4 error:(id *)a5
{
  length = 0;
  data = xpc_dictionary_get_data(a4, "target_token", &length);
  if (data)
  {
    if (length == 32)
    {
      v9 = data[1];
      *a3->var0 = *data;
      *&a3->var0[4] = v9;
      return 1;
    }

    v11 = @"invalid size for target audit token";
    v12 = self;
    v13 = a5;
    v14 = 4;
  }

  else
  {
    v11 = @"missing target audit token";
    v12 = self;
    v13 = a5;
    v14 = 3;
  }

  [(TCCDServer *)v12 makeError:v13 withCode:v14 infoText:v11];
  return 0;
}

- (void)sendAnalyticsIfMigrationPluginForProcess:(id)a3 withService:(id)a4 API:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if ([(TCCDServer *)self allowsInternalSecurityPolicies])
  {
    if ([v15 isPlatformBinary])
    {
      v10 = [v15 binaryPath];
      v11 = [v10 hasSuffix:@"com.apple.migrationpluginwrapper"];

      if (v11)
      {
        v12 = DMCopyMigrationPhaseDescription();
        if ([v12 hasPrefix:@"Running plugin "])
        {
          v13 = [v12 substringFromIndex:{objc_msgSend(@"Running plugin ", "length")}];
          v14 = [(TCCDServer *)self platform];
          [v14 sendAnalyticsForPlugin:v13 service:v8 API:v9];
        }
      }
    }
  }
}

- (void)sendAnalyticsForEntitlement:(id)a3 withProcess:(id)a4 service:(id)a5 function:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(TCCDServer *)self platform];
  v14 = [v12 identifier];

  [v15 sendAnalyticsForEntitlement:v13 withIdentifier:v14 service:v11 function:v10];
}

- (BOOL)canProcess:(id)a3 callFunction:(id)a4 forService:(id)a5 withAccessIdentity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v15 = 0;
    goto LABEL_22;
  }

  if (![v10 BOOLValueForEntitlement:@"com.apple.private.tcc.manager"])
  {
    v15 = 0;
    if (!v11 || !v12)
    {
      goto LABEL_22;
    }

    v16 = v11;
    if ([v16 isEqualToString:@"TCCAccessSetOverride"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"TCCAccessOverride"))
    {
      v17 = @"modify";
      v18 = @"service-override";
      goto LABEL_12;
    }

    if ([v16 hasPrefix:@"TCCExpirationCopy"])
    {
      v17 = @"read";
    }

    else
    {
      if (([v16 hasPrefix:@"TCCExpirationReset"] & 1) == 0)
      {
        if ([v16 hasPrefix:@"TCCAccessCopy"])
        {
          v17 = @"read";
        }

        else if ([v16 hasPrefix:@"TCCAccessSet"] & 1) != 0 || (objc_msgSend(v16, "hasPrefix:", @"TCCAccessSetWithPrompt"))
        {
          v17 = @"modify";
        }

        else if ([v16 hasPrefix:@"TCCAccessReset"])
        {
          v17 = @"delete";
        }

        else
        {
          if (![v16 hasPrefix:@"TCCReportUse"])
          {
            if (([v16 isEqualToString:@"TCCAccessRequest"] & 1) == 0)
            {

              v19 = 0;
              goto LABEL_20;
            }

            goto LABEL_13;
          }

          v17 = @"report";
        }

        v18 = @"access";
LABEL_12:
        if (([v16 isEqualToString:@"TCCAccessRequest"] & 1) == 0)
        {
          [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.private.tcc.manager", v18, v17];
          v19 = LABEL_15:;

          if (v19)
          {
            v15 = 1;
            if ([v10 hasEntitlement:v19 containsServiceAllOrService:v12 options:1])
            {
LABEL_21:

              goto LABEL_22;
            }

            v20 = [(TCCDServer *)self logHandle];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138544130;
              v24 = v10;
              v25 = 2114;
              v26 = v16;
              v27 = 2114;
              v28 = v12;
              v29 = 2114;
              v30 = v19;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ attempted to call %{public}@ for %{public}@ without the recommended %{public}@ entitlement", buf, 0x2Au);
            }
          }

LABEL_20:
          v15 = 0;
          goto LABEL_21;
        }

LABEL_13:
        [NSString stringWithFormat:@"%@.%@", @"com.apple.private.tcc.manager", @"check-by-audit-token", v22];
        goto LABEL_15;
      }

      v17 = @"delete";
    }

    v18 = @"expiration";
    goto LABEL_12;
  }

  v14 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    v29 = 2114;
    v30 = @"com.apple.private.tcc.manager";
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@ was allowed to call %{public}@ for %{public}@ with the deprecated %{public}@ entitlement", buf, 0x2Au);
  }

  [(TCCDServer *)self sendAnalyticsForEntitlement:@"com.apple.private.tcc.manager" withProcess:v10 service:v12 function:v11];
  [(TCCDServer *)self sendAnalyticsIfMigrationPluginForProcess:v10 withService:v12 API:v11];
  v15 = 1;
LABEL_22:

  return v15;
}

- (BOOL)generateBacktraceOnPrompt
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A790;
  block[3] = &unk_1000A4F58;
  block[4] = self;
  if (qword_1000C1170 != -1)
  {
    dispatch_once(&qword_1000C1170, block);
  }

  return self->_generateBacktraceOnPrompt;
}

- (BOOL)isProcessServiceCompositionManager:(id)a3
{
  v4 = a3;
  if (([v4 BOOLValueForEntitlement:@"com.apple.private.tcc.manager.service-composition"] & 1) != 0 || -[TCCDServer testDoComposition](self, "testDoComposition") && objc_msgSend(v4, "BOOLValueForEntitlement:", @"com.apple.private.tcc.test-manager.service-composition"))
  {
    v5 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000409EC(v4, v5);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serviceFromMessage:(id)a3 error:(id *)a4
{
  string = xpc_dictionary_get_string(a3, "service");
  if (string)
  {
    v7 = string;
    v8 = [NSString stringWithUTF8String:string];
    v9 = [(TCCDServer *)self platform];
    v10 = [v9 serviceByName:v8];

    if (!v10)
    {
      v11 = [NSString stringWithFormat:@"Invalid Service Name: %s", v7];
      [(TCCDServer *)self makeError:a4 withCode:2 infoText:v11];
    }
  }

  else
  {
    [(TCCDServer *)self makeError:a4 withCode:1 infoText:0];
    v10 = 0;
  }

  return v10;
}

- (id)recordForAccessoryIdentityFromMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TCCDServer *)self serviceFromMessage:v6 error:a4];
  if (v7 && (string = xpc_dictionary_get_string(v6, "client")) != 0)
  {
    v9 = string;
    if (xpc_dictionary_get_BOOL(v6, "granted"))
    {
      uint64 = 2;
    }

    else
    {
      uint64 = 0;
    }

    v11 = xpc_dictionary_get_value(v6, "auth_value");

    if (v11)
    {
      uint64 = xpc_dictionary_get_uint64(v6, "auth_value");
      v12 = [v7 authorizationVersionNumber];
    }

    else
    {
      v12 = 1;
    }

    v14 = [TCCDAccessoryIdentity alloc];
    v15 = [NSString stringWithUTF8String:v9];
    v16 = [(TCCDAccessoryIdentity *)v14 initWithIdentifier:v15 authority:4];

    v17 = +[TCCDAccessIndirectObject unusedIndirectObject];
    v18 = [[TCCDAccessObject alloc] initWithService:v7 indirectObject:v17];
    v13 = [[TCCDAccessRecord alloc] initWithSubject:v16 object:v18 authorizationValue:uint64 authorizationReason:4 authorizationVersion:v12 flags:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)recordForCodeIdentityFromMessage:(id)a3 accessIdentity:(id *)a4 indirectObjectIdentity:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(TCCDServer *)self serviceFromMessage:v10 error:a6];
  if (!v11)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v12 = [[TCCDAccessIdentity alloc] initWithMessage:v10];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }

    v15 = [TCCDCodeIdentity alloc];
    v16 = [(TCCDAccessIdentity *)v13 identifier];
    v40 = [(TCCDCodeIdentity *)v15 initWithIdentifier:v16 authority:[(TCCDAccessIdentity *)v13 client_type] displayNamePolicyIdentifier:0 verifierType:0 verifierData:0];

    int64 = xpc_dictionary_get_int64(v10, "indirect_object_type");
    string = xpc_dictionary_get_string(v10, "indirect_object_identifier");
    if (string)
    {
      v19 = [[NSString alloc] initWithUTF8String:string];
      if (int64 == 3)
      {
        v20 = [[TCCDAccessFileProviderDomainIndirectObject alloc] initWithFileProviderDomainID:v19];
      }

      else
      {
        length = 0;
        data = xpc_dictionary_get_data(v10, "indirect_object_code_requirement", &length);
        v24 = 0;
        if (data && length)
        {
          v25 = data;
          v26 = [NSData alloc];
          v24 = [v26 initWithBytes:v25 length:length];
        }

        v27 = [[TCCDCodeIdentity alloc] initWithIdentifier:v19 authority:int64 displayNamePolicyIdentifier:0 verifierType:v24 != 0 verifierData:v24];
        v20 = [[TCCDAccessCodeIndirectObject alloc] initWithCodeIdentity:v27];
        v28 = [[TCCDAccessIdentity alloc] initWithBundleIdentifier:v19 isWK2Proxy:0];
        if (!v28)
        {
          v39 = v20;
          v37 = [NSString stringWithFormat:@"Invalid indirect object identity from message"];
          [(TCCDServer *)self makeError:a6 withCode:6 infoText:v37];

          v21 = 0;
          v35 = v40;
LABEL_31:

          goto LABEL_32;
        }

        if (a5)
        {
          v28 = v28;
          *a5 = v28;
        }
      }
    }

    else
    {
      v20 = +[TCCDAccessIndirectObject unusedIndirectObject];
    }

    v19 = [[TCCDAccessObject alloc] initWithService:v11 indirectObject:v20];
    if (xpc_dictionary_get_BOOL(v10, "granted"))
    {
      uint64 = 2;
    }

    else
    {
      uint64 = 0;
    }

    v30 = xpc_dictionary_get_value(v10, "auth_value");

    v39 = v20;
    if (v30)
    {
      uint64 = xpc_dictionary_get_uint64(v10, "auth_value");
      v31 = [v11 authorizationVersionNumber];
    }

    else
    {
      v31 = 1;
    }

    if (xpc_dictionary_get_BOOL(v10, "has_prompted_for_allow"))
    {
      v32 = 16;
    }

    else
    {
      v32 = 0;
    }

    v24 = [NSDate dateWithTimeIntervalSinceNow:0.0];
    v33 = xpc_dictionary_get_int64(v10, "modDate");
    if (v33)
    {
      v34 = [[NSDate alloc] initWithTimeIntervalSince1970:v33];

      v24 = v34;
    }

    LOBYTE(v38) = 0;
    v35 = v40;
    v21 = [[TCCDAccessRecord alloc] initWithSubject:v40 object:v19 authorizationValue:uint64 authorizationReason:4 authorizationVersion:v31 lastModified:v24 flags:v32 replaceStoredCodeRequirement:v38];
    goto LABEL_31;
  }

  v22 = [NSString stringWithFormat:@"Invalid Access Identity from message"];
  [(TCCDServer *)self makeError:a6 withCode:6 infoText:v22];

  v21 = 0;
LABEL_32:

LABEL_33:

  return v21;
}

- (id)recordFromMessage:(id)a3 accessIdentity:(id *)a4 indirectObjectIdentity:(id *)a5 error:(id *)a6
{
  v10 = a3;
  if (_os_feature_enabled_impl() && (string = xpc_dictionary_get_string(v10, "client_type"), !strcmp(string, "accessory_uuid")))
  {
    v12 = [(TCCDServer *)self recordForAccessoryIdentityFromMessage:v10 error:a6];
  }

  else
  {
    v12 = [(TCCDServer *)self recordForCodeIdentityFromMessage:v10 accessIdentity:a4 indirectObjectIdentity:a5 error:a6];
  }

  v13 = v12;

  return v13;
}

- (void)purgeExpiredAccessEntriesForService:(id)a3
{
  v4 = a3;
  v5 = [v4 expirySeconds];

  if (v5)
  {
    v6 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 name];
      v8 = [v4 expirySeconds];
      *buf = 136446722;
      v13 = "[TCCDServer purgeExpiredAccessEntriesForService:]";
      v14 = 2114;
      v15 = v7;
      v16 = 1024;
      v17 = [v8 intValue];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}s: invoked for %{public}@; expiry: %d", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003B1A4;
    v9[3] = &unk_1000A6250;
    v10 = v4;
    v11 = self;
    db_transaction(v9);
  }
}

- (void)purgeAllExpiredAccessEntries
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = +[TCCDService allServices];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TCCDServer *)self purgeExpiredAccessEntriesForService:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)scheduleAccessEntryExpiryCheckForService:(id)a3
{
  v4 = a3;
  v5 = [v4 expirySeconds];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 expirySeconds];
    if (([v7 integerValue] & 0x8000000000000000) != 0)
    {

      goto LABEL_6;
    }

    v8 = [v4 expirySeconds];
    v9 = [v8 integerValue];

    if (v9 <= 604800)
    {
      v6 = dispatch_get_global_queue(-32768, 0);
      v10 = [v4 expirySeconds];
      v11 = dispatch_time(0, 1000000000 * [v10 integerValue] + 1000000000);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10003B994;
      v12[3] = &unk_1000A50C0;
      v12[4] = self;
      v13 = v4;
      dispatch_after(v11, v6, v12);

LABEL_6:
    }
  }
}

- (BOOL)isAccessEntryWithAge:(int)a3 authorizationValue:(unint64_t)a4 expiredForService:(id)a5
{
  v8 = a5;
  v9 = [v8 expirySeconds];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v8 expirySeconds];
  if ([v11 intValue] >= a3)
  {

    goto LABEL_7;
  }

  if ([v8 expireOnlyAllowedEntries])
  {
    v12 = [v8 isAuthorizationValue:a4 equalToRight:0];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v14 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v8 name];
    v16 = [v8 expirySeconds];
    *buf = 136446978;
    v22 = "[TCCDServer isAccessEntryWithAge:authorizationValue:expiredForService:]";
    v23 = 2114;
    v24 = v15;
    v25 = 1024;
    v26 = [v16 intValue];
    v27 = 1024;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}s for %{public}@ expiry time: %d, client age = %d", buf, 0x22u);
  }

  v17 = dispatch_get_global_queue(-32768, 0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003BBB8;
  v19[3] = &unk_1000A50C0;
  v19[4] = self;
  v20 = v8;
  dispatch_async(v17, v19);

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)_evaluateForProcess:(id)a3 entitlementName:(id)a4 containsService:(id)a5 options:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 authorizationRightStateForValue:1 reason:0];
  if (v12)
  {
    v13 = [v9 arrayValueForEntitlement:v10];

    if (v13)
    {
      if (![v9 hasEntitlement:v10 containsService:v11 options:a6])
      {
LABEL_7:
        v16 = v12;
        goto LABEL_8;
      }

      v14 = 11;
      v15 = 2;
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    [v12 setRight:v15];
    [v12 setReason:v14];
    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

- (id)evaluateUserIndependentEntitlementsForAccessByAttributionChain:(id)a3 forFunction:(id)a4 toService:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 authorizationRightStateForValue:1 reason:0];
  if (!v13)
  {
    v18 = 0;
    goto LABEL_45;
  }

  v14 = v13;
  v15 = [v10 requestingProcess];
  if (v15)
  {
    v49 = v11;
    if ([v10 accessingProcessSpecified])
    {
      if ([(TCCDServer *)self canProcess:v15 callFunction:v11 forService:v12 withAccessIdentity:0])
      {
        v16 = 0;
        v17 = @"IsTCCManager";
      }

      else if ([v12 shouldAllowUnrestrictedCheckAuditToken])
      {
        v16 = 0;
        v17 = @"ServiceAllowsUnrestrictedCheck";
      }

      else if ([v15 euid])
      {
        if ([v15 hasEntitlement:@"com.apple.private.tcc.manager.check-by-audit-token" containsServiceAllOrService:v12 options:0])
        {
          v16 = 0;
          v17 = @"IsEntitledToCheckByAuditToken";
        }

        else
        {
          v21 = [(TCCDServer *)self logHandle];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v37 = [v10 accessingProcess];
            v38 = [v37 description];
            v39 = [v15 description];
            [v12 name];
            v40 = v48 = a6;
            *buf = 138543874;
            v51 = v38;
            v52 = 2114;
            v53 = v39;
            v54 = 2114;
            v55 = v40;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Request message contains a target_token to accessing_process (%{public}@) but %{public}@ is not a TCC manager for service: %{public}@.", buf, 0x20u);

            a6 = v48;
          }

          [v14 setRight:0];
          v16 = 1;
          [v14 setReason:1];
          v17 = 0;
        }
      }

      else
      {
        v19 = [(TCCDServer *)self logHandle];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v15 description];
          *buf = 138543362;
          v51 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "WARNING: allowing root %{public}@ to check entitlments without being a TCC manager.", buf, 0xCu);
        }

        v16 = 0;
        v17 = @"IsRoot";
      }

      if ([v14 right] == 1 && (objc_msgSend(v10, "accessingProcessIsValid") & 1) == 0)
      {
        [v14 setRight:0];
        [v14 setReason:1];
      }

      if (v16)
      {
        v22 = v14;
        goto LABEL_29;
      }
    }

    else
    {
      v17 = @"IsRequestor";
    }

    v23 = [v10 accessingProcess];
    v22 = [(TCCDServer *)self _evaluateForProcess:v23 entitlementName:@"com.apple.private.tcc.allow" containsService:v12 options:1];

    if ([v22 right] != 1)
    {
      v24 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v42 = [v22 description];
        v41 = [v12 name];
        v44 = [v10 accessingProcess];
        [v44 description];
        v25 = v46 = a6;
        v26 = [v15 description];
        *buf = 138544386;
        v51 = v42;
        v52 = 2114;
        v53 = v41;
        v54 = 2114;
        v55 = v25;
        v56 = 2114;
        v57 = v26;
        v58 = 2114;
        v59 = v17;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Auth:%{public}@ to %{public}@ for %{public}@; checked by %{public}@ because: %{public}@", buf, 0x34u);

        a6 = v46;
      }
    }

LABEL_29:
    v11 = v49;
    if ([v22 right] == 1)
    {
      if ([v12 checkAllowEntitlementOnResponsibleProcess])
      {
        goto LABEL_31;
      }

      v33 = [v10 accessingProcess];
      if (v33)
      {
        v28 = v33;
        v34 = [v10 accessingProcess];
        if (([v34 hasEntitlement:@"com.apple.private.tcc.check-allow-on-responsible-process" containsServiceAllOrService:v12 options:1] & 1) == 0)
        {

LABEL_40:
          goto LABEL_41;
        }

        v35 = [v10 responsibleProcess];

        if (!v35)
        {
          goto LABEL_41;
        }

LABEL_31:
        v27 = [v10 responsibleProcess];
        v14 = [(TCCDServer *)self _evaluateForProcess:v27 entitlementName:@"com.apple.private.tcc.allow" containsService:v12 options:1];

        if ([v14 right] == 1)
        {
          goto LABEL_42;
        }

        v28 = [(TCCDServer *)self logHandle];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v14 description];
          v30 = [v12 name];
          v45 = [v10 accessingProcess];
          v47 = a6;
          v31 = [v45 description];
          v43 = [v10 responsibleProcess];
          v32 = [v43 description];
          *buf = 138544130;
          v51 = v29;
          v52 = 2114;
          v53 = v30;
          v54 = 2114;
          v55 = v31;
          v56 = 2114;
          v57 = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Auth:%{public}@ to %{public}@ because accessing process %{public}@ has the check-allow-on-responsible-process entitlement and responsible process %{public}@ has corresponding allow entitlement", buf, 0x2Au);

          a6 = v47;
        }

        v22 = v14;
        goto LABEL_40;
      }
    }

LABEL_41:
    v14 = v22;
LABEL_42:
    if (a6)
    {
      *a6 = 0;
    }

    goto LABEL_44;
  }

  [(TCCDServer *)self makeError:a6 withCode:5 infoText:0];
  [v14 setRight:0];
  [v14 setReason:1];
LABEL_44:
  v18 = v14;

LABEL_45:

  return v18;
}

- (BOOL)evaluateAccessToService:(id)a3 defaultAccessAllowed:(BOOL)a4 by:(id)a5 checkCodeRequirements:(BOOL)a6 authorizationResult:(unint64_t *)a7 authorizationReason:(unint64_t *)a8 flags:(int *)a9 subjectCodeIdentityDataResult:(id *)a10
{
  v14 = a3;
  v15 = a5;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100007530;
  v34[4] = sub_100007598;
  v35 = 0;
  if (a10)
  {
    *a10 = 0;
  }

  *a7 = 1;
  *a8 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10003C608;
  v31[3] = &unk_1000A5318;
  v32 = v14;
  v33 = v15;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003C6F4;
  v24[3] = &unk_1000A6278;
  v29 = a8;
  v30 = a9;
  v28 = a7;
  v24[4] = self;
  v16 = v32;
  v25 = v16;
  v27 = v34;
  v17 = v33;
  v26 = v17;
  v18 = db_eval("SELECT auth_value, auth_reason, csreq, strftime('%s','now') - last_modified AS age, flags FROM access WHERE service = ? AND client = ? AND client_type = ?", v31, v24);
  if (v18)
  {
    v19 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [v16 name];
      v23 = [v17 identifier];
      *buf = 67109634;
      v37 = v18;
      v38 = 2114;
      v39 = v22;
      v40 = 2114;
      v41 = v23;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Query for current DB state returns error: %d; Service: %{public}@), client: %{public}@", buf, 0x1Cu);
    }

    v20 = 0;
    *a7 = 0;
    *a8 = 1;
  }

  else
  {
    v20 = *a8 != 1;
  }

  _Block_object_dispose(v34, 8);
  return v20;
}

- (BOOL)updateAccessRecord:(id)a3 replaceOnly:(BOOL)a4 doCompositionWithChildService:(BOOL)a5 withRequestingProcess:(id)a6 function:(id)a7 accessIdentity:(id)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v14 subjectIdentity];
  v19 = [v18 identityType];

  if (!v19)
  {
    v82 = self;
    v20 = [v14 subjectIdentity];
    v22 = [v14 accessObject];
    v23 = [v22 serviceObject];
    v83 = [v23 macos_compositionChildService];

    v80 = v15;
    v81 = v16;
    if (v11 && v83)
    {
      v24 = [TCCDAccessObject alloc];
      v25 = [v14 accessObject];
      v26 = [v25 indirectObject];
      v27 = [(TCCDAccessObject *)v24 initWithService:v83 indirectObject:v26];

      v28 = [v14 copy];
      [v28 setAccessObject:v27];
      v29 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v83 name];
        v31 = [v14 accessObject];
        [v31 serviceObject];
        v33 = v32 = v17;
        *buf = 138543618;
        *&buf[4] = v30;
        v94 = 2114;
        v95 = v33;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Update Access Record: checking child service %{public}@ of %{public}@", buf, 0x16u);

        v17 = v32;
        v16 = v81;

        v15 = v80;
      }

      [(TCCDServer *)v82 updateAccessRecord:v28 replaceOnly:1 doCompositionWithChildService:1 withRequestingProcess:v15 function:v16 accessIdentity:v17];
    }

    v79 = v17;
    if (v12)
    {
      v34 = [v14 accessObject];
      v35 = [v34 serviceObject];

      v92 = 0;
      *buf = 1;
      v36 = [v35 isAccessAllowedByDefault];
      v37 = [v20 accessIdentity];
      LODWORD(v36) = [(TCCDServer *)v82 evaluateAccessToService:v35 defaultAccessAllowed:v36 by:v37 checkCodeRequirements:1 authorizationResult:buf authorizationReason:&v92 flags:0 subjectCodeIdentityDataResult:0];

      v38 = *buf;
      v16 = v81;
      if (v36)
      {
        if (v38 == 1)
        {
          v21 = 0;
          v17 = v79;
          v15 = v80;
LABEL_64:

          goto LABEL_65;
        }
      }
    }

    v39 = [v14 accessObject];
    v40 = [v39 serviceObject];

    v41 = [v14 lastModifiedDate];
    [v41 timeIntervalSince1970];
    v43 = v42;

    v44 = [v14 accessObject];
    v45 = [v44 indirectObject];

    if (v45 && [v45 type] && objc_msgSend(v45, "type") != 1 && objc_msgSend(v45, "type") != 2)
    {
      v56 = [(TCCDServer *)v82 logHandle];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_100040C18(v45, v14);
      }

      v21 = 0;
      v17 = v79;
      v15 = v80;
      goto LABEL_63;
    }

    v76 = v43;
    if ([v45 type] == 1)
    {
      v46 = [v14 accessObject];
      v47 = [v46 indirectObject];
      v48 = [v47 codeIdentity];

      v49 = 0;
    }

    else
    {
      if ([v45 type] == 2)
      {
        v49 = [v45 fileProviderDomainID];
      }

      else
      {
        v49 = 0;
      }

      v48 = 0;
    }

    v78 = v40;
    v50 = [v40 name];
    v51 = [v20 identifier];
    v52 = [v20 identifierAuthority];
    v53 = [v79 attributionPath];
    v54 = [(TCCDServer *)v82 translateAllFilesToEndpointSecurity:v50 withClient:v51 clientType:v52 requestingProcess:v80 function:v81 attributionChain:0 executablePath:v53];

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10003D198;
    v84[3] = &unk_1000A62A0;
    v77 = v54;
    v85 = v77;
    v75 = v20;
    v86 = v75;
    v55 = v14;
    v87 = v55;
    v91 = v43;
    v74 = v45;
    v88 = v74;
    v56 = v48;
    v89 = v56;
    v57 = v49;
    v90 = v57;
    v58 = db_eval("INSERT OR REPLACE INTO access   (service, client, client_type, auth_value, auth_reason, auth_version, csreq, indirect_object_identifier_type, indirect_object_identifier, indirect_object_code_identity, flags, last_modified) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v84, 0);
    v21 = v58 == 0;
    if (v58 || ([(TCCDServer *)v82 logHandle], v73 = v57, v59 = objc_claimAutoreleasedReturnValue(), v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO), v59, v57 = v73, !v60))
    {
LABEL_62:

      v15 = v80;
      v16 = v81;
      v40 = v78;
      v17 = v79;
LABEL_63:

      goto LABEL_64;
    }

    v61 = [NSDate dateWithTimeIntervalSince1970:v76];
    v72 = objc_opt_new();
    v62 = [v75 identifier];
    v63 = [v78 descriptionForAuthorizationValue:objc_msgSend(v55 reason:{"authorizationValue"), objc_msgSend(v55, "authorizationReason")}];
    [v72 appendFormat:@"Update Access Record: %@ for %@ to %@ (v%llu) at %lld (%@)", v77, v62, v63, objc_msgSend(v55, "authorizationVersion"), v76, v61];

    if (![v55 flags])
    {
LABEL_54:
      v66 = v56;
      v67 = [v75 verifierDescription];
      [v72 appendFormat:@"\n\t CodeReq: %@", v67];

      if (v45)
      {
        if (v56)
        {
          v68 = [v56 identifier];
          v69 = [v66 verifierDescription];
          [v72 appendFormat:@"\n\t Indirect %@ : %@", v68, v69];
        }

        else
        {
          v68 = [v74 description];
          [v72 appendFormat:@"\n\t Indirect : %@", v68];
        }
      }

      v70 = [(TCCDServer *)v82 logHandle];
      v57 = v73;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v72;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
      }

      v56 = v66;
      goto LABEL_62;
    }

    [v72 appendFormat:@" {"];
    if ([v55 flags])
    {
      [v72 appendFormat:@"Timeout"];
      if (([v55 flags] & 2) == 0)
      {
        v64 = 1;
        goto LABEL_38;
      }

      [v72 appendFormat:@" | "];
      v64 = 2;
    }

    else
    {
      if (([v55 flags] & 2) == 0)
      {
        v64 = 0;
        goto LABEL_38;
      }

      v64 = 1;
    }

    [v72 appendFormat:@"SB Ext"];
LABEL_38:
    if (([v55 flags] & 4) != 0)
    {
      if (v64)
      {
        [v72 appendFormat:@" | "];
      }

      [v72 appendFormat:@"Allow Standard User to Set System Service"];
      ++v64;
    }

    if (([v55 flags] & 8) != 0)
    {
      if (v64)
      {
        [v72 appendFormat:@" | "];
      }

      [v72 appendFormat:@"Next Request Should Prompt"];
      v64 = 1;
    }

    if (([v55 flags] & 0x10) != 0)
    {
      if (v64)
      {
        [v72 appendFormat:@" | "];
      }

      v65 = @"Has Prompted For Allow";
    }

    else
    {
      if (v64)
      {
LABEL_53:
        [v72 appendFormat:@"}"];
        goto LABEL_54;
      }

      v65 = @"Default";
    }

    [v72 appendFormat:v65];
    goto LABEL_53;
  }

  v20 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100040B5C(v14);
  }

  v21 = 0;
LABEL_65:

  return v21;
}

- (BOOL)evaluateComposedAuthorizationToService:(id)a3 andAccessSubject:(id)a4 withRelation:(int64_t)a5 authorizationResult:(unint64_t *)a6 authorizationReason:(unint64_t *)a7 subjectCodeIdentityDataResult:(id *)a8
{
  v14 = a3;
  v15 = a4;
  if (a5)
  {
    v16 = [v14 macos_compositionChildService];
    v17 = "child";
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [v14 macos_compositionParentService];
    v17 = "parent";
    if (v16)
    {
LABEL_3:
      v36 = a7;
      v37 = v15;
      v18 = -[TCCDServer evaluateAccessToService:defaultAccessAllowed:by:checkCodeRequirements:authorizationResult:authorizationReason:flags:subjectCodeIdentityDataResult:](self, "evaluateAccessToService:defaultAccessAllowed:by:checkCodeRequirements:authorizationResult:authorizationReason:flags:subjectCodeIdentityDataResult:", v16, [v16 isAccessAllowedByDefault], v15, 1, a6, a7, 0, a8);
      v19 = [(TCCDServer *)self logHandle];
      v20 = v19;
      if (v18)
      {
        if (*a6 == 1)
        {
          v21 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          v21 = OS_LOG_TYPE_INFO;
        }

        if (os_log_type_enabled(v19, v21))
        {
          v35 = [v14 name];
          v34 = [v16 name];
          [v16 descriptionForAuthorizationValue:*a6 reason:*v36];
          *buf = 138544130;
          v40 = v35;
          v41 = 2082;
          v42 = v17;
          v43 = 2114;
          v44 = v34;
          v46 = v45 = 2114;
          v22 = v46;
          _os_log_impl(&_mh_execute_header, v20, v21, "Evaluated composed authorization from %{public}@ to %{public}s service %{public}@: Auth:%{public}@", buf, 0x2Au);
        }

        v23 = 1;
        if (!a5)
        {
          v15 = v37;
          if (*a6 == 1)
          {
            v24 = [v16 macos_compositionParentService];

            if (v24)
            {
              v23 = [(TCCDServer *)self evaluateComposedAuthorizationToService:v16 andAccessSubject:v37 withRelation:0 authorizationResult:a6 authorizationReason:v36 subjectCodeIdentityDataResult:a8];
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v32 = [v14 name];
          v33 = [v16 name];
          *buf = 138543874;
          v40 = v32;
          v41 = 2082;
          v42 = v17;
          v43 = 2114;
          v44 = v33;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to evaluate composed authorization from %{public}@ to %{public}s service %{public}@", buf, 0x20u);
        }

        v23 = 0;
      }

      v15 = v37;
      goto LABEL_21;
    }
  }

  v25 = a7;
  v38 = 0;
  v26 = [v14 name];
  v27 = [NSString stringWithFormat:@"Service: %@ has an invalid %s composed service.", v26, v17];
  [(TCCDServer *)self makeError:&v38 withCode:2 infoText:v27];
  v28 = v38;

  v29 = objc_opt_new();
  [(TCCDServer *)self buildErrorString:v29 forError:v28 contextString:0];
  v30 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_100040CC4();
  }

  *a6 = 0;
  *v25 = 1;

  v23 = 0;
LABEL_21:

  return v23;
}

- (unint64_t)numberOfRecordsForService:(id)a3 withAuthorizationValue:(unint64_t)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [v6 name];
  if (a4 == 1)
  {
    [NSString stringWithFormat:@"SELECT COUNT(*) FROM access WHERE service = '%@'", v7];
  }

  else
  {
    [NSString stringWithFormat:@"SELECT COUNT(*) FROM access WHERE service = '%@' AND auth_value = %lld", v7, a4];
  }
  v8 = ;

  if (v8)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003DF54;
    v12[3] = &unk_1000A52A8;
    v12[4] = &v13;
    if (db_eval([v8 UTF8String], 0, v12))
    {
      v9 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100040D44();
      }

      _db_error(0);
    }
  }

  v10 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)accessRecordFromStep:(sqlite3_stmt *)a3
{
  v5 = [[NSString alloc] initWithUTF8String:{sqlite3_column_text(a3, 0)}];
  v6 = [[NSString alloc] initWithUTF8String:{sqlite3_column_text(a3, 1)}];
  v7 = sqlite3_column_int(a3, 2);
  v31 = sqlite3_column_int64(a3, 3);
  v30 = sqlite3_column_int64(a3, 4);
  v29 = sqlite3_column_int64(a3, 5);
  if (sqlite3_column_type(a3, 6) == 5)
  {
    v8 = 0;
  }

  else
  {
    v9 = sqlite3_column_blob(a3, 6);
    v8 = [[NSData alloc] initWithBytes:v9 length:{sqlite3_column_bytes(a3, 6)}];
  }

  v10 = sqlite3_column_int(a3, 7);
  v28 = sqlite3_column_int(a3, 11);
  HIDWORD(v27) = sqlite3_column_int(a3, 12);
  v11 = [[TCCDCodeIdentity alloc] initWithIdentifier:v6 authority:v7 displayNamePolicyIdentifier:v10 verifierType:v8 != 0 verifierData:v8];
  v12 = sqlite3_column_int(a3, 8);
  v13 = sqlite3_column_text(a3, 9);
  if (v13)
  {
    v14 = [[NSString alloc] initWithUTF8String:v13];
  }

  else
  {
    v15 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100040DC4();
    }

    v14 = @"UNUSED";
  }

  if ([(__CFString *)v14 isEqualToString:@"UNUSED"])
  {
    v16 = +[TCCDAccessIndirectObject unusedIndirectObject];
LABEL_13:
    v17 = v16;
    goto LABEL_18;
  }

  if (v12 == 3)
  {
    v16 = [[TCCDAccessFileProviderDomainIndirectObject alloc] initWithFileProviderDomainID:v14];
    goto LABEL_13;
  }

  if (sqlite3_column_type(a3, 10) == 5)
  {
    v18 = 0;
  }

  else
  {
    v19 = sqlite3_column_blob(a3, 10);
    v18 = [[NSData alloc] initWithBytes:v19 length:{sqlite3_column_bytes(a3, 10)}];
  }

  v20 = [[TCCDCodeIdentity alloc] initWithIdentifier:v14 authority:v12 displayNamePolicyIdentifier:0 verifierType:v18 != 0 verifierData:v18];
  v17 = [[TCCDAccessCodeIndirectObject alloc] initWithCodeIdentity:v20];

LABEL_18:
  v21 = [(TCCDServer *)self platform];
  v22 = [v21 serviceByName:v5];

  if (v22)
  {
    v23 = [[TCCDAccessObject alloc] initWithService:v22 indirectObject:v17];
    v24 = [[NSDate alloc] initWithTimeIntervalSince1970:SHIDWORD(v27)];
    LOBYTE(v27) = 0;
    v25 = [[TCCDAccessRecord alloc] initWithSubject:v11 object:v23 authorizationValue:v31 authorizationReason:v30 authorizationVersion:v29 lastModified:v24 flags:v28 replaceStoredCodeRequirement:v27];
  }

  else
  {
    v23 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
    {
      sub_100040E40();
    }

    v25 = 0;
  }

  return v25;
}

- (id)fetchAllAccessRecords
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10003E494;
  v10 = &unk_1000A5318;
  v11 = self;
  v12 = objc_alloc_init(NSMutableArray);
  v3 = v12;
  if (db_eval("SELECT * FROM access", 0, &v7))
  {
    v4 = [(TCCDServer *)self logHandle:v7];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100040EB0();
    }
  }

  v5 = [v3 copy];

  return v5;
}

- (id)descriptionDictionariesForAllAccessRecords
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(TCCDServer *)self fetchAllAccessRecords];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003E5D4;
  v8[3] = &unk_1000A62C8;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)fetchAllOverriddenServiceNames
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E734;
  v7[3] = &unk_1000A5188;
  v8 = objc_alloc_init(NSMutableArray);
  v3 = v8;
  if (db_eval("SELECT service FROM access_overrides", 0, v7))
  {
    v4 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100040F20();
    }

    _db_error(0);
  }

  v5 = [v3 copy];

  return v5;
}

- (id)fetchAllPolicies
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E8C8;
  v7[3] = &unk_1000A5188;
  v8 = objc_alloc_init(NSMutableArray);
  v3 = v8;
  if (db_eval("SELECT * FROM policies", 0, v7))
  {
    v4 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100040F9C();
    }

    _db_error(0);
  }

  v5 = [v3 copy];

  return v5;
}

- (id)fetchAllActivePolicies
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EB58;
  v7[3] = &unk_1000A5188;
  v8 = objc_alloc_init(NSMutableArray);
  v3 = v8;
  if (db_eval("SELECT * FROM active_policy", 0, v7))
  {
    v4 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100041018();
    }

    _db_error(0);
  }

  v5 = [v3 copy];

  return v5;
}

- (id)stateDumpDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithInt:getpid()];
  [v3 setObject:v4 forKeyedSubscript:@"PID"];

  v5 = [NSNumber numberWithUnsignedInt:geteuid()];
  [v3 setObject:v5 forKeyedSubscript:@"UID"];

  database_error_code = db_get_database_error_code();
  v7 = [NSNumber numberWithInt:database_error_code];
  [v3 setObject:v7 forKeyedSubscript:@"STATUS"];

  if (!database_error_code)
  {
    v8 = [NSNumber numberWithInt:db_get_current_version()];
    [v3 setObject:v8 forKeyedSubscript:@"VERS"];

    filename = db_get_filename();
    if (filename)
    {
      v10 = db_get_file_metadata(filename);
      [v3 setObject:v10 forKeyedSubscript:@"DB_FILE_METADATA"];
    }
  }

  v11 = [(TCCDServer *)self descriptionDictionariesForAllAccessRecords];
  [v3 setObject:v11 forKeyedSubscript:@"RECORDS"];

  v12 = [(TCCDServer *)self fetchAllOverriddenServiceNames];
  [v3 setObject:v12 forKeyedSubscript:@"OVERRIDES"];

  v13 = [(TCCDServer *)self fetchAllPolicies];
  [v3 setObject:v13 forKeyedSubscript:@"POLICIES"];

  v14 = [(TCCDServer *)self fetchAllActivePolicies];
  [v3 setObject:v14 forKeyedSubscript:@"ACTIVE_POLICIES"];

  v15 = [v3 copy];

  return v15;
}

- (void)createStateHandler
{
  v2 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();
}

- (BOOL)updateAuthorizationRecordFromContext:(id)a3 forResult:(id)a4 syncedUpdate:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 service];
  v11 = [v9 databaseFlags];
  v12 = [v9 authorizationValue];
  v13 = [v10 name];
  if (![v13 isEqualToString:@"kTCCServicePhotos"])
  {
LABEL_8:

    goto LABEL_9;
  }

  v14 = [v9 promptType];

  if (v14 == 2)
  {
    if ([v9 authorizationValue] == 4)
    {
      v15 = +[TCCDPlatform currentPlatform];
      v16 = [v15 serviceByName:@"kTCCServicePhotosAdd"];

      v17 = 2;
      v12 = 2;
      v10 = v16;
      goto LABEL_10;
    }

    if (![v9 authorizationValue])
    {
      v13 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000411B4(v8);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v17 = 1;
LABEL_10:
  v18 = [v8 service];
  v19 = [v18 name];

  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10003F8E8;
  v86[3] = &unk_1000A62F0;
  v20 = v10;
  v87 = v20;
  v21 = v19;
  v88 = v21;
  v22 = v8;
  v89 = v22;
  v92 = v12;
  v23 = v9;
  v93 = v11;
  v90 = v23;
  v91 = 0;
  v24 = db_eval("INSERT OR REPLACE INTO access   (service, client, client_type, auth_value, auth_reason, auth_version, csreq, policy_id, indirect_object_identifier, flags, pid, pid_version, boot_uuid, last_reminded) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v86, 0);
  if (v24)
  {
    goto LABEL_43;
  }

  v76 = v21;
  v25 = [v22 service];
  v26 = [v25 supportsStagedPrompting];

  v74 = a5;
  v75 = v17;
  v73 = v11;
  v77 = v20;
  v78 = v12;
  if (!v26)
  {
LABEL_29:
    v27 = 0;
    goto LABEL_31;
  }

  if ([v23 previousAuthorization] == 1)
  {
    v27 = 0;
  }

  else
  {
    v28 = [v23 previousAuthorization];
    v27 = v28 != [v23 authorizationValue];
  }

  v29 = [v22 service];
  v30 = [v29 name];
  if ([v30 isEqualToString:@"kTCCServiceCalendar"])
  {
  }

  else
  {
    [v22 service];
    v32 = v31 = self;
    v33 = [v32 name];
    v34 = [v33 isEqualToString:@"kTCCServiceExternalCameraMedia"];

    self = v31;
    if (!v34)
    {
      goto LABEL_20;
    }
  }

  if ([v23 previousAuthorization] == 4)
  {
    v27 &= [v23 authorizationValue] != 2;
  }

LABEL_20:
  v35 = [v22 service];
  v36 = [v35 name];
  if ([v36 isEqualToString:@"kTCCServicePhotos"])
  {
    v37 = [v23 promptType];

    if (v37 != 2)
    {
      goto LABEL_31;
    }

    if ([v23 authorizationValue] == 3 || objc_msgSend(v23, "authorizationValue") == 2)
    {
      v38 = [(TCCDServer *)self platform];
      v39 = [v38 serviceByName:@"kTCCServicePhotosAdd"];

      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_10003FC0C;
      v83[3] = &unk_1000A5318;
      v40 = v39;
      v84 = v40;
      v41 = v22;
      v85 = v41;
      v42 = objc_retainBlock(v83);
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_10003FD28;
      v79[3] = &unk_1000A5E68;
      v79[4] = self;
      v80 = v40;
      v43 = v41;
      v81 = v43;
      v82 = v23;
      v44 = v40;
      if (db_eval("DELETE FROM access WHERE service = ? AND client = ? AND client_type = ?", v42, v79))
      {
        v45 = [(TCCDServer *)self logHandle];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100041258(v43);
        }
      }
    }

    else if ([v23 authorizationValue] == 4)
    {
      [v23 setAuthorizationValue:0];
    }

    goto LABEL_29;
  }

LABEL_31:
  v46 = [v22 service];
  [(TCCDServer *)self scheduleAccessEntryExpiryCheckForService:v46];

  access_changed();
  v47 = [v22 subjectIdentity];
  v48 = [v47 identifier];
  v49 = [v22 subjectIdentity];
  [v49 client_type];
  [v23 authorizationReason];
  v50 = [v22 attributionChain];
  LOBYTE(v72) = v27;
  v51 = v78;
  v20 = v77;
  [TCCDServer publishAccessChangedEvent:"publishAccessChangedEvent:forService:client:clientType:authValue:authReason:andKillClient:attributionChain:" forService:v75 client:v72 clientType:v50 authValue:? authReason:? andKillClient:? attributionChain:?];

  v52 = self;
  v53 = [(TCCDServer *)self platform];
  v54 = [v53 syncController];

  if (v54 && [v54 isSyncingEnabled] && objc_msgSend(v77, "accessActionStatusForAuthorizationValue:", v78))
  {
    v55 = [v23 authorizationVersion];
    v56 = [v77 name];
    v57 = [v54 peerSupportsService:v56 authVersion:v55];

    if ((v57 & 1) == 0)
    {
      v58 = [v22 service];
      v51 = [v58 translateAuth:v78 versionUpgrade:0];

      v59 = [(TCCDServer *)v52 logHandle];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [v22 service];
        v61 = [v60 name];
        *buf = 138412546;
        v95 = v61;
        v96 = 2048;
        v97 = v51;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "downgrading %@ add auth to %lu", buf, 0x16u);
      }

      v55 = 1;
    }

    v62 = [v77 accessActionStatusForAuthorizationValue:v51];
    v63 = [v22 functionName];
    v64 = [v63 isEqualToString:@"TCCAccessSetWithPrompt"];

    v65 = v55;
    if (v64)
    {
      v62 = [v77 convertAccessUpdateStatustToMainSet:v62];
    }

    v66 = [v77 name];
    v67 = [v22 subjectIdentity];
    v68 = [v67 identifier];
    v69 = [v22 subjectIdentity];
    [v54 syncAccessUpdateForServiceIdentifier:v66 clientIdentifier:v68 clientType:objc_msgSend(v69 accessStatus:"client_type") authorizationVersion:v62 flags:v65 updateType:{v73, 1}];

    if (v74)
    {
      *v74 = 1;
    }
  }

  v21 = v76;
  v24 = 0;
LABEL_43:
  v70 = v24 == 0;

  return v70;
}

- (BOOL)sendRecordMetricsForService:(const char *)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(TCCDServer *)self platform];
    v6 = [NSString stringWithUTF8String:v3];
    v7 = [v5 serviceByName:v6];

    v8 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "[TCCDServer sendRecordMetricsForService:]";
      *&buf[12] = 2082;
      *&buf[14] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}s: invoked for %{public}s;", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = sub_100007530;
    v27 = sub_100007598;
    v28 = objc_alloc_init(NSMutableArray);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100040154;
    v23[3] = &unk_1000A52A8;
    v23[4] = buf;
    v17 = objc_retainBlock(v23);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000403F0;
    v22[3] = &unk_1000A59D8;
    v22[4] = v3;
    v9 = db_eval("SELECT client, client_type, auth_value, csreq, last_modified, strftime('%s','now') - last_modified AS age, indirect_object_identifier, indirect_object_identifier_type, indirect_object_code_identity, auth_reason, auth_version, flags, pid, pid_version, boot_uuid FROM access WHERE service = ?", v22, v17);
    LOBYTE(v3) = v9 == 0;
    if (!v9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = *(*&buf[8] + 40);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v11)
      {
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [v7 populateRecordMetricWithFields:*(*(&v18 + 1) + 8 * i)];
            if (v14)
            {
              v15 = [(TCCDServer *)self platform];
              [v15 sendAnalyticsWithEventName:@"com.apple.TCC.authorization_audit" fields:v14];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v11);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  return v3;
}

@end