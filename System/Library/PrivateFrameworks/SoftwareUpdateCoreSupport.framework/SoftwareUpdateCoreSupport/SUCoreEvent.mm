@interface SUCoreEvent
+ (BOOL)isSharediPad;
- (BOOL)isEqualErrorEvent:(id)event;
- (BOOL)isSuccess;
- (SUCoreEvent)initWithEventDictionary:(id)dictionary extendingWith:(id)with reportingToServer:(id)server;
- (id)getAugmentedEvent;
- (void)incrementErrorCount;
@end

@implementation SUCoreEvent

- (SUCoreEvent)initWithEventDictionary:(id)dictionary extendingWith:(id)with reportingToServer:(id)server
{
  v116 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  withCopy = with;
  serverCopy = server;
  v112.receiver = self;
  v112.super_class = SUCoreEvent;
  v11 = [(SUCoreEvent *)&v112 init];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = objc_opt_new();
  allFields = v11->_allFields;
  v11->_allFields = v12;

  v14 = [dictionaryCopy safeStringForKey:@"event"];

  if (!v14)
  {
    [(NSMutableDictionary *)v11->_allFields setSafeObject:@"SUCoreEvent" forKey:@"event"];
  }

  v99 = serverCopy;
  uUIDString = [dictionaryCopy safeStringForKey:@"UUID"];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [(NSMutableDictionary *)v11->_allFields setSafeObject:uUIDString forKey:@"UUID"];
  }

  v98 = uUIDString;
  objc_storeStrong(&v11->_reportedUUID, uUIDString);
  objc_storeStrong(&v11->_serverURL, server);
  v17 = +[SUCoreDevice sharedDevice];
  buildVersion = [v17 buildVersion];

  v19 = +[SUCoreDevice sharedDevice];
  splatCryptex1BuildVersion = [v19 splatCryptex1BuildVersion];

  v96 = splatCryptex1BuildVersion;
  if (splatCryptex1BuildVersion)
  {
    v21 = splatCryptex1BuildVersion;
  }

  else
  {
    v21 = buildVersion;
  }

  v107 = v21;
  v22 = +[SUCoreDevice sharedDevice];
  splatCryptex1ProductVersionExtra = [v22 splatCryptex1ProductVersionExtra];

  v23 = MEMORY[0x1E696AD98];
  v24 = +[SUCoreDevice sharedDevice];
  v105 = [v23 numberWithBool:{objc_msgSend(v24, "hasSplatOnlyUpdateInstalled")}];

  v25 = MEMORY[0x1E696AD98];
  v26 = +[SUCoreDevice sharedDevice];
  v27 = [v25 numberWithBool:{objc_msgSend(v26, "hasSemiSplatActive")}];

  v28 = +[SUCoreDevice sharedDevice];
  releaseType = [v28 releaseType];

  v30 = +[SUCoreDevice sharedDevice];
  deviceClass = [v30 deviceClass];

  v31 = +[SUCoreDevice sharedDevice];
  hwModelString = [v31 hwModelString];

  v102 = MGCopyAnswer();
  v101 = MGCopyAnswer();
  v32 = +[SUCoreLog sharedLogger];
  oslog = [v32 oslog];

  v34 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (releaseType)
  {
    if (v34)
    {
      *buf = 138543362;
      v115 = releaseType;
      v35 = "non-nil currentOSType found with value of: %{public}@";
LABEL_14:
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
    }
  }

  else
  {
    releaseType = @"user";
    if (v34)
    {
      *buf = 138543362;
      v115 = @"user";
      v35 = "nil currentOSType found, setting the currentOSType to: %{public}@";
      goto LABEL_14;
    }
  }

  v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SUCore-%@", @"2.1.0"];
  [NSMutableDictionary setSafeObject:"setSafeObject:forKey:" forKey:?];
  [(NSMutableDictionary *)v11->_allFields setSafeObject:@"1.2" forKey:@"reportVersion"];
  v36 = v11->_allFields;
  v37 = _currentTimeInMilliseconds();
  _ensureNSString(v37);
  v39 = v38 = releaseType;
  [(NSMutableDictionary *)v36 setSafeObject:v39 forKey:@"eventTime"];

  v40 = v11->_allFields;
  v94 = v38;
  v41 = _ensureNSString(v38);
  [(NSMutableDictionary *)v40 setSafeObject:v41 forKey:@"currentOSType"];

  v42 = v11->_allFields;
  v43 = _ensureNSString(v107);
  [(NSMutableDictionary *)v42 setSafeObject:v43 forKey:@"currentOSVersion"];

  v44 = v11->_allFields;
  v97 = buildVersion;
  v45 = _ensureNSString(buildVersion);
  [(NSMutableDictionary *)v44 setSafeObject:v45 forKey:@"currentBaseOSVersion"];

  v46 = v11->_allFields;
  v47 = _ensureNSString(splatCryptex1ProductVersionExtra);
  [(NSMutableDictionary *)v46 setSafeObject:v47 forKey:@"currentProductVersionExtra"];

  v48 = v11->_allFields;
  v49 = _ensureNSNumber(v105);
  [(NSMutableDictionary *)v48 setSafeObject:v49 forKey:@"rapidSecurityResponseInstalled"];

  v50 = v11->_allFields;
  v95 = v27;
  v51 = _ensureNSNumber(v27);
  [(NSMutableDictionary *)v50 setSafeObject:v51 forKey:@"rapidSecurityResponseSemiSplat"];

  v52 = v11->_allFields;
  v53 = _ensureNSString(deviceClass);
  [(NSMutableDictionary *)v52 setSafeObject:v53 forKey:@"deviceClass"];

  v54 = v11->_allFields;
  v55 = _ensureNSString(hwModelString);
  [(NSMutableDictionary *)v54 setSafeObject:v55 forKey:@"deviceModel"];

  v56 = v11->_allFields;
  v57 = _ensureNSNumber(v102);
  [(NSMutableDictionary *)v56 setSafeObject:v57 forKey:@"batteryLevel"];

  v58 = v11->_allFields;
  v59 = _ensureNSNumber(v101);
  [(NSMutableDictionary *)v58 setSafeObject:v59 forKey:@"batteryIsCharging"];

  if ([objc_opt_class() isSharediPad])
  {
    v60 = @"true";
  }

  else
  {
    v60 = @"false";
  }

  v61 = v60;
  v62 = v11->_allFields;
  v92 = v61;
  v63 = _ensureNSString(v61);
  [(NSMutableDictionary *)v62 setSafeObject:v63 forKey:@"sharediPad"];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  LODWORD(v63) = [processInfo isLowPowerModeEnabled];

  if (v63)
  {
    v65 = @"true";
  }

  else
  {
    v65 = @"false";
  }

  v66 = v11->_allFields;
  v67 = _ensureNSString(v65);
  [(NSMutableDictionary *)v66 setSafeObject:v67 forKey:@"lowPowerMode"];

  v68 = MGCopyAnswer();
  v69 = v11->_allFields;
  v70 = _ensureNSNumberFromDictionary(*MEMORY[0x1E69E5128], v68);
  [(NSMutableDictionary *)v69 setSafeObject:v70 forKey:@"storageCapacity"];

  v71 = v11->_allFields;
  v72 = _ensureNSNumberFromDictionary(*MEMORY[0x1E69E5138], v68);
  [(NSMutableDictionary *)v71 setSafeObject:v72 forKey:@"systemFsCapacity"];

  v73 = v11->_allFields;
  v74 = _ensureNSNumberFromDictionary(*MEMORY[0x1E69E5130], v68);
  [(NSMutableDictionary *)v73 setSafeObject:v74 forKey:@"systemFsFree"];

  v75 = v11->_allFields;
  v76 = _ensureNSNumberFromDictionary(*MEMORY[0x1E69E5120], v68);
  [(NSMutableDictionary *)v75 setSafeObject:v76 forKey:@"dataFsCapacity"];

  v77 = v11->_allFields;
  v78 = _ensureNSNumberFromDictionary(*MEMORY[0x1E69E5118], v68);
  [(NSMutableDictionary *)v77 setSafeObject:v78 forKey:@"dataFsFree"];

  v79 = [dictionaryCopy safeStringForKey:@"result"];

  if (!v79)
  {
    [(NSMutableDictionary *)v11->_allFields setSafeObject:@"success" forKey:@"result"];
  }

  v100 = dictionaryCopy;
  [(NSMutableDictionary *)v11->_allFields addEntriesFromDictionary:dictionaryCopy];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v80 = withCopy;
  v81 = withCopy;
  v82 = [v81 countByEnumeratingWithState:&v108 objects:v113 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v109;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v109 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v108 + 1) + 8 * i);
        v87 = [(NSMutableDictionary *)v11->_allFields objectForKey:v86];

        if (!v87)
        {
          v88 = v11->_allFields;
          v89 = [v81 objectForKey:v86];
          [(NSMutableDictionary *)v88 setSafeObject:v89 forKey:v86];
        }
      }

      v83 = [v81 countByEnumeratingWithState:&v108 objects:v113 count:16];
    }

    while (v83);
  }

  v11->_changedSinceReported = 0;
  serverCopy = v99;
  dictionaryCopy = v100;
  withCopy = v80;
LABEL_33:

  v90 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isSuccess
{
  allFields = [(SUCoreEvent *)self allFields];
  v3 = [allFields safeStringForKey:@"result"];

  if (v3)
  {
    v4 = [v3 isEqualToString:@"success"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isEqualErrorEvent:(id)event
{
  eventCopy = event;
  if (self == eventCopy)
  {
    v5 = 1;
  }

  else if ([(SUCoreEvent *)self isSuccess]|| [(SUCoreEvent *)eventCopy isSuccess])
  {
    v5 = 0;
  }

  else
  {
    serverURL = [(SUCoreEvent *)self serverURL];
    absoluteString = [serverURL absoluteString];
    serverURL2 = [(SUCoreEvent *)eventCopy serverURL];
    absoluteString2 = [serverURL2 absoluteString];
    if ([SUCore stringIsEqual:absoluteString to:absoluteString2])
    {
      allFields = [(SUCoreEvent *)self allFields];
      v10 = [allFields safeStringForKey:@"event"];
      allFields2 = [(SUCoreEvent *)eventCopy allFields];
      v11 = [allFields2 safeStringForKey:@"event"];
      v21 = v10;
      if ([SUCore stringIsEqual:v10 to:v11])
      {
        reportedUUID = [(SUCoreEvent *)self reportedUUID];
        reportedUUID2 = [(SUCoreEvent *)eventCopy reportedUUID];
        if ([SUCore stringIsEqual:reportedUUID to:?])
        {
          allFields3 = [(SUCoreEvent *)self allFields];
          v13 = [allFields3 safeStringForKey:@"result"];
          allFields4 = [(SUCoreEvent *)eventCopy allFields];
          v14 = [allFields4 safeStringForKey:@"result"];
          v15 = v13;
          v5 = [SUCore stringIsEqual:v13 to:v14];
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)incrementErrorCount
{
  allFields = [(SUCoreEvent *)self allFields];
  v4 = [allFields safeObjectForKey:@"errorCount" ofClass:objc_opt_class()];

  if (v4)
  {
    longValue = [v4 longValue];
    oslog = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:longValue + 1];

LABEL_5:
    allFields2 = [(SUCoreEvent *)self allFields];
    [allFields2 setSafeObject:oslog forKey:@"errorCount"];

    [(SUCoreEvent *)self setChangedSinceReported:1];
    goto LABEL_6;
  }

  allFields3 = [(SUCoreEvent *)self allFields];
  v8 = [allFields3 safeStringForKey:@"result"];

  if (v8)
  {
    allFields4 = [(SUCoreEvent *)self allFields];
    [allFields4 setSafeObject:@"true" forKey:@"sameErrorSignature"];

    oslog = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:1];
    goto LABEL_5;
  }

  v11 = +[SUCoreLog sharedLogger];
  oslog = [v11 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreEvent *)oslog incrementErrorCount];
  }

LABEL_6:
}

- (id)getAugmentedEvent
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  allFields = [(SUCoreEvent *)self allFields];
  v5 = [v3 initWithDictionary:allFields];

  return v5;
}

+ (BOOL)isSharediPad
{
  if (!objc_opt_class())
  {
    v7 = +[SUCoreLog sharedLogger];
    oslog = [v7 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v9 = "[EVENT_REPORTER] UMUserManager class does not exist.";
      v10 = &v14;
LABEL_12:
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_13:

    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = +[SUCoreLog sharedLogger];
    oslog = [v11 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v9 = "[EVENT_REPORTER] UMUserManager class does not respond to selector 'sharedManager'";
      v10 = v15;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v2 = objc_autoreleasePoolPush();
  mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = +[SUCoreLog sharedLogger];
    oslog2 = [v12 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] UMUserManager instance does not respond to selector 'isSharedIPad'", v16, 2u);
    }

    goto LABEL_17;
  }

  if (![mEMORY[0x1E69DF060] isSharedIPad])
  {
LABEL_17:

    objc_autoreleasePoolPop(v2);
    return 0;
  }

  v4 = +[SUCoreLog sharedLogger];
  oslog3 = [v4 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] Detected shared iPad", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

@end