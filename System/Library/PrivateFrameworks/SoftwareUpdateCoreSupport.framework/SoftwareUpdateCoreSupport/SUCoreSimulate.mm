@interface SUCoreSimulate
+ (id)sharedSimulator;
- (BOOL)_isImmediateEvent:(id)event;
- (BOOL)_isValidEvent:(id)event;
- (BOOL)_parseDictionaryFromString:(id)string destination:(id *)destination;
- (BOOL)_parseErrorCodeFromString:(id)string destination:(int64_t *)destination;
- (BOOL)_parseEventBooleanFromString:(id)string destination:(int64_t *)destination;
- (BOOL)_parseIntFromString:(id)string destination:(int *)destination;
- (BOOL)_parseOptionalEntriesInLineFromWords:(id)words argStartAt:(int *)at argEndAt:(int *)endAt argDuration:(int *)duration argUntilStop:(id *)stop argAssetBuildVersions:(id *)versions argAssetProductVersions:(id *)productVersions argAssetAttributesPlist:(id *)self0 argAssetState:(id *)self1 argUpdateInfoPlist:(id *)self2 argErrorDomain:(id *)self3 argErrorCode:(int64_t *)self4 argErrorUserInfo:(id *)self5 argErrorRecoverable:(int64_t *)self6;
- (SUCoreSimulate)init;
- (id)_eventFromLine:(id)line;
- (id)_locateEventForModule:(id)module forIdentity:(id)identity withTrigger:(int64_t)trigger forEvent:(id)event inState:(id)state;
- (id)_performOffQueueEvent:(id)event;
- (id)_performSimulatedEventAlteration:(id)alteration;
- (id)_splitString:(id)string byTheFirstOccurrenceOf:(id)of;
- (id)begin:(id)begin atFunction:(id)function;
- (id)end:(id)end atFunction:(id)function;
- (id)fsm:(id)fsm forEvent:(id)event inState:(id)state;
- (id)generateError:(id)error ofDomain:(id)domain withCode:(int64_t)code;
- (id)lastAlterationPerformed;
- (int)countOfAlterationsPerformed;
- (int64_t)_actionFromString:(id)string;
- (int64_t)_triggerFromString:(id)string;
- (void)_adoptAllEventAlterations:(id)alterations;
- (void)_dumpAllEventAlterations;
- (void)_performingAlteration:(id)alteration;
- (void)_triggerOffQueueAlteration:(id)alteration;
- (void)adoptAllEventAlterations:(id)alterations;
- (void)clearAllEventAlterations;
- (void)dumpAllEventAlterations;
@end

@implementation SUCoreSimulate

+ (id)sharedSimulator
{
  if (sharedSimulator_simulatorOnce != -1)
  {
    +[SUCoreSimulate sharedSimulator];
  }

  v3 = sharedSimulator_simulator;

  return v3;
}

uint64_t __33__SUCoreSimulate_sharedSimulator__block_invoke()
{
  sharedSimulator_simulator = objc_alloc_init(SUCoreSimulate);

  return MEMORY[0x1EEE66BB8]();
}

- (SUCoreSimulate)init
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SUCoreSimulate;
  v2 = [(SUCoreSimulate *)&v18 init];
  if (v2)
  {
    v3 = +[SUCoreDevice sharedDevice];
    v2->_simulatorEnabled = [v3 isBootedOSSecureInternal];

    eventAlterations = v2->_eventAlterations;
    v2->_eventAlterations = 0;

    registeredCallback = v2->_registeredCallback;
    v2->_registeredCallback = 0;

    v6 = +[SUCore sharedCore];
    commonDomain = [v6 commonDomain];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", commonDomain, @"core.simulate"];
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    simulateQueue = v2->_simulateQueue;
    v2->_simulateQueue = v11;

    if (v2->_simulateQueue)
    {
      v13 = +[SUCoreLog sharedLogger];
      oslog = [v13 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = commonDomain;
        v21 = 2112;
        v22 = @"core.simulate";
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] DISPATCH: created simulate dispatch queue domain(%@.%@)", buf, 0x16u);
      }
    }

    else
    {
      v15 = +[SUCoreDiag sharedDiag];
      [v15 trackError:@"[SIMULATE] DISPATCH" forReason:@"failed to create simulate dispatch queue" withResult:8100 withError:0];

      v2->_simulatorEnabled = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)adoptAllEventAlterations:(id)alterations
{
  alterationsCopy = alterations;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SUCoreSimulate_adoptAllEventAlterations___block_invoke;
    block[3] = &unk_1E86FC150;
    block[4] = self;
    v11 = alterationsCopy;
    dispatch_sync(simulateQueue2, block);
  }

  else
  {
    v7 = +[SUCoreLog sharedLogger];
    oslog = [v7 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot adopt event alterations (simulator disabled)", v9, 2u);
    }

    NSLog(@"[SIMULATE] cannot adopt event alterations (simulator disabled)");
  }
}

- (void)_adoptAllEventAlterations:(id)alterations
{
  v48 = *MEMORY[0x1E69E9840];
  alterationsCopy = alterations;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  eventAlterations = [(SUCoreSimulate *)self eventAlterations];

  if (!eventAlterations)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if (![defaultManager fileExistsAtPath:alterationsCopy])
    {
      v12 = +[SUCoreLog sharedLogger];
      oslog = [v12 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = alterationsCopy;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] simulate event alterations file does not exist (file non-existent): %@", buf, 0xCu);
      }

      NSLog(@"[SIMULATE] simulate event alterations file does not exist (file non-existent): %@", alterationsCopy);
      goto LABEL_33;
    }

    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v44 = 0;
    v9 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:alterationsCopy encoding:1 error:&v44];
    v10 = v44;
    if (v10)
    {
      v11 = +[SUCoreDiag sharedDiag];
      [v11 trackError:@"[SIMULATE] SETUP" forReason:@"adopt event alterations (load failed)" withResult:8121 withError:v10];
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v14 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\r\n"];
    v15 = [v9 componentsSeparatedByCharactersInSet:v14];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = v15;
    v16 = [v11 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v35 = v9;
      v36 = defaultManager;
      v37 = alterationsCopy;
      v18 = *v41;
      v38 = 1;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          if ([v20 length])
          {
            v21 = [v20 substringWithRange:{0, 1}];
            v22 = [v21 isEqualToString:@"#"];

            if ((v22 & 1) == 0)
            {
              v23 = [(SUCoreSimulate *)self _eventFromLine:v20];
              v24 = v23;
              if (v23)
              {
                moduleName = [v23 moduleName];
                v26 = [v39 safeObjectForKey:moduleName ofClass:objc_opt_class()];

                if (!v26)
                {
                  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  moduleName2 = [v24 moduleName];
                  [v39 setSafeObject:v26 forKey:moduleName2];
                }

                v28 = +[SUCoreLog sharedLogger];
                oslog2 = [v28 oslog];

                if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
                {
                  summary = [v24 summary];
                  *buf = 138412290;
                  v46 = summary;
                  _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SIMULATE] adding event: %@", buf, 0xCu);
                }

                [v26 addObject:v24];
              }

              else
              {
                v31 = +[SUCoreLog sharedLogger];
                oslog3 = [v31 oslog];

                if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = v20;
                  _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing line: %@", buf, 0xCu);
                }

                NSLog(@"[SIMULATE] failed parsing line: %@", v20);
                v38 = 0;
              }
            }
          }
        }

        v17 = [v11 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v17);

      defaultManager = v36;
      alterationsCopy = v37;
      v9 = v35;
      if ((v38 & 1) == 0)
      {
        v33 = +[SUCoreDiag sharedDiag];
        [v33 trackError:@"[SIMULATE] SETUP" forReason:@"adopt event alterations (parsing failed)" withResult:8121 withError:0];

        goto LABEL_32;
      }
    }

    else
    {
    }

    [(SUCoreSimulate *)self setEventAlterations:v39];
    goto LABEL_32;
  }

  v7 = +[SUCoreDiag sharedDiag];
  [v7 trackError:@"[SIMULATE] SETUP" forReason:@"adopt event alterations (already adopted)" withResult:8111 withError:0];

LABEL_34:
  v34 = *MEMORY[0x1E69E9840];
}

- (id)_eventFromLine:(id)line
{
  lineCopy = line;
  v58 = -1;
  v59[0] = -1;
  v57 = -1;
  v55 = 0;
  v56 = 0;
  v5 = [lineCopy componentsSeparatedByString:@"--"];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\t "];
    v10 = [v8 componentsSeparatedByCharactersInSet:v9];
  }

  else
  {
    v10 = 0;
  }

  if ([v5 count] < 2)
  {
    v15 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v5 objectAtIndexedSubscript:1];
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v13 = [v11 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    v14 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\t "];
    v15 = [v13 componentsSeparatedByCharactersInSet:v14];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if ([v10 count] >= 2)
  {
    v16 = [v10 objectAtIndexedSubscript:0];
    v17 = [(SUCoreSimulate *)self _actionFromString:v16];

    v18 = [v10 objectAtIndexedSubscript:1];
    v19 = [(SUCoreSimulate *)self _triggerFromString:v18];

    v20 = v19;
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:
  v20 = 0;
  v17 = 0;
  if (v15)
  {
LABEL_12:
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v24 = [(SUCoreSimulate *)self _parseOptionalEntriesInLineFromWords:v15 argStartAt:v59 argEndAt:&v58 argDuration:&v57 argUntilStop:&v54 argAssetBuildVersions:&v53 argAssetProductVersions:&v52 argAssetAttributesPlist:&v51 argAssetState:&v50 argUpdateInfoPlist:&v49 argErrorDomain:&v48 argErrorCode:&v56 argErrorUserInfo:&v47 argErrorRecoverable:&v55];
    v42 = v54;
    v46 = v53;
    v45 = v52;
    v21 = v51;
    v44 = v50;
    v43 = v49;
    v22 = v48;
    v23 = v47;
    if (!v24)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

LABEL_10:
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v21 = 0;
  v44 = 0;
  v22 = 0;
  v23 = 0;
LABEL_13:
  if (v17 && v20)
  {
    if ([v10 count] == 4)
    {
      v41 = lineCopy;
      v39 = v15;
      v25 = v20;
      v26 = v17;
      v27 = [SUCoreSimulateEvent alloc];
      v28 = [v10 objectAtIndexedSubscript:2];
      v29 = [v10 objectAtIndexedSubscript:3];
      LODWORD(v36) = v57;
      v30 = v25;
      v15 = v39;
      v31 = [(SUCoreSimulateEvent *)v27 initWithAction:v26 onTrigger:v30 forModule:v28 atFunction:v29 startAt:v59[0] endAt:v58 duration:v36 untilStop:v42 assetBuildVersions:v46 assetProductVersions:v45 assetAttributesPlist:v21 assetState:v44 updateInfoPlist:v43 errorDomain:v22 errorCode:v56 errorUserInfo:v23 errorRecoverable:v55];
      goto LABEL_24;
    }

    if (([v10 count] == 5 || objc_msgSend(v10, "count") == 6) && v20 == 3)
    {
      v41 = lineCopy;
      v38 = v17;
      if ([v10 count] == 6)
      {
        v28 = [v10 objectAtIndexedSubscript:5];
      }

      else
      {
        v28 = 0;
      }

      v40 = [SUCoreSimulateEvent alloc];
      v29 = [v10 objectAtIndexedSubscript:2];
      v32 = [v10 objectAtIndexedSubscript:3];
      v37 = [v10 objectAtIndexedSubscript:4];
      v33 = v32;
      v31 = [(SUCoreSimulateEvent *)v40 initWithAction:v38 onTrigger:3 forMachine:v29 atEvent:v32 inState:v37 alteration:v28 startAt:__PAIR64__(v58 endAt:v59[0]) assetBuildVersions:v46 assetProductVersions:v45 assetAttributesPlist:v21 assetState:v44 updateInfoPlist:v43 errorDomain:v22 errorCode:v56 errorUserInfo:v23 errorRecoverable:v55];

LABEL_24:
      lineCopy = v41;
      if (v31)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_25:
  v34 = +[SUCoreDiag sharedDiag];
  [v34 trackAnomaly:@"[SIMULATE] SETUP" forReason:lineCopy withResult:8112 withError:0];

  v31 = 0;
LABEL_26:

  return v31;
}

- (id)_splitString:(id)string byTheFirstOccurrenceOf:(id)of
{
  v13[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = [stringCopy rangeOfString:of];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [stringCopy substringToIndex:v6];
    v10 = [stringCopy substringFromIndex:v8 + 1];
    v13[0] = v9;
    v13[1] = v10;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_parseOptionalEntriesInLineFromWords:(id)words argStartAt:(int *)at argEndAt:(int *)endAt argDuration:(int *)duration argUntilStop:(id *)stop argAssetBuildVersions:(id *)versions argAssetProductVersions:(id *)productVersions argAssetAttributesPlist:(id *)self0 argAssetState:(id *)self1 argUpdateInfoPlist:(id *)self2 argErrorDomain:(id *)self3 argErrorCode:(int64_t *)self4 argErrorUserInfo:(id *)self5 argErrorRecoverable:(int64_t *)self6
{
  v129 = *MEMORY[0x1E69E9840];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = words;
  v18 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (!v18)
  {
    v99 = 0;
    v98 = 0;
    v96 = 0;
    v97 = 0;
    v20 = 1;
    goto LABEL_81;
  }

  v19 = v18;
  versionsCopy = versions;
  v113 = 0;
  v114 = 0;
  v20 = 1;
  v21 = *v121;
  do
  {
    v22 = 0;
    do
    {
      if (*v121 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v120 + 1) + 8 * v22);
      v24 = [(SUCoreSimulate *)self _splitString:v23 byTheFirstOccurrenceOf:@"="];
      v25 = v24;
      if (!v24 || [v24 count] != 2)
      {
        v32 = +[SUCoreLog sharedLogger];
        oslog = [v32 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v125 = v23;
          _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing tokens (unexpected format, expected 'key=value') for: '%@'", buf, 0xCu);
        }

        NSLog(@"[SIMULATE] failed parsing tokens (unexpected format, expected 'key=value') for: '%@'", v23);
        goto LABEL_16;
      }

      v26 = [v25 objectAtIndexedSubscript:0];
      v27 = [v26 isEqualToString:@"startAt"];

      if (v27)
      {
        v28 = [v25 objectAtIndexedSubscript:1];
        v29 = [(SUCoreSimulate *)self _parseIntFromString:v28 destination:at];

        if (v29)
        {
          goto LABEL_17;
        }

        v30 = +[SUCoreLog sharedLogger];
        oslog2 = [v30 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v125 = v23;
          _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'startAt' (expected int) for: '%@'", buf, 0xCu);
        }

        NSLog(@"[SIMULATE] failed parsing 'startAt' (expected int) for: '%@'", v23);
        goto LABEL_16;
      }

      v34 = [v25 objectAtIndexedSubscript:0];
      v35 = [v34 isEqualToString:@"endAt"];

      if (v35)
      {
        v36 = [v25 objectAtIndexedSubscript:1];
        v37 = [(SUCoreSimulate *)self _parseIntFromString:v36 destination:endAt];

        if (!v37)
        {
          v38 = +[SUCoreLog sharedLogger];
          oslog3 = [v38 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v125 = v23;
            _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'endAt' (expected int) for: '%@'", buf, 0xCu);
          }

          NSLog(@"[SIMULATE] failed parsing 'endAt' (expected int) for: '%@'", v23);
LABEL_16:
          v20 = 0;
        }
      }

      else
      {
        v40 = [v25 objectAtIndexedSubscript:0];
        v41 = [v40 isEqualToString:@"duration"];

        if (v41)
        {
          v42 = [v25 objectAtIndexedSubscript:1];
          v43 = [(SUCoreSimulate *)self _parseIntFromString:v42 destination:duration];

          if (!v43)
          {
            v44 = +[SUCoreLog sharedLogger];
            oslog4 = [v44 oslog];

            if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v125 = v23;
              _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'duration' (expected int) for: '%@'", buf, 0xCu);
            }

            NSLog(@"[SIMULATE] failed parsing 'duration' (expected int) for: '%@'", v23);
            goto LABEL_16;
          }
        }

        else
        {
          v46 = [v25 objectAtIndexedSubscript:0];
          v47 = [v46 isEqualToString:@"untilStop"];

          if (stop && v47)
          {
            *stop = [v25 objectAtIndexedSubscript:1];
            goto LABEL_17;
          }

          v48 = [v25 objectAtIndexedSubscript:0];
          v49 = [v48 isEqualToString:@"assetBuildVersions"];

          if (v49)
          {
            v50 = [v25 objectAtIndexedSubscript:1];
            v51 = [v50 componentsSeparatedByString:{@", "}];

            v114 = v51;
            goto LABEL_17;
          }

          v52 = [v25 objectAtIndexedSubscript:0];
          v53 = [v52 isEqualToString:@"assetProductVersions"];

          if (v53)
          {
            v54 = [v25 objectAtIndexedSubscript:1];
            v55 = [v54 componentsSeparatedByString:{@", "}];

            v113 = v55;
            goto LABEL_17;
          }

          v56 = [v25 objectAtIndexedSubscript:0];
          v57 = [v56 isEqualToString:@"assetAttributesPlist"];

          if (plist && v57)
          {
            *plist = [v25 objectAtIndexedSubscript:1];
            v58 = +[SUCoreLog sharedLogger];
            oslog5 = [v58 oslog];

            if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
            {
              v60 = *plist;
              *buf = 138412290;
              v125 = v60;
              v61 = oslog5;
              v62 = "[SIMULATE] using assetAttributesPlist: '%@'";
              goto LABEL_52;
            }

LABEL_53:

            goto LABEL_17;
          }

          v63 = [v25 objectAtIndexedSubscript:0];
          v64 = [v63 isEqualToString:@"assetState"];

          if (state && v64)
          {
            *state = [v25 objectAtIndexedSubscript:1];
            v65 = +[SUCoreLog sharedLogger];
            oslog5 = [v65 oslog];

            if (!os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_53;
            }

            v66 = *state;
            *buf = 138412290;
            v125 = v66;
            v61 = oslog5;
            v62 = "[SIMULATE] using assetState: '%@'";
LABEL_52:
            _os_log_impl(&dword_1E0F71000, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0xCu);
            goto LABEL_53;
          }

          v67 = [v25 objectAtIndexedSubscript:0];
          v68 = [v67 isEqualToString:@"updateInfoPlist"];

          if (infoPlist && v68)
          {
            *infoPlist = [v25 objectAtIndexedSubscript:1];
            v69 = +[SUCoreLog sharedLogger];
            oslog5 = [v69 oslog];

            if (!os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_53;
            }

            v70 = *infoPlist;
            *buf = 138412290;
            v125 = v70;
            v61 = oslog5;
            v62 = "[SIMULATE] using updateInfoPlist: '%@'";
            goto LABEL_52;
          }

          v71 = [v25 objectAtIndexedSubscript:0];
          v72 = [v71 isEqualToString:@"errorDomain"];

          if (domain && v72)
          {
            *domain = [v25 objectAtIndexedSubscript:1];
            v73 = +[SUCoreLog sharedLogger];
            oslog5 = [v73 oslog];

            if (!os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_53;
            }

            v74 = *domain;
            *buf = 138412290;
            v125 = v74;
            v61 = oslog5;
            v62 = "[SIMULATE] using errorDomain: '%@'";
            goto LABEL_52;
          }

          v75 = [v25 objectAtIndexedSubscript:0];
          v76 = [v75 isEqualToString:@"errorCode"];

          if (code && v76)
          {
            v77 = [v25 objectAtIndexedSubscript:1];
            v78 = [(SUCoreSimulate *)self _parseErrorCodeFromString:v77 destination:code];

            if (!v78)
            {
              v79 = +[SUCoreLog sharedLogger];
              oslog6 = [v79 oslog];

              if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v125 = v23;
                _os_log_impl(&dword_1E0F71000, oslog6, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'errorCode' (expected SUCoreErrorCode) for: '%@'", buf, 0xCu);
              }

              NSLog(@"[SIMULATE] failed parsing 'errorCode' (expected SUCoreErrorCode) for: '%@'", v23);
              goto LABEL_16;
            }
          }

          else
          {
            v81 = [v25 objectAtIndexedSubscript:0];
            v82 = [v81 isEqualToString:@"errorUserInfo"];

            if (info && v82)
            {
              v83 = [v25 objectAtIndexedSubscript:1];
              v84 = [(SUCoreSimulate *)self _parseDictionaryFromString:v83 destination:info];

              if (!v84)
              {
                v85 = +[SUCoreLog sharedLogger];
                oslog7 = [v85 oslog];

                if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v125 = v23;
                  _os_log_impl(&dword_1E0F71000, oslog7, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'errorUserInfo' (expected {k1=v1;k2=v2;}) for: '%@'", buf, 0xCu);
                }

                NSLog(@"[SIMULATE] failed parsing 'errorUserInfo' (expected {k1=v1;k2=v2;}) for: '%@'", v23);
                goto LABEL_16;
              }
            }

            else
            {
              v87 = [v25 objectAtIndexedSubscript:0];
              v88 = [v87 isEqualToString:@"errorRecoverable"];

              if (!recoverable || !v88)
              {
                v93 = +[SUCoreLog sharedLogger];
                oslog8 = [v93 oslog];

                if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v125 = v23;
                  _os_log_impl(&dword_1E0F71000, oslog8, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing option (unexpected/unsupported option key) for: '%@'", buf, 0xCu);
                }

                NSLog(@"[SIMULATE] failed parsing option (unexpected/unsupported option key) for: '%@'", v23);
                goto LABEL_16;
              }

              v89 = [v25 objectAtIndexedSubscript:1];
              v90 = [(SUCoreSimulate *)self _parseEventBooleanFromString:v89 destination:recoverable];

              if (!v90)
              {
                v91 = +[SUCoreLog sharedLogger];
                oslog9 = [v91 oslog];

                if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v125 = v23;
                  _os_log_impl(&dword_1E0F71000, oslog9, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'errorRecoverable' (expected SUCoreSimulateEventBoolean) for: '%@'", buf, 0xCu);
                }

                NSLog(@"[SIMULATE] failed parsing 'errorRecoverable' (expected SUCoreSimulateEventBoolean) for: '%@'", v23);
                goto LABEL_16;
              }
            }
          }
        }
      }

LABEL_17:

      ++v22;
    }

    while (v19 != v22);
    v95 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
    v19 = v95;
  }

  while (v95);
  v97 = v113;
  v96 = v114;
  v98 = v114 != 0;
  v99 = v113 != 0;
  if (v114 && v113)
  {
    v100 = [v114 count];
    if (v100 == [v113 count])
    {
      v101 = v114;
      *versionsCopy = v114;
      v102 = v113;
      *productVersions = v113;
      goto LABEL_90;
    }

    v105 = +[SUCoreLog sharedLogger];
    oslog10 = [v105 oslog];

    if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
    {
      v107 = [v114 count];
      v108 = [v113 count];
      *buf = 134218240;
      v125 = v107;
      v126 = 2048;
      v127 = v108;
      _os_log_impl(&dword_1E0F71000, oslog10, OS_LOG_TYPE_DEFAULT, "[SIMULATE] syntax error: assetBuildVersions (%lu) and assetProductVersions (%lu) must have the same count", buf, 0x16u);
    }

    NSLog(@"[SIMULATE] syntax error: assetBuildVersions (%lu) and assetProductVersions (%lu) must have the same count", [v114 count], objc_msgSend(v113, "count"));
LABEL_89:
    v20 = 0;
    goto LABEL_90;
  }

LABEL_81:
  if (v98 || v99)
  {
    v103 = +[SUCoreLog sharedLogger];
    oslog11 = [v103 oslog];

    if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, oslog11, OS_LOG_TYPE_DEFAULT, "[SIMULATE] syntax error: assetBuildVersions and assetProductVersions must both be defined", buf, 2u);
    }

    NSLog(@"[SIMULATE] syntax error: assetBuildVersions and assetProductVersions must both be defined", v111);
    goto LABEL_89;
  }

LABEL_90:

  v109 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (BOOL)_parseIntFromString:(id)string destination:(int *)destination
{
  v5 = MEMORY[0x1E696ADA0];
  stringCopy = string;
  v7 = objc_alloc_init(v5);
  v8 = [v7 numberFromString:stringCopy];

  if (v8)
  {
    *destination = [v8 intValue];
  }

  return v8 != 0;
}

- (BOOL)_parseErrorCodeFromString:(id)string destination:(int64_t *)destination
{
  v5 = MEMORY[0x1E696ADA0];
  stringCopy = string;
  v7 = objc_alloc_init(v5);
  v8 = [v7 numberFromString:stringCopy];

  if (v8)
  {
    *destination = [v8 intValue];
  }

  return v8 != 0;
}

- (BOOL)_parseEventBooleanFromString:(id)string destination:(int64_t *)destination
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"none"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"NONE"))
  {
    v6 = 0;
  }

  else if ([stringCopy isEqualToString:@"true"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"TRUE") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"t") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"T") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"yes") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"YES") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"y") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"Y"))
  {
    v6 = 2;
  }

  else
  {
    if (([stringCopy isEqualToString:@"false"] & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"FALSE") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"f") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"F") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"no") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"NO") & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"n") & 1) == 0 && !objc_msgSend(stringCopy, "isEqualToString:", @"N"))
    {
      v7 = 0;
      goto LABEL_14;
    }

    v6 = 1;
  }

  *destination = v6;
  v7 = 1;
LABEL_14:

  return v7;
}

- (BOOL)_parseDictionaryFromString:(id)string destination:(id *)destination
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v25 = stringCopy;
  if (destination)
  {
    propertyListFromStringsFileFormat = [stringCopy propertyListFromStringsFileFormat];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:propertyListFromStringsFileFormat];
    destinationCopy = destination;
    v8 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v8 setNumberStyle:1];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = propertyListFromStringsFileFormat;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = *v27;
      v12 = MEMORY[0x1E695E118];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v9 valueForKey:v14];
          v16 = [v8 numberFromString:v15];
          v17 = v16;
          if (v16 || (v18 = [v15 isEqualToString:@"YES"], v17 = v12, (v18 & 1) != 0) || (v19 = objc_msgSend(v15, "isEqualToString:", @"NO"), v17 = MEMORY[0x1E695E110], v19))
          {
            [v7 setValue:v17 forKey:v14];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v20 = v7;
    *destinationCopy = v7;

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (int64_t)_actionFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"error"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"fault"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"success"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"exit"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"spin"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"hang"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"wait"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"pause"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"replace_action"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"replace_event"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"modify_param"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_triggerFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"begin"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"end"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"fsm"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearAllEventAlterations
{
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SUCoreSimulate_clearAllEventAlterations__block_invoke;
    block[3] = &unk_1E86FC178;
    block[4] = self;
    dispatch_sync(simulateQueue2, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    oslog = [v5 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot clear events (simulator disabled)", v7, 2u);
    }

    NSLog(@"[SIMULATE] cannot clear events (simulator disabled)");
  }
}

uint64_t __42__SUCoreSimulate_clearAllEventAlterations__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEventAlterations:0];
  [*(a1 + 32) setAlterationsPerformed:0];
  v2 = *(a1 + 32);

  return [v2 setLastAlteration:0];
}

- (void)dumpAllEventAlterations
{
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SUCoreSimulate_dumpAllEventAlterations__block_invoke;
    block[3] = &unk_1E86FC178;
    block[4] = self;
    dispatch_sync(simulateQueue2, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    oslog = [v5 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot dump events (simulator disabled)", v7, 2u);
    }

    NSLog(@"[SIMULATE] cannot dump events (simulator disabled)");
  }
}

- (void)_dumpAllEventAlterations
{
  v42 = *MEMORY[0x1E69E9840];
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  eventAlterations = [(SUCoreSimulate *)self eventAlterations];

  if (eventAlterations)
  {
    eventAlterations2 = [(SUCoreSimulate *)self eventAlterations];
    v6 = eventAlterations2;
    if (eventAlterations2)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = [eventAlterations2 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v28)
      {
        v7 = 0;
        v27 = *v35;
        v26 = v6;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(v6);
            }

            v9 = [v6 safeObjectForKey:*(*(&v34 + 1) + 8 * i) ofClass:objc_opt_class()];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v10 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
            if (v10)
            {
              v11 = v10;
              v29 = i;
              v12 = *v31;
              do
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v31 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v30 + 1) + 8 * j);
                  v15 = +[SUCoreLog sharedLogger];
                  oslog = [v15 oslog];

                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    summary = [v14 summary];
                    *buf = 138412290;
                    v39 = summary;
                    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] dump all events - %@", buf, 0xCu);
                  }

                  summary2 = [v14 summary];
                  NSLog(@"[SIMULATE] dump all events - %@", summary2);
                }

                v11 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
              }

              while (v11);
              v7 = 1;
              v6 = v26;
              i = v29;
            }
          }

          v28 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v28);
        if (v7)
        {
          goto LABEL_31;
        }
      }

      v19 = +[SUCoreLog sharedLogger];
      oslog2 = [v19 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SIMULATE] dump all events - empty simulate events", buf, 2u);
      }

      v21 = @"[SIMULATE] dump all events - empty simulate events";
    }

    else
    {
      v24 = +[SUCoreLog sharedLogger];
      oslog2 = [v24 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SIMULATE] dump all events - no simulate events", buf, 2u);
      }

      v21 = @"[SIMULATE] dump all events - no simulate events";
    }

    NSLog(v21);
LABEL_31:

    goto LABEL_32;
  }

  v22 = +[SUCoreLog sharedLogger];
  oslog3 = [v22 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot dump events (no persisted state)", buf, 2u);
  }

  NSLog(@"[SIMULATE] cannot dump events (no persisted state)");
LABEL_32:
  v25 = *MEMORY[0x1E69E9840];
}

- (int)countOfAlterationsPerformed
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SUCoreSimulate_countOfAlterationsPerformed__block_invoke;
    block[3] = &unk_1E86FC1A0;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(simulateQueue2, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    oslog = [v5 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot provide count of alterations (simulator disabled)", v9, 2u);
    }

    NSLog(@"[SIMULATE] cannot provide count of alterations (simulator disabled)");
  }

  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __45__SUCoreSimulate_countOfAlterationsPerformed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) alterationsPerformed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)lastAlterationPerformed
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SUCoreSimulate_lastAlterationPerformed__block_invoke;
    block[3] = &unk_1E86FC1A0;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(simulateQueue2, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    oslog = [v5 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot provide last alterations (simulator disabled)", v9, 2u);
    }

    NSLog(@"[SIMULATE] cannot provide last alterations (simulator disabled)");
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __41__SUCoreSimulate_lastAlterationPerformed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastAlteration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)begin:(id)begin atFunction:(id)function
{
  beginCopy = begin;
  functionCopy = function;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __35__SUCoreSimulate_begin_atFunction___block_invoke;
    v17 = &unk_1E86FC1C8;
    v21 = &v22;
    selfCopy = self;
    v19 = beginCopy;
    v20 = functionCopy;
    dispatch_sync(simulateQueue2, &v14);

    selfCopy = [(SUCoreSimulate *)self _performOffQueueEvent:v23[5], v14, v15, v16, v17, selfCopy];
    v11 = v23[5];
    v23[5] = selfCopy;
  }

  v12 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __35__SUCoreSimulate_begin_atFunction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locateEventForModule:*(a1 + 40) forIdentity:*(a1 + 48) withTrigger:1 forEvent:0 inState:0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40) && ([*(a1 + 40) isEqualToString:@"*"] & 1) == 0)
  {
    v5 = [*(a1 + 32) _locateEventForModule:@"*" forIdentity:*(a1 + 48) withTrigger:1 forEvent:0 inState:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)end:(id)end atFunction:(id)function
{
  endCopy = end;
  functionCopy = function;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __33__SUCoreSimulate_end_atFunction___block_invoke;
    v17 = &unk_1E86FC1C8;
    v21 = &v22;
    selfCopy = self;
    v19 = endCopy;
    v20 = functionCopy;
    dispatch_sync(simulateQueue2, &v14);

    selfCopy = [(SUCoreSimulate *)self _performOffQueueEvent:v23[5], v14, v15, v16, v17, selfCopy];
    v11 = v23[5];
    v23[5] = selfCopy;
  }

  v12 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __33__SUCoreSimulate_end_atFunction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locateEventForModule:*(a1 + 40) forIdentity:*(a1 + 48) withTrigger:2 forEvent:0 inState:0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40) && ([*(a1 + 40) isEqualToString:@"*"] & 1) == 0)
  {
    v5 = [*(a1 + 32) _locateEventForModule:@"*" forIdentity:*(a1 + 48) withTrigger:2 forEvent:0 inState:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)fsm:(id)fsm forEvent:(id)event inState:(id)state
{
  fsmCopy = fsm;
  eventCopy = event;
  stateCopy = state;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    simulateQueue = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(simulateQueue);

    simulateQueue2 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SUCoreSimulate_fsm_forEvent_inState___block_invoke;
    block[3] = &unk_1E86FC1F0;
    v21 = &v22;
    block[4] = self;
    v18 = fsmCopy;
    v19 = eventCopy;
    v20 = stateCopy;
    dispatch_sync(simulateQueue2, block);

    v13 = [(SUCoreSimulate *)self _performOffQueueEvent:v23[5]];
    v14 = v23[5];
    v23[5] = v13;
  }

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __39__SUCoreSimulate_fsm_forEvent_inState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locateEventForModule:@"fsm" forIdentity:*(a1 + 40) withTrigger:3 forEvent:*(a1 + 48) inState:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)generateError:(id)error ofDomain:(id)domain withCode:(int64_t)code
{
  v7 = MEMORY[0x1E695DF90];
  domainCopy = domain;
  errorCopy = error;
  v10 = objc_alloc_init(v7);
  code = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[SIMULATED_ERROR] created by %@ (for domain=%@, code=%ld)", errorCopy, domainCopy, code];

  [v10 setSafeObject:code forKey:*MEMORY[0x1E696A578]];
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:domainCopy code:code userInfo:v10];

  return v12;
}

- (id)_locateEventForModule:(id)module forIdentity:(id)identity withTrigger:(int64_t)trigger forEvent:(id)event inState:(id)state
{
  v48 = *MEMORY[0x1E69E9840];
  moduleCopy = module;
  identityCopy = identity;
  eventCopy = event;
  stateCopy = state;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  eventAlterations = [(SUCoreSimulate *)self eventAlterations];

  if (!eventAlterations)
  {
    goto LABEL_30;
  }

  selfCopy = self;
  eventAlterations2 = [(SUCoreSimulate *)self eventAlterations];
  v17 = [eventAlterations2 safeObjectForKey:moduleCopy ofClass:objc_opt_class()];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v19)
  {

LABEL_30:
    v33 = 0;
    goto LABEL_31;
  }

  v20 = v19;
  v37 = moduleCopy;
  v41 = 0;
  v42 = v18;
  v21 = *v44;
  v22 = selfCopy;
  triggerCopy4 = trigger;
  do
  {
    v24 = 0;
    do
    {
      if (*v44 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v25 = *(*(&v43 + 1) + 8 * v24);
      identityName = [v25 identityName];
      v27 = [identityName isEqualToString:identityCopy];
      if (!eventCopy)
      {
        if (!v27)
        {
          goto LABEL_19;
        }

        simTrigger = [v25 simTrigger];

        if (simTrigger == triggerCopy4)
        {
          [v25 setCount:{objc_msgSend(v25, "count") + 1}];
          v18 = v42;
          if (![(SUCoreSimulate *)v22 _isValidEvent:v25])
          {
            goto LABEL_20;
          }

          identityName = v41;
          v41 = v25;
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      if (!v27 || [v25 simTrigger] != triggerCopy4)
      {
        goto LABEL_19;
      }

      fsmEvent = [v25 fsmEvent];
      if (([fsmEvent isEqualToString:eventCopy] & 1) == 0)
      {

        v18 = v42;
        goto LABEL_19;
      }

      fsmState = [v25 fsmState];
      v30 = [fsmState isEqualToString:stateCopy];

      if (!v30)
      {
        v22 = selfCopy;
        triggerCopy4 = trigger;
LABEL_23:
        v18 = v42;
        goto LABEL_20;
      }

      [v25 setCount:{objc_msgSend(v25, "count") + 1}];
      v22 = selfCopy;
      v18 = v42;
      if ([(SUCoreSimulate *)selfCopy _isValidEvent:v25])
      {
        identityName = v41;
        v41 = v25;
        triggerCopy4 = trigger;
LABEL_19:

        goto LABEL_20;
      }

      triggerCopy4 = trigger;
LABEL_20:
      ++v24;
    }

    while (v20 != v24);
    v32 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
    v20 = v32;
  }

  while (v32);

  v33 = v41;
  if (v41)
  {
    moduleCopy = v37;
    if ([(SUCoreSimulate *)v22 _isImmediateEvent:v41])
    {
      v34 = [(SUCoreSimulate *)v22 _performSimulatedEventAlteration:v41];

      v33 = v34;
    }

    else
    {
      [(SUCoreSimulate *)v22 _triggerOffQueueAlteration:v41];
    }
  }

  else
  {
    moduleCopy = v37;
  }

LABEL_31:

  v35 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BOOL)_isValidEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    if ([eventCopy startAt] == -1)
    {
      v6 = 1;
    }

    else
    {
      v5 = [v4 count];
      v6 = v5 >= [v4 startAt];
    }

    if ([v4 endAt] != -1)
    {
      v7 = [v4 count];
      v6 &= v7 <= [v4 endAt];
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    summary = [v4 summary];
    v11 = summary;
    if (v6)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138412546;
    v19 = summary;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] located event: %@ | valid=%@", buf, 0x16u);
  }

  summary2 = [v4 summary];
  v14 = summary2;
  if (v6)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  NSLog(@"[SIMULATE] located event: %@ | valid=%@", summary2, v15);

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_isImmediateEvent:(id)event
{
  eventCopy = event;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  if ([eventCopy duration] > 0)
  {
    goto LABEL_6;
  }

  untilStop = [eventCopy untilStop];

  if (untilStop)
  {
    goto LABEL_6;
  }

  simAction = [eventCopy simAction];
  if (simAction >= 0xC)
  {
    v9 = +[SUCoreDiag sharedDiag];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    summary = [eventCopy summary];
    v12 = [v10 initWithFormat:@"unknown simulate action: %@", summary];
    [v9 trackError:@"[SIMULATE] PERFORM" forReason:v12 withResult:8113 withError:0];

LABEL_6:
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v8 = 0xE1Fu >> simAction;
LABEL_7:

  return v8 & 1;
}

- (id)_performSimulatedEventAlteration:(id)alteration
{
  v26 = *MEMORY[0x1E69E9840];
  alterationCopy = alteration;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  simAction = [alterationCopy simAction];
  if (simAction <= 4)
  {
    if (simAction <= 1)
    {
      if (!simAction)
      {
        v19 = +[SUCoreLog sharedLogger];
        oslog = [v19 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          summary = [alterationCopy summary];
          *buf = 138412290;
          v25 = summary;
          _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM - no simulated action: %@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      if (simAction != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (simAction == 2)
      {
        [(SUCoreSimulate *)self _performingAlteration:alterationCopy];
        v17 = +[SUCoreLog sharedLogger];
        oslog2 = [v17 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_FAULT))
        {
          [(SUCoreSimulate *)self _performSimulatedEventAlteration:alterationCopy, oslog2];
        }

        goto LABEL_24;
      }

      if (simAction != 3)
      {
        [(SUCoreSimulate *)self _performingAlteration:alterationCopy];
        exit(9900);
      }
    }

    goto LABEL_14;
  }

  if (simAction >= 9)
  {
    if (simAction != 9 && simAction != 10)
    {
      if (simAction == 11)
      {
        oslog = +[SUCoreDiag sharedDiag];
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        summary2 = [alterationCopy summary];
        v15 = [v14 initWithFormat:@"modify param not yet supported: %@", summary2];
LABEL_21:
        v10 = v15;
        v11 = oslog;
        v12 = v10;
        v13 = 8113;
        goto LABEL_22;
      }

LABEL_20:
      oslog = +[SUCoreDiag sharedDiag];
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      summary2 = [alterationCopy summary];
      v15 = [v21 initWithFormat:@"unknown simulate action: %@", summary2];
      goto LABEL_21;
    }

LABEL_14:
    [(SUCoreSimulate *)self _performingAlteration:alterationCopy];
    v16 = alterationCopy;
    goto LABEL_25;
  }

  oslog = +[SUCoreDiag sharedDiag];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  summary2 = [alterationCopy summary];
  v10 = [v8 initWithFormat:@"should be off-queue when performing simulate action: %@", summary2];
  v11 = oslog;
  v12 = v10;
  v13 = 8117;
LABEL_22:
  [v11 trackError:@"[SIMULATE] PERFORM" forReason:v12 withResult:v13 withError:0];

LABEL_23:
LABEL_24:
  v16 = 0;
LABEL_25:

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_performOffQueueEvent:(id)event
{
  v58[4] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_not_V2(simulateQueue);

  if (!eventCopy)
  {
    goto LABEL_49;
  }

  untilStop = [eventCopy untilStop];

  if (untilStop)
  {
    v7 = *MEMORY[0x1E696A3A8];
    v8 = *MEMORY[0x1E696A370];
    v57[0] = *MEMORY[0x1E696A3A0];
    v57[1] = v8;
    v58[0] = v7;
    v58[1] = &unk_1F5BE9778;
    v9 = *MEMORY[0x1E696A328];
    v57[2] = *MEMORY[0x1E696A360];
    v57[3] = v9;
    v58[2] = @"root";
    v58[3] = @"wheel";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:4];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    untilStop2 = [eventCopy untilStop];
    summary = [eventCopy summary];
    v14 = [summary dataUsingEncoding:4];
    v15 = [defaultManager createFileAtPath:untilStop2 contents:v14 attributes:v10];

    if (v15)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = dispatch_get_current_queue();
      untilStop8 = [v16 stringWithUTF8String:dispatch_queue_get_label(v17)];

      v19 = +[SUCoreLog sharedLogger];
      oslog = [v19 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        untilStop3 = [eventCopy untilStop];
        *buf = 138412546;
        *v56 = untilStop3;
        *&v56[8] = 2112;
        *&v56[10] = untilStop8;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - pausing until stop file(%@) has been deleted (running on queue %@)...", buf, 0x16u);
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      untilStop4 = [eventCopy untilStop];
      v24 = [defaultManager2 fileExistsAtPath:untilStop4];

      if (v24)
      {
        do
        {
          sleep(1u);
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          untilStop5 = [eventCopy untilStop];
          v27 = [defaultManager3 fileExistsAtPath:untilStop5];
        }

        while ((v27 & 1) != 0);
      }

      v28 = +[SUCoreLog sharedLogger];
      oslog2 = [v28 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        untilStop6 = [eventCopy untilStop];
        *buf = 138412290;
        *v56 = untilStop6;
        _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - ...pausing [stop file(%@) has been deleted]", buf, 0xCu);
      }
    }

    else
    {
      v31 = +[SUCoreLog sharedLogger];
      oslog3 = [v31 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        untilStop7 = [eventCopy untilStop];
        *buf = 138412290;
        *v56 = untilStop7;
        _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - unable to create stop file(%@)", buf, 0xCu);
      }

      untilStop8 = [eventCopy untilStop];
      NSLog(@"[SIMULATE] PERFORM(OFF_QUEUE) - unable to create stop file(%@)", untilStop8);
    }
  }

  if ([eventCopy duration] > 0)
  {
    goto LABEL_16;
  }

  untilStop9 = [eventCopy untilStop];
  if (untilStop9)
  {
LABEL_28:

    goto LABEL_29;
  }

  if ([eventCopy simAction] == 8)
  {
LABEL_16:
    if ([eventCopy duration] < 1)
    {
      duration = 5;
    }

    else
    {
      duration = [eventCopy duration];
    }

    v36 = +[SUCoreLog sharedLogger];
    oslog4 = [v36 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      v38 = @"s";
      if (duration == 1)
      {
        v38 = &stru_1F5BDE410;
      }

      *buf = 67109378;
      *v56 = duration;
      *&v56[4] = 2112;
      *&v56[6] = v38;
      _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - sleeping for %d second%@...", buf, 0x12u);
    }

    sleep(duration);
    v39 = +[SUCoreLog sharedLogger];
    untilStop9 = [v39 oslog];

    if (os_log_type_enabled(untilStop9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, untilStop9, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - ...sleeping", buf, 2u);
    }

    goto LABEL_28;
  }

LABEL_29:
  simAction = [eventCopy simAction];
  if (simAction <= 5)
  {
    if (simAction > 2)
    {
      if (simAction != 3)
      {
        if (simAction != 4)
        {
            ;
          }

          goto LABEL_49;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (!simAction)
      {
        goto LABEL_46;
      }

      if (simAction != 1)
      {
        if (simAction != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    goto LABEL_44;
  }

  if (simAction > 8)
  {
    if ((simAction - 9) >= 2)
    {
      if (simAction != 11)
      {
LABEL_56:
        v42 = +[SUCoreDiag sharedDiag];
        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        summary2 = [eventCopy summary];
        v45 = [v50 initWithFormat:@"unknown simulate action: %@", summary2];
        goto LABEL_47;
      }

LABEL_46:
      v42 = +[SUCoreDiag sharedDiag];
      v43 = objc_alloc(MEMORY[0x1E696AEC0]);
      summary2 = [eventCopy summary];
      v45 = [v43 initWithFormat:@"action should never be indicated when handling off-queue: %@", summary2];
LABEL_47:
      v46 = v45;
      [v42 trackError:@"[SIMULATE] PERFORM(OFF_QUEUE)" forReason:v45 withResult:8113 withError:0];

      goto LABEL_48;
    }

LABEL_44:
    v41 = eventCopy;
    goto LABEL_50;
  }

  if (simAction == 6)
  {
    v42 = dispatch_semaphore_create(0);
    dispatch_semaphore_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (simAction != 7)
    {
      goto LABEL_49;
    }

    registeredCallback = [(SUCoreSimulate *)self registeredCallback];
    v42 = registeredCallback;
    if (registeredCallback)
    {
      (*(registeredCallback + 16))(registeredCallback, eventCopy);
    }

    else
    {
      v51 = +[SUCoreDiag sharedDiag];
      v52 = objc_alloc(MEMORY[0x1E696AEC0]);
      summary3 = [eventCopy summary];
      v54 = [v52 initWithFormat:@"no registered callback when handling off-queue: %@", summary3];
      [v51 trackError:@"[SIMULATE] PERFORM(OFF_QUEUE)" forReason:v54 withResult:8101 withError:0];
    }
  }

LABEL_48:

LABEL_49:
  v41 = 0;
LABEL_50:

  v47 = *MEMORY[0x1E69E9840];

  return v41;
}

- (void)_performingAlteration:(id)alteration
{
  v14 = *MEMORY[0x1E69E9840];
  alterationCopy = alteration;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  [(SUCoreSimulate *)self setAlterationsPerformed:[(SUCoreSimulate *)self alterationsPerformed]+ 1];
  [(SUCoreSimulate *)self setLastAlteration:alterationCopy];
  v6 = +[SUCoreLog sharedLogger];
  oslog = [v6 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    alterationsPerformed = [(SUCoreSimulate *)self alterationsPerformed];
    summary = [alterationCopy summary];
    v11[0] = 67109378;
    v11[1] = alterationsPerformed;
    v12 = 2112;
    v13 = summary;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM #%d - %@", v11, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_triggerOffQueueAlteration:(id)alteration
{
  v14 = *MEMORY[0x1E69E9840];
  alterationCopy = alteration;
  simulateQueue = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(simulateQueue);

  [(SUCoreSimulate *)self setAlterationsPerformed:[(SUCoreSimulate *)self alterationsPerformed]+ 1];
  [(SUCoreSimulate *)self setLastAlteration:alterationCopy];
  v6 = +[SUCoreLog sharedLogger];
  oslog = [v6 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    alterationsPerformed = [(SUCoreSimulate *)self alterationsPerformed];
    summary = [alterationCopy summary];
    v11[0] = 67109378;
    v11[1] = alterationsPerformed;
    v12 = 2112;
    v13 = summary;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SIMULATE] TRIGGER #%d - %@", v11, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_performSimulatedEventAlteration:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 alterationsPerformed];
  v6 = [a2 summary];
  v8[0] = 67109378;
  v8[1] = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&dword_1E0F71000, a3, OS_LOG_TYPE_FAULT, "[SIMULATE] PERFORM #%d - causing fault: %@", v8, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

@end