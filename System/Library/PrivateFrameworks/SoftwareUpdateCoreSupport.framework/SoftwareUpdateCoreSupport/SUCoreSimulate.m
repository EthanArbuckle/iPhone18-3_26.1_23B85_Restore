@interface SUCoreSimulate
+ (id)sharedSimulator;
- (BOOL)_isImmediateEvent:(id)a3;
- (BOOL)_isValidEvent:(id)a3;
- (BOOL)_parseDictionaryFromString:(id)a3 destination:(id *)a4;
- (BOOL)_parseErrorCodeFromString:(id)a3 destination:(int64_t *)a4;
- (BOOL)_parseEventBooleanFromString:(id)a3 destination:(int64_t *)a4;
- (BOOL)_parseIntFromString:(id)a3 destination:(int *)a4;
- (BOOL)_parseOptionalEntriesInLineFromWords:(id)a3 argStartAt:(int *)a4 argEndAt:(int *)a5 argDuration:(int *)a6 argUntilStop:(id *)a7 argAssetBuildVersions:(id *)a8 argAssetProductVersions:(id *)a9 argAssetAttributesPlist:(id *)a10 argAssetState:(id *)a11 argUpdateInfoPlist:(id *)a12 argErrorDomain:(id *)a13 argErrorCode:(int64_t *)a14 argErrorUserInfo:(id *)a15 argErrorRecoverable:(int64_t *)a16;
- (SUCoreSimulate)init;
- (id)_eventFromLine:(id)a3;
- (id)_locateEventForModule:(id)a3 forIdentity:(id)a4 withTrigger:(int64_t)a5 forEvent:(id)a6 inState:(id)a7;
- (id)_performOffQueueEvent:(id)a3;
- (id)_performSimulatedEventAlteration:(id)a3;
- (id)_splitString:(id)a3 byTheFirstOccurrenceOf:(id)a4;
- (id)begin:(id)a3 atFunction:(id)a4;
- (id)end:(id)a3 atFunction:(id)a4;
- (id)fsm:(id)a3 forEvent:(id)a4 inState:(id)a5;
- (id)generateError:(id)a3 ofDomain:(id)a4 withCode:(int64_t)a5;
- (id)lastAlterationPerformed;
- (int)countOfAlterationsPerformed;
- (int64_t)_actionFromString:(id)a3;
- (int64_t)_triggerFromString:(id)a3;
- (void)_adoptAllEventAlterations:(id)a3;
- (void)_dumpAllEventAlterations;
- (void)_performingAlteration:(id)a3;
- (void)_triggerOffQueueAlteration:(id)a3;
- (void)adoptAllEventAlterations:(id)a3;
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
    v7 = [v6 commonDomain];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v7, @"core.simulate"];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    simulateQueue = v2->_simulateQueue;
    v2->_simulateQueue = v11;

    if (v2->_simulateQueue)
    {
      v13 = +[SUCoreLog sharedLogger];
      v14 = [v13 oslog];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = @"core.simulate";
        _os_log_impl(&dword_1E0F71000, v14, OS_LOG_TYPE_DEFAULT, "[SIMULATE] DISPATCH: created simulate dispatch queue domain(%@.%@)", buf, 0x16u);
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

- (void)adoptAllEventAlterations:(id)a3
{
  v4 = a3;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    v5 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v5);

    v6 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SUCoreSimulate_adoptAllEventAlterations___block_invoke;
    block[3] = &unk_1E86FC150;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v6, block);
  }

  else
  {
    v7 = +[SUCoreLog sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0F71000, v8, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot adopt event alterations (simulator disabled)", v9, 2u);
    }

    NSLog(@"[SIMULATE] cannot adopt event alterations (simulator disabled)");
  }
}

- (void)_adoptAllEventAlterations:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreSimulate *)self eventAlterations];

  if (!v6)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    if (![v8 fileExistsAtPath:v4])
    {
      v12 = +[SUCoreLog sharedLogger];
      v13 = [v12 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v4;
        _os_log_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_DEFAULT, "[SIMULATE] simulate event alterations file does not exist (file non-existent): %@", buf, 0xCu);
      }

      NSLog(@"[SIMULATE] simulate event alterations file does not exist (file non-existent): %@", v4);
      goto LABEL_33;
    }

    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v44 = 0;
    v9 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v4 encoding:1 error:&v44];
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
      v36 = v8;
      v37 = v4;
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
                v25 = [v23 moduleName];
                v26 = [v39 safeObjectForKey:v25 ofClass:objc_opt_class()];

                if (!v26)
                {
                  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v27 = [v24 moduleName];
                  [v39 setSafeObject:v26 forKey:v27];
                }

                v28 = +[SUCoreLog sharedLogger];
                v29 = [v28 oslog];

                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v24 summary];
                  *buf = 138412290;
                  v46 = v30;
                  _os_log_impl(&dword_1E0F71000, v29, OS_LOG_TYPE_DEFAULT, "[SIMULATE] adding event: %@", buf, 0xCu);
                }

                [v26 addObject:v24];
              }

              else
              {
                v31 = +[SUCoreLog sharedLogger];
                v32 = [v31 oslog];

                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v46 = v20;
                  _os_log_impl(&dword_1E0F71000, v32, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing line: %@", buf, 0xCu);
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

      v8 = v36;
      v4 = v37;
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

- (id)_eventFromLine:(id)a3
{
  v4 = a3;
  v58 = -1;
  v59[0] = -1;
  v57 = -1;
  v55 = 0;
  v56 = 0;
  v5 = [v4 componentsSeparatedByString:@"--"];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];

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
    v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v13 = [v11 stringByTrimmingCharactersInSet:v12];

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
      v41 = v4;
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
      v41 = v4;
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
      v4 = v41;
      if (v31)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_25:
  v34 = +[SUCoreDiag sharedDiag];
  [v34 trackAnomaly:@"[SIMULATE] SETUP" forReason:v4 withResult:8112 withError:0];

  v31 = 0;
LABEL_26:

  return v31;
}

- (id)_splitString:(id)a3 byTheFirstOccurrenceOf:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 rangeOfString:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v5 substringToIndex:v6];
    v10 = [v5 substringFromIndex:v8 + 1];
    v13[0] = v9;
    v13[1] = v10;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_parseOptionalEntriesInLineFromWords:(id)a3 argStartAt:(int *)a4 argEndAt:(int *)a5 argDuration:(int *)a6 argUntilStop:(id *)a7 argAssetBuildVersions:(id *)a8 argAssetProductVersions:(id *)a9 argAssetAttributesPlist:(id *)a10 argAssetState:(id *)a11 argUpdateInfoPlist:(id *)a12 argErrorDomain:(id *)a13 argErrorCode:(int64_t *)a14 argErrorUserInfo:(id *)a15 argErrorRecoverable:(int64_t *)a16
{
  v129 = *MEMORY[0x1E69E9840];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = a3;
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
  v112 = a8;
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
        v33 = [v32 oslog];

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v125 = v23;
          _os_log_impl(&dword_1E0F71000, v33, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing tokens (unexpected format, expected 'key=value') for: '%@'", buf, 0xCu);
        }

        NSLog(@"[SIMULATE] failed parsing tokens (unexpected format, expected 'key=value') for: '%@'", v23);
        goto LABEL_16;
      }

      v26 = [v25 objectAtIndexedSubscript:0];
      v27 = [v26 isEqualToString:@"startAt"];

      if (v27)
      {
        v28 = [v25 objectAtIndexedSubscript:1];
        v29 = [(SUCoreSimulate *)self _parseIntFromString:v28 destination:a4];

        if (v29)
        {
          goto LABEL_17;
        }

        v30 = +[SUCoreLog sharedLogger];
        v31 = [v30 oslog];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v125 = v23;
          _os_log_impl(&dword_1E0F71000, v31, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'startAt' (expected int) for: '%@'", buf, 0xCu);
        }

        NSLog(@"[SIMULATE] failed parsing 'startAt' (expected int) for: '%@'", v23);
        goto LABEL_16;
      }

      v34 = [v25 objectAtIndexedSubscript:0];
      v35 = [v34 isEqualToString:@"endAt"];

      if (v35)
      {
        v36 = [v25 objectAtIndexedSubscript:1];
        v37 = [(SUCoreSimulate *)self _parseIntFromString:v36 destination:a5];

        if (!v37)
        {
          v38 = +[SUCoreLog sharedLogger];
          v39 = [v38 oslog];

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v125 = v23;
            _os_log_impl(&dword_1E0F71000, v39, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'endAt' (expected int) for: '%@'", buf, 0xCu);
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
          v43 = [(SUCoreSimulate *)self _parseIntFromString:v42 destination:a6];

          if (!v43)
          {
            v44 = +[SUCoreLog sharedLogger];
            v45 = [v44 oslog];

            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v125 = v23;
              _os_log_impl(&dword_1E0F71000, v45, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'duration' (expected int) for: '%@'", buf, 0xCu);
            }

            NSLog(@"[SIMULATE] failed parsing 'duration' (expected int) for: '%@'", v23);
            goto LABEL_16;
          }
        }

        else
        {
          v46 = [v25 objectAtIndexedSubscript:0];
          v47 = [v46 isEqualToString:@"untilStop"];

          if (a7 && v47)
          {
            *a7 = [v25 objectAtIndexedSubscript:1];
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

          if (a10 && v57)
          {
            *a10 = [v25 objectAtIndexedSubscript:1];
            v58 = +[SUCoreLog sharedLogger];
            v59 = [v58 oslog];

            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = *a10;
              *buf = 138412290;
              v125 = v60;
              v61 = v59;
              v62 = "[SIMULATE] using assetAttributesPlist: '%@'";
              goto LABEL_52;
            }

LABEL_53:

            goto LABEL_17;
          }

          v63 = [v25 objectAtIndexedSubscript:0];
          v64 = [v63 isEqualToString:@"assetState"];

          if (a11 && v64)
          {
            *a11 = [v25 objectAtIndexedSubscript:1];
            v65 = +[SUCoreLog sharedLogger];
            v59 = [v65 oslog];

            if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_53;
            }

            v66 = *a11;
            *buf = 138412290;
            v125 = v66;
            v61 = v59;
            v62 = "[SIMULATE] using assetState: '%@'";
LABEL_52:
            _os_log_impl(&dword_1E0F71000, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0xCu);
            goto LABEL_53;
          }

          v67 = [v25 objectAtIndexedSubscript:0];
          v68 = [v67 isEqualToString:@"updateInfoPlist"];

          if (a12 && v68)
          {
            *a12 = [v25 objectAtIndexedSubscript:1];
            v69 = +[SUCoreLog sharedLogger];
            v59 = [v69 oslog];

            if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_53;
            }

            v70 = *a12;
            *buf = 138412290;
            v125 = v70;
            v61 = v59;
            v62 = "[SIMULATE] using updateInfoPlist: '%@'";
            goto LABEL_52;
          }

          v71 = [v25 objectAtIndexedSubscript:0];
          v72 = [v71 isEqualToString:@"errorDomain"];

          if (a13 && v72)
          {
            *a13 = [v25 objectAtIndexedSubscript:1];
            v73 = +[SUCoreLog sharedLogger];
            v59 = [v73 oslog];

            if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_53;
            }

            v74 = *a13;
            *buf = 138412290;
            v125 = v74;
            v61 = v59;
            v62 = "[SIMULATE] using errorDomain: '%@'";
            goto LABEL_52;
          }

          v75 = [v25 objectAtIndexedSubscript:0];
          v76 = [v75 isEqualToString:@"errorCode"];

          if (a14 && v76)
          {
            v77 = [v25 objectAtIndexedSubscript:1];
            v78 = [(SUCoreSimulate *)self _parseErrorCodeFromString:v77 destination:a14];

            if (!v78)
            {
              v79 = +[SUCoreLog sharedLogger];
              v80 = [v79 oslog];

              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v125 = v23;
                _os_log_impl(&dword_1E0F71000, v80, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'errorCode' (expected SUCoreErrorCode) for: '%@'", buf, 0xCu);
              }

              NSLog(@"[SIMULATE] failed parsing 'errorCode' (expected SUCoreErrorCode) for: '%@'", v23);
              goto LABEL_16;
            }
          }

          else
          {
            v81 = [v25 objectAtIndexedSubscript:0];
            v82 = [v81 isEqualToString:@"errorUserInfo"];

            if (a15 && v82)
            {
              v83 = [v25 objectAtIndexedSubscript:1];
              v84 = [(SUCoreSimulate *)self _parseDictionaryFromString:v83 destination:a15];

              if (!v84)
              {
                v85 = +[SUCoreLog sharedLogger];
                v86 = [v85 oslog];

                if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v125 = v23;
                  _os_log_impl(&dword_1E0F71000, v86, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'errorUserInfo' (expected {k1=v1;k2=v2;}) for: '%@'", buf, 0xCu);
                }

                NSLog(@"[SIMULATE] failed parsing 'errorUserInfo' (expected {k1=v1;k2=v2;}) for: '%@'", v23);
                goto LABEL_16;
              }
            }

            else
            {
              v87 = [v25 objectAtIndexedSubscript:0];
              v88 = [v87 isEqualToString:@"errorRecoverable"];

              if (!a16 || !v88)
              {
                v93 = +[SUCoreLog sharedLogger];
                v94 = [v93 oslog];

                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v125 = v23;
                  _os_log_impl(&dword_1E0F71000, v94, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing option (unexpected/unsupported option key) for: '%@'", buf, 0xCu);
                }

                NSLog(@"[SIMULATE] failed parsing option (unexpected/unsupported option key) for: '%@'", v23);
                goto LABEL_16;
              }

              v89 = [v25 objectAtIndexedSubscript:1];
              v90 = [(SUCoreSimulate *)self _parseEventBooleanFromString:v89 destination:a16];

              if (!v90)
              {
                v91 = +[SUCoreLog sharedLogger];
                v92 = [v91 oslog];

                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v125 = v23;
                  _os_log_impl(&dword_1E0F71000, v92, OS_LOG_TYPE_DEFAULT, "[SIMULATE] failed parsing 'errorRecoverable' (expected SUCoreSimulateEventBoolean) for: '%@'", buf, 0xCu);
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
      *v112 = v114;
      v102 = v113;
      *a9 = v113;
      goto LABEL_90;
    }

    v105 = +[SUCoreLog sharedLogger];
    v106 = [v105 oslog];

    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = [v114 count];
      v108 = [v113 count];
      *buf = 134218240;
      v125 = v107;
      v126 = 2048;
      v127 = v108;
      _os_log_impl(&dword_1E0F71000, v106, OS_LOG_TYPE_DEFAULT, "[SIMULATE] syntax error: assetBuildVersions (%lu) and assetProductVersions (%lu) must have the same count", buf, 0x16u);
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
    v104 = [v103 oslog];

    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v104, OS_LOG_TYPE_DEFAULT, "[SIMULATE] syntax error: assetBuildVersions and assetProductVersions must both be defined", buf, 2u);
    }

    NSLog(@"[SIMULATE] syntax error: assetBuildVersions and assetProductVersions must both be defined", v111);
    goto LABEL_89;
  }

LABEL_90:

  v109 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (BOOL)_parseIntFromString:(id)a3 destination:(int *)a4
{
  v5 = MEMORY[0x1E696ADA0];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v7 numberFromString:v6];

  if (v8)
  {
    *a4 = [v8 intValue];
  }

  return v8 != 0;
}

- (BOOL)_parseErrorCodeFromString:(id)a3 destination:(int64_t *)a4
{
  v5 = MEMORY[0x1E696ADA0];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v7 numberFromString:v6];

  if (v8)
  {
    *a4 = [v8 intValue];
  }

  return v8 != 0;
}

- (BOOL)_parseEventBooleanFromString:(id)a3 destination:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"none"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NONE"))
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"true"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"TRUE") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"t") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"T") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"yes") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"YES") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"y") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"Y"))
  {
    v6 = 2;
  }

  else
  {
    if (([v5 isEqualToString:@"false"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"FALSE") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"f") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"F") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"no") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"NO") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"n") & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"N"))
    {
      v7 = 0;
      goto LABEL_14;
    }

    v6 = 1;
  }

  *a4 = v6;
  v7 = 1;
LABEL_14:

  return v7;
}

- (BOOL)_parseDictionaryFromString:(id)a3 destination:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = v5;
  if (a4)
  {
    v6 = [v5 propertyListFromStringsFileFormat];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    v24 = a4;
    v8 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v8 setNumberStyle:1];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
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
    *v24 = v7;

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (int64_t)_actionFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"error"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"fault"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"success"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"exit"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"spin"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"hang"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"wait"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"pause"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"replace_action"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"replace_event"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"modify_param"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_triggerFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"begin"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"end"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"fsm"])
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
    v3 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v3);

    v4 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SUCoreSimulate_clearAllEventAlterations__block_invoke;
    block[3] = &unk_1E86FC178;
    block[4] = self;
    dispatch_sync(v4, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot clear events (simulator disabled)", v7, 2u);
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
    v3 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v3);

    v4 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SUCoreSimulate_dumpAllEventAlterations__block_invoke;
    block[3] = &unk_1E86FC178;
    block[4] = self;
    dispatch_sync(v4, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot dump events (simulator disabled)", v7, 2u);
    }

    NSLog(@"[SIMULATE] cannot dump events (simulator disabled)");
  }
}

- (void)_dumpAllEventAlterations
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCoreSimulate *)self eventAlterations];

  if (v4)
  {
    v5 = [(SUCoreSimulate *)self eventAlterations];
    v6 = v5;
    if (v5)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = [v5 countByEnumeratingWithState:&v34 objects:v41 count:16];
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
                  v16 = [v15 oslog];

                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    v17 = [v14 summary];
                    *buf = 138412290;
                    v39 = v17;
                    _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[SIMULATE] dump all events - %@", buf, 0xCu);
                  }

                  v18 = [v14 summary];
                  NSLog(@"[SIMULATE] dump all events - %@", v18);
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
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0F71000, v20, OS_LOG_TYPE_DEFAULT, "[SIMULATE] dump all events - empty simulate events", buf, 2u);
      }

      v21 = @"[SIMULATE] dump all events - empty simulate events";
    }

    else
    {
      v24 = +[SUCoreLog sharedLogger];
      v20 = [v24 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0F71000, v20, OS_LOG_TYPE_DEFAULT, "[SIMULATE] dump all events - no simulate events", buf, 2u);
      }

      v21 = @"[SIMULATE] dump all events - no simulate events";
    }

    NSLog(v21);
LABEL_31:

    goto LABEL_32;
  }

  v22 = +[SUCoreLog sharedLogger];
  v23 = [v22 oslog];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot dump events (no persisted state)", buf, 2u);
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
    v3 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v3);

    v4 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SUCoreSimulate_countOfAlterationsPerformed__block_invoke;
    block[3] = &unk_1E86FC1A0;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(v4, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot provide count of alterations (simulator disabled)", v9, 2u);
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
    v3 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v3);

    v4 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SUCoreSimulate_lastAlterationPerformed__block_invoke;
    block[3] = &unk_1E86FC1A0;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(v4, block);
  }

  else
  {
    v5 = +[SUCoreLog sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[SIMULATE] cannot provide last alterations (simulator disabled)", v9, 2u);
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

- (id)begin:(id)a3 atFunction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    v8 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v8);

    v9 = [(SUCoreSimulate *)self simulateQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __35__SUCoreSimulate_begin_atFunction___block_invoke;
    v17 = &unk_1E86FC1C8;
    v21 = &v22;
    v18 = self;
    v19 = v6;
    v20 = v7;
    dispatch_sync(v9, &v14);

    v10 = [(SUCoreSimulate *)self _performOffQueueEvent:v23[5], v14, v15, v16, v17, v18];
    v11 = v23[5];
    v23[5] = v10;
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

- (id)end:(id)a3 atFunction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    v8 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v8);

    v9 = [(SUCoreSimulate *)self simulateQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __33__SUCoreSimulate_end_atFunction___block_invoke;
    v17 = &unk_1E86FC1C8;
    v21 = &v22;
    v18 = self;
    v19 = v6;
    v20 = v7;
    dispatch_sync(v9, &v14);

    v10 = [(SUCoreSimulate *)self _performOffQueueEvent:v23[5], v14, v15, v16, v17, v18];
    v11 = v23[5];
    v23[5] = v10;
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

- (id)fsm:(id)a3 forEvent:(id)a4 inState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if ([(SUCoreSimulate *)self simulatorEnabled])
  {
    v11 = [(SUCoreSimulate *)self simulateQueue];
    dispatch_assert_queue_not_V2(v11);

    v12 = [(SUCoreSimulate *)self simulateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SUCoreSimulate_fsm_forEvent_inState___block_invoke;
    block[3] = &unk_1E86FC1F0;
    v21 = &v22;
    block[4] = self;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    dispatch_sync(v12, block);

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

- (id)generateError:(id)a3 ofDomain:(id)a4 withCode:(int64_t)a5
{
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[SIMULATED_ERROR] created by %@ (for domain=%@, code=%ld)", v9, v8, a5];

  [v10 setSafeObject:v11 forKey:*MEMORY[0x1E696A578]];
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v8 code:a5 userInfo:v10];

  return v12;
}

- (id)_locateEventForModule:(id)a3 forIdentity:(id)a4 withTrigger:(int64_t)a5 forEvent:(id)a6 inState:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v40 = a7;
  v14 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [(SUCoreSimulate *)self eventAlterations];

  if (!v15)
  {
    goto LABEL_30;
  }

  v38 = self;
  v16 = [(SUCoreSimulate *)self eventAlterations];
  v17 = [v16 safeObjectForKey:v11 ofClass:objc_opt_class()];

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
  v37 = v11;
  v41 = 0;
  v42 = v18;
  v21 = *v44;
  v22 = v38;
  v23 = a5;
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
      v26 = [v25 identityName];
      v27 = [v26 isEqualToString:v12];
      if (!v13)
      {
        if (!v27)
        {
          goto LABEL_19;
        }

        v31 = [v25 simTrigger];

        if (v31 == v23)
        {
          [v25 setCount:{objc_msgSend(v25, "count") + 1}];
          v18 = v42;
          if (![(SUCoreSimulate *)v22 _isValidEvent:v25])
          {
            goto LABEL_20;
          }

          v26 = v41;
          v41 = v25;
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      if (!v27 || [v25 simTrigger] != v23)
      {
        goto LABEL_19;
      }

      v28 = [v25 fsmEvent];
      if (([v28 isEqualToString:v13] & 1) == 0)
      {

        v18 = v42;
        goto LABEL_19;
      }

      v29 = [v25 fsmState];
      v30 = [v29 isEqualToString:v40];

      if (!v30)
      {
        v22 = v38;
        v23 = a5;
LABEL_23:
        v18 = v42;
        goto LABEL_20;
      }

      [v25 setCount:{objc_msgSend(v25, "count") + 1}];
      v22 = v38;
      v18 = v42;
      if ([(SUCoreSimulate *)v38 _isValidEvent:v25])
      {
        v26 = v41;
        v41 = v25;
        v23 = a5;
LABEL_19:

        goto LABEL_20;
      }

      v23 = a5;
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
    v11 = v37;
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
    v11 = v37;
  }

LABEL_31:

  v35 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BOOL)_isValidEvent:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 startAt] == -1)
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
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 summary];
    v11 = v10;
    if (v6)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1E0F71000, v9, OS_LOG_TYPE_DEFAULT, "[SIMULATE] located event: %@ | valid=%@", buf, 0x16u);
  }

  v13 = [v4 summary];
  v14 = v13;
  if (v6)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  NSLog(@"[SIMULATE] located event: %@ | valid=%@", v13, v15);

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_isImmediateEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 duration] > 0)
  {
    goto LABEL_6;
  }

  v6 = [v4 untilStop];

  if (v6)
  {
    goto LABEL_6;
  }

  v7 = [v4 simAction];
  if (v7 >= 0xC)
  {
    v9 = +[SUCoreDiag sharedDiag];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [v4 summary];
    v12 = [v10 initWithFormat:@"unknown simulate action: %@", v11];
    [v9 trackError:@"[SIMULATE] PERFORM" forReason:v12 withResult:8113 withError:0];

LABEL_6:
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v8 = 0xE1Fu >> v7;
LABEL_7:

  return v8 & 1;
}

- (id)_performSimulatedEventAlteration:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 simAction];
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        v19 = +[SUCoreLog sharedLogger];
        v7 = [v19 oslog];

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v4 summary];
          *buf = 138412290;
          v25 = v20;
          _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM - no simulated action: %@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      if (v6 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 2)
      {
        [(SUCoreSimulate *)self _performingAlteration:v4];
        v17 = +[SUCoreLog sharedLogger];
        v18 = [v17 oslog];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [(SUCoreSimulate *)self _performSimulatedEventAlteration:v4, v18];
        }

        goto LABEL_24;
      }

      if (v6 != 3)
      {
        [(SUCoreSimulate *)self _performingAlteration:v4];
        exit(9900);
      }
    }

    goto LABEL_14;
  }

  if (v6 >= 9)
  {
    if (v6 != 9 && v6 != 10)
    {
      if (v6 == 11)
      {
        v7 = +[SUCoreDiag sharedDiag];
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = [v4 summary];
        v15 = [v14 initWithFormat:@"modify param not yet supported: %@", v9];
LABEL_21:
        v10 = v15;
        v11 = v7;
        v12 = v10;
        v13 = 8113;
        goto LABEL_22;
      }

LABEL_20:
      v7 = +[SUCoreDiag sharedDiag];
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v4 summary];
      v15 = [v21 initWithFormat:@"unknown simulate action: %@", v9];
      goto LABEL_21;
    }

LABEL_14:
    [(SUCoreSimulate *)self _performingAlteration:v4];
    v16 = v4;
    goto LABEL_25;
  }

  v7 = +[SUCoreDiag sharedDiag];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [v4 summary];
  v10 = [v8 initWithFormat:@"should be off-queue when performing simulate action: %@", v9];
  v11 = v7;
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

- (id)_performOffQueueEvent:(id)a3
{
  v58[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_not_V2(v5);

  if (!v4)
  {
    goto LABEL_49;
  }

  v6 = [v4 untilStop];

  if (v6)
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
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v4 untilStop];
    v13 = [v4 summary];
    v14 = [v13 dataUsingEncoding:4];
    v15 = [v11 createFileAtPath:v12 contents:v14 attributes:v10];

    if (v15)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = dispatch_get_current_queue();
      v18 = [v16 stringWithUTF8String:dispatch_queue_get_label(v17)];

      v19 = +[SUCoreLog sharedLogger];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v4 untilStop];
        *buf = 138412546;
        *v56 = v21;
        *&v56[8] = 2112;
        *&v56[10] = v18;
        _os_log_impl(&dword_1E0F71000, v20, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - pausing until stop file(%@) has been deleted (running on queue %@)...", buf, 0x16u);
      }

      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [v4 untilStop];
      v24 = [v22 fileExistsAtPath:v23];

      if (v24)
      {
        do
        {
          sleep(1u);
          v25 = [MEMORY[0x1E696AC08] defaultManager];
          v26 = [v4 untilStop];
          v27 = [v25 fileExistsAtPath:v26];
        }

        while ((v27 & 1) != 0);
      }

      v28 = +[SUCoreLog sharedLogger];
      v29 = [v28 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v4 untilStop];
        *buf = 138412290;
        *v56 = v30;
        _os_log_impl(&dword_1E0F71000, v29, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - ...pausing [stop file(%@) has been deleted]", buf, 0xCu);
      }
    }

    else
    {
      v31 = +[SUCoreLog sharedLogger];
      v32 = [v31 oslog];

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v4 untilStop];
        *buf = 138412290;
        *v56 = v33;
        _os_log_impl(&dword_1E0F71000, v32, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - unable to create stop file(%@)", buf, 0xCu);
      }

      v18 = [v4 untilStop];
      NSLog(@"[SIMULATE] PERFORM(OFF_QUEUE) - unable to create stop file(%@)", v18);
    }
  }

  if ([v4 duration] > 0)
  {
    goto LABEL_16;
  }

  v35 = [v4 untilStop];
  if (v35)
  {
LABEL_28:

    goto LABEL_29;
  }

  if ([v4 simAction] == 8)
  {
LABEL_16:
    if ([v4 duration] < 1)
    {
      v34 = 5;
    }

    else
    {
      v34 = [v4 duration];
    }

    v36 = +[SUCoreLog sharedLogger];
    v37 = [v36 oslog];

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = @"s";
      if (v34 == 1)
      {
        v38 = &stru_1F5BDE410;
      }

      *buf = 67109378;
      *v56 = v34;
      *&v56[4] = 2112;
      *&v56[6] = v38;
      _os_log_impl(&dword_1E0F71000, v37, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - sleeping for %d second%@...", buf, 0x12u);
    }

    sleep(v34);
    v39 = +[SUCoreLog sharedLogger];
    v35 = [v39 oslog];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v35, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM(OFF_QUEUE) - ...sleeping", buf, 2u);
    }

    goto LABEL_28;
  }

LABEL_29:
  v40 = [v4 simAction];
  if (v40 <= 5)
  {
    if (v40 > 2)
    {
      if (v40 != 3)
      {
        if (v40 != 4)
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
      if (!v40)
      {
        goto LABEL_46;
      }

      if (v40 != 1)
      {
        if (v40 != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    goto LABEL_44;
  }

  if (v40 > 8)
  {
    if ((v40 - 9) >= 2)
    {
      if (v40 != 11)
      {
LABEL_56:
        v42 = +[SUCoreDiag sharedDiag];
        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v44 = [v4 summary];
        v45 = [v50 initWithFormat:@"unknown simulate action: %@", v44];
        goto LABEL_47;
      }

LABEL_46:
      v42 = +[SUCoreDiag sharedDiag];
      v43 = objc_alloc(MEMORY[0x1E696AEC0]);
      v44 = [v4 summary];
      v45 = [v43 initWithFormat:@"action should never be indicated when handling off-queue: %@", v44];
LABEL_47:
      v46 = v45;
      [v42 trackError:@"[SIMULATE] PERFORM(OFF_QUEUE)" forReason:v45 withResult:8113 withError:0];

      goto LABEL_48;
    }

LABEL_44:
    v41 = v4;
    goto LABEL_50;
  }

  if (v40 == 6)
  {
    v42 = dispatch_semaphore_create(0);
    dispatch_semaphore_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (v40 != 7)
    {
      goto LABEL_49;
    }

    v49 = [(SUCoreSimulate *)self registeredCallback];
    v42 = v49;
    if (v49)
    {
      (*(v49 + 16))(v49, v4);
    }

    else
    {
      v51 = +[SUCoreDiag sharedDiag];
      v52 = objc_alloc(MEMORY[0x1E696AEC0]);
      v53 = [v4 summary];
      v54 = [v52 initWithFormat:@"no registered callback when handling off-queue: %@", v53];
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

- (void)_performingAlteration:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreSimulate *)self setAlterationsPerformed:[(SUCoreSimulate *)self alterationsPerformed]+ 1];
  [(SUCoreSimulate *)self setLastAlteration:v4];
  v6 = +[SUCoreLog sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SUCoreSimulate *)self alterationsPerformed];
    v9 = [v4 summary];
    v11[0] = 67109378;
    v11[1] = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SIMULATE] PERFORM #%d - %@", v11, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_triggerOffQueueAlteration:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreSimulate *)self simulateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreSimulate *)self setAlterationsPerformed:[(SUCoreSimulate *)self alterationsPerformed]+ 1];
  [(SUCoreSimulate *)self setLastAlteration:v4];
  v6 = +[SUCoreLog sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SUCoreSimulate *)self alterationsPerformed];
    v9 = [v4 summary];
    v11[0] = 67109378;
    v11[1] = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SIMULATE] TRIGGER #%d - %@", v11, 0x12u);
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