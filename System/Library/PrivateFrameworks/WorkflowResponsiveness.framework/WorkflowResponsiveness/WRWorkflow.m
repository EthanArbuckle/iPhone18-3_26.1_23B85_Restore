@interface WRWorkflow
+ (WRWorkflow)workflowWithName:(id)a3;
+ (WRWorkflow)workflowWithPlist:(id)a3 checkForOverrides:(BOOL)a4 error:(id *)a5;
+ (id)allWorkflows;
+ (id)makeOverridePlistDirectoryWithError:(id *)a3;
+ (id)plistDirectory;
+ (uint64_t)diagnosticsEnabled;
+ (uint64_t)telemetryEnabled;
+ (void)allWorkflows;
+ (void)diagnosticsEnabled;
+ (void)plistDirectory;
- (BOOL)hasChangesRelativeTo:(id)a3;
- (BOOL)hasOverallDiagnosticThresholdInterval;
- (BOOL)isEqual:(id)a3;
- (double)overallDiagnosticThresholdIntervalSeconds;
- (id)debugDescription;
- (id)encodedDict;
- (id)initWithPlist:(char)a3 telemetryEnabled:(int)a4 diagnosticsEnabled:(int)a5 checkForOverrides:(uint64_t *)a6 error:;
- (id)wrsignpostForSignpostObject:(uint64_t)a1;
- (id)wrsignpostWithName:(uint64_t)a1;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation WRWorkflow

+ (uint64_t)diagnosticsEnabled
{
  objc_opt_self();
  v8 = 0;
  v0 = WROverrideDiagnosticsEnablement(&v8);
  v1 = v8;
  v2 = v1;
  if (v0)
  {
    v3 = [v0 BOOLValue];
LABEL_10:
    v6 = v3;
    goto LABEL_11;
  }

  if (v1)
  {
    v4 = *__error();
    v5 = _wrlog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow diagnosticsEnabled];
    }

    *__error() = v4;
  }

  if ((WRIsSeedBuild() & 1) == 0)
  {
    v3 = WRIsAppleInternal();
    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

+ (uint64_t)telemetryEnabled
{
  objc_opt_self();
  v7 = 0;
  v0 = WROverrideTelemetryEnablement(&v7);
  v1 = v7;
  v2 = v1;
  if (v0)
  {
    v3 = [v0 BOOLValue];
  }

  else
  {
    if (v1)
    {
      v4 = *__error();
      v5 = _wrlog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        +[WRWorkflow diagnosticsEnabled];
      }

      *__error() = v4;
    }

    v3 = 1;
  }

  return v3;
}

+ (id)plistDirectory
{
  objc_opt_self();
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 resourceURL];
  if (!v1)
  {
    v2 = *__error();
    v3 = _wrlog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow plistDirectory];
    }

    *__error() = v2;
  }

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"WorkflowPlists" relativeToURL:v1];

  return v4;
}

+ (id)makeOverridePlistDirectoryWithError:(id *)a3
{
  if (geteuid())
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
      *a3 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = [a1 overridePlistDirectory];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:a3];

    v5 = 0;
    if (v8)
    {
      v5 = v6;
    }
  }

  return v5;
}

+ (id)allWorkflows
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = +[WRWorkflow telemetryEnabled];
  v3 = +[WRWorkflow diagnosticsEnabled];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __26__WRWorkflow_allWorkflows__block_invoke;
  v73[3] = &unk_279EE36E0;
  v6 = v5;
  v74 = v6;
  v57 = v3;
  v58 = v2;
  v76 = v2;
  v77 = v3;
  v54 = v4;
  v75 = v54;
  v7 = MEMORY[0x277C5A9A0](v73);
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = +[WRWorkflow overridePlistDirectory];
  v10 = [MEMORY[0x277CBEA60] array];
  v11 = [v8 enumeratorAtURL:v9 includingPropertiesForKeys:v10 options:5 errorHandler:&__block_literal_global_2];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v70;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v7[2](v7, *(*(&v69 + 1) + 8 * i));
      }

      v14 = [v12 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v14);
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = +[WRWorkflow plistDirectory];
  v19 = [MEMORY[0x277CBEA60] array];
  v20 = [v17 enumeratorAtURL:v18 includingPropertiesForKeys:v19 options:5 errorHandler:0];

  v68 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v66;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v66 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v7[2](v7, *(*(&v65 + 1) + 8 * j));
      }

      v23 = [v21 countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v23);
  }

  v64 = 0;
  v26 = WROverrideNewWorkflows(&v64);
  v27 = v64;
  v28 = v27;
  v29 = v54;
  if (v26)
  {
    v52 = v26;
    v53 = v6;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v26;
    v30 = [obj countByEnumeratingWithState:&v60 objects:v82 count:16];
    if (!v30)
    {
      goto LABEL_37;
    }

    v31 = v30;
    v56 = *v61;
    while (1)
    {
      for (k = 0; k != v31; ++k)
      {
        v33 = v28;
        if (*v61 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v60 + 1) + 8 * k);
        v35 = [v34 objectForKeyedSubscript:{@"name", v52, v53}];
        v36 = [WRWorkflow alloc];
        v59 = v28;
        v37 = [(WRWorkflow *)v36 initWithPlist:v34 telemetryEnabled:v58 diagnosticsEnabled:v57 checkForOverrides:1 error:&v59];
        v28 = v59;

        if (!v37)
        {
          v41 = [v28 domain];
          if ([v41 isEqualToString:@"WorkflowResponsivenessError"])
          {
            v42 = [v28 code];

            if (v42 == 3)
            {
              v43 = *__error();
              v44 = _wrlog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v79 = v35;
                _os_log_impl(&dword_2746E5000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: New workflow disabled", buf, 0xCu);
              }

LABEL_34:

              *__error() = v43;
              goto LABEL_35;
            }
          }

          else
          {
          }

          v43 = *__error();
          v44 = _wrlog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            v79 = v35;
            v80 = 2114;
            v81 = v28;
            _os_log_fault_impl(&dword_2746E5000, v44, OS_LOG_TYPE_FAULT, "%{public}@: Unable to create new workflow: %{public}@", buf, 0x16u);
          }

          goto LABEL_34;
        }

        if ([v29 containsObject:v37])
        {
          [v37 name];

          v38 = *__error();
          v39 = _wrlog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v37 name];
            *buf = 138543362;
            v79 = v40;
            _os_log_impl(&dword_2746E5000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: New workflow is duplicate of existing workflow (whose settings are already overridden)", buf, 0xCu);
          }

          *__error() = v38;
          v29 = v54;
        }

        else
        {
          [v29 addObject:v37];
        }

LABEL_35:
      }

      v31 = [obj countByEnumeratingWithState:&v60 objects:v82 count:16];
      if (!v31)
      {
LABEL_37:

        v26 = v52;
        v6 = v53;
        goto LABEL_42;
      }
    }
  }

  if (v27)
  {
    v45 = *__error();
    v46 = _wrlog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow allWorkflows];
    }

    *__error() = v45;
  }

LABEL_42:
  [v29 sortUsingSelector:{sel_compare_, v52, v53}];
  if (![v29 count])
  {
    v47 = *__error();
    v48 = _wrlog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      +[WRWorkflow allWorkflows];
    }

    *__error() = v47;
  }

  if ([v29 count])
  {
    v49 = [v29 copy];
  }

  else
  {
    v49 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

void __26__WRWorkflow_allWorkflows__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v5)
  {
    if (([*(a1 + 32) containsObject:v5] & 1) == 0)
    {
      v32 = 0;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v32];
      v7 = v32;
      if (!v6)
      {
        v22 = WRIsDisabledWorkflow(v3);
        v23 = *__error();
        v24 = _wrlog();
        v25 = v24;
        if (v22)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v5;
            _os_log_impl(&dword_2746E5000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
          }

          *__error() = v23;
          [*(a1 + 32) addObject:v5];
        }

        else
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v34 = v5;
            v35 = 2114;
            v36 = v3;
            v37 = 2112;
            v38 = v7;
            _os_log_error_impl(&dword_2746E5000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Unable to read in %{public}@: %@", buf, 0x20u);
          }

          *__error() = v23;
        }

        v12 = v7;
        goto LABEL_32;
      }

      v8 = [WRWorkflow alloc];
      v9 = *(a1 + 48);
      v10 = *(a1 + 49);
      v31 = v7;
      v11 = [(WRWorkflow *)v8 initWithPlist:v6 telemetryEnabled:v9 diagnosticsEnabled:v10 checkForOverrides:1 error:&v31];
      v12 = v31;

      if (v11)
      {
        v13 = [v11 name];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          v15 = [*(a1 + 40) containsObject:v11];
          [v11 name];

          v16 = *__error();
          v17 = _wrlog();
          v18 = v17;
          if (v15)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v11 name];
              *buf = 138543618;
              v34 = v19;
              v35 = 2114;
              v36 = v3;
              _os_log_impl(&dword_2746E5000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring duplicate workflow from %{public}@", buf, 0x16u);
            }

            *__error() = v16;
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              __26__WRWorkflow_allWorkflows__block_invoke_cold_2();
            }

            *__error() = v16;
            [*(a1 + 40) addObject:v11];
          }

          goto LABEL_31;
        }

        [v11 name];

        v28 = *__error();
        v29 = _wrlog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          __26__WRWorkflow_allWorkflows__block_invoke_cold_1();
        }

LABEL_30:

        *__error() = v28;
LABEL_31:

LABEL_32:
        goto LABEL_33;
      }

      v26 = [v12 domain];
      if ([v26 isEqualToString:@"WorkflowResponsivenessError"])
      {
        v27 = [v12 code];

        if (v27 == 3)
        {
          v28 = *__error();
          v29 = _wrlog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v5;
            _os_log_impl(&dword_2746E5000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
          }

          goto LABEL_30;
        }
      }

      else
      {
      }

      v28 = *__error();
      v29 = _wrlog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __26__WRWorkflow_allWorkflows__block_invoke_cold_3();
      }

      goto LABEL_30;
    }
  }

  else
  {
    v20 = *__error();
    v21 = _wrlog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __26__WRWorkflow_allWorkflows__block_invoke_cold_4();
    }

    *__error() = v20;
  }

LABEL_33:

  v30 = *MEMORY[0x277D85DE8];
}

- (id)initWithPlist:(char)a3 telemetryEnabled:(int)a4 diagnosticsEnabled:(int)a5 checkForOverrides:(uint64_t *)a6 error:
{
  v406 = *MEMORY[0x277D85DE8];
  v301 = a2;
  if (!a1)
  {
    v32 = 0;
    goto LABEL_180;
  }

  v384 = 0;
  if (a6)
  {
    v300 = a6;
    *a6 = 0;
  }

  else
  {
    v300 = &v384;
  }

  v383.receiver = a1;
  v383.super_class = WRWorkflow;
  v302 = objc_msgSendSuper2(&v383, sel_init);

  if (v302)
  {
    v18 = WRCheckForBadWorkflowDict(v301);
    *v300 = v18;
    if (!v18)
    {
      v297 = [v301 objectForKeyedSubscript:@"name"];
      if (!v297)
      {
        [(WRWorkflow *)v300 initWithPlist:v19 telemetryEnabled:v20 diagnosticsEnabled:v21 checkForOverrides:v22 error:v23, v24];
        v32 = 0;
        goto LABEL_178;
      }

      if ([WRWorkflowEventTracker isReservedWorkflowName:v297])
      {
        WRMakeError(8, @"Workflow name is reserved: %@", v26, v27, v28, v29, v30, v31, v297);
        *v300 = v32 = 0;
LABEL_178:

        goto LABEL_179;
      }

      v33 = v297;
      if (a5)
      {
        v382 = 0;
        v280 = WROverrideTelemetryEnablementForWorkflow(v297, &v382);
        v34 = v382;
        if (v280)
        {
          v298 = v34;
          v35 = [v280 BOOLValue];
          v36 = *__error();
          v37 = _wrlog();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
          if (v35)
          {
            if (v38)
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v297;
              _os_log_impl(&dword_2746E5000, v37, OS_LOG_TYPE_INFO, "%{public}@: overridden telemetry (enabled)", &buf, 0xCu);
            }

            *__error() = v36;
            v33 = v297;
LABEL_27:
            v41 = [v33 copy];
            v42 = v302[2];
            v302[2] = v41;

            *&buf = 0;
            *(&buf + 1) = &buf;
            v404 = 0x2020000000;
            v405 = 0;
            v378 = 0;
            v379 = &v378;
            v380 = 0x2020000000;
            v381 = 0;
            v43 = objc_alloc_init(MEMORY[0x277D55040]);
            v44 = v302[7];
            v302[7] = v43;

            v45 = objc_alloc_init(MEMORY[0x277D55040]);
            v46 = v302[8];
            v302[8] = v45;

            if (a5)
            {

              v377 = 0;
              v47 = WROverrideForWorkflow(v297, &v377);
              v48 = v377;
              v298 = v48;
              if (!v47 && v48)
              {
                v49 = *__error();
                v50 = _wrlog();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                {
                  [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                }

                v47 = 0;
                *__error() = v49;
              }
            }

            else
            {
              v47 = 0;
            }

            v51 = [v47 objectForKeyedSubscript:@"maximum_duration"];
            v52 = v51;
            if (!v51)
            {
              v52 = [v301 objectForKeyedSubscript:@"maximum_duration"];
            }

            [v52 doubleValue];
            v275 = v47;
            v302[9] = v53;
            if (!v51)
            {
            }

            if (a5)
            {

              v376 = 0;
              v54 = WROverrideDiagnosticsEnablementForWorkflow(v297, &v376);
              v55 = v376;
              v298 = v55;
              if (v54)
              {
                a4 = [v54 BOOLValue];
              }

              else if (v55)
              {
                v62 = *__error();
                v63 = _wrlog();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
                {
                  [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                }

                *__error() = v62;
              }
            }

            v64 = objc_opt_class();
            v65 = DictGetArrayOfClass(v301, @"diagnostics", v64, v300);
            v274 = v65;
            if (v65 || !*v300)
            {
              v66 = [WRDiagnostic diagnosticsForWorkflowName:v297 signpostName:0 diagnosticDicts:v65 diagnosticsEnabled:a4 checkForOverrides:a5 error:v300];
              v67 = v302[6];
              v302[6] = v66;

              if (v302[6])
              {
                *(*(&buf + 1) + 24) = 1;
                v372 = 0u;
                v373 = 0u;
                v375 = 0u;
                v374 = 0u;
                v68 = v302[6];
                v69 = [v68 countByEnumeratingWithState:&v372 objects:v402 count:16];
                if (v69)
                {
                  v70 = *v373;
                  while (2)
                  {
                    for (i = 0; i != v69; ++i)
                    {
                      if (*v373 != v70)
                      {
                        objc_enumerationMutation(v68);
                      }

                      if ([*(*(&v372 + 1) + 8 * i) reportOmittingNetworkBoundIntervals])
                      {
                        v268 = 1;
                        goto LABEL_65;
                      }
                    }

                    v69 = [v68 countByEnumeratingWithState:&v372 objects:v402 count:16];
                    if (v69)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v268 = 0;
LABEL_65:

                v72 = v300;
LABEL_66:
                v73 = objc_opt_class();
                v80 = DictGetArrayOfClass(v301, @"signposts", v73, v72);
                v273 = v80;
                if (!v80)
                {
                  if (!*v72)
                  {
                    v32 = 0;
LABEL_175:

                    goto LABEL_176;
                  }

                  WRMakeError(7, @"No signposts in plist", v74, v75, v76, v77, v78, v79, v264);
                  *v300 = v32 = 0;
LABEL_174:
                  v80 = v273;
                  goto LABEL_175;
                }

                v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v80, "count")}];
                v82 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
                v83 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
                v368 = 0;
                v369 = &v368;
                v370 = 0x2020000000;
                v371 = 0;
                v364 = 0;
                v365 = &v364;
                v366 = 0x2020000000;
                v367 = 0;
                v84 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v351[0] = MEMORY[0x277D85DD0];
                v351[1] = 3221225472;
                v351[2] = __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke;
                v351[3] = &unk_279EE3730;
                v358 = &v368;
                v362 = a4;
                v363 = a5;
                v278 = v297;
                v352 = v278;
                p_buf = &buf;
                v269 = v84;
                v353 = v269;
                v360 = &v364;
                v285 = v81;
                v354 = v285;
                v276 = v302;
                v355 = v276;
                v361 = &v378;
                v272 = v82;
                v356 = v272;
                v270 = v83;
                v357 = v270;
                v286 = MEMORY[0x277C5A9A0](v351);
                v349 = 0u;
                v350 = 0u;
                v347 = 0u;
                v348 = 0u;
                obj = v80;
                v85 = [obj countByEnumeratingWithState:&v347 objects:v401 count:16];
                if (!v85)
                {
                  goto LABEL_91;
                }

                v292 = *v348;
                do
                {
                  for (j = 0; j != v85; ++j)
                  {
                    if (*v348 != v292)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v87 = *(*(&v347 + 1) + 8 * j);
                    v88 = WRCheckForBadSignpostDict(v87);
                    *v300 = v88;
                    if (v88)
                    {
                      goto LABEL_134;
                    }

                    v89 = [v87 objectForKeyedSubscript:@"name"];
                    if (a5)
                    {
                      v346 = 0;
                      v90 = WROverrideForSignpost(v278, v89, &v346);
                      v91 = v346;
                      v92 = v91;
                      if (v90)
                      {
                        v93 = 1;
                      }

                      else
                      {
                        v93 = v91 == 0;
                      }

                      if (!v93)
                      {
                        v94 = *__error();
                        v95 = _wrlog();
                        if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
                        {
                          *v395 = 138543874;
                          v396 = v278;
                          v397 = 2114;
                          v398 = v89;
                          v399 = 2112;
                          v400 = v92;
                          _os_log_fault_impl(&dword_2746E5000, v95, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: Invalid signpost override: %@", v395, 0x20u);
                        }

                        *__error() = v94;
                      }
                    }

                    else
                    {
                      v90 = 0;
                    }

                    v96 = (v286)[2](v286, v90, v87);
                    v97 = v96;
                    if (v96)
                    {
                      v98 = [v96 domain];
                      if (![v98 isEqualToString:@"WorkflowResponsivenessError"])
                      {

LABEL_133:
                        v123 = v97;
                        *v300 = v97;

LABEL_134:
LABEL_135:
                        v32 = 0;
                        goto LABEL_173;
                      }

                      v99 = [v97 code] == 3;

                      if (!v99)
                      {
                        goto LABEL_133;
                      }

                      v100 = *__error();
                      v101 = _wrlog();
                      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                      {
                        *v395 = 138543618;
                        v396 = v278;
                        v397 = 2114;
                        v398 = v89;
                        _os_log_impl(&dword_2746E5000, v101, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: signpost disabled", v395, 0x16u);
                      }

                      *__error() = v100;
                    }
                  }

                  v85 = [obj countByEnumeratingWithState:&v347 objects:v401 count:16];
                }

                while (v85);
LABEL_91:

                if (a5)
                {

                  v345 = 0;
                  v102 = WROverrideNewSignpostsForWorkflow(v278, &v345);
                  v103 = v345;
                  v104 = v103;
                  if (v102)
                  {
                    v343 = 0u;
                    v344 = 0u;
                    v341 = 0u;
                    v342 = 0u;
                    obja = v102;
                    v105 = [obja countByEnumeratingWithState:&v341 objects:v394 count:16];
                    v267 = v102;
                    if (!v105)
                    {
                      goto LABEL_125;
                    }

                    v288 = *v342;
                    while (1)
                    {
                      v293 = v105;
                      for (k = 0; k != v293; ++k)
                      {
                        if (*v342 != v288)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v107 = *(*(&v341 + 1) + 8 * k);
                        v108 = [v107 objectForKeyedSubscript:@"name"];
                        v299 = v104;
                        if (v108)
                        {
                          v339 = 0u;
                          v340 = 0u;
                          v337 = 0u;
                          v338 = 0u;
                          v109 = v285;
                          v110 = [v109 countByEnumeratingWithState:&v337 objects:v393 count:16];
                          if (!v110)
                          {

LABEL_112:
                            v118 = (v286)[2](v286, v107, 0);

                            if (!v118)
                            {
                              v299 = 0;
                              goto LABEL_123;
                            }

                            v119 = [v118 domain];
                            if ([v119 isEqualToString:@"WorkflowResponsivenessError"])
                            {
                              v120 = [v118 code] == 3;

                              if (v120)
                              {
                                v121 = *__error();
                                v122 = _wrlog();
                                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v395 = 138543618;
                                  v396 = v278;
                                  v397 = 2114;
                                  v398 = v108;
                                  _os_log_impl(&dword_2746E5000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: new signpost disabled", v395, 0x16u);
                                }

LABEL_122:

                                *__error() = v121;
                                v299 = v118;
                                goto LABEL_123;
                              }
                            }

                            else
                            {
                            }

                            v121 = *__error();
                            v122 = _wrlog();
                            if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
                            {
                              *v395 = 138543618;
                              v396 = v278;
                              v397 = 2112;
                              v398 = v118;
                              _os_log_fault_impl(&dword_2746E5000, v122, OS_LOG_TYPE_FAULT, "%{public}@: Invalid signpost override: %@", v395, 0x16u);
                            }

                            goto LABEL_122;
                          }

                          v111 = 0;
                          v112 = *v338;
                          do
                          {
                            for (m = 0; m != v110; ++m)
                            {
                              if (*v338 != v112)
                              {
                                objc_enumerationMutation(v109);
                              }

                              v114 = [*(*(&v337 + 1) + 8 * m) name];
                              v115 = [v114 isEqualToString:v108];

                              v111 |= v115;
                            }

                            v110 = [v109 countByEnumeratingWithState:&v337 objects:v393 count:16];
                          }

                          while (v110);

                          if ((v111 & 1) == 0)
                          {
                            goto LABEL_112;
                          }
                        }

                        else
                        {
                          v116 = *__error();
                          v117 = _wrlog();
                          if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
                          {
                            *v395 = 138543618;
                            v396 = v278;
                            v397 = 2112;
                            v398 = v107;
                            _os_log_fault_impl(&dword_2746E5000, v117, OS_LOG_TYPE_FAULT, "%{public}@: Invalid new signpost with no name: %@", v395, 0x16u);
                          }

                          *__error() = v116;
                        }

LABEL_123:

                        v104 = v299;
                      }

                      v105 = [obja countByEnumeratingWithState:&v341 objects:v394 count:16];
                      if (!v105)
                      {
LABEL_125:
                        v298 = v104;

                        v102 = v267;
                        goto LABEL_141;
                      }
                    }
                  }

                  if (v103)
                  {
                    v298 = v103;
                    v124 = *__error();
                    v125 = _wrlog();
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
                    {
                      [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                    }

                    *__error() = v124;
                  }

                  else
                  {
                    v298 = 0;
                  }

LABEL_141:
                }

                if (![v285 count])
                {
                  v147 = WRMakeError(7, @"No signposts in plist", v126, v127, v128, v129, v130, v131, v264);
                  goto LABEL_172;
                }

                if (![v272 count])
                {
                  v147 = WRMakeError(7, @"No start signpost in plist", v132, v133, v134, v135, v136, v137, v264);
                  goto LABEL_172;
                }

                if (![v270 count])
                {
                  v147 = WRMakeError(7, @"No end signpost in plist", v138, v139, v140, v141, v142, v143, v264);
                  goto LABEL_172;
                }

                v144 = _WRGetString(v275, v301, @"contextual_telemetry");
                v145 = v276[10];
                v276[10] = v144;

                v146 = v276[10];
                if (v146)
                {
                  if ([v146 isEqualToString:@"YES"])
                  {
                    *(v276 + 9) = 1;
                    goto LABEL_156;
                  }

                  if ([v276[10] isEqualToString:@"NO"])
                  {
LABEL_155:
                    *(v276 + 9) = 0;
LABEL_156:
                    if (*(v365 + 24) != 1)
                    {
                      if ([v285 count] < 2)
                      {
                        if ([v276 hasMaximumEventDuration])
                        {
                          v166 = [v285 firstObject];
                          [v166 name];

                          v167 = *__error();
                          v168 = _wrlog();
                          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
                          {
                            v169 = [v166 name];
                            [WRWorkflow initWithPlist:v278 telemetryEnabled:v169 diagnosticsEnabled:v395 checkForOverrides:v168 error:?];
                          }

                          *__error() = v167;
                          [(WRSignpost *)v166 setEventIdentifierIsSignpostID:?];
                          *(v276 + 8) = 1;

                          goto LABEL_192;
                        }

                        v162 = *__error();
                        v163 = _wrlog();
                        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
                        {
                          [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                        }
                      }

                      else
                      {
                        v162 = *__error();
                        v163 = _wrlog();
                        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
                        {
                          [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                        }
                      }

                      *__error() = v162;
                      goto LABEL_192;
                    }

                    if ([v276 hasMaximumEventDuration])
                    {
                      v335 = 0u;
                      v336 = 0u;
                      v333 = 0u;
                      v334 = 0u;
                      v155 = v272;
                      v156 = [v155 countByEnumeratingWithState:&v333 objects:v392 count:16];
                      if (v156)
                      {
                        v157 = *v334;
                        while (2)
                        {
                          for (n = 0; n != v156; ++n)
                          {
                            if (*v334 != v157)
                            {
                              objc_enumerationMutation(v155);
                            }

                            v159 = *(*(&v333 + 1) + 8 * n);
                            v160 = [v159 eventIdentifierFieldName];
                            v161 = v160 == 0;

                            if (v161)
                            {
                              v170 = [v159 name];
                              *v300 = WRMakeError(7, @"Workflow supports concurrent events, but start signpost %@ has no event identifier field name", v171, v172, v173, v174, v175, v176, v170);

                              goto LABEL_135;
                            }
                          }

                          v156 = [v155 countByEnumeratingWithState:&v333 objects:v392 count:16];
                          if (v156)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      *(v276 + 8) = 1;
LABEL_192:
                      [v285 sortUsingSelector:sel_compare_];
                      v177 = [v285 copy];
                      v178 = v276[5];
                      v276[5] = v177;

                      [v272 sortUsingSelector:sel_compare_];
                      v179 = [v272 copy];
                      v180 = v276[3];
                      v276[3] = v179;

                      v181 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v331[0] = MEMORY[0x277D85DD0];
                      v331[1] = 3221225472;
                      v331[2] = __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke_99;
                      v331[3] = &unk_279EE3758;
                      v182 = v181;
                      v332 = v182;
                      [v270 enumerateKeysAndObjectsUsingBlock:v331];
                      [v182 sortUsingComparator:&__block_literal_global_103];
                      v183 = [v182 copy];
                      v287 = v182;
                      v184 = v276[4];
                      v276[4] = v183;

                      v329 = 0u;
                      v330 = 0u;
                      v327 = 0u;
                      v328 = 0u;
                      v289 = v269;
                      v185 = [v289 countByEnumeratingWithState:&v327 objects:v391 count:16];
                      if (v185)
                      {
                        v294 = *v328;
                        do
                        {
                          v186 = v185;
                          for (ii = 0; ii != v186; ++ii)
                          {
                            if (*v328 != v294)
                            {
                              objc_enumerationMutation(v289);
                            }

                            v188 = *(*(&v327 + 1) + 8 * ii);
                            v325 = 0u;
                            v326 = 0u;
                            v323 = 0u;
                            v324 = 0u;
                            v189 = v276[5];
                            v190 = [v189 countByEnumeratingWithState:&v323 objects:v390 count:16];
                            if (v190)
                            {
                              v191 = *v324;
                              do
                              {
                                for (jj = 0; jj != v190; ++jj)
                                {
                                  if (*v324 != v191)
                                  {
                                    objc_enumerationMutation(v189);
                                  }

                                  v193 = *(*(&v323 + 1) + 8 * jj);
                                  v194 = [v193 individuationFieldName];
                                  v195 = [v194 isEqualToString:v188];

                                  if (v195)
                                  {
                                    v196 = v302[8];
                                    v197 = [v193 subsystem];
                                    v198 = [v193 category];
                                    [v196 addSubsystem:v197 category:v198];
                                  }
                                }

                                v190 = [v189 countByEnumeratingWithState:&v323 objects:v390 count:16];
                              }

                              while (v190);
                            }
                          }

                          v185 = [v289 countByEnumeratingWithState:&v327 objects:v391 count:16];
                        }

                        while (v185);
                      }

                      v199 = v302;
                      if (v268)
                      {
LABEL_209:
                        v200 = v302[7];
                        goto LABEL_216;
                      }

                      if (*(*(&buf + 1) + 24) == 1)
                      {
                        if ((v379[3] & 1) == 0)
                        {
                          goto LABEL_209;
                        }
                      }

                      else
                      {
                        v200 = 0;
LABEL_216:
                        v207 = v302[8];
                        v302[8] = v200;

                        v199 = v302;
                      }

                      v321 = 0u;
                      v322 = 0u;
                      v319 = 0u;
                      v320 = 0u;
                      v290 = v199[6];
                      v208 = [v290 countByEnumeratingWithState:&v319 objects:v389 count:16];
                      if (v208)
                      {
                        v295 = *v320;
LABEL_219:
                        v209 = 0;
                        while (1)
                        {
                          if (*v320 != v295)
                          {
                            objc_enumerationMutation(v290);
                          }

                          v210 = *(*(&v319 + 1) + 8 * v209);
                          if ([v210 triggerEventTimeout] && (objc_msgSend(v276, "hasMaximumEventDuration") & 1) == 0)
                          {
                            v236 = [v210 name];
                            v257 = WRMakeError(8, @"Workflow diagnostic %@ has event timeout threshold, but workflow has no maximum duration", v251, v252, v253, v254, v255, v256, v236);
                            goto LABEL_269;
                          }

                          if ([v210 reportOmittingNetworkBoundIntervals] && (v369[3] & 1) == 0)
                          {
                            break;
                          }

                          v211 = [v210 reportOtherSignpostWithName];

                          if (v211)
                          {
                            v317 = 0u;
                            v318 = 0u;
                            v315 = 0u;
                            v316 = 0u;
                            v212 = v276[5];
                            v213 = [v212 countByEnumeratingWithState:&v315 objects:v388 count:16];
                            if (v213)
                            {
                              v214 = *v316;
                              while (2)
                              {
                                for (kk = 0; kk != v213; ++kk)
                                {
                                  if (*v316 != v214)
                                  {
                                    objc_enumerationMutation(v212);
                                  }

                                  v216 = [*(*(&v315 + 1) + 8 * kk) name];
                                  v217 = [v210 reportOtherSignpostWithName];
                                  v218 = [v216 isEqualToString:v217];

                                  if (v218)
                                  {

                                    goto LABEL_237;
                                  }
                                }

                                v213 = [v212 countByEnumeratingWithState:&v315 objects:v388 count:16];
                                if (v213)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v236 = [v210 name];
                            v265 = [v210 reportOtherSignpostWithName];
                            *v300 = WRMakeError(8, @"Workflow diagnostic %@ reports signpost %@, but no such signpost exists", v237, v238, v239, v240, v241, v242, v236);

                            goto LABEL_270;
                          }

LABEL_237:
                          if (++v209 == v208)
                          {
                            v208 = [v290 countByEnumeratingWithState:&v319 objects:v389 count:16];
                            if (v208)
                            {
                              goto LABEL_219;
                            }

                            goto LABEL_239;
                          }
                        }

                        v236 = [v210 name];
                        v257 = WRMakeError(8, @"Workflow diagnostic %@ omits network-bound work, but no network-bound signposts", v258, v259, v260, v261, v262, v263, v236);
LABEL_269:
                        *v300 = v257;
LABEL_270:

LABEL_271:
                        v32 = 0;
                        goto LABEL_272;
                      }

LABEL_239:

                      v313 = 0u;
                      v314 = 0u;
                      v311 = 0u;
                      v312 = 0u;
                      v219 = v276[5];
                      v220 = [v219 countByEnumeratingWithState:&v311 objects:v387 count:16];
                      if (v220)
                      {
                        v281 = *v312;
                        objb = v219;
                        do
                        {
                          v221 = 0;
                          v271 = v220;
                          do
                          {
                            if (*v312 != v281)
                            {
                              objc_enumerationMutation(v219);
                            }

                            v222 = *(*(&v311 + 1) + 8 * v221);
                            v307 = 0u;
                            v308 = 0u;
                            v309 = 0u;
                            v310 = 0u;
                            v223 = [v222 diagnostics];
                            v224 = [v223 countByEnumeratingWithState:&v307 objects:v386 count:16];
                            v279 = v222;
                            v277 = v221;
                            v291 = v223;
                            if (v224)
                            {
                              v296 = *v308;
                              while (2)
                              {
                                v225 = 0;
                                do
                                {
                                  v226 = v224;
                                  if (*v308 != v296)
                                  {
                                    objc_enumerationMutation(v291);
                                  }

                                  v227 = *(*(&v307 + 1) + 8 * v225);
                                  v228 = [v227 reportOtherSignpostWithName];

                                  if (v228)
                                  {
                                    v305 = 0u;
                                    v306 = 0u;
                                    v303 = 0u;
                                    v304 = 0u;
                                    v229 = v276[5];
                                    v230 = [v229 countByEnumeratingWithState:&v303 objects:v385 count:16];
                                    if (v230)
                                    {
                                      v231 = *v304;
                                      while (2)
                                      {
                                        for (mm = 0; mm != v230; ++mm)
                                        {
                                          if (*v304 != v231)
                                          {
                                            objc_enumerationMutation(v229);
                                          }

                                          v233 = [*(*(&v303 + 1) + 8 * mm) name];
                                          v234 = [v227 reportOtherSignpostWithName];
                                          v235 = [v233 isEqualToString:v234];

                                          if (v235)
                                          {

                                            goto LABEL_260;
                                          }
                                        }

                                        v230 = [v229 countByEnumeratingWithState:&v303 objects:v385 count:16];
                                        if (v230)
                                        {
                                          continue;
                                        }

                                        break;
                                      }
                                    }

                                    v243 = [v279 name];
                                    v244 = [v227 name];
                                    v266 = [v227 reportOtherSignpostWithName];
                                    *v300 = WRMakeError(8, @"Signpost %@ diagnostic %@ reports other signpost %@, but no such signpost exists", v245, v246, v247, v248, v249, v250, v243);

                                    goto LABEL_271;
                                  }

LABEL_260:
                                  ++v225;
                                  v224 = v226;
                                }

                                while (v225 != v226);
                                v224 = [v291 countByEnumeratingWithState:&v307 objects:v386 count:16];
                                if (v224)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v221 = v277 + 1;
                            v219 = objb;
                          }

                          while (v277 + 1 != v271);
                          v219 = objb;
                          v220 = [objb countByEnumeratingWithState:&v311 objects:v387 count:16];
                        }

                        while (v220);
                      }

                      v32 = v276;
LABEL_272:

LABEL_173:
                      _Block_object_dispose(&v364, 8);
                      _Block_object_dispose(&v368, 8);

                      goto LABEL_174;
                    }

                    v147 = WRMakeError(7, @"Workflow supports concurrent events, but has no maximum_duration (required by concurrent events)", v149, v150, v151, v152, v153, v154, v264);
LABEL_172:
                    v32 = 0;
                    *v300 = v147;
                    goto LABEL_173;
                  }

                  if ([v276[10] isEqualToString:@"seed"])
                  {
                    if (WRIsSeedBuild())
                    {
                      v148 = 1;
                      goto LABEL_153;
                    }
                  }

                  else if (![v276[10] isEqualToString:@"internal"])
                  {
                    v147 = WRMakeError(8, @"Workflow contextual telemetry value is invalid: %@", v201, v202, v203, v204, v205, v206, v276[10]);
                    goto LABEL_172;
                  }
                }

                else if ([v285 count] == 1)
                {
                  goto LABEL_155;
                }

                v148 = WRIsAppleInternal();
LABEL_153:
                *(v276 + 9) = v148;
                goto LABEL_156;
              }

              v72 = v300;
              if (!*v300)
              {
                v268 = 0;
                goto LABEL_66;
              }
            }

            v32 = 0;
LABEL_176:

            _Block_object_dispose(&v378, 8);
            _Block_object_dispose(&buf, 8);

            goto LABEL_177;
          }

          if (v38)
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v297;
            _os_log_impl(&dword_2746E5000, v37, OS_LOG_TYPE_INFO, "%{public}@: overridden telemetry (disabled)", &buf, 0xCu);
          }

          *__error() = v36;
          *v300 = WRMakeError(3, @"Workflow disabled by override", v56, v57, v58, v59, v60, v61, v264);

          goto LABEL_45;
        }

        if (v34)
        {
          v39 = *__error();
          v40 = _wrlog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
          }

          *__error() = v39;
        }

        v33 = v297;
      }

      else
      {
        v34 = 0;
      }

      v298 = v34;
      if (a3)
      {
        v280 = 0;
        goto LABEL_27;
      }

      [(WRWorkflow *)v300 initWithPlist:v25 telemetryEnabled:v26 diagnosticsEnabled:v27 checkForOverrides:v28 error:v29, v30, v31];
LABEL_45:
      v32 = 0;
LABEL_177:

      goto LABEL_178;
    }
  }

  else
  {
    [(WRWorkflow *)v300 initWithPlist:v11 telemetryEnabled:v12 diagnosticsEnabled:v13 checkForOverrides:v14 error:v15, v16, v17];
  }

  v32 = 0;
LABEL_179:

LABEL_180:
  v164 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __26__WRWorkflow_allWorkflows__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *__error();
  v7 = _wrlog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __26__WRWorkflow_allWorkflows__block_invoke_13_cold_1();
  }

  *__error() = v6;
  return 1;
}

+ (WRWorkflow)workflowWithName:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[WRWorkflow telemetryEnabled];
  v5 = +[WRWorkflow diagnosticsEnabled];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __31__WRWorkflow_workflowWithName___block_invoke;
  v60[3] = &unk_279EE3708;
  v45 = v3;
  v61 = v45;
  v62 = &v65;
  v43 = v5;
  v44 = v4;
  v63 = v4;
  v64 = v5;
  v6 = MEMORY[0x277C5A9A0](v60);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = +[WRWorkflow overridePlistDirectory];
  v9 = [MEMORY[0x277CBEA60] array];
  v10 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:5 errorHandler:0];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v12)
  {
    v13 = *v57;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = v6[2](v6, *(*(&v56 + 1) + 8 * i));
        if (v15 || (v66[3] & 1) != 0)
        {
          v20 = v11;
          goto LABEL_31;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = +[WRWorkflow plistDirectory];
  v18 = [MEMORY[0x277CBEA60] array];
  v19 = [v16 enumeratorAtURL:v17 includingPropertiesForKeys:v18 options:5 errorHandler:0];

  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v52 objects:v72 count:16];
  if (v21)
  {
    v22 = *v53;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v15 = v6[2](v6, *(*(&v52 + 1) + 8 * j));
        if (v15 || (v66[3] & 1) != 0)
        {

          goto LABEL_31;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v52 objects:v72 count:16];
    }

    while (v21);
  }

  v51 = 0;
  v11 = WROverrideNewWorkflows(&v51);
  v24 = v51;
  v20 = v24;
  if (v11)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = v11;
    v25 = [v11 countByEnumeratingWithState:&v47 objects:v71 count:16];
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = *v48;
LABEL_22:
    v27 = 0;
    while (1)
    {
      if (*v48 != v26)
      {
        objc_enumerationMutation(v11);
      }

      v28 = *(*(&v47 + 1) + 8 * v27);
      v29 = [v28 objectForKeyedSubscript:@"name"];
      v30 = [v29 isEqualToString:v45];

      if (v30)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v11 countByEnumeratingWithState:&v47 objects:v71 count:16];
        if (v25)
        {
          goto LABEL_22;
        }

LABEL_28:

        v15 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    v46 = v20;
    v15 = [[WRWorkflow alloc] initWithPlist:v28 telemetryEnabled:v44 diagnosticsEnabled:v43 checkForOverrides:1 error:&v46];
    v33 = v46;

    if (v15)
    {
      v34 = v15;
LABEL_51:

      v20 = v33;
      goto LABEL_31;
    }

    v37 = [v33 domain];
    if ([v37 isEqualToString:@"WorkflowResponsivenessError"])
    {
      v38 = [v33 code] == 3;

      if (v38)
      {
        v39 = *__error();
        v40 = _wrlog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v70 = v45;
          _os_log_impl(&dword_2746E5000, v40, OS_LOG_TYPE_INFO, "%{public}@: New workflow disabled", buf, 0xCu);
        }

        *__error() = v39;
        goto LABEL_51;
      }
    }

    else
    {
    }

    v41 = *__error();
    v42 = _wrlog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow workflowWithName:];
    }

    *__error() = v41;
    goto LABEL_51;
  }

  if (v24)
  {
    v35 = *__error();
    v36 = _wrlog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow allWorkflows];
    }

    v15 = 0;
    *__error() = v35;
    goto LABEL_31;
  }

  v15 = 0;
LABEL_32:

  _Block_object_dispose(&v65, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

id *__31__WRWorkflow_workflowWithName___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v5)
  {
    if (![v5 isEqual:*(a1 + 32)])
    {
      v18 = 0;
      goto LABEL_33;
    }

    v32 = 0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v32];
    v7 = v32;
    if (!v6)
    {
      v21 = WRIsDisabledWorkflow(v3);
      v22 = *__error();
      v23 = _wrlog();
      v24 = v23;
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 32);
          *buf = 138543362;
          v34 = v25;
          _os_log_impl(&dword_2746E5000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
        }

        v18 = 0;
        *__error() = v22;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v30 = *(a1 + 32);
          *buf = 138543874;
          v34 = v30;
          v35 = 2114;
          v36 = v3;
          v37 = 2114;
          v38 = v7;
          _os_log_fault_impl(&dword_2746E5000, v24, OS_LOG_TYPE_FAULT, "%{public}@: Unable to read in %{public}@: %{public}@", buf, 0x20u);
        }

        v18 = 0;
        *__error() = v22;
      }

      v12 = v7;
      goto LABEL_32;
    }

    v8 = [WRWorkflow alloc];
    v9 = *(a1 + 48);
    v10 = *(a1 + 49);
    v31 = v7;
    v11 = [(WRWorkflow *)v8 initWithPlist:v6 telemetryEnabled:v9 diagnosticsEnabled:v10 checkForOverrides:1 error:&v31];
    v12 = v31;

    if (v11)
    {
      v13 = [v11 name];
      v14 = [v13 isEqual:v5];

      [v11 name];
      v15 = *__error();
      v16 = _wrlog();
      v17 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __31__WRWorkflow_workflowWithName___block_invoke_cold_2();
        }

        *__error() = v15;
        v18 = v11;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __26__WRWorkflow_allWorkflows__block_invoke_cold_1();
      }

LABEL_30:

      v18 = 0;
      *__error() = v15;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v26 = [v12 domain];
    if ([v26 isEqualToString:@"WorkflowResponsivenessError"])
    {
      v27 = [v12 code];

      if (v27 == 3)
      {
        v15 = *__error();
        v17 = _wrlog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v34 = v5;
          _os_log_impl(&dword_2746E5000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
        }

        goto LABEL_30;
      }
    }

    else
    {
    }

    v15 = *__error();
    v17 = _wrlog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __26__WRWorkflow_allWorkflows__block_invoke_cold_3();
    }

    goto LABEL_30;
  }

  v19 = *__error();
  v20 = _wrlog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    __26__WRWorkflow_allWorkflows__block_invoke_cold_4();
  }

  v18 = 0;
  *__error() = v19;
LABEL_33:

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (WRWorkflow)workflowWithPlist:(id)a3 checkForOverrides:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 lastPathComponent];
  v10 = [v9 stringByDeletingPathExtension];

  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];

  v13 = [v11 initWithContentsOfURL:v12 error:a5];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v14 = [(WRWorkflow *)[a1 alloc] initWithPlist:v13 telemetryEnabled:1 diagnosticsEnabled:1 checkForOverrides:v6 error:a5];
  v15 = v14;
  if (!v14)
  {
LABEL_8:
    a5 = 0;
    goto LABEL_9;
  }

  v16 = [v14 name];
  v17 = [v16 isEqual:v10];

  if (v17)
  {
    v15 = v15;
    a5 = v15;
    goto LABEL_9;
  }

  if (a5)
  {
    v25 = [v15 name];
    *a5 = WRMakeError(8, @"Filename %@ doesn't match workflow name %@", v18, v19, v20, v21, v22, v23, v10);

    goto LABEL_8;
  }

LABEL_9:

  return a5;
}

id __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v123 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:0x288387F78];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 BOOLValue];

    if (v9)
    {
LABEL_3:
      v16 = WRMakeError(3, @"Signpost disabled", v10, v11, v12, v13, v14, v15, v101);
      goto LABEL_79;
    }
  }

  else
  {
    v17 = [v6 objectForKeyedSubscript:0x288387F78];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v25 = _WRGetString(v5, v6, @"name");
  if (!v25)
  {
    WRMakeError(7, @"No name for signpost", v19, v20, v21, v22, v23, v24, v101);
    goto LABEL_9;
  }

  if (![WRWorkflowEventTracker isReservedSignpostName:v25])
  {
    v38 = _WRGetString(v5, v6, @"subsystem");
    if (!v38)
    {
      v16 = WRMakeError(7, @"No subsystem for signpost %@", v32, v33, v34, v35, v36, v37, v25);
LABEL_77:

      goto LABEL_78;
    }

    v45 = _WRGetString(v5, v6, @"category");
    if (!v45)
    {
      v16 = WRMakeError(7, @"No category for signpost %@", v39, v40, v41, v42, v43, v44, v25);
LABEL_76:

      goto LABEL_77;
    }

    v46 = [v5 objectForKeyedSubscript:@"start"];
    v47 = v46;
    if (v46)
    {
      v114 = [v46 BOOLValue];
    }

    else
    {
      v48 = [v6 objectForKeyedSubscript:@"start"];
      v114 = [v48 BOOLValue];
    }

    v49 = _WRGetString(v5, v6, @"end_group");
    if (v49)
    {
      v113 = 1;
    }

    else
    {
      v50 = [v5 objectForKeyedSubscript:@"end"];
      v51 = v50;
      if (v50)
      {
        v113 = [v50 BOOLValue];
      }

      else
      {
        v52 = [v6 objectForKeyedSubscript:@"end"];
        v113 = [v52 BOOLValue];
      }
    }

    v53 = [v5 objectForKeyedSubscript:@"network_bound"];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 BOOLValue];

      if (v55)
      {
LABEL_25:
        v56 = 1;
        *(*(*(a1 + 80) + 8) + 24) = 1;
LABEL_28:
        v59 = objc_opt_class();
        v121 = 0;
        v60 = DictGetArrayOfClass(v6, @"diagnostics", v59, &v121);
        v61 = v121;
        v62 = v61;
        if (!v60 && v61)
        {
          v63 = v61;
          v16 = v63;
LABEL_75:

          goto LABEL_76;
        }

        v111 = v49;
        v112 = v45;
        v64 = *(a1 + 32);
        v65 = *(a1 + 112);
        v66 = *(a1 + 113);
        v120 = v61;
        v67 = [WRDiagnostic diagnosticsForWorkflowName:v64 signpostName:v25 diagnosticDicts:v60 diagnosticsEnabled:v65 checkForOverrides:v66 error:&v120];
        v68 = v120;

        v109 = v68;
        v110 = v67;
        if (v67)
        {
          *(*(*(a1 + 88) + 8) + 24) = 1;
        }

        else if (v68)
        {
          v63 = v68;
          v16 = v63;
          v49 = v111;
          v45 = v112;
          goto LABEL_75;
        }

        v69 = [v5 objectForKeyedSubscript:@"environment_field_names"];
        v70 = v69;
        if (!v69)
        {
          v70 = [v6 objectForKeyedSubscript:@"environment_field_names"];
        }

        v108 = [v70 sortedArrayUsingSelector:sel_compare_];
        if (!v69)
        {
        }

        v71 = _WRGetString(v5, v6, @"individuation_field_name");
        v78 = v71;
        v49 = v111;
        if (!v71 || ((v114 ^ 1) & 1) != 0)
        {
          if (v71 && ((v113 ^ 1) & 1) == 0)
          {
            [*(a1 + 40) addObject:v71];
          }

          v102 = v60;
          v80 = _WRGetString(v5, v6, @"event_identifier_field_name");
          if (v80)
          {
            *(*(*(a1 + 96) + 8) + 24) = 1;
          }

          v103 = _WRGetString(v5, v6, @"custom_environment_core_analytics_event_name");
          v104 = v80;
          LOBYTE(v101) = v56;
          v105 = v78;
          v106 = v38;
          v107 = [[WRSignpost alloc] initWithSubsystem:v38 category:v112 name:v25 eventIdentifierFieldName:v80 individuationFieldName:v78 environmentFieldNames:v108 networkBound:v101 customEnvironmentCoreAnalyticsEventName:v103 diagnostics:v110];
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v81 = *(a1 + 48);
          v82 = [v81 countByEnumeratingWithState:&v116 objects:v122 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v117;
            obj = v81;
            while (2)
            {
              for (i = 0; i != v83; ++i)
              {
                if (*v117 != v84)
                {
                  objc_enumerationMutation(obj);
                }

                v86 = *(*(&v116 + 1) + 8 * i);
                v87 = [v86 name];
                v88 = [v87 isEqualToString:v25];

                if (v88)
                {
                  v89 = v107;
                  if ([v86 isEqual:v107])
                  {
                    v96 = @"Duplicate signpost dictionary for signpost %@";
                  }

                  else
                  {
                    v96 = @"Multiple signposts with name %@";
                  }

                  v16 = WRMakeError(8, v96, v90, v91, v92, v93, v94, v95, v25);
                  v38 = v106;
                  v49 = v111;
                  v45 = v112;
                  v60 = v102;
                  v63 = v109;
                  goto LABEL_72;
                }
              }

              v81 = obj;
              v83 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
              if (v83)
              {
                continue;
              }

              break;
            }
          }

          [*(a1 + 48) addObject:v107];
          v45 = v112;
          [*(*(a1 + 56) + 56) addSubsystem:v106 category:v112];
          if (v114 & 1 | v113 & 1 | (v110 != 0))
          {
            [*(*(a1 + 56) + 64) addSubsystem:v106 category:v112];
          }

          else
          {
            *(*(*(a1 + 104) + 8) + 24) = 1;
          }

          v38 = v106;
          v49 = v111;
          v60 = v102;
          v63 = v109;
          v89 = v107;
          if (v114)
          {
            [*(a1 + 64) addObject:v107];
          }

          if (v113)
          {
            if (!v111)
            {
              v49 = @"NOGROUP";
            }

            v97 = [*(a1 + 72) objectForKeyedSubscript:v49];
            obj = v97;
            if (v97)
            {
              [v97 addObject:v107];
            }

            else
            {
              v98 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v107, 0}];
              [*(a1 + 72) setObject:v98 forKeyedSubscript:v49];

              v89 = v107;
            }

            v16 = 0;
LABEL_72:
          }

          else
          {
            v16 = 0;
          }

          v79 = v105;
        }

        else
        {
          v16 = WRMakeError(8, @"Start signposts cannot be individuated (%@) for signpost %@", v72, v73, v74, v75, v76, v77, v71);
          v79 = v78;
          v45 = v112;
          v63 = v109;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v57 = [v6 objectForKeyedSubscript:@"network_bound"];
      v58 = [v57 BOOLValue];

      if (v58)
      {
        goto LABEL_25;
      }
    }

    v56 = 0;
    goto LABEL_28;
  }

  WRMakeError(8, @"Signpost name is reserved: %@", v26, v27, v28, v29, v30, v31, v25);
  v16 = LABEL_9:;
LABEL_78:

LABEL_79:
  v99 = *MEMORY[0x277D85DE8];

  return v16;
}

void __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke_99(uint64_t a1, __CFString *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == @"NOGROUP")
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(a1 + 32);
          v20 = *(*(&v16 + 1) + 8 * v12);
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
          [v13 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v5 sortedArrayUsingSelector:sel_compare_];
    [v7 addObject:v8];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      if ([v4 count])
      {
        v9 = 0;
        while (1)
        {
          v10 = [v4 objectAtIndexedSubscript:v9];
          v11 = [v5 objectAtIndexedSubscript:v9];
          v7 = [v10 compare:v11];

          if (v7)
          {
            break;
          }

          if (++v9 >= [v4 count])
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)encodedDict
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(WRWorkflow *)self name];
  v5 = [v3 initWithObjectsAndKeys:{v4, @"name", 0}];

  if ([(WRWorkflow *)self hasMaximumEventDuration])
  {
    v6 = MEMORY[0x277CCABB0];
    [(WRWorkflow *)self maximumEventDuration];
    v7 = [v6 numberWithDouble:?];
    [v5 setObject:v7 forKeyedSubscript:@"maximum_duration"];
  }

  v8 = [(WRWorkflow *)self contextualTelemetryRawValue];
  v58 = v5;
  [v5 setObject:v8 forKeyedSubscript:0x288387E18];

  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = [(WRWorkflow *)self allSignposts];
  v62 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [(WRWorkflow *)self allSignposts];
  v63 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v63)
  {
    v60 = *v78;
    v61 = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v11;
        v12 = *(*(&v77 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x277CBEB38]);
        v14 = [v12 name];
        v15 = [v12 subsystem];
        v16 = [v12 category];
        v17 = [v13 initWithObjectsAndKeys:{v14, @"name", v15, @"subsystem", v16, @"category", 0}];

        v18 = [(WRWorkflow *)self startSignposts];
        v19 = [v18 indexOfObjectIdenticalTo:v12];

        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"start"];
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v20 = [(WRWorkflow *)self endSignpostGroups];
        v21 = [v20 countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v21)
        {
          v22 = v21;
          LODWORD(v23) = 0;
          v24 = *v74;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v74 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v73 + 1) + 8 * i);
              if ([v26 indexOfObjectIdenticalTo:v12] != 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([v26 count] < 2)
                {
                  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"end"];
                }

                else
                {
                  v23 = (v23 + 1);
                  v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"group%d", v23];
                  [v17 setObject:v27 forKeyedSubscript:@"end_group"];
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v22);
        }

        v28 = [v12 individuationFieldName];
        [v17 setObject:v28 forKeyedSubscript:@"individuation_field_name"];

        v29 = [v12 environmentFieldNames];
        [v17 setObject:v29 forKeyedSubscript:@"environment_field_names"];

        if ([v12 networkBound])
        {
          [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"network_bound"];
        }

        v30 = [v12 diagnostics];
        v31 = [v30 count];

        if (v31)
        {
          v32 = objc_alloc(MEMORY[0x277CBEB18]);
          v33 = [v12 diagnostics];
          v34 = [v32 initWithCapacity:{objc_msgSend(v33, "count")}];

          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v35 = [v12 diagnostics];
          v36 = [v35 countByEnumeratingWithState:&v69 objects:v82 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v70;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v70 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = [*(*(&v69 + 1) + 8 * j) encodedDict];
                [v34 addObject:v40];
              }

              v37 = [v35 countByEnumeratingWithState:&v69 objects:v82 count:16];
            }

            while (v37);
          }

          v41 = [v34 copy];
          [v17 setObject:v41 forKeyedSubscript:@"diagnostics"];
        }

        [v62 addObject:v17];

        v11 = v64 + 1;
        self = v61;
      }

      while (v64 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v63);
  }

  v42 = [v62 copy];
  [v58 setObject:v42 forKeyedSubscript:@"signposts"];

  v43 = [(WRWorkflow *)self workflowDiagnostics];
  v44 = [v43 count];

  if (v44)
  {
    v45 = objc_alloc(MEMORY[0x277CBEB18]);
    v46 = [(WRWorkflow *)self workflowDiagnostics];
    v47 = [v45 initWithCapacity:{objc_msgSend(v46, "count")}];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = [(WRWorkflow *)self workflowDiagnostics];
    v49 = [v48 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v66;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v66 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [*(*(&v65 + 1) + 8 * k) encodedDict];
          [v47 addObject:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v65 objects:v81 count:16];
      }

      while (v50);
    }

    v54 = [v47 copy];
    [v58 setObject:v54 forKeyedSubscript:@"diagnostics"];
  }

  v55 = [v58 copy];

  v56 = *MEMORY[0x277D85DE8];

  return v55;
}

- (BOOL)hasChangesRelativeTo:(id)a3
{
  v4 = a3;
  [(WRWorkflow *)self maximumEventDuration];
  v6 = v5;
  [v4 maximumEventDuration];
  if (v6 != v7)
  {
    goto LABEL_36;
  }

  v8 = [(WRWorkflow *)self contextualTelemetryRawValue];
  v9 = [v4 contextualTelemetryRawValue];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_35;
  }

  v10 = [(WRWorkflow *)self contextualTelemetryRawValue];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v4 contextualTelemetryRawValue];
  if (!v12)
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = v12;
  v14 = [(WRWorkflow *)self contextualTelemetryRawValue];
  v15 = [v4 contextualTelemetryRawValue];
  v16 = [v14 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v17 = [(WRWorkflow *)self workflowDiagnostics];
  v18 = [v17 count];
  v19 = [v4 workflowDiagnostics];
  v20 = [v19 count];

  if (v18 == v20)
  {
    v21 = [(WRWorkflow *)self workflowDiagnostics];
    v22 = [v21 count];

    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = [(WRWorkflow *)self workflowDiagnostics];
        v25 = [v24 objectAtIndexedSubscript:v23];

        v26 = [v4 workflowDiagnostics];
        v27 = [v26 objectAtIndexedSubscript:v23];

        LOBYTE(v26) = [v25 isEqual:v27];
        if ((v26 & 1) == 0)
        {
          goto LABEL_36;
        }

        ++v23;
        v28 = [(WRWorkflow *)self workflowDiagnostics];
        v29 = [v28 count];
      }

      while (v23 < v29);
    }

    v30 = [(WRWorkflow *)self allSignposts];
    v31 = [v30 count];
    v32 = [v4 allSignposts];
    v33 = [v32 count];

    if (v31 == v33)
    {
      v34 = [(WRWorkflow *)self allSignposts];
      v35 = [v34 count];

      if (v35)
      {
        v36 = 0;
        while (1)
        {
          v37 = [(WRWorkflow *)self allSignposts];
          v8 = [v37 objectAtIndexedSubscript:v36];

          v38 = [v4 allSignposts];
          v9 = [v38 objectAtIndexedSubscript:v36];

          if (![v8 isEqual:v9] || (-[WRSignpost hasChangesRelativeTo:](v8, v9) & 1) != 0)
          {
            break;
          }

          ++v36;
          v39 = [(WRWorkflow *)self allSignposts];
          v40 = [v39 count];

          if (v36 >= v40)
          {
            goto LABEL_20;
          }
        }

LABEL_35:

        goto LABEL_36;
      }

LABEL_20:
      v41 = [(WRWorkflow *)self startSignposts];
      v42 = [v41 count];
      v43 = [v4 startSignposts];
      v44 = [v43 count];

      if (v42 == v44)
      {
        v45 = [(WRWorkflow *)self startSignposts];
        v46 = [v45 count];

        if (v46)
        {
          v47 = 0;
          do
          {
            v48 = [(WRWorkflow *)self startSignposts];
            v49 = [v48 objectAtIndexedSubscript:v47];

            v50 = [v4 startSignposts];
            v51 = [v50 objectAtIndexedSubscript:v47];

            LOBYTE(v50) = [v49 isEqual:v51];
            if ((v50 & 1) == 0)
            {
              goto LABEL_36;
            }

            ++v47;
            v52 = [(WRWorkflow *)self startSignposts];
            v53 = [v52 count];
          }

          while (v47 < v53);
        }

        v54 = [(WRWorkflow *)self endSignpostGroups];
        v55 = [v54 count];
        v56 = [v4 endSignpostGroups];
        v57 = [v56 count];

        if (v55 == v57)
        {
          v58 = [(WRWorkflow *)self endSignpostGroups];
          v59 = [v58 count];

          if (!v59)
          {
            v70 = 0;
            goto LABEL_37;
          }

          v60 = 0;
          while (1)
          {
            v61 = [(WRWorkflow *)self endSignpostGroups];
            v8 = [v61 objectAtIndexedSubscript:v60];

            v62 = [v4 endSignpostGroups];
            v9 = [v62 objectAtIndexedSubscript:v60];

            v63 = [v8 count];
            if (v63 != [v9 count])
            {
              goto LABEL_35;
            }

            if ([v8 count])
            {
              v64 = 0;
              do
              {
                v65 = [v8 objectAtIndexedSubscript:v64];
                v66 = [v9 objectAtIndexedSubscript:v64];
                v67 = [v65 isEqual:v66];

                if ((v67 & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              while (++v64 < [v8 count]);
            }

            ++v60;
            v68 = [(WRWorkflow *)self endSignpostGroups];
            v69 = [v68 count];

            v70 = 0;
            if (v60 >= v69)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

LABEL_36:
  v70 = 1;
LABEL_37:

  return v70;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WRWorkflow *)self name];
      v7 = [(WRWorkflow *)v5 name];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WRWorkflow *)self name];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WRWorkflow *)self name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ (%lu signposts)", self->_name, -[NSArray count](self->_allSignposts, "count")];

  return v2;
}

- (double)overallDiagnosticThresholdIntervalSeconds
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(WRWorkflow *)self workflowDiagnostics];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasTriggerThresholdDurationSingle])
        {
          [v8 triggerThresholdDurationSingle];
          v4 = v9;
          goto LABEL_11;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)hasOverallDiagnosticThresholdInterval
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(WRWorkflow *)self workflowDiagnostics];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasTriggerThresholdDurationSingle])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)wrsignpostWithName:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_13_0() allSignposts];
    OUTLINED_FUNCTION_76();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v14 + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:v3];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_76();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)wrsignpostForSignpostObject:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_13_0() allSignposts];
    OUTLINED_FUNCTION_76();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v12 + 8 * i);
          if (([(WRSignpost *)v9 matchesSignpost:v3]& 1) != 0)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_76();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)diagnosticsEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)plistDirectory
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)allWorkflows
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15_0(&dword_2746E5000, v2, v3, "%{public}@: workflow name doesn't match plist filename %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7_0(&dword_2746E5000, v0, v1, "%{public}@: Unable to create workflow: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_2746E5000, v0, v1, "%{public}@: Bad override for telemetry enablement: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_2746E5000, v0, v1, "%{public}@: Bad override workflow: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_2746E5000, v0, v1, "%{public}@: Bad override for diagnostics enablement: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0(&dword_2746E5000, v0, v1, "%{public}@: Invalid new signposts: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPlist:(uint8_t *)buf telemetryEnabled:(os_log_t)log diagnosticsEnabled:checkForOverrides:error:.cold.6(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_2746E5000, log, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: Inferring support of concurrent events", buf, 0x16u);
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)initWithPlist:(uint64_t)a3 telemetryEnabled:(uint64_t)a4 diagnosticsEnabled:(uint64_t)a5 checkForOverrides:(uint64_t)a6 error:(uint64_t)a7 .cold.8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(3, @"Workflow disabled", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

- (id)initWithPlist:(uint64_t)a3 telemetryEnabled:(uint64_t)a4 diagnosticsEnabled:(uint64_t)a5 checkForOverrides:(uint64_t)a6 error:(uint64_t)a7 .cold.9(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(7, @"No workflow name in workflow plist", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

- (id)initWithPlist:(uint64_t)a3 telemetryEnabled:(uint64_t)a4 diagnosticsEnabled:(uint64_t)a5 checkForOverrides:(uint64_t)a6 error:(uint64_t)a7 .cold.10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(2, @"Unable to init", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

void __26__WRWorkflow_allWorkflows__block_invoke_13_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_0(&dword_2746E5000, v0, v1, "Error with plist file %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)workflowWithName:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_2746E5000, v0, v1, "%{public}@: Unable to create new workflow: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __31__WRWorkflow_workflowWithName___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end