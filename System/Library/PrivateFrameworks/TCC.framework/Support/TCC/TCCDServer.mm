@interface TCCDServer
+ (id)newErrorWithCode:(int64_t)code format:(id)format arguments:(char *)arguments;
- (BOOL)canProcess:(id)process callFunction:(id)function forService:(id)service withAccessIdentity:(id)identity;
- (BOOL)evaluateAccessToService:(id)service defaultAccessAllowed:(BOOL)allowed by:(id)by checkCodeRequirements:(BOOL)requirements authorizationResult:(unint64_t *)result authorizationReason:(unint64_t *)reason flags:(int *)flags subjectCodeIdentityDataResult:(id *)self0;
- (BOOL)evaluateComposedAuthorizationToService:(id)service andAccessSubject:(id)subject withRelation:(int64_t)relation authorizationResult:(unint64_t *)result authorizationReason:(unint64_t *)reason subjectCodeIdentityDataResult:(id *)dataResult;
- (BOOL)generateBacktraceOnPrompt;
- (BOOL)internalPreferenceBoolValueForName:(id)name;
- (BOOL)internalPreferenceBoolValueForName:(id)name present:(BOOL *)present;
- (BOOL)isAccessEntryWithAge:(int)age authorizationValue:(unint64_t)value expiredForService:(id)service;
- (BOOL)isProcessServiceCompositionManager:(id)manager;
- (BOOL)sendRecordMetricsForService:(const char *)service;
- (BOOL)targetAuditToken:(id *)token fromMessage:(id)message error:(id *)error;
- (BOOL)updateAccessRecord:(id)record replaceOnly:(BOOL)only doCompositionWithChildService:(BOOL)service withRequestingProcess:(id)process function:(id)function accessIdentity:(id)identity;
- (BOOL)updateAuthorizationRecordFromContext:(id)context forResult:(id)result syncedUpdate:(BOOL *)update;
- (NSString)stateDirectory;
- (NSString)userHomeDirectory;
- (TCCDServer)init;
- (id)_descriptionForXPCDictionary:(id)dictionary depth:(int)depth;
- (id)_descriptionForXPCObject:(id)object depth:(int)depth;
- (id)_evaluateForProcess:(id)process entitlementName:(id)name containsService:(id)service options:(unint64_t)options;
- (id)_indentForDepth:(int)depth;
- (id)accessRecordFromStep:(sqlite3_stmt *)step;
- (id)descriptionDictionariesForAllAccessRecords;
- (id)evaluateUserIndependentEntitlementsForAccessByAttributionChain:(id)chain forFunction:(id)function toService:(id)service error:(id *)error;
- (id)fetchAllAccessRecords;
- (id)fetchAllActivePolicies;
- (id)fetchAllOverriddenServiceNames;
- (id)fetchAllPolicies;
- (id)recordForAccessoryIdentityFromMessage:(id)message error:(id *)error;
- (id)recordForCodeIdentityFromMessage:(id)message accessIdentity:(id *)identity indirectObjectIdentity:(id *)objectIdentity error:(id *)error;
- (id)recordFromMessage:(id)message accessIdentity:(id *)identity indirectObjectIdentity:(id *)objectIdentity error:(id *)error;
- (id)serviceFromMessage:(id)message error:(id *)error;
- (id)setupTemporaryDirectoryForName:(int)name;
- (id)stateDumpDictionary;
- (id)stringFromErrorCode:(int64_t)code;
- (unint64_t)numberOfRecordsForService:(id)service withAuthorizationValue:(unint64_t)value;
- (void)buildErrorString:(id)string forError:(id)error contextString:(id)contextString;
- (void)createStateHandler;
- (void)makeError:(id *)error withCode:(int64_t)code infoText:(id)text;
- (void)publishAccessChangedEvent:(unint64_t)event forService:(id)service client:(id)client clientType:(int)type authValue:(unint64_t)value authReason:(unint64_t)reason andKillClient:(BOOL)killClient attributionChain:(id)self0;
- (void)purgeAllExpiredAccessEntries;
- (void)purgeExpiredAccessEntriesForService:(id)service;
- (void)scheduleAccessEntryExpiryCheckForService:(id)service;
- (void)sendAnalyticsForEntitlement:(id)entitlement withProcess:(id)process service:(id)service function:(id)function;
- (void)sendAnalyticsIfMigrationPluginForProcess:(id)process withService:(id)service API:(id)i;
- (void)setPlatform:(id)platform;
- (void)setupTemporaryDirectories;
- (void)updateClient:(id)client client:(const char *)a4 clientType:(int)type;
@end

@implementation TCCDServer

+ (id)newErrorWithCode:(int64_t)code format:(id)format arguments:(char *)arguments
{
  if (format)
  {
    formatCopy = format;
    v8 = [[NSString alloc] initWithFormat:formatCopy locale:0 arguments:arguments];

    v12 = NSLocalizedDescriptionKey;
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSError errorWithDomain:@"kTCCErrorDomain" code:code userInfo:v9];

  return v10;
}

- (void)updateClient:(id)client client:(const char *)a4 clientType:(int)type
{
  v64 = 0;
  clientCopy = client;
  isRevocable = [clientCopy isRevocable];
  if (!type && (isRevocable & 1) == 0)
  {
    v45 = [NSString stringWithUTF8String:a4];
    if (v45)
    {
      v44 = a4;
      if (&_SBSProcessIDForDisplayIdentifier && SBSProcessIDForDisplayIdentifier())
      {
        name = [clientCopy name];
        v9 = [NSString stringWithFormat:@"Access to service %@ changed.", name];

        [v9 UTF8String];
        v10 = terminate_with_reason();
        logHandle = [(TCCDServer *)self logHandle];
        v12 = logHandle;
        if (v10)
        {
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            v13 = *__error();
            v14 = __error();
            v15 = strerror(*v14);
            name2 = [clientCopy name];
            *buf = 136447234;
            v68 = v44;
            v69 = 1024;
            *v70 = v64;
            *&v70[4] = 1024;
            *&v70[6] = v13;
            *&v70[10] = 2082;
            *&v70[12] = v15;
            LOWORD(v71[0]) = 2114;
            *(v71 + 2) = name2;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to terminate_with_reason() %{public}s[%d]: %d (%{public}s) for service %{public}@", buf, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [clientCopy name];
          *buf = 136446722;
          v68 = a4;
          v69 = 1024;
          *v70 = v64;
          *&v70[4] = 2114;
          *&v70[6] = name3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Terminating %{public}s[%d] because access to the %{public}@ service changed.", buf, 0x1Cu);
        }
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v18 = [LSApplicationProxy applicationProxyForIdentifier:v45];
      plugInKitPlugins = [v18 plugInKitPlugins];

      v20 = [plugInKitPlugins countByEnumeratingWithState:&v60 objects:v66 count:16];
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
              objc_enumerationMutation(plugInKitPlugins);
            }

            v24 = *(*(&v60 + 1) + 8 * i);
            bundleIdentifier = [v24 bundleIdentifier];
            [bundleIdentifier UTF8String];

            bundleVersion = [v24 bundleVersion];
            [bundleVersion UTF8String];

            v27 = dispatch_get_global_queue(0, 0);
            v52 = _NSConcreteStackBlock;
            v53 = 3221225472;
            v54 = sub_100038C74;
            v55 = &unk_1000A61B8;
            selfCopy = self;
            v57 = v24;
            v58 = v45;
            v59 = clientCopy;
            launch_remove_external_service();
          }

          v21 = [plugInKitPlugins countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v21);
      }

      name4 = [clientCopy name];
      v29 = [NSString stringWithFormat:@"%@ authorization changed for assumed identity %@", name4, v45];

      assumedIdentityMonitor = [(TCCDServer *)self assumedIdentityMonitor];
      v31 = [assumedIdentityMonitor monitoredProcessesAssumingIdentityWithIdentifier:v45];

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
            assumedIdentityMonitor2 = v39;
            if (v38)
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                name5 = [clientCopy name];
                v42 = *__error();
                *buf = 138544130;
                v68 = v37;
                v69 = 2082;
                *v70 = v44;
                *&v70[8] = 2114;
                *&v70[10] = name5;
                *&v70[18] = 1024;
                v71[0] = v42;
                _os_log_error_impl(&_mh_execute_header, assumedIdentityMonitor2, OS_LOG_TYPE_ERROR, "Unable to terminate_with_reason() %{public}@ assuming identity %{public}s for %{public}@: %{darwin.errno}d", buf, 0x26u);
              }
            }

            else
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                name6 = [clientCopy name];
                *buf = 138543874;
                v68 = v37;
                v69 = 2082;
                *v70 = v44;
                *&v70[8] = 2114;
                *&v70[10] = name6;
                _os_log_impl(&_mh_execute_header, assumedIdentityMonitor2, OS_LOG_TYPE_DEFAULT, "Terminated %{public}@ assuming identity %{public}s because the assumed identity's %{public}@ authorization changed.", buf, 0x20u);
              }

              assumedIdentityMonitor2 = [(TCCDServer *)self assumedIdentityMonitor];
              [assumedIdentityMonitor2 stopMonitoringProcess:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v48 objects:v65 count:16];
        }

        while (v34);
      }
    }
  }
}

- (void)publishAccessChangedEvent:(unint64_t)event forService:(id)service client:(id)client clientType:(int)type authValue:(unint64_t)value authReason:(unint64_t)reason andKillClient:(BOOL)killClient attributionChain:(id)self0
{
  v11 = *&type;
  serviceCopy = service;
  clientCopy = client;
  logHandle = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    *name = 136316674;
    v27 = "[TCCDServer publishAccessChangedEvent:forService:client:clientType:authValue:authReason:andKillClient:attributionChain:]";
    v28 = 2048;
    eventCopy = event;
    v30 = 2112;
    v31 = serviceCopy;
    v32 = 2112;
    v33 = clientCopy;
    v34 = 1024;
    v35 = v11;
    v36 = 2048;
    valueCopy = value;
    v38 = 1024;
    killClientCopy = killClient;
    _os_log_debug_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "%s: event_type=%lld, service=%@, client=%@, client_type=%d, auth_value=%lld, kill_client=%d", name, 0x40u);
  }

  if (serviceCopy)
  {
    if (killClient)
    {
      -[TCCDServer updateClient:client:clientType:](self, "updateClient:client:clientType:", serviceCopy, [clientCopy UTF8String], v11);
    }

    if ((event & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      name = [serviceCopy name];
      v19 = tcc_service_singleton_for_CF_name();
      tcc_authorization_changed_for_service_notification_name();

      LODWORD(v19) = notify_post(name);
      logHandle2 = [(TCCDServer *)self logHandle];
      v21 = logHandle2;
      if (v19)
      {
        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
        {
          sub_100040688();
        }
      }

      else if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315138;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Posted notification: %s", &v24, 0xCu);
      }
    }

    logHandle3 = [[TCCDEvent alloc] initWithEventType:event service:serviceCopy subjectIdentifierType:v11 subjectIdentifier:clientCopy authValue:value];
    eventPublisher = [(TCCDServer *)self eventPublisher];
    [eventPublisher publish:logHandle3];
  }

  else
  {
    logHandle3 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(&logHandle3->super, OS_LOG_TYPE_ERROR))
    {
      sub_100040704(clientCopy);
    }
  }
}

- (id)setupTemporaryDirectoryForName:(int)name
{
  bzero(v8, 0x400uLL);
  if (!confstr(name, v8, 0x400uLL))
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
  logHandle = [p_super logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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
    userHomeDirectory = [(TCCDServer *)self userHomeDirectory];
    platform = [(TCCDServer *)self platform];
    homeRelativePathToStateDirectory = [platform homeRelativePathToStateDirectory];
    v7 = [userHomeDirectory stringByAppendingPathComponent:homeRelativePathToStateDirectory];
    v8 = self->_stateDirectory;
    self->_stateDirectory = v7;

    stateDirectory = self->_stateDirectory;
  }

  return stateDirectory;
}

- (BOOL)internalPreferenceBoolValueForName:(id)name
{
  nameCopy = name;
  if ([(TCCDServer *)self allowsInternalSecurityPolicies]&& (v5 = CFPreferencesCopyValue(nameCopy, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) != 0)
  {
    v6 = v5;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      v8 = CFBooleanGetValue(v6) != 0;
      logHandle = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
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

- (BOOL)internalPreferenceBoolValueForName:(id)name present:(BOOL *)present
{
  nameCopy = name;
  *present = 0;
  if ([(TCCDServer *)self allowsInternalSecurityPolicies]&& (v7 = CFPreferencesCopyValue(nameCopy, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) != 0)
  {
    v8 = v7;
    *present = 1;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      v10 = CFBooleanGetValue(v8) != 0;
      logHandle = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
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

- (id)stringFromErrorCode:(int64_t)code
{
  if (code > 9)
  {
    return @"Unknown Error Code";
  }

  else
  {
    return *(&off_1000A6310 + code);
  }
}

- (void)setPlatform:(id)platform
{
  objc_storeStrong(&self->_platform, platform);
  platformCopy = platform;
  [(TCCDPlatform *)self->_platform setServer:self];
}

- (void)makeError:(id *)error withCode:(int64_t)code infoText:(id)text
{
  textCopy = text;
  v8 = textCopy;
  if (error)
  {
    if (textCopy)
    {
      v10 = NSLocalizedDescriptionKey;
      v11 = textCopy;
      v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    }

    else
    {
      v9 = 0;
    }

    *error = [NSError errorWithDomain:@"com.apple.tccd" code:code userInfo:v9];
  }
}

- (void)buildErrorString:(id)string forError:(id)error contextString:(id)contextString
{
  stringCopy = string;
  errorCopy = error;
  contextStringCopy = contextString;
  v10 = contextStringCopy;
  if (contextStringCopy)
  {
    [stringCopy appendFormat:@"%@, ", contextStringCopy];
  }

  if (errorCopy)
  {
    localizedDescription = [errorCopy localizedDescription];
    [stringCopy appendFormat:@"%@", localizedDescription];

    v12 = -[TCCDServer stringFromErrorCode:](self, "stringFromErrorCode:", [errorCopy code]);
    [stringCopy appendFormat:@"(%@) ", v12];
  }
}

- (id)_indentForDepth:(int)depth
{
  v4 = objc_opt_new();
  if (depth >= 1)
  {
    do
    {
      [v4 appendString:@"\t"];
      --depth;
    }

    while (depth);
  }

  v5 = [v4 copy];

  return v5;
}

- (id)_descriptionForXPCDictionary:(id)dictionary depth:(int)depth
{
  v4 = *&depth;
  dictionaryCopy = dictionary;
  v7 = objc_opt_new();
  [v7 appendString:@"{\n"];
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100039B50;
  applier[3] = &unk_1000A61E0;
  v13 = v7;
  selfCopy = self;
  v15 = v4;
  v8 = v7;
  xpc_dictionary_apply(dictionaryCopy, applier);

  v9 = [(TCCDServer *)self _indentForDepth:v4];
  [v8 appendString:v9];

  [v8 appendString:@"}"];
  v10 = [v8 copy];

  return v10;
}

- (id)_descriptionForXPCObject:(id)object depth:(int)depth
{
  v4 = *&depth;
  objectCopy = object;
  v7 = objc_opt_new();
  if (xpc_get_type(objectCopy) == &_xpc_type_string)
  {
    [v7 appendFormat:@"%s", xpc_string_get_string_ptr(objectCopy), v18];
    goto LABEL_16;
  }

  if (xpc_get_type(objectCopy) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(objectCopy);
    v10 = "false";
    if (value)
    {
      v10 = "true";
    }

    [v7 appendFormat:@"%s", v10, v18];
  }

  else
  {
    if (xpc_get_type(objectCopy) == &_xpc_type_uint64)
    {
      v11 = xpc_uint64_get_value(objectCopy);
      [v7 appendFormat:@"%llu (0x%llx)", v11, xpc_uint64_get_value(objectCopy)];
      goto LABEL_16;
    }

    if (xpc_get_type(objectCopy) == &_xpc_type_int64)
    {
      v17 = xpc_int64_get_value(objectCopy);
      v18 = xpc_int64_get_value(objectCopy);
      v12 = @"%lld (0x%llx)";
LABEL_15:
      [v7 appendFormat:v12, v17, v18];
      goto LABEL_16;
    }

    if (xpc_get_type(objectCopy) == &_xpc_type_dictionary)
    {
      v15 = [(TCCDServer *)self _descriptionForXPCDictionary:objectCopy depth:v4];
      [v7 appendFormat:@"%@", v15];
    }

    else
    {
      if (xpc_get_type(objectCopy) != &_xpc_type_array)
      {
        if (xpc_get_type(objectCopy) != &_xpc_type_null)
        {
          v8 = xpc_copy_description(objectCopy);
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
      xpc_array_apply(objectCopy, applier);
    }
  }

LABEL_16:
  v13 = [v7 copy];

  return v13;
}

- (BOOL)targetAuditToken:(id *)token fromMessage:(id)message error:(id *)error
{
  length = 0;
  data = xpc_dictionary_get_data(message, "target_token", &length);
  if (data)
  {
    if (length == 32)
    {
      v9 = data[1];
      *token->var0 = *data;
      *&token->var0[4] = v9;
      return 1;
    }

    v11 = @"invalid size for target audit token";
    selfCopy2 = self;
    errorCopy2 = error;
    v14 = 4;
  }

  else
  {
    v11 = @"missing target audit token";
    selfCopy2 = self;
    errorCopy2 = error;
    v14 = 3;
  }

  [(TCCDServer *)selfCopy2 makeError:errorCopy2 withCode:v14 infoText:v11];
  return 0;
}

- (void)sendAnalyticsIfMigrationPluginForProcess:(id)process withService:(id)service API:(id)i
{
  processCopy = process;
  serviceCopy = service;
  iCopy = i;
  if ([(TCCDServer *)self allowsInternalSecurityPolicies])
  {
    if ([processCopy isPlatformBinary])
    {
      binaryPath = [processCopy binaryPath];
      v11 = [binaryPath hasSuffix:@"com.apple.migrationpluginwrapper"];

      if (v11)
      {
        v12 = DMCopyMigrationPhaseDescription();
        if ([v12 hasPrefix:@"Running plugin "])
        {
          v13 = [v12 substringFromIndex:{objc_msgSend(@"Running plugin ", "length")}];
          platform = [(TCCDServer *)self platform];
          [platform sendAnalyticsForPlugin:v13 service:serviceCopy API:iCopy];
        }
      }
    }
  }
}

- (void)sendAnalyticsForEntitlement:(id)entitlement withProcess:(id)process service:(id)service function:(id)function
{
  functionCopy = function;
  serviceCopy = service;
  processCopy = process;
  entitlementCopy = entitlement;
  platform = [(TCCDServer *)self platform];
  identifier = [processCopy identifier];

  [platform sendAnalyticsForEntitlement:entitlementCopy withIdentifier:identifier service:serviceCopy function:functionCopy];
}

- (BOOL)canProcess:(id)process callFunction:(id)function forService:(id)service withAccessIdentity:(id)identity
{
  processCopy = process;
  functionCopy = function;
  serviceCopy = service;
  identityCopy = identity;
  if (!processCopy)
  {
    v15 = 0;
    goto LABEL_22;
  }

  if (![processCopy BOOLValueForEntitlement:@"com.apple.private.tcc.manager"])
  {
    v15 = 0;
    if (!functionCopy || !serviceCopy)
    {
      goto LABEL_22;
    }

    v16 = functionCopy;
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
            if ([processCopy hasEntitlement:v19 containsServiceAllOrService:serviceCopy options:1])
            {
LABEL_21:

              goto LABEL_22;
            }

            logHandle = [(TCCDServer *)self logHandle];
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138544130;
              v24 = processCopy;
              v25 = 2114;
              v26 = v16;
              v27 = 2114;
              v28 = serviceCopy;
              v29 = 2114;
              v30 = v19;
              _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "%{public}@ attempted to call %{public}@ for %{public}@ without the recommended %{public}@ entitlement", buf, 0x2Au);
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

  logHandle2 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v24 = processCopy;
    v25 = 2114;
    v26 = functionCopy;
    v27 = 2114;
    v28 = serviceCopy;
    v29 = 2114;
    v30 = @"com.apple.private.tcc.manager";
    _os_log_debug_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEBUG, "%{public}@ was allowed to call %{public}@ for %{public}@ with the deprecated %{public}@ entitlement", buf, 0x2Au);
  }

  [(TCCDServer *)self sendAnalyticsForEntitlement:@"com.apple.private.tcc.manager" withProcess:processCopy service:serviceCopy function:functionCopy];
  [(TCCDServer *)self sendAnalyticsIfMigrationPluginForProcess:processCopy withService:serviceCopy API:functionCopy];
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

- (BOOL)isProcessServiceCompositionManager:(id)manager
{
  managerCopy = manager;
  if (([managerCopy BOOLValueForEntitlement:@"com.apple.private.tcc.manager.service-composition"] & 1) != 0 || -[TCCDServer testDoComposition](self, "testDoComposition") && objc_msgSend(managerCopy, "BOOLValueForEntitlement:", @"com.apple.private.tcc.test-manager.service-composition"))
  {
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      sub_1000409EC(managerCopy, logHandle);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serviceFromMessage:(id)message error:(id *)error
{
  string = xpc_dictionary_get_string(message, "service");
  if (string)
  {
    v7 = string;
    v8 = [NSString stringWithUTF8String:string];
    platform = [(TCCDServer *)self platform];
    v10 = [platform serviceByName:v8];

    if (!v10)
    {
      v11 = [NSString stringWithFormat:@"Invalid Service Name: %s", v7];
      [(TCCDServer *)self makeError:error withCode:2 infoText:v11];
    }
  }

  else
  {
    [(TCCDServer *)self makeError:error withCode:1 infoText:0];
    v10 = 0;
  }

  return v10;
}

- (id)recordForAccessoryIdentityFromMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = [(TCCDServer *)self serviceFromMessage:messageCopy error:error];
  if (v7 && (string = xpc_dictionary_get_string(messageCopy, "client")) != 0)
  {
    v9 = string;
    if (xpc_dictionary_get_BOOL(messageCopy, "granted"))
    {
      uint64 = 2;
    }

    else
    {
      uint64 = 0;
    }

    v11 = xpc_dictionary_get_value(messageCopy, "auth_value");

    if (v11)
    {
      uint64 = xpc_dictionary_get_uint64(messageCopy, "auth_value");
      authorizationVersionNumber = [v7 authorizationVersionNumber];
    }

    else
    {
      authorizationVersionNumber = 1;
    }

    v14 = [TCCDAccessoryIdentity alloc];
    v15 = [NSString stringWithUTF8String:v9];
    v16 = [(TCCDAccessoryIdentity *)v14 initWithIdentifier:v15 authority:4];

    v17 = +[TCCDAccessIndirectObject unusedIndirectObject];
    v18 = [[TCCDAccessObject alloc] initWithService:v7 indirectObject:v17];
    v13 = [[TCCDAccessRecord alloc] initWithSubject:v16 object:v18 authorizationValue:uint64 authorizationReason:4 authorizationVersion:authorizationVersionNumber flags:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)recordForCodeIdentityFromMessage:(id)message accessIdentity:(id *)identity indirectObjectIdentity:(id *)objectIdentity error:(id *)error
{
  messageCopy = message;
  v11 = [(TCCDServer *)self serviceFromMessage:messageCopy error:error];
  if (!v11)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v12 = [[TCCDAccessIdentity alloc] initWithMessage:messageCopy];
  v13 = v12;
  if (v12)
  {
    if (identity)
    {
      v14 = v12;
      *identity = v13;
    }

    v15 = [TCCDCodeIdentity alloc];
    identifier = [(TCCDAccessIdentity *)v13 identifier];
    v40 = [(TCCDCodeIdentity *)v15 initWithIdentifier:identifier authority:[(TCCDAccessIdentity *)v13 client_type] displayNamePolicyIdentifier:0 verifierType:0 verifierData:0];

    int64 = xpc_dictionary_get_int64(messageCopy, "indirect_object_type");
    string = xpc_dictionary_get_string(messageCopy, "indirect_object_identifier");
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
        data = xpc_dictionary_get_data(messageCopy, "indirect_object_code_requirement", &length);
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
          [(TCCDServer *)self makeError:error withCode:6 infoText:v37];

          v21 = 0;
          v35 = v40;
LABEL_31:

          goto LABEL_32;
        }

        if (objectIdentity)
        {
          v28 = v28;
          *objectIdentity = v28;
        }
      }
    }

    else
    {
      v20 = +[TCCDAccessIndirectObject unusedIndirectObject];
    }

    v19 = [[TCCDAccessObject alloc] initWithService:v11 indirectObject:v20];
    if (xpc_dictionary_get_BOOL(messageCopy, "granted"))
    {
      uint64 = 2;
    }

    else
    {
      uint64 = 0;
    }

    v30 = xpc_dictionary_get_value(messageCopy, "auth_value");

    v39 = v20;
    if (v30)
    {
      uint64 = xpc_dictionary_get_uint64(messageCopy, "auth_value");
      authorizationVersionNumber = [v11 authorizationVersionNumber];
    }

    else
    {
      authorizationVersionNumber = 1;
    }

    if (xpc_dictionary_get_BOOL(messageCopy, "has_prompted_for_allow"))
    {
      v32 = 16;
    }

    else
    {
      v32 = 0;
    }

    v24 = [NSDate dateWithTimeIntervalSinceNow:0.0];
    v33 = xpc_dictionary_get_int64(messageCopy, "modDate");
    if (v33)
    {
      v34 = [[NSDate alloc] initWithTimeIntervalSince1970:v33];

      v24 = v34;
    }

    LOBYTE(v38) = 0;
    v35 = v40;
    v21 = [[TCCDAccessRecord alloc] initWithSubject:v40 object:v19 authorizationValue:uint64 authorizationReason:4 authorizationVersion:authorizationVersionNumber lastModified:v24 flags:v32 replaceStoredCodeRequirement:v38];
    goto LABEL_31;
  }

  v22 = [NSString stringWithFormat:@"Invalid Access Identity from message"];
  [(TCCDServer *)self makeError:error withCode:6 infoText:v22];

  v21 = 0;
LABEL_32:

LABEL_33:

  return v21;
}

- (id)recordFromMessage:(id)message accessIdentity:(id *)identity indirectObjectIdentity:(id *)objectIdentity error:(id *)error
{
  messageCopy = message;
  if (_os_feature_enabled_impl() && (string = xpc_dictionary_get_string(messageCopy, "client_type"), !strcmp(string, "accessory_uuid")))
  {
    v12 = [(TCCDServer *)self recordForAccessoryIdentityFromMessage:messageCopy error:error];
  }

  else
  {
    v12 = [(TCCDServer *)self recordForCodeIdentityFromMessage:messageCopy accessIdentity:identity indirectObjectIdentity:objectIdentity error:error];
  }

  v13 = v12;

  return v13;
}

- (void)purgeExpiredAccessEntriesForService:(id)service
{
  serviceCopy = service;
  expirySeconds = [serviceCopy expirySeconds];

  if (expirySeconds)
  {
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      name = [serviceCopy name];
      expirySeconds2 = [serviceCopy expirySeconds];
      *buf = 136446722;
      v13 = "[TCCDServer purgeExpiredAccessEntriesForService:]";
      v14 = 2114;
      v15 = name;
      v16 = 1024;
      intValue = [expirySeconds2 intValue];
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "%{public}s: invoked for %{public}@; expiry: %d", buf, 0x1Cu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003B1A4;
    v9[3] = &unk_1000A6250;
    v10 = serviceCopy;
    selfCopy = self;
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

- (void)scheduleAccessEntryExpiryCheckForService:(id)service
{
  serviceCopy = service;
  expirySeconds = [serviceCopy expirySeconds];
  if (expirySeconds)
  {
    v6 = expirySeconds;
    expirySeconds2 = [serviceCopy expirySeconds];
    if (([expirySeconds2 integerValue] & 0x8000000000000000) != 0)
    {

      goto LABEL_6;
    }

    expirySeconds3 = [serviceCopy expirySeconds];
    integerValue = [expirySeconds3 integerValue];

    if (integerValue <= 604800)
    {
      v6 = dispatch_get_global_queue(-32768, 0);
      expirySeconds4 = [serviceCopy expirySeconds];
      v11 = dispatch_time(0, 1000000000 * [expirySeconds4 integerValue] + 1000000000);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10003B994;
      v12[3] = &unk_1000A50C0;
      v12[4] = self;
      v13 = serviceCopy;
      dispatch_after(v11, v6, v12);

LABEL_6:
    }
  }
}

- (BOOL)isAccessEntryWithAge:(int)age authorizationValue:(unint64_t)value expiredForService:(id)service
{
  serviceCopy = service;
  expirySeconds = [serviceCopy expirySeconds];
  if (!expirySeconds)
  {
    goto LABEL_7;
  }

  v10 = expirySeconds;
  expirySeconds2 = [serviceCopy expirySeconds];
  if ([expirySeconds2 intValue] >= age)
  {

    goto LABEL_7;
  }

  if ([serviceCopy expireOnlyAllowedEntries])
  {
    v12 = [serviceCopy isAuthorizationValue:value equalToRight:0];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_12;
  }

LABEL_9:
  logHandle = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    name = [serviceCopy name];
    expirySeconds3 = [serviceCopy expirySeconds];
    *buf = 136446978;
    v22 = "[TCCDServer isAccessEntryWithAge:authorizationValue:expiredForService:]";
    v23 = 2114;
    v24 = name;
    v25 = 1024;
    intValue = [expirySeconds3 intValue];
    v27 = 1024;
    ageCopy = age;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "%{public}s for %{public}@ expiry time: %d, client age = %d", buf, 0x22u);
  }

  v17 = dispatch_get_global_queue(-32768, 0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003BBB8;
  v19[3] = &unk_1000A50C0;
  v19[4] = self;
  v20 = serviceCopy;
  dispatch_async(v17, v19);

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)_evaluateForProcess:(id)process entitlementName:(id)name containsService:(id)service options:(unint64_t)options
{
  processCopy = process;
  nameCopy = name;
  serviceCopy = service;
  v12 = [serviceCopy authorizationRightStateForValue:1 reason:0];
  if (v12)
  {
    v13 = [processCopy arrayValueForEntitlement:nameCopy];

    if (v13)
    {
      if (![processCopy hasEntitlement:nameCopy containsService:serviceCopy options:options])
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

- (id)evaluateUserIndependentEntitlementsForAccessByAttributionChain:(id)chain forFunction:(id)function toService:(id)service error:(id *)error
{
  chainCopy = chain;
  functionCopy = function;
  serviceCopy = service;
  v13 = [serviceCopy authorizationRightStateForValue:1 reason:0];
  if (!v13)
  {
    v18 = 0;
    goto LABEL_45;
  }

  v14 = v13;
  requestingProcess = [chainCopy requestingProcess];
  if (requestingProcess)
  {
    v49 = functionCopy;
    if ([chainCopy accessingProcessSpecified])
    {
      if ([(TCCDServer *)self canProcess:requestingProcess callFunction:functionCopy forService:serviceCopy withAccessIdentity:0])
      {
        v16 = 0;
        v17 = @"IsTCCManager";
      }

      else if ([serviceCopy shouldAllowUnrestrictedCheckAuditToken])
      {
        v16 = 0;
        v17 = @"ServiceAllowsUnrestrictedCheck";
      }

      else if ([requestingProcess euid])
      {
        if ([requestingProcess hasEntitlement:@"com.apple.private.tcc.manager.check-by-audit-token" containsServiceAllOrService:serviceCopy options:0])
        {
          v16 = 0;
          v17 = @"IsEntitledToCheckByAuditToken";
        }

        else
        {
          logHandle = [(TCCDServer *)self logHandle];
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            accessingProcess = [chainCopy accessingProcess];
            v38 = [accessingProcess description];
            v39 = [requestingProcess description];
            [serviceCopy name];
            v40 = v48 = error;
            *buf = 138543874;
            v51 = v38;
            v52 = 2114;
            v53 = v39;
            v54 = 2114;
            v55 = v40;
            _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "Request message contains a target_token to accessing_process (%{public}@) but %{public}@ is not a TCC manager for service: %{public}@.", buf, 0x20u);

            error = v48;
          }

          [v14 setRight:0];
          v16 = 1;
          [v14 setReason:1];
          v17 = 0;
        }
      }

      else
      {
        logHandle2 = [(TCCDServer *)self logHandle];
        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_INFO))
        {
          v20 = [requestingProcess description];
          *buf = 138543362;
          v51 = v20;
          _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_INFO, "WARNING: allowing root %{public}@ to check entitlments without being a TCC manager.", buf, 0xCu);
        }

        v16 = 0;
        v17 = @"IsRoot";
      }

      if ([v14 right] == 1 && (objc_msgSend(chainCopy, "accessingProcessIsValid") & 1) == 0)
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

    accessingProcess2 = [chainCopy accessingProcess];
    v22 = [(TCCDServer *)self _evaluateForProcess:accessingProcess2 entitlementName:@"com.apple.private.tcc.allow" containsService:serviceCopy options:1];

    if ([v22 right] != 1)
    {
      logHandle3 = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_INFO))
      {
        v42 = [v22 description];
        name = [serviceCopy name];
        accessingProcess3 = [chainCopy accessingProcess];
        [accessingProcess3 description];
        v25 = v46 = error;
        v26 = [requestingProcess description];
        *buf = 138544386;
        v51 = v42;
        v52 = 2114;
        v53 = name;
        v54 = 2114;
        v55 = v25;
        v56 = 2114;
        v57 = v26;
        v58 = 2114;
        v59 = v17;
        _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_INFO, "Auth:%{public}@ to %{public}@ for %{public}@; checked by %{public}@ because: %{public}@", buf, 0x34u);

        error = v46;
      }
    }

LABEL_29:
    functionCopy = v49;
    if ([v22 right] == 1)
    {
      if ([serviceCopy checkAllowEntitlementOnResponsibleProcess])
      {
        goto LABEL_31;
      }

      accessingProcess4 = [chainCopy accessingProcess];
      if (accessingProcess4)
      {
        logHandle4 = accessingProcess4;
        accessingProcess5 = [chainCopy accessingProcess];
        if (([accessingProcess5 hasEntitlement:@"com.apple.private.tcc.check-allow-on-responsible-process" containsServiceAllOrService:serviceCopy options:1] & 1) == 0)
        {

LABEL_40:
          goto LABEL_41;
        }

        responsibleProcess = [chainCopy responsibleProcess];

        if (!responsibleProcess)
        {
          goto LABEL_41;
        }

LABEL_31:
        responsibleProcess2 = [chainCopy responsibleProcess];
        v14 = [(TCCDServer *)self _evaluateForProcess:responsibleProcess2 entitlementName:@"com.apple.private.tcc.allow" containsService:serviceCopy options:1];

        if ([v14 right] == 1)
        {
          goto LABEL_42;
        }

        logHandle4 = [(TCCDServer *)self logHandle];
        if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_INFO))
        {
          v29 = [v14 description];
          name2 = [serviceCopy name];
          accessingProcess6 = [chainCopy accessingProcess];
          errorCopy = error;
          v31 = [accessingProcess6 description];
          responsibleProcess3 = [chainCopy responsibleProcess];
          v32 = [responsibleProcess3 description];
          *buf = 138544130;
          v51 = v29;
          v52 = 2114;
          v53 = name2;
          v54 = 2114;
          v55 = v31;
          v56 = 2114;
          v57 = v32;
          _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_INFO, "Auth:%{public}@ to %{public}@ because accessing process %{public}@ has the check-allow-on-responsible-process entitlement and responsible process %{public}@ has corresponding allow entitlement", buf, 0x2Au);

          error = errorCopy;
        }

        v22 = v14;
        goto LABEL_40;
      }
    }

LABEL_41:
    v14 = v22;
LABEL_42:
    if (error)
    {
      *error = 0;
    }

    goto LABEL_44;
  }

  [(TCCDServer *)self makeError:error withCode:5 infoText:0];
  [v14 setRight:0];
  [v14 setReason:1];
LABEL_44:
  v18 = v14;

LABEL_45:

  return v18;
}

- (BOOL)evaluateAccessToService:(id)service defaultAccessAllowed:(BOOL)allowed by:(id)by checkCodeRequirements:(BOOL)requirements authorizationResult:(unint64_t *)result authorizationReason:(unint64_t *)reason flags:(int *)flags subjectCodeIdentityDataResult:(id *)self0
{
  serviceCopy = service;
  byCopy = by;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100007530;
  v34[4] = sub_100007598;
  v35 = 0;
  if (dataResult)
  {
    *dataResult = 0;
  }

  *result = 1;
  *reason = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10003C608;
  v31[3] = &unk_1000A5318;
  v32 = serviceCopy;
  v33 = byCopy;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003C6F4;
  v24[3] = &unk_1000A6278;
  reasonCopy = reason;
  flagsCopy = flags;
  resultCopy = result;
  v24[4] = self;
  v16 = v32;
  v25 = v16;
  v27 = v34;
  v17 = v33;
  v26 = v17;
  v18 = db_eval("SELECT auth_value, auth_reason, csreq, strftime('%s','now') - last_modified AS age, flags FROM access WHERE service = ? AND client = ? AND client_type = ?", v31, v24);
  if (v18)
  {
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      name = [v16 name];
      identifier = [v17 identifier];
      *buf = 67109634;
      v37 = v18;
      v38 = 2114;
      v39 = name;
      v40 = 2114;
      v41 = identifier;
      _os_log_error_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_ERROR, "Query for current DB state returns error: %d; Service: %{public}@), client: %{public}@", buf, 0x1Cu);
    }

    v20 = 0;
    *result = 0;
    *reason = 1;
  }

  else
  {
    v20 = *reason != 1;
  }

  _Block_object_dispose(v34, 8);
  return v20;
}

- (BOOL)updateAccessRecord:(id)record replaceOnly:(BOOL)only doCompositionWithChildService:(BOOL)service withRequestingProcess:(id)process function:(id)function accessIdentity:(id)identity
{
  serviceCopy = service;
  onlyCopy = only;
  recordCopy = record;
  processCopy = process;
  functionCopy = function;
  identityCopy = identity;
  subjectIdentity = [recordCopy subjectIdentity];
  identityType = [subjectIdentity identityType];

  if (!identityType)
  {
    selfCopy = self;
    subjectIdentity2 = [recordCopy subjectIdentity];
    accessObject = [recordCopy accessObject];
    serviceObject = [accessObject serviceObject];
    macos_compositionChildService = [serviceObject macos_compositionChildService];

    v80 = processCopy;
    v81 = functionCopy;
    if (serviceCopy && macos_compositionChildService)
    {
      v24 = [TCCDAccessObject alloc];
      accessObject2 = [recordCopy accessObject];
      indirectObject = [accessObject2 indirectObject];
      v27 = [(TCCDAccessObject *)v24 initWithService:macos_compositionChildService indirectObject:indirectObject];

      v28 = [recordCopy copy];
      [v28 setAccessObject:v27];
      logHandle = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        name = [macos_compositionChildService name];
        accessObject3 = [recordCopy accessObject];
        [accessObject3 serviceObject];
        v33 = v32 = identityCopy;
        *buf = 138543618;
        *&buf[4] = name;
        v94 = 2114;
        v95 = v33;
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "Update Access Record: checking child service %{public}@ of %{public}@", buf, 0x16u);

        identityCopy = v32;
        functionCopy = v81;

        processCopy = v80;
      }

      [(TCCDServer *)selfCopy updateAccessRecord:v28 replaceOnly:1 doCompositionWithChildService:1 withRequestingProcess:processCopy function:functionCopy accessIdentity:identityCopy];
    }

    v79 = identityCopy;
    if (onlyCopy)
    {
      accessObject4 = [recordCopy accessObject];
      serviceObject2 = [accessObject4 serviceObject];

      v92 = 0;
      *buf = 1;
      isAccessAllowedByDefault = [serviceObject2 isAccessAllowedByDefault];
      accessIdentity = [subjectIdentity2 accessIdentity];
      LODWORD(isAccessAllowedByDefault) = [(TCCDServer *)selfCopy evaluateAccessToService:serviceObject2 defaultAccessAllowed:isAccessAllowedByDefault by:accessIdentity checkCodeRequirements:1 authorizationResult:buf authorizationReason:&v92 flags:0 subjectCodeIdentityDataResult:0];

      v38 = *buf;
      functionCopy = v81;
      if (isAccessAllowedByDefault)
      {
        if (v38 == 1)
        {
          v21 = 0;
          identityCopy = v79;
          processCopy = v80;
LABEL_64:

          goto LABEL_65;
        }
      }
    }

    accessObject5 = [recordCopy accessObject];
    serviceObject3 = [accessObject5 serviceObject];

    lastModifiedDate = [recordCopy lastModifiedDate];
    [lastModifiedDate timeIntervalSince1970];
    v43 = v42;

    accessObject6 = [recordCopy accessObject];
    indirectObject2 = [accessObject6 indirectObject];

    if (indirectObject2 && [indirectObject2 type] && objc_msgSend(indirectObject2, "type") != 1 && objc_msgSend(indirectObject2, "type") != 2)
    {
      logHandle2 = [(TCCDServer *)selfCopy logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        sub_100040C18(indirectObject2, recordCopy);
      }

      v21 = 0;
      identityCopy = v79;
      processCopy = v80;
      goto LABEL_63;
    }

    v76 = v43;
    if ([indirectObject2 type] == 1)
    {
      accessObject7 = [recordCopy accessObject];
      indirectObject3 = [accessObject7 indirectObject];
      codeIdentity = [indirectObject3 codeIdentity];

      fileProviderDomainID = 0;
    }

    else
    {
      if ([indirectObject2 type] == 2)
      {
        fileProviderDomainID = [indirectObject2 fileProviderDomainID];
      }

      else
      {
        fileProviderDomainID = 0;
      }

      codeIdentity = 0;
    }

    v78 = serviceObject3;
    name2 = [serviceObject3 name];
    identifier = [subjectIdentity2 identifier];
    identifierAuthority = [subjectIdentity2 identifierAuthority];
    attributionPath = [v79 attributionPath];
    v54 = [(TCCDServer *)selfCopy translateAllFilesToEndpointSecurity:name2 withClient:identifier clientType:identifierAuthority requestingProcess:v80 function:v81 attributionChain:0 executablePath:attributionPath];

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10003D198;
    v84[3] = &unk_1000A62A0;
    v77 = v54;
    v85 = v77;
    v75 = subjectIdentity2;
    v86 = v75;
    v55 = recordCopy;
    v87 = v55;
    v91 = v43;
    v74 = indirectObject2;
    v88 = v74;
    logHandle2 = codeIdentity;
    v89 = logHandle2;
    v57 = fileProviderDomainID;
    v90 = v57;
    v58 = db_eval("INSERT OR REPLACE INTO access   (service, client, client_type, auth_value, auth_reason, auth_version, csreq, indirect_object_identifier_type, indirect_object_identifier, indirect_object_code_identity, flags, last_modified) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v84, 0);
    v21 = v58 == 0;
    if (v58 || ([(TCCDServer *)selfCopy logHandle], v73 = v57, v59 = objc_claimAutoreleasedReturnValue(), v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO), v59, v57 = v73, !v60))
    {
LABEL_62:

      processCopy = v80;
      functionCopy = v81;
      serviceObject3 = v78;
      identityCopy = v79;
LABEL_63:

      goto LABEL_64;
    }

    v61 = [NSDate dateWithTimeIntervalSince1970:v76];
    v72 = objc_opt_new();
    identifier2 = [v75 identifier];
    v63 = [v78 descriptionForAuthorizationValue:objc_msgSend(v55 reason:{"authorizationValue"), objc_msgSend(v55, "authorizationReason")}];
    [v72 appendFormat:@"Update Access Record: %@ for %@ to %@ (v%llu) at %lld (%@)", v77, identifier2, v63, objc_msgSend(v55, "authorizationVersion"), v76, v61];

    if (![v55 flags])
    {
LABEL_54:
      v66 = logHandle2;
      verifierDescription = [v75 verifierDescription];
      [v72 appendFormat:@"\n\t CodeReq: %@", verifierDescription];

      if (indirectObject2)
      {
        if (logHandle2)
        {
          identifier3 = [logHandle2 identifier];
          verifierDescription2 = [v66 verifierDescription];
          [v72 appendFormat:@"\n\t Indirect %@ : %@", identifier3, verifierDescription2];
        }

        else
        {
          identifier3 = [v74 description];
          [v72 appendFormat:@"\n\t Indirect : %@", identifier3];
        }
      }

      logHandle3 = [(TCCDServer *)selfCopy logHandle];
      v57 = v73;
      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v72;
        _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
      }

      logHandle2 = v66;
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

  subjectIdentity2 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(subjectIdentity2, OS_LOG_TYPE_ERROR))
  {
    sub_100040B5C(recordCopy);
  }

  v21 = 0;
LABEL_65:

  return v21;
}

- (BOOL)evaluateComposedAuthorizationToService:(id)service andAccessSubject:(id)subject withRelation:(int64_t)relation authorizationResult:(unint64_t *)result authorizationReason:(unint64_t *)reason subjectCodeIdentityDataResult:(id *)dataResult
{
  serviceCopy = service;
  subjectCopy = subject;
  if (relation)
  {
    macos_compositionChildService = [serviceCopy macos_compositionChildService];
    v17 = "child";
    if (macos_compositionChildService)
    {
      goto LABEL_3;
    }
  }

  else
  {
    macos_compositionChildService = [serviceCopy macos_compositionParentService];
    v17 = "parent";
    if (macos_compositionChildService)
    {
LABEL_3:
      reasonCopy = reason;
      v37 = subjectCopy;
      v18 = -[TCCDServer evaluateAccessToService:defaultAccessAllowed:by:checkCodeRequirements:authorizationResult:authorizationReason:flags:subjectCodeIdentityDataResult:](self, "evaluateAccessToService:defaultAccessAllowed:by:checkCodeRequirements:authorizationResult:authorizationReason:flags:subjectCodeIdentityDataResult:", macos_compositionChildService, [macos_compositionChildService isAccessAllowedByDefault], subjectCopy, 1, result, reason, 0, dataResult);
      logHandle = [(TCCDServer *)self logHandle];
      v20 = logHandle;
      if (v18)
      {
        if (*result == 1)
        {
          v21 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          v21 = OS_LOG_TYPE_INFO;
        }

        if (os_log_type_enabled(logHandle, v21))
        {
          name = [serviceCopy name];
          name2 = [macos_compositionChildService name];
          [macos_compositionChildService descriptionForAuthorizationValue:*result reason:*reasonCopy];
          *buf = 138544130;
          v40 = name;
          v41 = 2082;
          v42 = v17;
          v43 = 2114;
          v44 = name2;
          v46 = v45 = 2114;
          v22 = v46;
          _os_log_impl(&_mh_execute_header, v20, v21, "Evaluated composed authorization from %{public}@ to %{public}s service %{public}@: Auth:%{public}@", buf, 0x2Au);
        }

        v23 = 1;
        if (!relation)
        {
          subjectCopy = v37;
          if (*result == 1)
          {
            macos_compositionParentService = [macos_compositionChildService macos_compositionParentService];

            if (macos_compositionParentService)
            {
              v23 = [(TCCDServer *)self evaluateComposedAuthorizationToService:macos_compositionChildService andAccessSubject:v37 withRelation:0 authorizationResult:result authorizationReason:reasonCopy subjectCodeIdentityDataResult:dataResult];
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          name3 = [serviceCopy name];
          name4 = [macos_compositionChildService name];
          *buf = 138543874;
          v40 = name3;
          v41 = 2082;
          v42 = v17;
          v43 = 2114;
          v44 = name4;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to evaluate composed authorization from %{public}@ to %{public}s service %{public}@", buf, 0x20u);
        }

        v23 = 0;
      }

      subjectCopy = v37;
      goto LABEL_21;
    }
  }

  reasonCopy2 = reason;
  v38 = 0;
  name5 = [serviceCopy name];
  v27 = [NSString stringWithFormat:@"Service: %@ has an invalid %s composed service.", name5, v17];
  [(TCCDServer *)self makeError:&v38 withCode:2 infoText:v27];
  v28 = v38;

  v29 = objc_opt_new();
  [(TCCDServer *)self buildErrorString:v29 forError:v28 contextString:0];
  logHandle2 = [(TCCDServer *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
  {
    sub_100040CC4();
  }

  *result = 0;
  *reasonCopy2 = 1;

  v23 = 0;
LABEL_21:

  return v23;
}

- (unint64_t)numberOfRecordsForService:(id)service withAuthorizationValue:(unint64_t)value
{
  serviceCopy = service;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  name = [serviceCopy name];
  if (value == 1)
  {
    [NSString stringWithFormat:@"SELECT COUNT(*) FROM access WHERE service = '%@'", name];
  }

  else
  {
    [NSString stringWithFormat:@"SELECT COUNT(*) FROM access WHERE service = '%@' AND auth_value = %lld", name, value];
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
      logHandle = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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

- (id)accessRecordFromStep:(sqlite3_stmt *)step
{
  v5 = [[NSString alloc] initWithUTF8String:{sqlite3_column_text(step, 0)}];
  v6 = [[NSString alloc] initWithUTF8String:{sqlite3_column_text(step, 1)}];
  v7 = sqlite3_column_int(step, 2);
  v31 = sqlite3_column_int64(step, 3);
  v30 = sqlite3_column_int64(step, 4);
  v29 = sqlite3_column_int64(step, 5);
  if (sqlite3_column_type(step, 6) == 5)
  {
    v8 = 0;
  }

  else
  {
    v9 = sqlite3_column_blob(step, 6);
    v8 = [[NSData alloc] initWithBytes:v9 length:{sqlite3_column_bytes(step, 6)}];
  }

  v10 = sqlite3_column_int(step, 7);
  v28 = sqlite3_column_int(step, 11);
  HIDWORD(v27) = sqlite3_column_int(step, 12);
  v11 = [[TCCDCodeIdentity alloc] initWithIdentifier:v6 authority:v7 displayNamePolicyIdentifier:v10 verifierType:v8 != 0 verifierData:v8];
  v12 = sqlite3_column_int(step, 8);
  v13 = sqlite3_column_text(step, 9);
  if (v13)
  {
    v14 = [[NSString alloc] initWithUTF8String:v13];
  }

  else
  {
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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

  if (sqlite3_column_type(step, 10) == 5)
  {
    v18 = 0;
  }

  else
  {
    v19 = sqlite3_column_blob(step, 10);
    v18 = [[NSData alloc] initWithBytes:v19 length:{sqlite3_column_bytes(step, 10)}];
  }

  v20 = [[TCCDCodeIdentity alloc] initWithIdentifier:v14 authority:v12 displayNamePolicyIdentifier:0 verifierType:v18 != 0 verifierData:v18];
  v17 = [[TCCDAccessCodeIndirectObject alloc] initWithCodeIdentity:v20];

LABEL_18:
  platform = [(TCCDServer *)self platform];
  v22 = [platform serviceByName:v5];

  if (v22)
  {
    logHandle2 = [[TCCDAccessObject alloc] initWithService:v22 indirectObject:v17];
    v24 = [[NSDate alloc] initWithTimeIntervalSince1970:SHIDWORD(v27)];
    LOBYTE(v27) = 0;
    v25 = [[TCCDAccessRecord alloc] initWithSubject:v11 object:logHandle2 authorizationValue:v31 authorizationReason:v30 authorizationVersion:v29 lastModified:v24 flags:v28 replaceStoredCodeRequirement:v27];
  }

  else
  {
    logHandle2 = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(&logHandle2->super, OS_LOG_TYPE_ERROR))
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
  selfCopy = self;
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
  fetchAllAccessRecords = [(TCCDServer *)self fetchAllAccessRecords];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003E5D4;
  v8[3] = &unk_1000A62C8;
  v9 = v3;
  v5 = v3;
  [fetchAllAccessRecords enumerateObjectsUsingBlock:v8];
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
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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
    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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

  descriptionDictionariesForAllAccessRecords = [(TCCDServer *)self descriptionDictionariesForAllAccessRecords];
  [v3 setObject:descriptionDictionariesForAllAccessRecords forKeyedSubscript:@"RECORDS"];

  fetchAllOverriddenServiceNames = [(TCCDServer *)self fetchAllOverriddenServiceNames];
  [v3 setObject:fetchAllOverriddenServiceNames forKeyedSubscript:@"OVERRIDES"];

  fetchAllPolicies = [(TCCDServer *)self fetchAllPolicies];
  [v3 setObject:fetchAllPolicies forKeyedSubscript:@"POLICIES"];

  fetchAllActivePolicies = [(TCCDServer *)self fetchAllActivePolicies];
  [v3 setObject:fetchAllActivePolicies forKeyedSubscript:@"ACTIVE_POLICIES"];

  v15 = [v3 copy];

  return v15;
}

- (void)createStateHandler
{
  v2 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();
}

- (BOOL)updateAuthorizationRecordFromContext:(id)context forResult:(id)result syncedUpdate:(BOOL *)update
{
  contextCopy = context;
  resultCopy = result;
  service = [contextCopy service];
  databaseFlags = [resultCopy databaseFlags];
  authorizationValue = [resultCopy authorizationValue];
  name = [service name];
  if (![name isEqualToString:@"kTCCServicePhotos"])
  {
LABEL_8:

    goto LABEL_9;
  }

  promptType = [resultCopy promptType];

  if (promptType == 2)
  {
    if ([resultCopy authorizationValue] == 4)
    {
      v15 = +[TCCDPlatform currentPlatform];
      v16 = [v15 serviceByName:@"kTCCServicePhotosAdd"];

      v17 = 2;
      authorizationValue = 2;
      service = v16;
      goto LABEL_10;
    }

    if (![resultCopy authorizationValue])
    {
      name = [(TCCDServer *)self logHandle];
      if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
      {
        sub_1000411B4(contextCopy);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v17 = 1;
LABEL_10:
  service2 = [contextCopy service];
  name2 = [service2 name];

  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10003F8E8;
  v86[3] = &unk_1000A62F0;
  v20 = service;
  v87 = v20;
  v21 = name2;
  v88 = v21;
  v22 = contextCopy;
  v89 = v22;
  v92 = authorizationValue;
  v23 = resultCopy;
  v93 = databaseFlags;
  v90 = v23;
  v91 = 0;
  v24 = db_eval("INSERT OR REPLACE INTO access   (service, client, client_type, auth_value, auth_reason, auth_version, csreq, policy_id, indirect_object_identifier, flags, pid, pid_version, boot_uuid, last_reminded) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v86, 0);
  if (v24)
  {
    goto LABEL_43;
  }

  v76 = v21;
  service3 = [v22 service];
  supportsStagedPrompting = [service3 supportsStagedPrompting];

  updateCopy = update;
  v75 = v17;
  v73 = databaseFlags;
  v77 = v20;
  v78 = authorizationValue;
  if (!supportsStagedPrompting)
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
    previousAuthorization = [v23 previousAuthorization];
    v27 = previousAuthorization != [v23 authorizationValue];
  }

  service4 = [v22 service];
  name3 = [service4 name];
  if ([name3 isEqualToString:@"kTCCServiceCalendar"])
  {
  }

  else
  {
    [v22 service];
    v32 = v31 = self;
    name4 = [v32 name];
    v34 = [name4 isEqualToString:@"kTCCServiceExternalCameraMedia"];

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
  service5 = [v22 service];
  name5 = [service5 name];
  if ([name5 isEqualToString:@"kTCCServicePhotos"])
  {
    promptType2 = [v23 promptType];

    if (promptType2 != 2)
    {
      goto LABEL_31;
    }

    if ([v23 authorizationValue] == 3 || objc_msgSend(v23, "authorizationValue") == 2)
    {
      platform = [(TCCDServer *)self platform];
      v39 = [platform serviceByName:@"kTCCServicePhotosAdd"];

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
        logHandle = [(TCCDServer *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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
  service6 = [v22 service];
  [(TCCDServer *)self scheduleAccessEntryExpiryCheckForService:service6];

  access_changed();
  subjectIdentity = [v22 subjectIdentity];
  identifier = [subjectIdentity identifier];
  subjectIdentity2 = [v22 subjectIdentity];
  [subjectIdentity2 client_type];
  [v23 authorizationReason];
  attributionChain = [v22 attributionChain];
  LOBYTE(v72) = v27;
  v51 = v78;
  v20 = v77;
  [TCCDServer publishAccessChangedEvent:"publishAccessChangedEvent:forService:client:clientType:authValue:authReason:andKillClient:attributionChain:" forService:v75 client:v72 clientType:attributionChain authValue:? authReason:? andKillClient:? attributionChain:?];

  selfCopy = self;
  platform2 = [(TCCDServer *)self platform];
  syncController = [platform2 syncController];

  if (syncController && [syncController isSyncingEnabled] && objc_msgSend(v77, "accessActionStatusForAuthorizationValue:", v78))
  {
    authorizationVersion = [v23 authorizationVersion];
    name6 = [v77 name];
    v57 = [syncController peerSupportsService:name6 authVersion:authorizationVersion];

    if ((v57 & 1) == 0)
    {
      service7 = [v22 service];
      v51 = [service7 translateAuth:v78 versionUpgrade:0];

      logHandle2 = [(TCCDServer *)selfCopy logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        service8 = [v22 service];
        name7 = [service8 name];
        *buf = 138412546;
        v95 = name7;
        v96 = 2048;
        v97 = v51;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "downgrading %@ add auth to %lu", buf, 0x16u);
      }

      authorizationVersion = 1;
    }

    v62 = [v77 accessActionStatusForAuthorizationValue:v51];
    functionName = [v22 functionName];
    v64 = [functionName isEqualToString:@"TCCAccessSetWithPrompt"];

    v65 = authorizationVersion;
    if (v64)
    {
      v62 = [v77 convertAccessUpdateStatustToMainSet:v62];
    }

    name8 = [v77 name];
    subjectIdentity3 = [v22 subjectIdentity];
    identifier2 = [subjectIdentity3 identifier];
    subjectIdentity4 = [v22 subjectIdentity];
    [syncController syncAccessUpdateForServiceIdentifier:name8 clientIdentifier:identifier2 clientType:objc_msgSend(subjectIdentity4 accessStatus:"client_type") authorizationVersion:v62 flags:v65 updateType:{v73, 1}];

    if (updateCopy)
    {
      *updateCopy = 1;
    }
  }

  v21 = v76;
  v24 = 0;
LABEL_43:
  v70 = v24 == 0;

  return v70;
}

- (BOOL)sendRecordMetricsForService:(const char *)service
{
  serviceCopy = service;
  if (service)
  {
    platform = [(TCCDServer *)self platform];
    v6 = [NSString stringWithUTF8String:serviceCopy];
    v7 = [platform serviceByName:v6];

    logHandle = [(TCCDServer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "[TCCDServer sendRecordMetricsForService:]";
      *&buf[12] = 2082;
      *&buf[14] = serviceCopy;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_INFO, "%{public}s: invoked for %{public}s;", buf, 0x16u);
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
    v22[4] = serviceCopy;
    v9 = db_eval("SELECT client, client_type, auth_value, csreq, last_modified, strftime('%s','now') - last_modified AS age, indirect_object_identifier, indirect_object_identifier_type, indirect_object_code_identity, auth_reason, auth_version, flags, pid, pid_version, boot_uuid FROM access WHERE service = ?", v22, v17);
    LOBYTE(serviceCopy) = v9 == 0;
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
              platform2 = [(TCCDServer *)self platform];
              [platform2 sendAnalyticsWithEventName:@"com.apple.TCC.authorization_audit" fields:v14];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v11);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  return serviceCopy;
}

@end