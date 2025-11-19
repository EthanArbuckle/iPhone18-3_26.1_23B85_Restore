@interface DiagnosticDataController
- (DiagnosticDataController)init;
- (id)specifiers;
- (void)_loadDiagnosticsDataWithCompletion:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation DiagnosticDataController

- (DiagnosticDataController)init
{
  v20.receiver = self;
  v20.super_class = DiagnosticDataController;
  v2 = [(DiagnosticDataController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->__state = 0;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"plist", @"synced", @"ips", @"metriclog", @"anon", @"crash", @"session", @"log", @"gz", 0}];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"Extensions"];
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    mach_service = xpc_connection_create_mach_service("com.apple.crash_mover", 0, 0);
    v7 = v15[5];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__DiagnosticDataController_init__block_invoke;
    handler[3] = &unk_279BA0FF0;
    handler[4] = &v14;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v15[5]);
    v8 = xpc_connection_send_message_with_reply_sync(v15[5], v6);
    if (MEMORY[0x266761C20]() != MEMORY[0x277D86468] || (xpc_dictionary_get_value(v8, "Success"), v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) == 0) || (value = xpc_BOOL_get_value(v10), v11, !value))
    {
      NSLog(&cfstr_CrashMoverXpcS.isa);
    }

    _Block_object_dispose(&v14, 8);
  }

  return v3;
}

void __32__DiagnosticDataController_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x266761C20](a2);
  if (a2 == MEMORY[0x277D863F0] && v4 == MEMORY[0x277D86480])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = DiagnosticDataController;
  [(DiagnosticDataController *)&v16 viewDidLoad];
  v3 = PUI_LocalizedStringForProblemReporting(@"PROBLEM_REPORTING_DATA");
  [(DiagnosticDataController *)self setTitle:v3];

  v4 = [(DiagnosticDataController *)self table];
  [v4 _setDisplaysCellContentStringsOnTapAndHold:1];

  v5 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [(DiagnosticDataController *)self setSearchController:v5];

  v6 = [(DiagnosticDataController *)self searchController];
  [v6 setSearchResultsUpdater:self];

  v7 = [(DiagnosticDataController *)self searchController];
  [v7 setObscuresBackgroundDuringPresentation:0];

  v8 = [(DiagnosticDataController *)self searchController];
  v9 = [v8 searchBar];
  [v9 setAutocapitalizationType:0];

  v10 = [(DiagnosticDataController *)self searchController];
  v11 = [v10 searchBar];
  [v11 setKeyboardType:0];

  v12 = [(DiagnosticDataController *)self searchController];
  v13 = [v12 searchBar];
  [v13 setAutocorrectionType:1];

  v14 = [(DiagnosticDataController *)self searchController];
  v15 = [(DiagnosticDataController *)self navigationItem];
  [v15 setSearchController:v14];

  [(DiagnosticDataController *)self setDefinesPresentationContext:1];
}

- (void)_loadDiagnosticsDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DiagnosticDataController__loadDiagnosticsDataWithCompletion___block_invoke;
  block[3] = &unk_279BA1038;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __63__DiagnosticDataController__loadDiagnosticsDataWithCompletion___block_invoke(uint64_t a1)
{
  v122 = *MEMORY[0x277D85DE8];
  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = MEMORY[0x277CBEB18];
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v3 = getOSAGetSubmittableLogsSymbolLoc_ptr;
  v114 = getOSAGetSubmittableLogsSymbolLoc_ptr;
  if (!getOSAGetSubmittableLogsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getOSAGetSubmittableLogsSymbolLoc_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getOSAGetSubmittableLogsSymbolLoc_block_invoke(&buf);
    v3 = v112[3];
  }

  _Block_object_dispose(&v111, 8);
  if (!v3)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_101;
  }

  v71 = a1;
  v4 = v3(0);
  v5 = [v2 arrayWithArray:v4];

  v111 = 0;
  v112 = &v111;
  v113 = 0x2050000000;
  v6 = getRTCReportingClass_softClass;
  v114 = getRTCReportingClass_softClass;
  if (!getRTCReportingClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getRTCReportingClass_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getRTCReportingClass_block_invoke(&buf);
    v6 = v112[3];
  }

  v7 = v6;
  _Block_object_dispose(&v111, 8);
  v110 = 0;
  v80 = [v6 _privacyLogs:&v110];
  v77 = v110;
  if (v77)
  {
    v8 = _PUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v77;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "RTCReporting log files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v80];
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x2050000000;
  v9 = getCloudTelemetryReporterClass_softClass;
  v114 = getCloudTelemetryReporterClass_softClass;
  if (!getCloudTelemetryReporterClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getCloudTelemetryReporterClass_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getCloudTelemetryReporterClass_block_invoke(&buf);
    v9 = v112[3];
  }

  v10 = v9;
  _Block_object_dispose(&v111, 8);
  v109 = 0;
  v79 = [v9 _privacyLogs:&v109];
  v76 = v109;
  if (v76)
  {
    v11 = _PUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v76;
      _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "CloudTelemetry log files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v79];
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x2050000000;
  v12 = getAATransparencyLoggingClass_softClass;
  v114 = getAATransparencyLoggingClass_softClass;
  if (!getAATransparencyLoggingClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getAATransparencyLoggingClass_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getAATransparencyLoggingClass_block_invoke(&buf);
    v12 = v112[3];
  }

  v13 = v12;
  _Block_object_dispose(&v111, 8);
  v108 = 0;
  v78 = [v12 logsWithError:&v108];
  v75 = v108;
  if (v75)
  {
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v75;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "AppAnalytics log files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v78];
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x2050000000;
  v15 = get_DPReportFileManagerClass_softClass;
  v114 = get_DPReportFileManagerClass_softClass;
  if (!get_DPReportFileManagerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __get_DPReportFileManagerClass_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __get_DPReportFileManagerClass_block_invoke(&buf);
    v15 = v112[3];
  }

  v16 = v15;
  _Block_object_dispose(&v111, 8);
  v86 = [v15 submittedReports];
  [v5 addObjectsFromArray:v86];
  v85 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/sysdiagnose" isDirectory:1];
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = *MEMORY[0x277CBE8E8];
  v19 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE8E8]];
  v20 = [v17 contentsOfDirectoryAtURL:v85 includingPropertiesForKeys:v19 options:4 error:0];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v104 objects:v117 count:16];
  if (v21)
  {
    v22 = *v105;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v105 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v104 + 1) + 8 * i) absoluteURL];
        [v5 addObject:v24];
      }

      v21 = [obj countByEnumeratingWithState:&v104 objects:v117 count:16];
    }

    while (v21);
  }

  v84 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces" isDirectory:1];
  v25 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = [MEMORY[0x277CBEA60] arrayWithObject:v18];
  v27 = [v25 contentsOfDirectoryAtURL:v84 includingPropertiesForKeys:v26 options:4 error:0];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v90 = v27;
  v28 = [v90 countByEnumeratingWithState:&v100 objects:v116 count:16];
  if (v28)
  {
    v29 = *v101;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v101 != v29)
        {
          objc_enumerationMutation(v90);
        }

        v31 = [*(*(&v100 + 1) + 8 * j) absoluteURL];
        [v5 addObject:v31];
      }

      v28 = [v90 countByEnumeratingWithState:&v100 objects:v116 count:16];
    }

    while (v28);
  }

  v99 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v32 = getDESSubmissionLogFileURLsSymbolLoc_ptr;
  v114 = getDESSubmissionLogFileURLsSymbolLoc_ptr;
  if (!getDESSubmissionLogFileURLsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getDESSubmissionLogFileURLsSymbolLoc_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getDESSubmissionLogFileURLsSymbolLoc_block_invoke(&buf);
    v32 = v112[3];
  }

  _Block_object_dispose(&v111, 8);
  if (!v32)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_101;
  }

  v83 = v32(&v99);
  v74 = v99;
  if (v74)
  {
    v33 = _PUILoggingFacility();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v74;
      _os_log_impl(&dword_2657FE000, v33, OS_LOG_TYPE_DEFAULT, "DES Submission Log Files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else if (v83)
  {
    [v5 addObjectsFromArray:v83];
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x2050000000;
  v34 = getSPMLLoggingClass_softClass;
  v114 = getSPMLLoggingClass_softClass;
  if (!getSPMLLoggingClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getSPMLLoggingClass_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getSPMLLoggingClass_block_invoke(&buf);
    v34 = v112[3];
  }

  v35 = v34;
  _Block_object_dispose(&v111, 8);
  v98 = 0;
  v82 = [v34 submitttedSpotlightReportsError:&v98];
  v73 = v98;
  if (v73)
  {
    v36 = _PUILoggingFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v73;
      _os_log_impl(&dword_2657FE000, v36, OS_LOG_TYPE_DEFAULT, "Search metadata reports not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else if (v82)
  {
    [v5 addObjectsFromArray:v82];
  }

  v111 = 0;
  v112 = &v111;
  v113 = 0x2050000000;
  v37 = getPLDiagnosticsClass_softClass;
  v114 = getPLDiagnosticsClass_softClass;
  if (!getPLDiagnosticsClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getPLDiagnosticsClass_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getPLDiagnosticsClass_block_invoke(&buf);
    v37 = v112[3];
  }

  v38 = v37;
  _Block_object_dispose(&v111, 8);
  v39 = [v37 diagnosticsURLs];
  [v5 addObjectsFromArray:v39];

  v97 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v40 = getSDRGetAllLogFileURLsSymbolLoc_ptr;
  v114 = getSDRGetAllLogFileURLsSymbolLoc_ptr;
  if (!getSDRGetAllLogFileURLsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v119 = __getSDRGetAllLogFileURLsSymbolLoc_block_invoke;
    v120 = &unk_279BA0D08;
    v121 = &v111;
    __getSDRGetAllLogFileURLsSymbolLoc_block_invoke(&buf);
    v40 = v112[3];
  }

  _Block_object_dispose(&v111, 8);
  if (!v40)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_101;
  }

  v81 = v40(&v97);
  v72 = v97;
  if (v72)
  {
    v41 = _PUILoggingFacility();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v72;
      _os_log_impl(&dword_2657FE000, v41, OS_LOG_TYPE_DEFAULT, "System Diagnostic Reporter logs not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else if (v81)
  {
    [v5 addObjectsFromArray:v81];
  }

  if (getDRGetAllLogFileURLsSymbolLoc())
  {
    v96 = 0;
    DRGetAllLogFileURLsSymbolLoc = getDRGetAllLogFileURLsSymbolLoc();
    if (DRGetAllLogFileURLsSymbolLoc)
    {
      v43 = DRGetAllLogFileURLsSymbolLoc(&v96);
      v44 = v96;
      if (v44)
      {
        v45 = _PUILoggingFacility();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v44;
          _os_log_impl(&dword_2657FE000, v45, OS_LOG_TYPE_DEFAULT, "DiagnosticPipeline logs not fetched: Error: %@", &buf, 0xCu);
        }
      }

      else if (v43)
      {
        [v5 addObjectsFromArray:v43];
      }

      goto LABEL_78;
    }

    [PUILockdownModeController getEligibleDevicesWithCompletion:];
LABEL_101:
    __break(1u);
  }

LABEL_78:
  if (![v5 count])
  {
LABEL_95:
    v66 = MEMORY[0x277D3FAD8];
    v67 = PUI_LocalizedStringForProblemReporting(@"PROBLEM_REPORTING_NO_DATA");
    v68 = [v66 preferenceSpecifierNamed:v67 target:0 set:0 get:0 detail:0 cell:13 edit:0];

    v69 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v68 setProperty:v69 forKey:*MEMORY[0x277D3FF38]];

    [v88 addObject:v68];
    goto LABEL_96;
  }

  [v5 sortUsingComparator:&__block_literal_global_0];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v89 = v5;
  v46 = [v89 countByEnumeratingWithState:&v92 objects:v115 count:16];
  if (!v46)
  {

    goto LABEL_95;
  }

  v47 = 0;
  v48 = *v93;
  v87 = *MEMORY[0x277D3F908];
  do
  {
    for (k = 0; k != v46; ++k)
    {
      if (*v93 != v48)
      {
        objc_enumerationMutation(v89);
      }

      v50 = *(*(&v92 + 1) + 8 * k);
      v51 = [v50 URLByStandardizingPath];
      v52 = [v51 absoluteString];
      v53 = [v52 hasSuffix:@"/"];

      if ((v53 & 1) == 0)
      {
        v54 = MEMORY[0x277D3FAD8];
        v55 = [v50 lastPathComponent];
        v56 = objc_opt_class();
        v57 = [v54 preferenceSpecifierNamed:v55 target:0 set:0 get:0 detail:v56 cell:2 edit:objc_opt_class()];

        v58 = [v50 lastPathComponent];
        LODWORD(v56) = [v58 hasSuffix:@"PLSQL.pll.anon"];

        if (v56)
        {
          [v57 setDetailControllerClass:objc_opt_class()];
          v111 = 0;
          v112 = &v111;
          v113 = 0x2050000000;
          v59 = getPLDatabaseReaderClass_softClass;
          v114 = getPLDatabaseReaderClass_softClass;
          if (!getPLDatabaseReaderClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v119 = __getPLDatabaseReaderClass_block_invoke;
            v120 = &unk_279BA0D08;
            v121 = &v111;
            __getPLDatabaseReaderClass_block_invoke(&buf);
            v59 = v112[3];
          }

          v60 = v59;
          _Block_object_dispose(&v111, 8);
          v61 = [v59 alloc];
          v62 = [v50 absoluteString];
          v63 = [v61 initWithDatabaseFile:v62];

          [v57 setProperty:v63 forKey:@"powerlogReader"];
          v64 = [v63 tableNamesFromDatabase];
          [v57 setValues:v64 titles:v64];
        }

        v65 = [v50 path];
        [v57 setProperty:v65 forKey:v87];

        [v88 addObject:v57];
        v47 = 1;
      }
    }

    v46 = [v89 countByEnumeratingWithState:&v92 objects:v115 count:16];
  }

  while (v46);

  if ((v47 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  (*(*(v71 + 32) + 16))();

  v70 = *MEMORY[0x277D85DE8];
}

uint64_t __63__DiagnosticDataController__loadDiagnosticsDataWithCompletion___block_invoke_452(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)specifiers
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [(DiagnosticDataController *)self _state];
  v4 = MEMORY[0x277D3FC48];
  if (!v3)
  {
    v5 = [(DiagnosticDataController *)self _allSpecifiers];

    if (!v5)
    {
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __38__DiagnosticDataController_specifiers__block_invoke;
      v17[3] = &unk_279BA1088;
      objc_copyWeak(&v18, &location);
      [(DiagnosticDataController *)self _loadDiagnosticsDataWithCompletion:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v20[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = *v4;
    v9 = *(&self->super.super.super.super.super.isa + v8);
    *(&self->super.super.super.super.super.isa + v8) = v7;
  }

  v10 = [(DiagnosticDataController *)self searchController];
  if (([v10 isActive] & 1) == 0)
  {
    v11 = [(DiagnosticDataController *)self _state]== 1;

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [(DiagnosticDataController *)self _allSpecifiers];
    v13 = *v4;
    v10 = *(&self->super.super.super.super.super.isa + v13);
    *(&self->super.super.super.super.super.isa + v13) = v12;
  }

LABEL_9:
  v14 = *(&self->super.super.super.super.super.isa + *v4);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __38__DiagnosticDataController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__DiagnosticDataController_specifiers__block_invoke_2;
  v5[3] = &unk_279BA1060;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __38__DiagnosticDataController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) copy];
  [WeakRetained set_allSpecifiers:v3];

  v4 = [WeakRetained unprotectedSpecifiers];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__DiagnosticDataController_specifiers__block_invoke_3;
  aBlock[3] = &unk_279BA0B28;
  aBlock[4] = WeakRetained;
  v5 = _Block_copy(aBlock);
  if ([v4 count])
  {
    [WeakRetained removeContiguousSpecifiers:v4 animated:1];
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __38__DiagnosticDataController_specifiers__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _allSpecifiers];
  [v2 insertContiguousSpecifiers:v3 atIndex:0 animated:1];

  v4 = *(a1 + 32);
  v5 = [v4 _allSpecifiers];
  [v4 setSpecifiers:v5];

  v6 = *(a1 + 32);

  return [v6 set_state:1];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];

  if ([v5 length])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [(DiagnosticDataController *)self _allSpecifiers];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __67__DiagnosticDataController_updateSearchResultsForSearchController___block_invoke;
    v12 = &unk_279BA0E10;
    v13 = v5;
    v14 = v6;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:&v9];

    [(DiagnosticDataController *)self setSpecifiers:v8, v9, v10, v11, v12];
  }

  else
  {
    v8 = [(DiagnosticDataController *)self _allSpecifiers];
    [(DiagnosticDataController *)self setSpecifiers:v8];
  }
}

void __67__DiagnosticDataController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end