@interface SUCoreEvent
+ (BOOL)isSharediPad;
- (BOOL)isEqualErrorEvent:(id)a3;
- (BOOL)isSuccess;
- (SUCoreEvent)initWithEventDictionary:(id)a3 extendingWith:(id)a4 reportingToServer:(id)a5;
- (id)getAugmentedEvent;
- (void)incrementErrorCount;
@end

@implementation SUCoreEvent

- (SUCoreEvent)initWithEventDictionary:(id)a3 extendingWith:(id)a4 reportingToServer:(id)a5
{
  v116 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v14 = [v8 safeStringForKey:@"event"];

  if (!v14)
  {
    [(NSMutableDictionary *)v11->_allFields setSafeObject:@"SUCoreEvent" forKey:@"event"];
  }

  v99 = v10;
  v15 = [v8 safeStringForKey:@"UUID"];
  if (!v15)
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v16 UUIDString];

    [(NSMutableDictionary *)v11->_allFields setSafeObject:v15 forKey:@"UUID"];
  }

  v98 = v15;
  objc_storeStrong(&v11->_reportedUUID, v15);
  objc_storeStrong(&v11->_serverURL, a5);
  v17 = +[SUCoreDevice sharedDevice];
  v18 = [v17 buildVersion];

  v19 = +[SUCoreDevice sharedDevice];
  v20 = [v19 splatCryptex1BuildVersion];

  v96 = v20;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  v107 = v21;
  v22 = +[SUCoreDevice sharedDevice];
  v106 = [v22 splatCryptex1ProductVersionExtra];

  v23 = MEMORY[0x1E696AD98];
  v24 = +[SUCoreDevice sharedDevice];
  v105 = [v23 numberWithBool:{objc_msgSend(v24, "hasSplatOnlyUpdateInstalled")}];

  v25 = MEMORY[0x1E696AD98];
  v26 = +[SUCoreDevice sharedDevice];
  v27 = [v25 numberWithBool:{objc_msgSend(v26, "hasSemiSplatActive")}];

  v28 = +[SUCoreDevice sharedDevice];
  v29 = [v28 releaseType];

  v30 = +[SUCoreDevice sharedDevice];
  v104 = [v30 deviceClass];

  v31 = +[SUCoreDevice sharedDevice];
  v103 = [v31 hwModelString];

  v102 = MGCopyAnswer();
  v101 = MGCopyAnswer();
  v32 = +[SUCoreLog sharedLogger];
  v33 = [v32 oslog];

  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v34)
    {
      *buf = 138543362;
      v115 = v29;
      v35 = "non-nil currentOSType found with value of: %{public}@";
LABEL_14:
      _os_log_impl(&dword_1E0F71000, v33, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
    }
  }

  else
  {
    v29 = @"user";
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
  v39 = v38 = v29;
  [(NSMutableDictionary *)v36 setSafeObject:v39 forKey:@"eventTime"];

  v40 = v11->_allFields;
  v94 = v38;
  v41 = _ensureNSString(v38);
  [(NSMutableDictionary *)v40 setSafeObject:v41 forKey:@"currentOSType"];

  v42 = v11->_allFields;
  v43 = _ensureNSString(v107);
  [(NSMutableDictionary *)v42 setSafeObject:v43 forKey:@"currentOSVersion"];

  v44 = v11->_allFields;
  v97 = v18;
  v45 = _ensureNSString(v18);
  [(NSMutableDictionary *)v44 setSafeObject:v45 forKey:@"currentBaseOSVersion"];

  v46 = v11->_allFields;
  v47 = _ensureNSString(v106);
  [(NSMutableDictionary *)v46 setSafeObject:v47 forKey:@"currentProductVersionExtra"];

  v48 = v11->_allFields;
  v49 = _ensureNSNumber(v105);
  [(NSMutableDictionary *)v48 setSafeObject:v49 forKey:@"rapidSecurityResponseInstalled"];

  v50 = v11->_allFields;
  v95 = v27;
  v51 = _ensureNSNumber(v27);
  [(NSMutableDictionary *)v50 setSafeObject:v51 forKey:@"rapidSecurityResponseSemiSplat"];

  v52 = v11->_allFields;
  v53 = _ensureNSString(v104);
  [(NSMutableDictionary *)v52 setSafeObject:v53 forKey:@"deviceClass"];

  v54 = v11->_allFields;
  v55 = _ensureNSString(v103);
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

  v64 = [MEMORY[0x1E696AE30] processInfo];
  LODWORD(v63) = [v64 isLowPowerModeEnabled];

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

  v79 = [v8 safeStringForKey:@"result"];

  if (!v79)
  {
    [(NSMutableDictionary *)v11->_allFields setSafeObject:@"success" forKey:@"result"];
  }

  v100 = v8;
  [(NSMutableDictionary *)v11->_allFields addEntriesFromDictionary:v8];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v80 = v9;
  v81 = v9;
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
  v10 = v99;
  v8 = v100;
  v9 = v80;
LABEL_33:

  v90 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isSuccess
{
  v2 = [(SUCoreEvent *)self allFields];
  v3 = [v2 safeStringForKey:@"result"];

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

- (BOOL)isEqualErrorEvent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(SUCoreEvent *)self isSuccess]|| [(SUCoreEvent *)v4 isSuccess])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SUCoreEvent *)self serverURL];
    v7 = [v6 absoluteString];
    v8 = [(SUCoreEvent *)v4 serverURL];
    v9 = [v8 absoluteString];
    if ([SUCore stringIsEqual:v7 to:v9])
    {
      v22 = [(SUCoreEvent *)self allFields];
      v10 = [v22 safeStringForKey:@"event"];
      v20 = [(SUCoreEvent *)v4 allFields];
      v11 = [v20 safeStringForKey:@"event"];
      v21 = v10;
      if ([SUCore stringIsEqual:v10 to:v11])
      {
        v12 = [(SUCoreEvent *)self reportedUUID];
        v19 = [(SUCoreEvent *)v4 reportedUUID];
        if ([SUCore stringIsEqual:v12 to:?])
        {
          v18 = [(SUCoreEvent *)self allFields];
          v13 = [v18 safeStringForKey:@"result"];
          v17 = [(SUCoreEvent *)v4 allFields];
          v14 = [v17 safeStringForKey:@"result"];
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
  v3 = [(SUCoreEvent *)self allFields];
  v4 = [v3 safeObjectForKey:@"errorCount" ofClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 longValue];
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:v5 + 1];

LABEL_5:
    v10 = [(SUCoreEvent *)self allFields];
    [v10 setSafeObject:v6 forKey:@"errorCount"];

    [(SUCoreEvent *)self setChangedSinceReported:1];
    goto LABEL_6;
  }

  v7 = [(SUCoreEvent *)self allFields];
  v8 = [v7 safeStringForKey:@"result"];

  if (v8)
  {
    v9 = [(SUCoreEvent *)self allFields];
    [v9 setSafeObject:@"true" forKey:@"sameErrorSignature"];

    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:1];
    goto LABEL_5;
  }

  v11 = +[SUCoreLog sharedLogger];
  v6 = [v11 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreEvent *)v6 incrementErrorCount];
  }

LABEL_6:
}

- (id)getAugmentedEvent
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [(SUCoreEvent *)self allFields];
  v5 = [v3 initWithDictionary:v4];

  return v5;
}

+ (BOOL)isSharediPad
{
  if (!objc_opt_class())
  {
    v7 = +[SUCoreLog sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v9 = "[EVENT_REPORTER] UMUserManager class does not exist.";
      v10 = &v14;
LABEL_12:
      _os_log_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_13:

    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = +[SUCoreLog sharedLogger];
    v8 = [v11 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v9 = "[EVENT_REPORTER] UMUserManager class does not respond to selector 'sharedManager'";
      v10 = v15;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E69DF060] sharedManager];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = +[SUCoreLog sharedLogger];
    v13 = [v12 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] UMUserManager instance does not respond to selector 'isSharedIPad'", v16, 2u);
    }

    goto LABEL_17;
  }

  if (![v3 isSharedIPad])
  {
LABEL_17:

    objc_autoreleasePoolPop(v2);
    return 0;
  }

  v4 = +[SUCoreLog sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0F71000, v5, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] Detected shared iPad", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

@end