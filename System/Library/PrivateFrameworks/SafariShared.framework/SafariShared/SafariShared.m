id WBSTabOrderManagerDefaultPreferenceValues()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"WBSNewTabPositionPreferenceKey";
  v2[1] = @"WBSNewBlankTabPositionDelayPreferenceKey";
  v3[0] = &unk_1F3A9B018;
  v3[1] = &unk_1F3A9B030;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];

  return v0;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAppleAccount()
{
  if (WBS_LOG_CHANNEL_PREFIXAppleAccount_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAppleAccount_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAppleAccount_log;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  *(a2 + 22) = 1024;
  *(a2 + 24) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return JSScriptCreateReferencingImmortalASCIIText();
}

void SafariShared::ReaderAvailabilityController::configureProcessPool(SafariShared::ReaderAvailabilityController *this, WKProcessPool *a2)
{
  v4 = this;
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_dateForKey:@"ReaderOrTranslationLastActivated"];

  if (v3)
  {
    [(SafariShared::ReaderAvailabilityController *)v4 _setObject:v3 forBundleParameter:@"ReaderOrTranslationLastActivated"];
  }
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 execute];
    [v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:objc_msgSend(v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,WBSUserDefinedContentBlockerType &,NSString * {__strong}&,BOOL &,int const&>(void *a1, void *a2, void *a3, unsigned __int8 *a4, unsigned int *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,BOOL &,int const&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,BOOL &,int const&>(void *a1, void *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,BOOL &,int const&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,BOOL &,int const&>(void *a1, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:3];
  [v5 bindInt:*a3 atParameterIndex:4];
}

id SafariShared::WBSSQLiteDatabaseFetch<>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v3 query:v4];
  v6 = [v5 fetch];

  return v6;
}

void sub_1BB6F7728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _urlForStorage(void)
{
  v0 = _urlForStorage(void)::settingsFileURL;
  if (!_urlForStorage(void)::settingsFileURL)
  {
    v1 = [MEMORY[0x1E696AC08] defaultManager];
    v2 = [v1 safari_settingsDirectoryURL];
    v3 = [v2 URLByAppendingPathComponent:@"BypassedInvalidCertificateWarning.plist" isDirectory:0];
    v4 = _urlForStorage(void)::settingsFileURL;
    _urlForStorage(void)::settingsFileURL = v3;

    v0 = _urlForStorage(void)::settingsFileURL;
  }

  return v0;
}

id SafariShared::WBSSQLiteDatabaseFetch<int>(void *a1, void *a2, unsigned int *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindInt:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

uint64_t WBS_LOG_CHANNEL_PREFIXHistory()
{
  if (WBS_LOG_CHANNEL_PREFIXHistory_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXHistory_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXHistory_log;
}

id WBSHistoryConnectionInterface()
{
  if (WBSHistoryConnectionInterface_once != -1)
  {
    WBSHistoryConnectionInterface_cold_1();
  }

  v1 = WBSHistoryConnectionInterface_interface;

  return v1;
}

void __WBSHistoryConnectionInterface_block_invoke()
{
  v37[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AB49F8];
  v1 = WBSHistoryConnectionInterface_interface;
  WBSHistoryConnectionInterface_interface = v0;

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3ABB208];
  v3 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_getBestMatchesForTypedString_filterResultsUsingProfileIdentifier_limit_forQueryID_withSearchParameters_completionHandler_ argumentIndex:1 ofReply:1];

  [WBSHistoryConnectionInterface_interface setInterface:v2 forSelector:sel_beginURLCompletionSession_ argumentIndex:0 ofReply:1];
  v9 = WBSHistoryConnectionInterface_interface;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  [v9 setClasses:v17 forSelector:sel_connectWithOptions_delegate_completionHandler_ argumentIndex:0 ofReply:0];

  v18 = WBSHistoryConnectionInterface_interface;
  v19 = WBSHistoryServiceDatabaseDelegateInterface();
  [v18 setInterface:v19 forSelector:sel_connectWithOptions_delegate_completionHandler_ argumentIndex:1 ofReply:0];

  v20 = WBSHistoryConnectionInterface_interface;
  v21 = WBSHistoryServiceDatabaseInterface();
  [v20 setInterface:v21 forSelector:sel_connectWithOptions_delegate_completionHandler_ argumentIndex:0 ofReply:1];

  v22 = WBSHistoryConnectionInterface_interface;
  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v23 setWithObjects:{v24, v25, v26, v27, objc_opt_class(), 0}];
  [v22 setClasses:v28 forSelector:sel_connectWithOptions_delegate_completionHandler_ argumentIndex:3 ofReply:1];

  v29 = WBSHistoryConnectionInterface_interface;
  v30 = WBSCloudHistoryServiceInterface();
  [v29 setInterface:v30 forSelector:sel_initializeCloudHistoryWithConfiguration_completionHandler_ argumentIndex:0 ofReply:1];

  v31 = WBSHistoryConnectionInterface_interface;
  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
  [v31 setClasses:v35 forSelector:sel_listDatabaseURLsWithCompletionHandler_ argumentIndex:0 ofReply:1];
}

void __WBSHistoryServiceDatabaseDelegateInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AB8890];
  v1 = WBSHistoryServiceDatabaseDelegateInterface_interface;
  WBSHistoryServiceDatabaseDelegateInterface_interface = v0;
}

id WBSHistoryServiceDatabaseDelegateInterface()
{
  if (WBSHistoryServiceDatabaseDelegateInterface_once != -1)
  {
    WBSHistoryServiceDatabaseDelegateInterface_cold_1();
  }

  v1 = WBSHistoryServiceDatabaseDelegateInterface_interface;

  return v1;
}

id WBSHistoryServiceDatabaseInterface()
{
  if (WBSHistoryServiceDatabaseInterface_once != -1)
  {
    WBSHistoryServiceDatabaseInterface_cold_1();
  }

  v1 = WBSHistoryServiceDatabaseInterface_interface;

  return v1;
}

void __WBSHistoryServiceDatabaseInterface_block_invoke()
{
  v71[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AB7860];
  v1 = WBSHistoryServiceDatabaseInterface_interface;
  WBSHistoryServiceDatabaseInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  v69 = [v5 setByAddingObject:objc_opt_class()];
  v68 = [v5 setByAddingObject:objc_opt_class()];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v67 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  [WBSHistoryServiceDatabaseInterface_interface setClasses:v67 forSelector:sel_fetchWithOptions_predicate_completionHandler_ argumentIndex:1 ofReply:0];
  [WBSHistoryServiceDatabaseInterface_interface setClasses:v69 forSelector:sel_fetchMetadataForKeys_completionHandler_ argumentIndex:0 ofReply:0];
  [WBSHistoryServiceDatabaseInterface_interface setClasses:v68 forSelector:sel_fetchMetadataForKeys_completionHandler_ argumentIndex:0 ofReply:1];
  [WBSHistoryServiceDatabaseInterface_interface setClasses:v5 forSelector:sel_setMetadataValue_forKey_completionHandler_ argumentIndex:0 ofReply:0];
  v11 = WBSHistoryServiceDatabaseInterface_interface;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v11 setClasses:v14 forSelector:sel_fetchEventsForListener_completionHandler_ argumentIndex:0 ofReply:1];

  v15 = WBSHistoryServiceDatabaseInterface_interface;
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v15 setClasses:v18 forSelector:sel_dispatchEvent_listenersToIgnore_persistForDelayedDispatching_completionHandler_ argumentIndex:1 ofReply:0];

  v19 = WBSHistoryServiceDatabaseInterface_interface;
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  [v19 setClasses:v22 forSelector:sel_clearHistoryItems_afterDate_beforeDate_tombstoneMode_completionHandler_ argumentIndex:0 ofReply:0];

  v23 = WBSHistoryServiceDatabaseInterface_interface;
  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v23 setClasses:v26 forSelector:sel_replayAndAddTombstones_completionHandler_ argumentIndex:0 ofReply:0];

  v27 = WBSHistoryServiceDatabaseInterface_interface;
  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  [v27 setClasses:v30 forSelector:sel_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler_ argumentIndex:0 ofReply:1];

  v31 = WBSHistoryServiceDatabaseInterface_interface;
  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
  [v31 setClasses:v34 forSelector:sel_visitsAndTombstonesNeedingSyncWithVisitSyncWindow_completionHandler_ argumentIndex:1 ofReply:1];

  v35 = WBSHistoryServiceDatabaseInterface_interface;
  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  [v35 setClasses:v38 forSelector:sel_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler_ argumentIndex:2 ofReply:0];

  v39 = WBSHistoryServiceDatabaseInterface_interface;
  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
  [v39 setClasses:v42 forSelector:sel_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler_ argumentIndex:3 ofReply:0];

  v43 = WBSHistoryServiceDatabaseInterface_interface;
  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  [v43 setClasses:v46 forSelector:sel_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler_ argumentIndex:0 ofReply:1];

  v47 = WBSHistoryServiceDatabaseInterface_interface;
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [v47 setClasses:v50 forSelector:sel_checkIfLocalVisitExistsForDatabaseIDs_withCompletion_ argumentIndex:0 ofReply:0];

  v51 = WBSHistoryServiceDatabaseInterface_interface;
  v52 = MEMORY[0x1E695DFD8];
  v53 = objc_opt_class();
  v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
  [v51 setClasses:v54 forSelector:sel_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler_ argumentIndex:0 ofReply:1];

  v55 = WBSHistoryServiceDatabaseInterface_interface;
  v56 = MEMORY[0x1E695DFD8];
  v71[0] = objc_opt_class();
  v71[1] = objc_opt_class();
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v58 = [v56 setWithArray:v57];
  [v55 setClasses:v58 forSelector:sel_getVisitedLinksWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v59 = WBSHistoryServiceDatabaseInterface_interface;
  v60 = MEMORY[0x1E695DFD8];
  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
  v62 = [v60 setWithArray:v61];
  [v59 setClasses:v62 forSelector:sel_groupVisitsIntoSessionsBetweenStartDate_endDate_completionHandler_ argumentIndex:0 ofReply:1];

  v63 = WBSHistoryServiceDatabaseInterface_interface;
  v64 = [MEMORY[0x1E69C88A8] xpcInterface];
  [v63 setInterface:v64 forSelector:sel_exportHistory_completionHandler_ argumentIndex:0 ofReply:0];

  v65 = WBSHistoryServiceDatabaseInterface_interface;
  v66 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AB5910];
  [v65 setInterface:v66 forSelector:sel_startImportHistorySessionWithVisitTimePrecision_completionHandler_ argumentIndex:0 ofReply:1];
}

id WBSCloudHistoryServiceInterface()
{
  if (WBSCloudHistoryServiceInterface_once != -1)
  {
    WBSCloudHistoryServiceInterface_cold_1();
  }

  v1 = WBSCloudHistoryServiceInterface_interface;

  return v1;
}

void __WBSCloudHistoryServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AA2168];
  v1 = WBSCloudHistoryServiceInterface_interface;
  WBSCloudHistoryServiceInterface_interface = v0;
}

void sub_1BB6F9934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 48));
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudTabs()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudTabs_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudTabs_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudTabs_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSafariSuggestions()
{
  if (WBS_LOG_CHANNEL_PREFIXSafariSuggestions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSafariSuggestions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSafariSuggestions_log;
}

uint64_t WBSParsecGlobalFeedbackIsEnabled()
{
  if (globalFeedbackDispatcherEnabledBlock)
  {
    return (*(globalFeedbackDispatcherEnabledBlock + 16))();
  }

  else
  {
    return 1;
  }
}

void sub_1BB6FA7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(v14 + 2);
  _Unwind_Resume(a1);
}

void sub_1BB6FADC0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudBookmarks()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudBookmarks_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudBookmarks_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log;
}

void sub_1BB6FB7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id digitalHealthManagerGlobalQueue()
{
  if (digitalHealthManagerGlobalQueue_once != -1)
  {
    digitalHealthManagerGlobalQueue_cold_1();
  }

  v1 = digitalHealthManagerGlobalQueue_queue;

  return v1;
}

void __digitalHealthManagerGlobalQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.SafariShared.WBSDigitalHealthManager.globalQueue", 0);
  v1 = digitalHealthManagerGlobalQueue_queue;
  digitalHealthManagerGlobalQueue_queue = v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1BFB13CE0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  v3 = a2[4].n128_u64[1];
  a2[4].n128_u64[1] = 0;
  a1[4].n128_u64[1] = v3;
  v4 = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = 0;
  a1[5].n128_u64[0] = v4;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1BFB13CE0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1BFB13CE0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double __Block_byref_object_copy__30(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1BFB13CE0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t waitForGroupOrStopCondition(void *a1, uint64_t a2)
{
  v3 = a1;
  do
  {
    v4 = (*(a2 + 16))(a2);
    if (v4)
    {
      break;
    }

    v5 = dispatch_time(0, 55000000);
  }

  while (dispatch_group_wait(v3, v5));

  return v4 ^ 1u;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions()
{
  if (WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions_log;
}

id urlForOfflineSearchDirectory()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = NSHomeDirectory();
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];
  v3 = [v2 URLByAppendingPathComponent:@"Library/Safari/OfflineSearchModels" isDirectory:1];

  return v3;
}

id urlForOfflineSearchModelPlist()
{
  v0 = urlForOfflineSearchDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"OfflineSearch.plist"];

  return v1;
}

id canonicalize(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (([(NSString *)v1 safari_hasCaseInsensitivePrefix:@"http://www."]& 1) == 0)
  {
    if ([(NSString *)v1 safari_hasCaseInsensitivePrefix:@"https://www."])
    {
      v3 = -[NSString substringFromIndex:](v1, "substringFromIndex:", [@"https://www." length]);
      v4 = [@"http://www." stringByAppendingString:v3];
    }

    else if ([(NSString *)v1 safari_hasCaseInsensitivePrefix:@"http://"])
    {
      v3 = -[NSString substringFromIndex:](v1, "substringFromIndex:", [@"http://" length]);
      v4 = [@"http://www." stringByAppendingString:v3];
    }

    else if ([(NSString *)v1 safari_hasCaseInsensitivePrefix:@"https://wwws."])
    {
      v3 = -[NSString substringFromIndex:](v1, "substringFromIndex:", [@"https://wwws." length]);
      v4 = [@"http://www." stringByAppendingString:v3];
    }

    else
    {
      if (![(NSString *)v1 safari_hasCaseInsensitivePrefix:@"https://"])
      {
        v27 = [MEMORY[0x1E695DFF8] URLWithString:v1];
        v28 = [v27 scheme];
        v29 = [v28 length];

        v2 = v1;
        if (v29)
        {
          goto LABEL_12;
        }

        if ([(NSString *)v1 safari_hasCaseInsensitivePrefix:@"www."])
        {
          v30 = @"http://";
        }

        else
        {
          v30 = @"http://www.";
        }

        v2 = [(__CFString *)v30 stringByAppendingString:v1];
        goto LABEL_11;
      }

      v3 = -[NSString substringFromIndex:](v1, "substringFromIndex:", [@"https://" length]);
      v4 = [@"http://www." stringByAppendingString:v3];
    }

    v2 = v4;

LABEL_11:
  }

LABEL_12:
  v5 = v2;
  v6 = [v5 rangeOfString:@"/" options:4];
  v7 = v5;
  if (v8)
  {
    v9 = v6;
    v10 = [v5 length];
    v11 = v10 - v9;
    [v5 rangeOfString:@"index." options:1 range:{v9, v10 - v9}];
    if (v12 || ([v5 rangeOfString:@"home." options:1 range:{v9, v11}], v7 = v5, v13))
    {
      v7 = [v5 substringToIndex:v9 + 1];
    }
  }

  v14 = v7;
  v15 = [v14 rangeOfString:@"?"];
  v16 = v14;
  if (v17)
  {
    v16 = [v14 substringToIndex:v15];
  }

  v18 = v16;
  v19 = [v18 rangeOfString:@"#" options:1];
  v20 = v18;
  if (v21)
  {
    v20 = [v18 substringToIndex:v19];
  }

  v22 = v20;
  v23 = [v22 length];
  v24 = v22;
  if (([v22 isEqualToString:&stru_1F3A5E418] & 1) == 0)
  {
    v25 = v23 - 1;
    v24 = v22;
    if ([v22 characterAtIndex:v25] == 47)
    {
      v24 = [v22 substringToIndex:v25];
    }
  }

  return v24;
}

void sub_1BB6FDAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__53(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t WBSTopSitesMinimumVisitCountThreshold(unint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_BOOLForKey:@"FrequentlyVisitedSitesSkipNumberOfHistoryItemsThresholding" defaultValue:0];

  if (v3)
  {
    return 1;
  }

  v5 = (a1 * 0.011);
  if (v5 <= 3)
  {
    v5 = 3;
  }

  if (v5 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v5;
  }
}

void SafariShared::URLCompletionEntryMap::enumerateConcurrently(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (a4 == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZNK12SafariShared21URLCompletionEntryMap21enumerateConcurrentlyEPU28objcproto17OS_dispatch_group8NSObjectPU28objcproto17OS_dispatch_queueS1_iU13block_pointerFvRKNS_18URLCompletionEntryEE_block_invoke;
    block[3] = &unk_1E7FC5938;
    v22 = a1;
    v21 = v11;
    dispatch_group_async(v9, v10, block);
  }

  else if (a4 >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E9820];
    do
    {
      v15[0] = v14;
      v15[1] = 3221225472;
      v15[2] = ___ZNK12SafariShared21URLCompletionEntryMap21enumerateConcurrentlyEPU28objcproto17OS_dispatch_group8NSObjectPU28objcproto17OS_dispatch_queueS1_iU13block_pointerFvRKNS_18URLCompletionEntryEE_block_invoke_2;
      v15[3] = &unk_1E7FC7EE0;
      v17 = a1;
      v18 = v13;
      v19 = a4;
      v16 = v12;
      dispatch_group_async(v9, v10, v15);

      ++v13;
    }

    while (a4 != v13);
  }
}

void SafariShared::URLCompletionEntryMap::enumerate(uint64_t *a1, int a2, int a3, void *a4)
{
  v16 = a4;
  v7 = WTF::HashTable<SafariShared::URLCompletionEntryKey,SafariShared::URLCompletionEntry,SafariShared::URLCompletionEntryKeyExtractor,SafariShared::URLCompletionEntryHash,SafariShared::URLCompletionEntryValueTraits,SafariShared::URLCompletionEntryKeyTraits,WTF::FastMalloc>::begin(a1);
  v9 = v7;
  v10 = v8;
  if (*a1)
  {
    v11 = *a1 + 56 * *(*a1 - 4);
  }

  else
  {
    v11 = 0;
  }

  if (a2 >= 1 && v11 != v7)
  {
    v12 = 0;
    do
    {
      do
      {
        v9 += 7;
        if (v9 == v8)
        {
          break;
        }
      }

      while (!*v9 || *v9 == &stru_1F3A5E418);
      ++v12;
    }

    while (v12 < a2 && v9 != v11);
  }

  while (v9 != v11)
  {
    v16[2](v16, v9);
    if (a3 >= 1 && v9 != v11)
    {
      v14 = 0;
      do
      {
        do
        {
          v9 += 7;
          if (v9 == v10)
          {
            break;
          }
        }

        while (!*v9 || *v9 == &stru_1F3A5E418);
        ++v14;
      }

      while (v14 < a3 && v9 != v11);
    }
  }
}

void *sub_1BB6FE53C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

SafariShared::BookmarkAndHistoryCompletionMatch *SafariShared::BookmarkAndHistoryCompletionMatch::BookmarkAndHistoryCompletionMatch(SafariShared::BookmarkAndHistoryCompletionMatch *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *a1 = 1;
  *(a1 + 1) = a4;
  *(a1 + 2) = a5;
  *(a1 + 3) = a6;
  *(a1 + 4) = a3;
  *(a1 + 5) = a2;
  *(a1 + 9) = 0;
  SafariShared::BookmarkAndHistoryCompletionMatch::computeWeight(a1, a7);
  return a1;
}

void sub_1BB6FE5B0(_Unwind_Exception *a1)
{
  if (*v1 == 1)
  {
    _Unwind_Resume(a1);
  }

  SafariShared::BookmarkAndHistoryCompletionMatch::BookmarkAndHistoryCompletionMatch();
}

float SafariShared::BookmarkAndHistoryCompletionMatch::computeWeight(SafariShared::BookmarkAndHistoryCompletionMatch *this, double a2)
{
  v3 = *(this + 1);
  if ((v3 - 6) < 3 || v3 == 3)
  {
    v5 = *(this + 5);
  }

  else
  {
    if (v3 != 4)
    {
      [*(this + 5) topSitesScoreForURLStringAtIndex:*(this + 3) atTime:a2];
      *(this + 16) = v12;
      v10 = *(this + 5);
      v11 = *(this + 3);
      goto LABEL_12;
    }

    v8 = *(this + 12);
    v5 = *(this + 5);
    if (*(this + 12))
    {
      [v5 topSitesScoreForURLStringAtIndex:*(this + 12) atTime:a2];
      *(this + 16) = v9;
      v10 = *(this + 5);
      v11 = v8;
LABEL_12:
      v7 = [v10 visitCountScoreForURLStringAtIndex:v11];
      goto LABEL_13;
    }
  }

  [v5 topSitesScoreForPageTitleAtTime:a2];
  *(this + 16) = v6;
  v7 = [*(this + 5) visitCountScoreForPageTitleAtTime];
LABEL_13:
  *(this + 7) = v7;
  matched = SafariShared::weightForMatchLocation(*(this + 1));
  *(this + 17) = matched;
  result = matched + *(this + 16);
  *(this + 12) = result;
  return result;
}

id SafariShared::BookmarkAndHistoryCompletionMatch::title(SafariShared::BookmarkAndHistoryCompletionMatch *this)
{
  v2 = *(this + 1);
  if ((v2 - 6) < 3 || v2 == 3)
  {
    v4 = [*(this + 5) pageTitleAtIndex:*(this + 3)];
  }

  else
  {
    if (v2 == 4)
    {
      v5 = [*(this + 5) pageTitleAtIndex:*(this + 3) >> 16];
      goto LABEL_11;
    }

    v4 = [*(this + 5) pageTitleForUserVisibleURLStringAtIndex:*(this + 3)];
  }

  v5 = v4;
  if (![v4 length])
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [*(this + 5) originalURLString];
    v8 = [v6 URLWithString:v7];
    v9 = [v8 host];
    v10 = [v9 safari_stringByRemovingWwwDotPrefix];

    v5 = v10;
  }

LABEL_11:

  return v5;
}

id SafariShared::BookmarkAndHistoryCompletionMatch::placeholderForEmptyTitle(id *this)
{
  if ([this[5] containsBookmark])
  {
    v1 = 0;
  }

  else
  {
    v1 = _WBSLocalizedString();
  }

  return v1;
}

id SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(SafariShared::BookmarkAndHistoryCompletionMatch *this)
{
  v1 = *(this + 1);
  if ((v1 - 6) < 3 || v1 == 3)
  {
    v3 = [*(this + 5) userVisibleURLStringForPageTitleAtIndex:*(this + 3)];
  }

  else
  {
    if (v1 == 4)
    {
      v4 = *(this + 5);
      v5 = *(this + 12);
    }

    else
    {
      v4 = *(this + 5);
      v5 = *(this + 3);
    }

    v3 = [v4 userVisibleURLStringAtIndex:v5];
  }

  return v3;
}

id SafariShared::BookmarkAndHistoryCompletionMatch::lastVisitedDate(id *this)
{
  v2 = objc_alloc(MEMORY[0x1E695DF00]);
  [this[5] lastVisitedTimeInterval];
  v3 = [v2 initWithTimeIntervalSinceReferenceDate:?];

  return v3;
}

id SafariShared::BookmarkAndHistoryCompletionMatch::uuidString(SafariShared::BookmarkAndHistoryCompletionMatch *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    v5 = *(this + 9);
    *(this + 9) = v4;

    v2 = *(this + 9);
  }

  return v2;
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::compare(SafariShared::BookmarkAndHistoryCompletionMatch *this, SafariShared::BookmarkAndHistoryCompletionMatch *a2)
{
  v2 = *(a2 + 1) < 5;
  if (*(this + 1) > 4 != v2)
  {
    v5 = *(this + 12);
    v6 = *(a2 + 12);
    v7 = v5 <= v6;
    if (v5 == v6 && ([*(this + 5) lastVisitedTimeInterval], v9 = v8, objc_msgSend(*(a2 + 5), "lastVisitedTimeInterval"), v7 = v9 <= v10, v9 == v10))
    {
      v2 = *(this + 4) < *(a2 + 4);
    }

    else
    {
      v2 = !v7;
    }
  }

  if (v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  *a4 = 0;
  if (!a1)
  {
    return 0;
  }

  v29 = 0;
  v8 = [a2 typedStringForURLMatching];
  v9 = SafariShared::BookmarkAndHistoryCompletionMatch::computeURLMatchLocation(a1, v8, &v29);

  *a4 = v9;
  if ((v9 - 9) > 1)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch20computeMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRmR29WBSURLCompletionMatchLocation_block_invoke;
    v24[3] = &unk_1E7FB64F8;
    v24[4] = &v25;
    v24[5] = a1;
    v10 = MEMORY[0x1BFB13CE0](v24);
    matched = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocationOfTitleUsingBlock(a2, v10);
    if (matched <= 5)
    {
      if (v9 < 5)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        if (v9 <= matched)
        {
          v12 = matched;
        }

        else
        {
          v12 = v9;
        }

        v23 = v12;
        v13 = v26 + 3;
        if (v9 > matched)
        {
          v13 = &v29;
        }

        *a3 = *v13;
        v14 = [a2 components];
        if ([v14 count] > 1)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch20computeMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRmR29WBSURLCompletionMatchLocation_block_invoke_2;
          v16[3] = &unk_1E7FB6520;
          v17 = v14;
          v18 = &v20;
          v19 = a3;
          [a1 enumeratePageTitlesAndUserVisibleURLsUsingBlock:v16];
          v9 = v21[3];
        }

        else
        {
          v9 = v21[3];
        }

        _Block_object_dispose(&v20, 8);
      }

      else
      {
        *a3 = v29;
      }
    }

    else
    {
      *a3 = v26[3];
      v9 = matched;
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    *a3 = v29;
  }

  return v9;
}

void sub_1BB6FEC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::computeURLMatchLocation(void *a1, uint64_t a2, void *a3)
{
  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  if (!a1)
  {
    return 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch23computeURLMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRm_block_invoke;
  v7[3] = &unk_1E7FB6568;
  v7[5] = &v8;
  v7[6] = a2;
  v7[4] = &v12;
  [a1 enumerateUserVisibleURLsUsingBlock:v7];
  v4 = v9[3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    *a3 = v4;
    v5 = v13[3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_1BB6FEDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::computeTitleMatchLocation(void *a1, uint64_t a2, void *a3)
{
  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  if (!a1)
  {
    return 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch25computeTitleMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRm_block_invoke;
  v7[3] = &unk_1E7FB6568;
  v7[5] = &v8;
  v7[6] = a2;
  v7[4] = &v12;
  [a1 enumeratePageTitlesUsingBlock:v7];
  v4 = v9[3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    *a3 = v4;
    v5 = v13[3];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_1BB6FEEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocationOfTitleUsingBlock(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3[2](v3, a1);
  if (v4 <= 2)
  {
    v12 = [a1 normalizedString];
    if ([v12 length] >= 2)
    {
      [a1 components];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v5 = v14 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [[WBSURLCompletionUserTypedString alloc] initWithString:*(*(&v13 + 1) + 8 * i)];
            v10 = v3[2](v3, v9);

            if (!v10)
            {
              v4 = 0;
              goto LABEL_15;
            }

            if (v10 > v4)
            {
              v4 = v10;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  return v4;
}

uint64_t ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch20computeMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRmR29WBSURLCompletionMatchLocation_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  result = SafariShared::BookmarkAndHistoryCompletionMatch::typedStringComponentsMatchTitleAndURL(*(a1 + 32), a2, a4);
  if (result)
  {
    *a6 = 1;
    v11 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 4;
    *v11 = a5 + (a3 << 16);
  }

  return result;
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::typedStringComponentsMatchTitleAndURL(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [[WBSURLCompletionUserTypedString alloc] initWithString:*(*(&v23 + 1) + 8 * i)];
        matched = SafariShared::computeTitleMatchLocation(v6, &v13->super.isa, v14);
        v17 = SafariShared::computeURLMatchLocation(v7, &v13->super.isa, v16);
        if (matched)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17 <= 1;
        }

        if (v18)
        {

          goto LABEL_14;
        }

        v19 = v17 > 1;

        v10 |= matched > 0;
        v9 |= v19;
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v20 = v10 & v9;
  }

  else
  {
LABEL_14:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(__CFString *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [a3 typedStringForURLMatching];
  v10 = SafariShared::computeURLMatchLocation(a1, v8, v9);

  *a4 = v10;
  if (a2 && (v10 - 11) < 0xFFFFFFFFFFFFFFFELL)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch20computeMatchLocationEP8NSStringS2_P31WBSURLCompletionUserTypedStringR29WBSURLCompletionMatchLocation_block_invoke;
    v16[3] = &__block_descriptor_40_e41_q16__0__WBSURLCompletionUserTypedString_8lu32l8;
    v16[4] = a2;
    v11 = MEMORY[0x1BFB13CE0](v16);
    matched = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocationOfTitleUsingBlock(a3, v11);
    v13 = matched;
    if (matched <= 5)
    {
      v13 = v10;
      if (v10 <= 4)
      {
        if (v10 <= matched)
        {
          v13 = matched;
        }

        else
        {
          v13 = v10;
        }

        v14 = [a3 components];
        if ([v14 count] >= 2 && SafariShared::BookmarkAndHistoryCompletionMatch::typedStringComponentsMatchTitleAndURL(v14, a2, a1))
        {
          v13 = 4;
        }
      }
    }

    return v13;
  }

  return v10;
}

BOOL SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions(__CFString *this, NSString *a2, NSString *a3, WBSURLCompletionUserTypedString *a4)
{
  v4 = a4;
  matched = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(this, a2, a3, &v7);
  if (v4)
  {
    return matched > 3;
  }

  else
  {
    return (matched != 0) & (v4 >> 1);
  }
}

uint64_t ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch25computeTitleMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRm_block_invoke(uint64_t a1, CFStringRef theString, WBSURLCompletionUserTypedString *a3)
{
  result = SafariShared::computeTitleMatchLocation(theString, *(a1 + 48), a3);
  v6 = *(*(a1 + 32) + 8);
  if (result > *(v6 + 24))
  {
    *(v6 + 24) = result;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

uint64_t ___ZN12SafariShared33BookmarkAndHistoryCompletionMatch23computeURLMatchLocationEPU36objcproto25WBSURLCompletionMatchData11objc_objectP31WBSURLCompletionUserTypedStringRm_block_invoke(uint64_t a1, CFStringRef theString, WBSURLCompletionUserTypedString *a3)
{
  result = SafariShared::computeURLMatchLocation(theString, *(a1 + 48), a3);
  v6 = *(*(a1 + 32) + 8);
  if (result > *(v6 + 24))
  {
    *(v6 + 24) = result;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

id _CHCSVParserParse(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = [[CHCSVParser alloc] initWithInputStream:v7 usedEncoding:0 delimiter:a3];

  v9 = off_1E7FB5660;
  if ((a2 & 0x10) != 0)
  {
    v9 = off_1E7FB5668;
  }

  v10 = objc_alloc_init(*v9);
  [(CHCSVParser *)v8 setDelegate:v10];
  [(CHCSVParser *)v8 setRecognizesBackslashesAsEscapes:a2 & 1];
  [(CHCSVParser *)v8 setSanitizesFields:(a2 >> 1) & 1];
  [(CHCSVParser *)v8 setRecognizesComments:(a2 >> 2) & 1];
  [(CHCSVParser *)v8 setTrimsWhitespace:(a2 >> 3) & 1];
  [(CHCSVParser *)v8 setRecognizesLeadingEqualSign:(a2 >> 5) & 1];
  [(CHCSVParser *)v8 parse];
  v11 = [v10 error];

  if (v11)
  {
    if (a4)
    {
      [v10 error];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [v10 lines];
  }

  return v12;
}

uint64_t SafariShared::FieldLabelPatternMatcher::FieldLabelPatternMatcher(uint64_t a1, uint64_t a2, const UChar *a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a1 + 24;
  v7 = (a1 + 8);
  *(a1 + 16) = 256;
  WTF::Vector<unsigned short,256ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(a1 + 8, a4);
  pErrorCode = U_ZERO_ERROR;
  v8 = u_strToLower(*v7, *(a1 + 20), a3, a4, "", &pErrorCode);
  v9 = v8;
  v10 = v8;
  if (pErrorCode > U_ZERO_ERROR || v8 != a4)
  {
    if (*(a1 + 20) < v8)
    {
      v12 = *(a1 + 16);
      if (v12 < v8)
      {
        if (v12 + (v12 >> 1) <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = v12 + (v12 >> 1);
        }

        if (v13 > v8)
        {
          v10 = v13;
        }

        if (v10 <= 0x10)
        {
          v14 = 16;
        }

        else
        {
          v14 = v10;
        }

        WTF::Vector<unsigned short,256ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v7, v14);
      }
    }

    *(a1 + 20) = v9;
    u_strToLower(*(a1 + 8), v9, a3, a4, "", &pErrorCode);
  }

  return a1;
}

uint64_t SafariShared::FieldLabelPatternMatcher::longestMatch(SafariShared::FieldLabelPatternMatcher *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return -1;
  }

  v3 = *(this + 1);
  v4 = &v3[v1];
  v5 = 2 * v1;
  while (1)
  {
    v6 = SafariShared::FieldLabelPatternMatcher::checkForMatch(this, v3, v4);
    if (v7 != v6)
    {
      break;
    }

    ++v3;
    v5 -= 2;
    if (!v5)
    {
      return -1;
    }
  }

  v9 = v6;
  v10 = v7;
  v11 = v6 + 1;
  while (v11 != v4)
  {
    v12 = SafariShared::FieldLabelPatternMatcher::checkForMatch(this, v11, v4);
    if (v13 == v12)
    {
      ++v11;
    }

    else
    {
      if (v13 - v12 > (v10 - v9))
      {
        v10 = v13;
        v9 = v12;
      }

      v11 = v12 + 1;
    }
  }

  if (v10 != v9)
  {
    return (v9 - *(this + 1)) >> 1;
  }

  return -1;
}

unsigned __int16 *SafariShared::FieldLabelPatternMatcher::search(SafariShared::FieldLabelPatternMatcher *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    result = SafariShared::FieldLabelPatternMatcher::checkForMatch(this, v4, a3);
    if (v7 != result)
    {
      break;
    }

    if (++v4 == a3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SafariShared::FieldLabelPatternMatcher::toRange(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return -1;
  }

  else
  {
    return (*a2 - *(a1 + 8)) >> 1;
  }
}

uint64_t SafariShared::FieldLabelPatternMatcher::searchReverse(SafariShared::FieldLabelPatternMatcher *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return -1;
  }

  v3 = *(this + 1);
  v4 = &v3[v1];
  v5 = 2 * v1;
  while (1)
  {
    v6 = SafariShared::FieldLabelPatternMatcher::checkForMatch(this, v3, v4);
    if (v7 != v6)
    {
      break;
    }

    ++v3;
    v5 -= 2;
    if (!v5)
    {
      return -1;
    }
  }

  v9 = v6;
  v10 = v7;
  v11 = v6 + 1;
  while (v11 != v4)
  {
    v12 = SafariShared::FieldLabelPatternMatcher::checkForMatch(this, v11, v4);
    if (v13 == v12)
    {
      ++v11;
    }

    else
    {
      if (v10 == v9 || v10 < v13)
      {
        v10 = v13;
        v9 = v12;
      }

      v11 = v12 + 1;
    }
  }

  if (v10 != v9)
  {
    return (v9 - *(this + 1)) >> 1;
  }

  return -1;
}

unsigned __int16 *SafariShared::FieldLabelPatternMatcher::checkForMatch(SafariShared::FieldLabelPatternMatcher *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v6 = 0;
  NextStateAndAdvance = (*(*this + 8) + 4 * **this);
  v10 = a2;
  do
  {
    if (v10 > a3)
    {
      break;
    }

    if (SafariShared::FieldLabelPatternMatcher::isEndState(this, NextStateAndAdvance, v10))
    {
      v6 = a2;
    }

    NextStateAndAdvance = SafariShared::FieldLabelPatternMatcher::findNextStateAndAdvance(this, NextStateAndAdvance, &v10);
  }

  while (NextStateAndAdvance);
  return v6;
}

uint64_t SafariShared::FieldLabelPatternMatcher::isWordBoundary(SafariShared::FieldLabelPatternMatcher *this, const unsigned __int16 *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (v3 == a2)
  {
    v13 = *a2;
    return (v13 - 48) < 0xA || (v13 & 0xFFFFFFDF) - 65 < 0x1A || v13 == 95;
  }

  else
  {
    v4 = &v3[v2];
    v5 = *(a2 - 1);
    result = (v5 - 48) < 0xA || (v5 & 0xFFFFFFDF) - 65 < 0x1A || v5 == 95;
    if (v4 != a2)
    {
      v9 = *a2;
      v12 = (v9 - 48) < 0xA || (v9 & 0xFFFFFFDF) - 65 < 0x1A || v9 == 95;
      return result ^ v12;
    }
  }

  return result;
}

BOOL SafariShared::FieldLabelPatternMatcher::isEndState(SafariShared::FieldLabelPatternMatcher *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = (*(*a1 + 24) + 4 * a2[1]);
  result = 1;
  if (*v3 || v3[1] != -1)
  {
    v4 = &v3[2 * *a2];
    if (*(v4 - 2) != -1 || *(v4 - 1) != -1 || (SafariShared::FieldLabelPatternMatcher::isWordBoundary(a1, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SafariShared::FieldLabelPatternMatcher::findNextStateAndAdvance(SafariShared::FieldLabelPatternMatcher *a1, unsigned __int16 *a2, const unsigned __int16 **a3)
{
  v3 = *a1;
  v4 = (*(*a1 + 24) + 4 * a2[1]);
  v5 = *a2;
  v6 = &v4[2 * v5];
  v7 = *a3;
  if (*a3 == (*(a1 + 1) + 2 * *(a1 + 5)))
  {
    goto LABEL_19;
  }

  if (v5)
  {
    v8 = v5;
    do
    {
      v9 = v8 >> 1;
      v10 = &v4[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < *v7)
      {
        v4 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
  }

  if (v4 == v6 || *v7 != *v4)
  {
LABEL_19:
    if (!v5)
    {
      return 0;
    }

    if (*(v6 - 2) != -1)
    {
      return 0;
    }

    v13 = *(v6 - 1);
    if (v13 == 0xFFFF || !SafariShared::FieldLabelPatternMatcher::isWordBoundary(a1, v7))
    {
      return 0;
    }
  }

  else
  {
    *a3 = v7 + 1;
    v3 = *a1;
    v13 = v4[1];
  }

  return *(v3 + 8) + 4 * v13;
}

uint64_t WTF::Vector<unsigned short,256ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (v4 < a2)
  {
    if (v4 + (v4 >> 1) <= v4 + 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v4 + (v4 >> 1);
    }

    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v5;
    }

    WTF::Vector<unsigned short,256ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v6);
  }

  *(a1 + 12) = v2;
  return 1;
}

uint64_t WTF::Vector<unsigned short,256ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = *(result + 12);
  if (a2 < 0x101)
  {
    v6 = (result + 16);
    *v3 = v3 + 16;
    *(v3 + 8) = 256;
LABEL_6:
    memcpy(v6, v4, 2 * v5);
    if ((v3 + 16) != v4 && v4 != 0)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  if (!(a2 >> 31))
  {
    v6 = WTF::fastMalloc((2 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    goto LABEL_6;
  }

  __break(0xC471u);
  return result;
}

JSValueRef SafariShared::JSWrapper::wrap(JSContextRef ctx, void *a2)
{
  if (a2)
  {
    if (!SafariShared::retainedContextForIteratingThroughWrappers)
    {
      JSRemoteInspectorGetInspectionFollowsInternalPolicies();
      JSRemoteInspectorSetInspectionFollowsInternalPolicies();
      JSRemoteInspectorGetInspectionEnabledByDefault();
      JSRemoteInspectorSetInspectionEnabledByDefault();
      Group = JSContextGetGroup(ctx);
      v5 = JSGlobalContextCreateInGroup(Group, 0);
      SafariShared::retainedContextForIteratingThroughWrappers = JSGlobalContextRetain(v5);
      JSRemoteInspectorSetInspectionEnabledByDefault();
      JSRemoteInspectorSetInspectionFollowsInternalPolicies();
    }

    GlobalContext = JSContextGetGlobalContext(ctx);
    SafariShared::JSWrapper::knownWrappers(GlobalContext, v7);
    v8 = JSWeakObjectMapGet();
    if (!v8 || (v9 = v8, v10 = JSValueToObject(ctx, v8, 0), !JSObjectGetPrivate(v10)))
    {
      v11 = (*(*a2 + 16))(a2);
      v9 = JSObjectMake(ctx, v11, a2);
      JSWeakObjectMapSet();
    }

    return v9;
  }

  else
  {

    return JSValueMakeNull(ctx);
  }
}

uint64_t SafariShared::JSWrapper::knownWrappers(SafariShared::JSWrapper *this, OpaqueJSContext *a2)
{
  v6 = this;
  {
    SafariShared::JSWrapper::wrappers(void)::wrappers = 0;
  }

  v3 = 0;
  WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<OpaqueJSWeakObjectMap *>(&SafariShared::JSWrapper::wrappers(void)::wrappers, &v6, &v3, &v4);
  if ((v5 & 1) == 0)
  {
    return *(v4 + 8);
  }

  result = JSWeakObjectMapCreate();
  *(v4 + 8) = result;
  return result;
}

void *SafariShared::JSWrapper::unwrap(SafariShared::JSWrapper *this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  if (!this || !a2)
  {
    return 0;
  }

  v3 = JSValueToObject(this, a2, 0);

  return JSObjectGetPrivate(v3);
}

void *SafariShared::JSWrapper::initialize(SafariShared::JSWrapper *this, JSObjectRef object, OpaqueJSValue *a3)
{
  result = JSObjectGetPrivate(object);
  if (result)
  {
    v4 = *(*result + 24);

    return v4();
  }

  return result;
}

void *SafariShared::JSWrapper::disconnectWrapper(SafariShared::JSWrapper *this, OpaqueJSValue *a2)
{
  result = JSObjectGetPrivate(this);
  if (result)
  {
    (*(*result + 32))(result);

    return JSObjectSetPrivate(this, 0);
  }

  return result;
}

OpaqueJSValue *SafariShared::JSWrapper::disconnectAllWrappers(OpaqueJSValue *a1)
{
  {
    SafariShared::JSWrapper::wrappers(void)::wrappers = 0;
  }

  result = WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::begin(&SafariShared::JSWrapper::wrappers(void)::wrappers);
  v3 = result;
  v5 = v4;
  if (SafariShared::JSWrapper::wrappers(void)::wrappers)
  {
    v6 = SafariShared::JSWrapper::wrappers(void)::wrappers + 16 * *(SafariShared::JSWrapper::wrappers(void)::wrappers - 4);
  }

  else
  {
    v6 = 0;
  }

  if (v6 != result)
  {
    do
    {
      result = JSWeakObjectMapGet();
      if (result)
      {
        v7 = result;
        result = JSObjectGetPrivate(result);
        if (result == a1)
        {
          JSWeakObjectMapRemove();
          result = SafariShared::JSWrapper::disconnectWrapper(v7, v8);
        }
      }

      do
      {
        v3 = (v3 + 16);
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v6);
  }

  return result;
}

uint64_t *SafariShared::JSWrapper::wrappers(SafariShared::JSWrapper *this)
{
  {
    SafariShared::JSWrapper::wrappers(void)::wrappers = 0;
  }

  return &SafariShared::JSWrapper::wrappers(void)::wrappers;
}

uint64_t *WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<OpaqueJSWeakObjectMap *>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (!*a2)
  {
    WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<OpaqueJSWeakObjectMap *>();
  }

  if (v5 == -1)
  {
    WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<OpaqueJSWeakObjectMap *>();
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
        goto LABEL_24;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v15[1] = *a3;
  v19 = *v8;
  if (*v8)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v23 = (*(v19 - 16) + v20);
  v24 = *(v19 - 4);
  if (v24 > 0x400)
  {
    if (v24 > 2 * v23)
    {
      goto LABEL_22;
    }
  }

  else if (3 * v24 > 4 * v23)
  {
    goto LABEL_22;
  }

  result = WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::expand(v8, v15);
  v15 = result;
  v19 = *v8;
  if (!*v8)
  {
    v25 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v25 = *(v19 - 4);
LABEL_23:
  v22 = v19 + 16 * v25;
  v21 = 1;
LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t *SafariShared::JSWrapper::cacheMapDestroyed(uint64_t a1, uint64_t a2)
{
  {
    SafariShared::JSWrapper::wrappers(void)::wrappers = 0;
  }

  v4 = a2;
  result = WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueJSContext *>>,(WTF::ShouldValidateKey)1,OpaqueJSContext *>(&SafariShared::JSWrapper::wrappers(void)::wrappers, &v4);
  if (SafariShared::JSWrapper::wrappers(void)::wrappers)
  {
    v3 = SafariShared::JSWrapper::wrappers(void)::wrappers + 16 * *(SafariShared::JSWrapper::wrappers(void)::wrappers - 4);
    if (v3 == result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v3 = 0;
  }

  if (v3 != result)
  {
    return WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::remove(&SafariShared::JSWrapper::wrappers(void)::wrappers, result);
  }

  return result;
}

_OWORD *WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      if ((*v13 + 1) >= 2)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = (~(*v13 << 32) + *v13) ^ ((~(*v13 << 32) + *v13) >> 22);
        v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
        v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
        v19 = v15 & ((v18 >> 31) ^ v18);
        v20 = 1;
        do
        {
          v21 = v19;
          v22 = *(v14 + 16 * v19);
          v19 = (v19 + v20++) & v15;
        }

        while (v22);
        v23 = (v14 + 16 * v21);
        *v23 = *v13;
        if (v13 == a3)
        {
          v12 = v23;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t *WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueJSContext *>>,(WTF::ShouldValidateKey)1,OpaqueJSContext *>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueJSContext *>>,(WTF::ShouldValidateKey)1,OpaqueJSContext *>();
  }

  if (v3 == -1)
  {
    WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueJSContext *>>,(WTF::ShouldValidateKey)1,OpaqueJSContext *>();
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

void *WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[2 * v2];
  if (!*(result - 3))
  {
    return &result[2 * v2];
  }

  if (v2)
  {
    v4 = 16 * v2;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v4 -= 16;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

id WBSCreditCardHolderNameClassificationDefaultOrderedParts()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"given-name";
  v2[1] = @"additional-name";
  v2[2] = @"family-name";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

id WBSCreditCardExpirationClassificationDefaultOrderedParts()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"-sf-month";
  v2[1] = @"-sf-year";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

id WBSContactNameClassificationDefaultOrderedParts()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"given-name";
  v2[1] = @"additional-name";
  v2[2] = @"family-name";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

id WBSContactStreetAddressDefaultOrderedParts()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"address-line1";
  v2[1] = @"address-line2";
  v2[2] = @"address-line3";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

id WBSContactTelephoneDefaultOrderedParts()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"tel-country-code";
  v2[1] = @"tel-area-code";
  v2[2] = @"tel-local-prefix";
  v2[3] = @"tel-local-suffix";
  v2[4] = @"tel-extension";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];

  return v0;
}

id WBSContactBirthdayDefaultOrderedParts()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"-sf-day";
  v2[1] = @"-sf-month";
  v2[2] = @"-sf-year";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

unint64_t SafariShared::caseInsensitiveFindInUserTypedString(const __CFString *this, const __CFString *a2, uint64_t a3, unint64_t a4)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a3 + 32);
  CStringPtr = CFStringGetCStringPtr(this, SafariShared::systemEightBitStringEncoding);
  if (CStringPtr)
  {
    v10 = a2 - a4 - v8;
    if ((v10 & 0x80000000) == 0)
    {
      v11 = &CStringPtr[a4];
      v12 = *(a3 + 24);
      v13 = MEMORY[0x1E696EBB8];
      if (v8)
      {
        v14 = 0;
        v15 = 0;
        v16 = &CStringPtr[a4];
        v17 = v12;
        v18 = v8;
        do
        {
          v19 = *v16++;
          v15 += *(MEMORY[0x1E696EBB8] + v19);
          v20 = *v17++;
          v14 += *(MEMORY[0x1E696EBB8] + v20);
          --v18;
        }

        while (v18);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v32 = v10 & 0x7FFFFFFF;
      while (v15 != v14 || strncasecmp(v11, v12, v8))
      {
        if (!v32)
        {
          return 0xFFFFFFFFLL;
        }

        v33 = v15 + *(v13 + v11[v8]);
        v34 = *v11++;
        v15 = v33 - *(v13 + v34);
        a4 = (a4 + 1);
        --v32;
      }

      return a4;
    }

    return 0xFFFFFFFFLL;
  }

  CharactersPtr = CFStringGetCharactersPtr(this);
  if (!CharactersPtr)
  {
    v40.location = 0;
    v40.length = a2;
    if (CFStringFindWithOptions(this, *(a3 + 8), v40, 1uLL, &v39))
    {
      return LODWORD(v39.location);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v22 = a2 - a4 - v8;
  if (v22 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = &CharactersPtr[a4];
  v24 = *(a3 + 16);
  if (v8)
  {
    v25 = 0;
    v26 = 0;
    v27 = &CharactersPtr[a4];
    v28 = v24;
    v29 = v8;
    do
    {
      v30 = *v27++;
      v26 += MEMORY[0x1BFB14450](v30, 0);
      v31 = *v28++;
      v25 += MEMORY[0x1BFB14450](v31, 0);
      --v29;
    }

    while (v29);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v35 = v22 & 0x7FFFFFFF;
  while (v26 != v25 || u_memcasecmp(v23, v24, v8, 0))
  {
    if (!v35)
    {
      return 0xFFFFFFFFLL;
    }

    v36 = v26 + MEMORY[0x1BFB14450](v23[v8], 0);
    v37 = *v23++;
    v26 = v36 - MEMORY[0x1BFB14450](v37, 0);
    a4 = (a4 + 1);
    --v35;
  }

  return a4;
}

uint64_t SafariShared::initializeURLCompletionOnMainThread(SafariShared *this)
{
  if (!ignorablePrefixesByLength)
  {
    v1 = _WBSLocalizedString();
    v2 = [v1 componentsSeparatedByString:{@", "}];
    v3 = [v2 mutableCopy];

    v4 = [v3 count];
    if (v4)
    {
      v5 = v4 - 1;
      do
      {
        v6 = [v3 objectAtIndex:v5];
        v7 = [v6 length];

        if (!v7)
        {
          [v3 removeObjectAtIndex:v5];
        }

        --v5;
      }

      while (v5 != -1);
    }

    [v3 sortUsingComparator:&__block_literal_global_22];
    v8 = ignorablePrefixesByLength;
    ignorablePrefixesByLength = v3;
  }

  result = CFStringGetFastestEncoding(@" ");
  SafariShared::systemEightBitStringEncoding = result;
  return result;
}

BOOL SafariShared::offsetAppearsToBeAtStartOrEndOfWord(SafariShared *this, CFStringRef theString, const __CFString *a3)
{
  v3 = a3;
  v5 = this;
  if (!this && !a3 || CFStringGetLength(theString) == this && (v3 & 1) != 0)
  {
    return 1;
  }

  v7 = v3 ^ 1;
  if (SafariShared::offsetAppearsToBeAtStartOrEndOfWord(int,__CFString const*,BOOL)::onceToken != -1)
  {
    SafariShared::offsetAppearsToBeAtStartOrEndOfWord();
    v7 = v3 ^ 1;
  }

  v8 = SafariShared::offsetAppearsToBeAtStartOrEndOfWord(int,__CFString const*,BOOL)::delimiters;
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v5 - v7);
  return CFCharacterSetIsCharacterMember(v8, CharacterAtIndex) != 0;
}

void ___ZN12SafariShared35offsetAppearsToBeAtStartOrEndOfWordEiPK10__CFStringb_block_invoke()
{
  Mutable = CFCharacterSetCreateMutable(0);
  SafariShared::offsetAppearsToBeAtStartOrEndOfWord(int,__CFString const*,BOOL)::delimiters = Mutable;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  CFCharacterSetUnion(Mutable, Predefined);
  v2 = SafariShared::offsetAppearsToBeAtStartOrEndOfWord(int,__CFString const*,BOOL)::delimiters;
  v3 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);

  CFCharacterSetUnion(v2, v3);
}

const char *SafariShared::debugStringForMatchLocation(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "<invalid>";
  }

  else
  {
    return off_1E7FB6800[a1];
  }
}

uint64_t SafariShared::computeURLMatchLocation(CFStringRef theString, NSString *a2, WBSURLCompletionUserTypedString *a3)
{
  if (!*(a2 + 8))
  {
    return 9;
  }

  if (*(a2 + 36))
  {
    return 0;
  }

  if (!theString)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      SafariShared::computeURLMatchLocation(v15);
    }

    return 0;
  }

  Length = CFStringGetLength(theString);
  v6 = SafariShared::caseInsensitiveFindInUserTypedString(theString, Length, a2, 0);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E696AF20] componentsWithString:theString];
  if ([v8 rangeOfScheme] || (v10 = v9, !v9))
  {
    v17 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SafariShared::computeURLMatchLocation(theString, v17);
    }

    matched = 0;
  }

  else
  {
    v11 = *(a2 + 8);
    v12 = v11;
    if (v7 || v11 <= v9)
    {
      if (v11 + v7 <= v9 && (v7 = SafariShared::caseInsensitiveFindInUserTypedString(theString, Length, a2, v9 + 1), v7 == -1))
      {
        matched = 1;
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(theString, SafariShared::systemEightBitStringEncoding);
        if (CStringPtr)
        {
          matched = SafariShared::matchLocationAfterURLScheme<char>(CStringPtr, Length, v10, v7, v12);
        }

        else
        {
          buffer = v24;
          v23 = 1024;
          CharactersPtr = CFStringGetCharactersPtr(theString);
          if (!CharactersPtr)
          {
            WTF::Vector<unsigned short,1024ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(&buffer, Length);
            CharactersPtr = buffer;
            v25.location = 0;
            v25.length = Length;
            CFStringGetCharacters(theString, v25, buffer);
          }

          matched = SafariShared::matchLocationAfterURLScheme<unsigned short>(CharactersPtr, Length, v10, v7, v12);
          v21 = buffer;
          if (v24 != buffer && buffer)
          {
            buffer = 0;
            LODWORD(v23) = 0;
            WTF::fastFree(v21, v20);
          }
        }
      }
    }

    else
    {
      v13 = CFStringGetLength(theString);
      if (v13 == v12 || v12 + 1 == v13 && CFStringGetCharacterAtIndex(theString, v13 - 1) == 47)
      {
        matched = 10;
      }

      else
      {
        matched = 9;
      }
    }
  }

  return matched;
}

void sub_1BB703F98(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (v11 != a9)
  {
    if (a9)
    {
      WTF::fastFree(a9, a2);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t SafariShared::matchLocationAfterURLScheme<char>(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = a3 + 2;
  if (v5 < a2 && (v6 = (a1 + a3), v6[1] == 47) && *(a1 + v5) == 47 && ((v7 = a3 + 3, v7 == a4) || a3 + 7 == a4 && a3 + 7 < a2 && *(a1 + v7) == 119 && v6[4] == 119 && v6[5] == 119 && v6[6] == 46))
  {
    if (a5 + a4 == a2)
    {
      return 10;
    }

    else if (a5 + a4 + 1 == a2)
    {
      if (*(a1 + a2 - 1) == 47)
      {
        return 10;
      }

      else
      {
        return 9;
      }
    }

    else
    {
      return 9;
    }
  }

  else if (*(a1 + a4 - 1) == 47)
  {
    return 5;
  }

  else
  {
    return 2;
  }
}

uint64_t SafariShared::matchLocationAfterURLScheme<unsigned short>(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = a3 + 2;
  if (v5 < a2 && (v6 = (a1 + 2 * a3), v6[1] == 47) && *(a1 + 2 * v5) == 47 && ((v7 = a3 + 3, v7 == a4) || a3 + 7 == a4 && a3 + 7 < a2 && *(a1 + 2 * v7) == 119 && v6[4] == 119 && v6[5] == 119 && v6[6] == 46))
  {
    if (a5 + a4 == a2)
    {
      return 10;
    }

    else if (a5 + a4 + 1 == a2)
    {
      if (*(a1 + 2 * a2 - 2) == 47)
      {
        return 10;
      }

      else
      {
        return 9;
      }
    }

    else
    {
      return 9;
    }
  }

  else if (*(a1 + 2 * a4 - 2) == 47)
  {
    return 5;
  }

  else
  {
    return 2;
  }
}

uint64_t SafariShared::computeTitleMatchLocation(CFStringRef theString, NSString *a2, WBSURLCompletionUserTypedString *a3)
{
  v3 = theString;
  v22 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v6 = SafariShared::caseInsensitiveFindInUserTypedString(v3, Length, a2, 0);
    if (v6 == -1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      if (v6)
      {
        if ([ignorablePrefixesByLength count])
        {
          v8 = [ignorablePrefixesByLength lastObject];
          v9 = [v8 length];

          if (v7 <= v9)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v10 = ignorablePrefixesByLength;
            v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v11)
            {
              v12 = *v18;
              while (2)
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v18 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v17 + 1) + 8 * i);
                  v15 = [v14 length];
                  if (v7 <= v15)
                  {
                    if (v7 < v15)
                    {
                      goto LABEL_20;
                    }

                    if ([v3 safari_hasLocalizedCaseInsensitivePrefix:v14])
                    {
                      if (Length == (*(a2 + 8) + v7))
                      {
                        v3 = 8;
                      }

                      else
                      {
                        v3 = 7;
                      }

                      return v3;
                    }
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

LABEL_20:
          }
        }

        if (SafariShared::offsetAppearsToBeAtStartOrEndOfWord(v7, v3, 0))
        {
          return 6;
        }

        else
        {
          return 3;
        }
      }

      else if (Length == *(a2 + 8))
      {
        return 8;
      }

      else
      {
        return 7;
      }
    }
  }

  return v3;
}

float SafariShared::weightForMatchLocation(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 1) <= 9)
  {
    return flt_1BB8F8CB8[a1 - 1];
  }

  return result;
}

uint64_t ___ZN12SafariSharedL23createIgnorablePrefixesEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 < [v5 length])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t WTF::Vector<unsigned short,1024ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (v4 < a2)
  {
    if (v4 + (v4 >> 1) <= v4 + 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v4 + (v4 >> 1);
    }

    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v5;
    }

    WTF::Vector<unsigned short,1024ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v6);
  }

  *(a1 + 12) = v2;
  return 1;
}

uint64_t WTF::Vector<unsigned short,1024ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = *(result + 12);
  if (a2 < 0x401)
  {
    v6 = (result + 16);
    *v3 = v3 + 16;
    *(v3 + 8) = 1024;
LABEL_6:
    memcpy(v6, v4, 2 * v5);
    if ((v3 + 16) != v4 && v4 != 0)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  if (!(a2 >> 31))
  {
    v6 = WTF::fastMalloc((2 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    goto LABEL_6;
  }

  __break(0xC471u);
  return result;
}

BOOL SafariShared::ArticleFinderJSController::readerIsAvailable(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 5);
  v3 = SafariShared::JSUtilities::callJSMethodWithArguments(v2, v1, "isReaderModeAvailable", 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (!JSValueIsBoolean(v2, v3))
  {
    return 0;
  }

  return JSValueToBoolean(v2, v4);
}

const OpaqueJSValue *SafariShared::ArticleFinderJSController::previewReaderImageURL(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(this + 5);
  v3 = SafariShared::JSUtilities::callJSMethodWithArguments(v2, v1, "previewReaderImageURL", 0, 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  if (JSValueIsString(v2, v3))
  {
    v4 = JSValueToStringCopy(v2, v3, 0);
    v3 = JSStringCopyCFString(0, v4);
    if (v4)
    {
      JSStringRelease(v4);
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

LABEL_7:

  return v3;
}

void sub_1BB706818(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void SafariShared::ArticleFinderJSController::setConfigurationForTesting(SafariShared::ArticleFinderJSController *this, NSDictionary *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (*(this + 3))
  {
    v5 = *(this + 5);
    v6[0] = SafariShared::JSUtilities::translateNSToJSValue(v5, v4, v3);
    SafariShared::JSUtilities::callJSMethodWithArguments(v5, *(this + 3), "setConfigurationForTesting", v6, 1);
  }
}

uint64_t SafariShared::JSUtilities::translateNSToJSValue(SafariShared::JSUtilities *this, const OpaqueJSContext *a2, objc_object *a3)
{
  v4 = a2;
  v5 = MEMORY[0x1E696EB58];
  v6 = [MEMORY[0x1E696EB40] contextWithJSGlobalContextRef:JSContextGetGlobalContext(this)];
  v7 = [v5 valueWithObject:v4 inContext:v6];
  v8 = [v7 JSValueRef];

  return v8;
}

void sub_1BB706974(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *SafariShared::ArticleFinderJSController::readerTextIncludingArticleMetadata(SafariShared::ArticleFinderJSController *this, BOOL a2)
{
  if (*(this + 3) && (v3 = *(this + 5), *v9 = JSValueMakeBoolean(v3, a2), (v4 = SafariShared::JSUtilities::callJSMethodWithArguments(v3, *(this + 3), "unformattedArticleTextContentIncludingMetadata", v9, 1)) != 0) && (v5 = v4, JSValueIsString(v3, v4)))
  {
    v6 = JSValueToStringCopy(v3, v5, 0);
    v7 = JSStringCopyCFString(0, v6);
    if (v6)
    {
      JSStringRelease(v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1BB706A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

const OpaqueJSValue *SafariShared::ArticleFinderJSController::readerArticleTitle(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(this + 5);
  v3 = SafariShared::JSUtilities::callJSMethodWithArguments(v2, v1, "articleTitle", 0, 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  if (JSValueIsString(v2, v3))
  {
    v4 = JSValueToStringCopy(v2, v3, 0);
    v3 = JSStringCopyCFString(0, v4);
    if (v4)
    {
      JSStringRelease(v4);
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

LABEL_7:

  return v3;
}

void sub_1BB706B1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef SafariShared::ArticleFinderJSController::findTextSamplesByVisualExamination(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "findTextSamplesByVisualExamination", 0, 0);
  if (v2)
  {
    v3 = v2;
    if (JSValueIsObject(v1, v2))
    {
      return v3;
    }
  }

  return JSValueMakeUndefined(v1);
}

BOOL SafariShared::ArticleFinderJSController::usesSearchEngineOptimizationMetadata(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "usesSearchEngineOptimizationMetadata", 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!JSValueIsBoolean(v1, v2))
  {
    return 0;
  }

  return JSValueToBoolean(v1, v3);
}

JSValueRef SafariShared::ArticleFinderJSController::collectReadingListItemInformation(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "readingListItemInformation", 0, 0);
  if (v2)
  {
    v3 = v2;
    if (JSValueIsObject(v1, v2))
    {
      return v3;
    }
  }

  return JSValueMakeUndefined(v1);
}

JSObjectRef SafariShared::ArticleFinderJSController::mainImageNode(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "mainImageNode", 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (JSValueIsNull(v1, v2) || JSValueIsUndefined(v1, v3))
  {
    return 0;
  }

  return JSValueToObject(v1, v3, 0);
}

JSValueRef SafariShared::ArticleFinderJSController::articleContent(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "extractedArticleContent", 0, 0);
  if (v2)
  {
    v3 = v2;
    if (JSValueIsObject(v1, v2))
    {
      return v3;
    }
  }

  return JSValueMakeUndefined(v1);
}

id SafariShared::ArticleFinderJSController::canonicalURLForSystemNoteTaking(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "extractCanonicalLink", 0, 0);
  if (v2 && (v3 = v2, JSValueIsString(v1, v2)))
  {
    v4 = JSValueToStringCopy(v1, v3, 0);
    v5 = JSStringCopyCFString(0, v4);
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];

    if (v4)
    {
      JSStringRelease(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1BB706EAC(_Unwind_Exception *a1)
{
  if (v1)
  {
    JSStringRelease(v1);
  }

  _Unwind_Resume(a1);
}

void SafariShared::ArticleFinderJSController::evaluateSupportJavaScriptForReaderTestsIfNecessary(SafariShared::ArticleFinderJSController *this)
{
  v2 = *(this + 5);
  SafariShared::JSUtilities::jsString(@"if (typeof pathToElementForTesting === 'undefined') var pathToElementForTesting = function(element) {var path = ;for (; element; element = element.parentElement) {var index = 0;for (var sibling = element; sibling; sibling = sibling.previousElementSibling)index++;path = / + index + path;}return path;};", &script);
  JSEvaluateScript(v2, script, *(this + 3), 0, 0, 0);
  if (script)
  {
    JSStringRelease(script);
  }
}

void sub_1BB706F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(exception_object);
}

id SafariShared::ArticleFinderJSController::pathToArticleElement(SafariShared::ArticleFinderJSController *this)
{
  v2 = *(this + 5);
  SafariShared::ArticleFinderJSController::evaluateSupportJavaScriptForReaderTestsIfNecessary(this);
  SafariShared::JSUtilities::jsString("pathToElementForTesting(this.articleNode()); ", &script);
  v3 = JSEvaluateScript(v2, script, *(this + 3), 0, 0, 0);
  if (script)
  {
    JSStringRelease(script);
  }

  if (v3 && JSValueIsString(v2, v3))
  {
    v4 = SafariShared::JSUtilities::toNSString(v2, v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BB706FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(exception_object);
}

const OpaqueJSValue *SafariShared::ArticleFinderJSController::articleTitleString(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "articleTitle", 0, 0);
  if (v2)
  {
    v3 = v2;
    if (JSValueIsString(v1, v2))
    {
      v2 = SafariShared::JSUtilities::toNSString(v1, v3, 0);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

const OpaqueJSValue *SafariShared::ArticleFinderJSController::nextPageURLString(SafariShared::ArticleFinderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "nextPageURL", 0, 0);
  if (v2)
  {
    v3 = v2;
    if (JSValueIsString(v1, v2))
    {
      v2 = SafariShared::JSUtilities::toNSString(v1, v3, 0);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id SafariShared::ArticleFinderJSController::multiPageContentElementsPathString(SafariShared::ArticleFinderJSController *this)
{
  v2 = *(this + 5);
  SafariShared::ArticleFinderJSController::evaluateSupportJavaScriptForReaderTestsIfNecessary(this);
  SafariShared::JSUtilities::jsString("this.containerElementsForMultiPageContent().map(pathToElementForTesting).join(' | ');", &script);
  v3 = JSEvaluateScript(v2, script, *(this + 3), 0, 0, 0);
  if (script)
  {
    JSStringRelease(script);
  }

  if (v3 && JSValueIsString(v2, v3))
  {
    v4 = SafariShared::JSUtilities::toNSString(v2, v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BB7071C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(exception_object);
}

id SafariShared::ArticleFinderJSController::adoptableArticleHTML(SafariShared::ArticleFinderJSController *this)
{
  v2 = *(this + 5);
  SafariShared::JSUtilities::jsString("var adoptableArticle = this.adoptableArticle();var allElements = adoptableArticle.getElementsByTagName('*');var numberOfElements = allElements.length;for (var i = 0; i < numberOfElements; ++i) {var element = allElements[i];element.removeAttribute(this.elementReaderUniqueIDAttributeKey());}adoptableArticle.removeAttribute(this.elementReaderUniqueIDAttributeKey());var articleHTML = adoptableArticle.outerHTML;var subhead = this.articleSubhead();var subheadHTML = '';if (subhead) {var subheadNode = document.createElement('h2');subheadNode.className = 'subhead';subheadNode.textContent = this.articleSubhead();subheadHTML = subheadNode.outerHTML}var metadataElement = this.adoptableMetadataBlock();if (metadataElement) {var allMetadataElements = metadataElement.getElementsByTagName('*');var numberOfMetadataElements = allMetadataElements.length;for (var i = 0; i < numberOfMetadataElements; ++i) {var element = allMetadataElements[i];element.removeAttribute(this.elementReaderUniqueIDAttributeKey());}}var metadataHTML = '';if (metadataElement && metadataElement.innerText) {metadataElement.className = 'metadata';metadataHTML = metadataElement.outerHTML;}articleHTML = subheadHTML + metadataHTML + articleHTML;articleHTML;", &script);
  v3 = JSEvaluateScript(v2, script, *(this + 3), 0, 0, 0);
  if (script)
  {
    JSStringRelease(script);
  }

  if (v3 && JSValueIsString(v2, v3))
  {
    v4 = SafariShared::JSUtilities::toNSString(v2, v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BB707280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(exception_object);
}

JSValueRef SafariShared::jsSubstituteURLForNextPageURL(JSContextRef ctx, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, uint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  if (a4 != 1)
  {
    goto LABEL_7;
  }

  if (![MEMORY[0x1E69C8880] isInternalInstall])
  {
    return *a5;
  }

  v10 = SafariShared::JSController::jsController(a3);
  if (v10)
  {
    v11 = *(*v10 + 56);

    return v11();
  }

  else
  {
LABEL_7:

    return JSValueMakeUndefined(ctx);
  }
}

JSValueRef SafariShared::jsNodeAtPoint(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 2 && (v11 = v10) != 0)
  {
    v12 = JSValueToNumber(this, *a5, 0);
    v13.n128_u64[0] = JSValueToNumber(this, a5[1], 0);
    v14 = *(*v11 + 48);
    v15.n128_f64[0] = v12;

    return v14(v11, v15, v13);
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsUserVisibleURLString(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 1 && v10)
  {
    v11 = MEMORY[0x1E695DFF8];
    v12 = SafariShared::JSUtilities::toNSString(this, *a5, 0);
    v13 = [v11 safari_URLWithDataAsString:v12];
    v14 = [v13 safari_userVisibleString];
    v15 = SafariShared::JSUtilities::toJSValue(this, v14, 0);

    return v15;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSClassRef SafariShared::ArticleFinderJSController::staticJSClass(SafariShared::ArticleFinderJSController *this)
{
  {
    return SafariShared::ArticleFinderJSController::staticJSClass(void)::jsClass;
  }

  result = SafariShared::JSController::createJSClass(this);
  SafariShared::ArticleFinderJSController::staticJSClass(void)::jsClass = result;
  return result;
}

uint64_t WBSAutoFillGetSavedDataClasses()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v1 = [v0 safari_allSafariCredentials];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __hasUsernamesAndPasswords_block_invoke;
  v4[3] = &unk_1E7FB6920;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);

  _Block_object_dispose(&v5, 8);
  if (+[WBSCreditCardDataController hasCreditCardData])
  {
    return v2 | 2;
  }

  else
  {
    return v2;
  }
}

void sub_1BB707688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __hasUsernamesAndPasswords_block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 allValues];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) user];
        v12 = +[WBSFormDataController dontSaveMarker];
        v13 = [v11 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

__CFString *titleForFeedbackDetailType(void *a1, int a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedFormPurpose"])
  {
    if (!a2)
    {
      v4 = @"What is the purpose of the form where AutoFill wasn’t offered?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedExpectedAutoFillInformationTypes"])
  {
    if (!a2)
    {
      v4 = @"What type(s) of information did you expect to be available for AutoFill in the form?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedFormPurpose"])
  {
    if (!a2)
    {
      v4 = @"What is the purpose of the form where AutoFill was incorrectly offered?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedUnexpectedAutoFillInformationTypes"])
  {
    if (!a2)
    {
      v4 = @"What type(s) of information were offered to be filled and why is this unexpected?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillFillingFailedUnfilledFieldsExpectingFilling"])
  {
    if (!a2)
    {
      v4 = @"Which fields did you expect to be filled that were not?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataIncorrectFields"])
  {
    if (!a2)
    {
      v4 = @"Which fields had incorrect information filled?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataExpectedFilledData"])
  {
    if (!a2)
    {
      v4 = @"What type of information was filled and what type of information did you expect to be filled?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatIncorrectFields"])
  {
    if (!a2)
    {
      v4 = @"Which fields had data incorrectly formatted?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatExpectedFormat"])
  {
    if (!a2)
    {
      v4 = @"What format was the form expecting, and what format was filled?";
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (![v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillOtherIssue"])
  {
    v5 = [v3 isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillMultipleIssues"];
    if (v5)
    {
      v4 = @"Please describe each issue you had, including what AutoFill did and how that differed from the expected result.";
    }

    else
    {
      v4 = @"unknown detail type title";
    }

    if (!v5 || !a2)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (a2)
  {
LABEL_45:
    v4 = _WBSLocalizedString();
    goto LABEL_46;
  }

  v4 = @"What happened and how did that differ from the expected result?";
LABEL_46:

  return v4;
}

uint64_t __isABCAvailable_block_invoke()
{
  result = objc_opt_class();
  isABCAvailable_isABCAvailable = result != 0;
  return result;
}

__CFString *WBSAutomaticTabClosingIntervalAnalyticsTitle(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Other";
  }

  else
  {
    return off_1E7FB6C30[a1];
  }
}

__CFString *WBSAutomaticTabClosingIntervalSettingsTitle(uint64_t a1)
{
  v3 = &stru_1F3A5E418;
  if (a1 <= 2)
  {
    if (a1 > 2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 > 5)
  {
    if (a1 == 6 || a1 == 7)
    {
      goto LABEL_10;
    }
  }

  else if (a1 == 3 || a1 == 5)
  {
LABEL_10:
    v3 = _WBSLocalizedString();
  }

LABEL_11:

  return v3;
}

__CFString *WBSAutomaticTabClosingIntervalPromptTitle(unint64_t a1)
{
  v2 = &stru_1F3A5E418;
  if (a1 <= 7)
  {
    if (((1 << a1) & 0xEE) != 0)
    {
      v2 = WBSAutomaticTabClosingIntervalSettingsTitle(a1);
    }

    else if (!a1)
    {
      v2 = _WBSLocalizedString();
    }
  }

  return v2;
}

void WBSAutomaticTabClosingIntervalTimeInterval(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (!a1 || a1 != 1 && a1 != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 3 || a1 == 5)
      {
        return;
      }

LABEL_12:
      v1 = [MEMORY[0x1E695DF00] distantFuture];
      [v1 timeIntervalSinceNow];

      return;
    }

    if (a1 != 6 && a1 != 7)
    {
      goto LABEL_12;
    }
  }
}

__CFString *WBSAutoplayRegionKeyForCountryCode(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (countryCodesToRegionKeyTable_onceToken != -1)
    {
      WBSAutoplayRegionKeyForCountryCode_cold_1();
    }

    v2 = countryCodesToRegionKeyTable_countryCodesToRegionKeys;
    v3 = [v1 uppercaseString];
    v4 = [v2 objectForKeyedSubscript:v3];

    if ([v4 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = @"OTH";
    }
  }

  else
  {
    v5 = @"OTH";
  }

  return v5;
}

id WBSAutoplayDifferentialPrivacyKeyForSignal(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((a1 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(__CFString *)off_1E7FB6C70[a1 - 1] mutableCopy];
  }

  [v4 appendString:@"."];
  v5 = WBSAutoplayRegionKeyForCountryCode(v3);
  [v4 appendString:v5];

  return v4;
}

void __countryCodesToRegionKeyTable_block_invoke()
{
  v0 = countryCodesToRegionKeyTable_countryCodesToRegionKeys;
  countryCodesToRegionKeyTable_countryCodesToRegionKeys = &unk_1F3A9B3C0;
}

void WBSReportAutoplaySignalIfNecessary(uint64_t a1, void *a2, char a3, double a4)
{
  v7 = a2;
  v8 = v7;
  if (a1 && v7)
  {
    v9 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v7];
    v10 = [v9 host];

    if ([v10 length])
    {
      if (a4 == 0.0 || ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v11 - a4 >= 10.0))
      {
        v14 = v10;
        if (sendAutoplaySignalForDomain(WBSAutoplaySignal,NSString *,BOOL)::onceToken != -1)
        {
          WBSReportAutoplaySignalIfNecessary_cold_1();
        }

        v15 = [sendAutoplaySignalForDomain(WBSAutoplaySignal NSString *];
        v16 = +[WBSFormAutoFillCorrectionsSQLiteStore standardStore];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke_2;
        v19[3] = &unk_1E7FB6D48;
        v22 = a1;
        v17 = v14;
        v20 = v17;
        v18 = v15;
        v21 = v18;
        v23 = a3;
        [v16 getAllowListStatusForDomain:v17 completionHandler:v19];
      }

      else
      {
        v12 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19[0]) = 0;
          _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Discarding auto-play signal for quick navigation", v19, 2u);
        }

        v13 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          WBSReportAutoplaySignalIfNecessary_cold_2(v10, v13);
        }
      }
    }
  }
}

void ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke()
{
  v0 = objc_alloc_init(WBSCrowdsourcedFeedbackDomainNormalizer);
  v1 = sendAutoplaySignalForDomain(WBSAutoplaySignal,NSString *,BOOL)::domainNormalizer;
  sendAutoplaySignalForDomain(WBSAutoplaySignal,NSString *,BOOL)::domainNormalizer = v0;
}

void ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || a2 == 2)
  {
    v6 = (a1 + 32);
    v7 = [*(a1 + 32) safari_highLevelDomainFromHost];
    if ([v7 length] && !objc_msgSend(*v6, "isEqualToString:", v7))
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 48);
        LODWORD(v24) = 134217984;
        *(&v24 + 4) = v12;
        _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Checking if the high-level domain is on the feedback allowlist before recording auto-play signal %lu", &v24, 0xCu);
      }

      v13 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke_2_cold_1(v7, a1, v13);
      }

      v14 = *(a1 + 48);
      v15 = [sendAutoplaySignalForDomain(WBSAutoplaySignal NSString *];
      v16 = *(a1 + 56);
      v17 = v15;
      v18 = [MEMORY[0x1E695DF58] currentLocale];
      v19 = [v18 countryCode];
      v20 = WBSAutoplayDifferentialPrivacyKeyForSignal(v14, v19);

      v21 = +[WBSFormAutoFillCorrectionsSQLiteStore standardStore];
      *&v24 = MEMORY[0x1E69E9820];
      *(&v24 + 1) = 3221225472;
      v25 = ___ZL57sendDifferentialPrivacySignalForNormalizedHighLevelDomain17WBSAutoplaySignalP8NSStringb_block_invoke;
      v26 = &unk_1E7FB6D48;
      v22 = v20;
      v27 = v22;
      v23 = v17;
      v28 = v23;
      v29 = v14;
      v30 = v16;
      [v21 getAllowListStatusForDomain:v23 completionHandler:&v24];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        LODWORD(v24) = 134217984;
        *(&v24 + 4) = v9;
        _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Discarding auto-play signal %lu after checking feedback allowlist", &v24, 0xCu);
      }

      v10 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke_2_cold_2();
      }
    }
  }

  else if (a2 == 1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      LODWORD(v24) = 134217984;
      *(&v24 + 4) = v4;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Recording auto-play signal: %lu", &v24, 0xCu);
    }

    v5 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke_2_cold_3();
    }

    if ([*(a1 + 40) length])
    {
      donateEventToBiomeWithAutoPlaySignalForDomain(*(a1 + 48), *(a1 + 32), *(a1 + 56));
    }
  }
}

void donateEventToBiomeWithAutoPlaySignalForDomain(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = +[WBSBiomeDonationManager sharedManager];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v6 countryCode];
  v8 = WBSAutoplayRegionKeyForCountryCode(v7);
  [v5 donateAutoPlayEventWithSignal:a1 domain:v9 countryCode:v8 webPageLoadedOverPrivateRelay:a3];
}

void ___ZL57sendDifferentialPrivacySignalForNormalizedHighLevelDomain17WBSAutoplaySignalP8NSStringb_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2 || a2 == 2)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Discarding auto-play signal %{public}@ after checking feedback allowlist", &v9, 0xCu);
    }

    v8 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      ___ZL57sendDifferentialPrivacySignalForNormalizedHighLevelDomain17WBSAutoplaySignalP8NSStringb_block_invoke_cold_1();
    }
  }

  else if (a2 == 1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Recording auto-play signal: %{public}@", &v9, 0xCu);
    }

    v5 = WBS_LOG_CHANNEL_PREFIXAutoPlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      ___ZL57sendDifferentialPrivacySignalForNormalizedHighLevelDomain17WBSAutoplaySignalP8NSStringb_block_invoke_cold_2();
    }

    if ([*(a1 + 40) length])
    {
      donateEventToBiomeWithAutoPlaySignalForDomain(*(a1 + 48), *(a1 + 40), *(a1 + 56));
    }
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t WBSTimestampForBiomeEventDonation()
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v1 = ceil(v0 / 1800.0) * 30.0 * 60.0;
  v2 = MEMORY[0x1E695DF00];

  return [v2 dateWithTimeIntervalSinceReferenceDate:v1];
}

uint64_t BiomeErrorResponseForStatusCode(uint64_t a1)
{
  v1 = a1 - 400;
  if (a1 < 400)
  {
    return 0;
  }

  if (a1 > 499)
  {
    if (a1 <= 504)
    {
      if (a1 <= 501)
      {
        if (a1 == 500)
        {
          return 27;
        }

        else
        {
          return 28;
        }
      }

      else if (a1 == 502)
      {
        return 29;
      }

      else if (a1 == 503)
      {
        return 30;
      }

      else
      {
        return 31;
      }
    }

    else if (a1 > 507)
    {
      switch(a1)
      {
        case 508:
          return 35;
        case 510:
          return 36;
        case 511:
          return 37;
        default:
          return 0;
      }
    }

    else if (a1 == 505)
    {
      return 32;
    }

    else if (a1 == 506)
    {
      return 33;
    }

    else
    {
      return 34;
    }
  }

  else
  {
    result = 1;
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = 2;
        break;
      case 2:
        result = 3;
        break;
      case 3:
        result = 4;
        break;
      case 4:
        result = 5;
        break;
      case 5:
        result = 6;
        break;
      case 6:
        result = 7;
        break;
      case 7:
        result = 8;
        break;
      case 8:
        result = 9;
        break;
      case 9:
        result = 10;
        break;
      case 10:
        result = 11;
        break;
      case 11:
        result = 12;
        break;
      case 12:
        result = 13;
        break;
      case 13:
        result = 14;
        break;
      case 14:
        result = 15;
        break;
      case 15:
        result = 16;
        break;
      case 16:
        result = 17;
        break;
      case 17:
        result = 18;
        break;
      case 18:
        result = 19;
        break;
      case 22:
        result = 20;
        break;
      case 25:
        result = 21;
        break;
      case 26:
        result = 22;
        break;
      case 28:
        result = 23;
        break;
      case 29:
        result = 24;
        break;
      case 31:
        result = 25;
        break;
      case 51:
        result = 26;
        break;
      default:
        return 0;
    }
  }

  return result;
}

void __isIPad_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    isIPad_result = CFEqual(v0, @"iPad") != 0;

    CFRelease(v1);
  }
}

Class __getSADeviceInfoClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SearchAssetsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SearchAssetsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7FB6EE8;
    v5 = 0;
    SearchAssetsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SearchAssetsLibraryCore_frameworkLibrary)
  {
    __getSADeviceInfoClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SADeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSADeviceInfoClass_block_invoke_cold_1();
  }

  getSADeviceInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchAssetsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchAssetsLibraryCore_frameworkLibrary = result;
  return result;
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,double>(void *a1, void *a2, void *a3, void *a4, double *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,double>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,double>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double>(void *a1, void *a2, void *a3, double *a4, double *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double,double>(void *a1, double *a2, double *a3)
{
  v5 = a1;
  [v5 bindDouble:1 atParameterIndex:*a2];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

uint64_t WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {

    if (*v1 != 1)
    {
      SafariShared::BookmarkAndHistoryCompletionMatch::BookmarkAndHistoryCompletionMatch();
    }

    return WTF::fastFree(v1, v2);
  }

  else
  {
    --*result;
  }

  return result;
}

void sub_1BB7132B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BB713680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v20 - 56));

  _Unwind_Resume(a1);
}

id WBSBrowsingAssistantContentTypeAvailabilityLabel(uint64_t a1)
{
  v3 = 0;
  if (a1 <= 3)
  {
    if (a1 == 1 || a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (a1 <= 6 || a1 == 7)
  {
LABEL_9:
    v3 = _WBSLocalizedString();
  }

  return v3;
}

void WBSBrowsingAssistantContentOptionsEnumerateCasesUsingBlock(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    for (i = 0; i != 7; ++i)
    {
      v4 = orderedContentOptions[i];
      if ((v4 & a1) != 0)
      {
        v5[2](v5, 64 - __clz(v4));
      }
    }
  }
}

void WBSBrowsingAssistantContentOptionsEnumerateOptionsUsingBlock(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    for (i = 0; i != 7; ++i)
    {
      if ((orderedContentOptions[i] & a1) != 0)
      {
        v4[2]();
      }
    }
  }
}

uint64_t WBSBrowsingAssistantContentOptionsMostProminentRemoteOption(char a1)
{
  v1 = a1 & 0x1F;
  if ((a1 & 0x1F) == 0)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    result = orderedContentOptions[v2];
    if ((result & v1) != 0)
    {
      break;
    }

    if (++v2 == 7)
    {
      return 0;
    }
  }

  return result;
}

id getSAAssetManagerFactoryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSAAssetManagerFactoryClass_softClass;
  v7 = getSAAssetManagerFactoryClass_softClass;
  if (!getSAAssetManagerFactoryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSAAssetManagerFactoryClass_block_invoke;
    v3[3] = &unk_1E7FB6EC8;
    v3[4] = &v4;
    __getSAAssetManagerFactoryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BB71502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSAAssetManagerFactoryClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SearchAssetsLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SearchAssetsLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7FB7108;
    v5 = 0;
    SearchAssetsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SearchAssetsLibraryCore_frameworkLibrary_0)
  {
    __getSAAssetManagerFactoryClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SAAssetManagerFactory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSAAssetManagerFactoryClass_block_invoke_cold_1();
  }

  getSAAssetManagerFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchAssetsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SearchAssetsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

__CFString *WBSBrowsingAssistantConsentStateName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"N/A";
  }

  else
  {
    return off_1E7FB7218[a1];
  }
}

void sub_1BB716888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB7170EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB7183D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __calculationResultNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = calculationResultNumberFormatter_formatter;
  calculationResultNumberFormatter_formatter = v0;

  [calculationResultNumberFormatter_formatter setMaximumFractionDigits:10];
  [calculationResultNumberFormatter_formatter setMaximumIntegerDigits:20];
  [calculationResultNumberFormatter_formatter setNumberStyle:1];
  v2 = calculationResultNumberFormatter_formatter;

  return [v2 setUsesGroupingSeparator:1];
}

uint64_t __conversionResultNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = conversionResultNumberFormatter_formatter;
  conversionResultNumberFormatter_formatter = v0;

  [conversionResultNumberFormatter_formatter setMaximumFractionDigits:2];
  [conversionResultNumberFormatter_formatter setNumberStyle:1];
  v2 = conversionResultNumberFormatter_formatter;

  return [v2 setUsesGroupingSeparator:1];
}

void __evaluationOptions_block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992228];
  v5[0] = *MEMORY[0x1E6992210];
  v5[1] = v0;
  v1 = *MEMORY[0x1E6992240];
  v5[2] = *MEMORY[0x1E6992238];
  v5[3] = v1;
  v2 = *MEMORY[0x1E6992268];
  v5[4] = *MEMORY[0x1E6992258];
  v5[5] = v2;
  v6[0] = MEMORY[0x1E695E118];
  v6[1] = MEMORY[0x1E695E118];
  v6[4] = MEMORY[0x1E695E118];
  v6[5] = &unk_1F3A9A9B8;
  v6[2] = MEMORY[0x1E695E118];
  v6[3] = MEMORY[0x1E695E118];
  v5[6] = *MEMORY[0x1E6992220];
  v6[6] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v4 = evaluationOptions_options;
  evaluationOptions_options = v3;
}

__CFString *WBSHideMyEmailRecordStateStringForRecordState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PrivateEmailExists";
  }

  else
  {
    return off_1E7FB7460[a1 - 1];
  }
}

void sub_1BB71CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v29 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB71D570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = WBSCloudHistory;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB721F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  objc_destroyWeak((v15 + 48));

  _Unwind_Resume(a1);
}

void sub_1BB7224D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));

  _Unwind_Resume(a1);
}

void sub_1BB7258B4(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB726E54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id *std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);

    JUMPOUT(0x1BFB13480);
  }

  return result;
}

void SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(id *this)
{
  SafariShared::SuddenTerminationDisabler::enableSuddenTermination(this);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

void sub_1BB72805C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t WBSCloudHistoryPushAgentMain(void)
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(WBSCloudHistoryPushAgent);
  v2 = cloudHistoryPushAgent;
  cloudHistoryPushAgent = v1;

  objc_autoreleasePoolPop(v0);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}

void sub_1BB72C678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WBSCloudHistoryPushAgentProxy;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BB72C8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BB72CA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1BB72EBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB72EF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(exception_object);
    v18 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v17 name];
      __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke_cold_2(v19, &buf, v18);
    }

    objc_end_catch();
    JUMPOUT(0x1BB72EE50);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BB72F244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB72F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BB731728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BB7320A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CloudSubscriptionFeaturesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudSubscriptionFeaturesLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
}

{
}

void sub_1BB7361B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1BB7367F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1BB7373AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_1BB73964C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB73977C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_1BB739840(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2113;
  *(a3 + 14) = a2;
  return result;
}

void sub_1BB739EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id addressBookStringToBeDisplayed(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([a1 length] || !objc_msgSend(v8, "length"))
  {
    goto LABEL_2;
  }

  v12 = v8;
  v13 = v7;
  if ([v12 isEqualToString:@"_$!<Home>!$_"])
  {
    if ([v13 isEqualToString:*MEMORY[0x1E69C8A90]] || objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69C8AA0]) || objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69C8AB8]))
    {
LABEL_25:
      v10 = _WBSLocalizedString();
      goto LABEL_27;
    }
  }

  else if ([v12 isEqualToString:@"_$!<Work>!$_"])
  {
    if ([v13 isEqualToString:*MEMORY[0x1E69C8A90]] || objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69C8AA0]) || objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69C8AB8]))
    {
      goto LABEL_25;
    }
  }

  else if ([v12 isEqualToString:@"_$!<Mobile>!$_"] && objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69C8AB8]) || objc_msgSend(v12, "isEqualToString:", @"iPhone") && objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69C8AB8]))
  {
    goto LABEL_25;
  }

  v10 = 0;
LABEL_27:

  if (!v10)
  {
LABEL_2:
    v10 = [objc_opt_class() localizedLowercaseContactProperty:v7];
  }

  return v10;
}

id allStores()
{
  if (allStores_onceToken != -1)
  {
    allStores_cold_1();
  }

  v1 = allStores_allStores;

  return v1;
}

void __allStores_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = allStores_allStores;
  allStores_allStores = v0;
}

id allProfileDatabaseIdentifiers(void)
{
  if (allProfileDatabaseIdentifiers(void)::onceToken != -1)
  {
    allProfileDatabaseIdentifiers();
  }

  v1 = allProfileDatabaseIdentifiers(void)::allProfileDatabaseIdentifiers;

  return v1;
}

id storesByProfileIdentifier(void)
{
  if (storesByProfileIdentifier(void)::onceToken != -1)
  {
    storesByProfileIdentifier();
  }

  v1 = storesByProfileIdentifier(void)::storesByProfileIdentifier;

  return v1;
}

id SafariShared::WBSSQLiteDatabaseFetch<double const&,double const&,NSString * const {__strong}&>(void *a1, void *a2, double *a3, double *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,double const&,double const&,NSString * const {__strong}&>(v11, a3, a4, a5);
  v12 = [v11 fetch];

  return v12;
}

id SafariShared::WBSSQLiteDatabaseFetch<double const&,double const&>(void *a1, void *a2, double *a3, double *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,double const&,double const&>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

void sub_1BB7413C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB7417D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1BB741DE4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB742044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindString:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

void sub_1BB7422D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void ___ZL29allProfileDatabaseIdentifiersv_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = allProfileDatabaseIdentifiers(void)::allProfileDatabaseIdentifiers;
  allProfileDatabaseIdentifiers(void)::allProfileDatabaseIdentifiers = v0;

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_profilesDirectoryURL];
  v21 = 0;
  v15 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v21];
  v16 = v21;

  if (!v16)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v15;
    v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 URLByAppendingPathComponent:@"ContentBlockerStatistics.db" isDirectory:{0, v15}];
          v11 = [v10 path];
          v12 = [v2 fileExistsAtPath:v11];

          if (v12)
          {
            v13 = allProfileDatabaseIdentifiers(void)::allProfileDatabaseIdentifiers;
            v14 = [v9 lastPathComponent];
            [v13 addObject:v14];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    goto LABEL_14;
  }

  if (([v16 safari_matchesErrorDomain:*MEMORY[0x1E696A250] andCode:{260, v15}] & 1) == 0)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v16 safari_privacyPreservingDescription];
      ___ZL29allProfileDatabaseIdentifiersv_block_invoke_cold_1(v5, buf, v4);
    }

LABEL_14:
  }
}

void ___ZL25storesByProfileIdentifierv_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = storesByProfileIdentifier(void)::storesByProfileIdentifier;
  storesByProfileIdentifier(void)::storesByProfileIdentifier = v0;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long &,long &,double &>(void *a1, void *a2, void *a3, void *a4, void *a5, double *a6)
{
  v11 = a1;
  v12 = a3;
  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v11 query:v12 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,long &,double &>(v13, a4, a5, a6);
    v16 = [v13 execute];
    [v13 invalidate];
    if ((v16 - 100) >= 2 && v16 != 0)
    {
      [v11 reportErrorWithCode:v16 statement:objc_msgSend(v13 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v18 = v14;
      *a2 = v15;
    }

    v16 = [v15 code];
  }

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,long &,double &>(void *a1, void *a2, void *a3, double *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,long &,double &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,long &,double &>(void *a1, void *a2, double *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:2];
  [v5 bindDouble:3 atParameterIndex:*a3];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double const&,double const&,NSString * const {__strong}&>(void *a1, double *a2, double *a3, void *a4)
{
  v7 = a1;
  [v7 bindDouble:1 atParameterIndex:*a2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,double const&,NSString * const {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,double const&,NSString * const {__strong}&>(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [v5 bindDouble:2 atParameterIndex:*a2];
  [v5 bindString:*a3 atParameterIndex:3];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,double const&,double const&>(void *a1, double *a2, double *a3)
{
  v5 = a1;
  [v5 bindDouble:1 atParameterIndex:*a2];
  [v5 bindDouble:2 atParameterIndex:*a3];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

void WBSContentBlockerStatisticsStoreEnumerateAllStores(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[WBSContentBlockerStatisticsSQLiteStore allStores];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v1[2](v1, *(*(&v16 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = +[WBSContentBlockerStatisticsInMemoryStore allStores];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v1[2](v1, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

void WBSContentBlockerStatisticsStoreMergeStatistics(void *a1, void *a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __WBSContentBlockerStatisticsStoreMergeStatistics_block_invoke;
  v5[3] = &unk_1E7FC4910;
  v6 = v3;
  v4 = v3;
  [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __WBSContentBlockerStatisticsStoreMergeStatistics_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v24 = a1;
    v9 = [v7 safari_dictionaryByMappingObjectsToKeysUsingBlock:&__block_literal_global_30];
    v10 = [v9 mutableCopy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 domain];
          v18 = [v10 objectForKeyedSubscript:v17];
          v19 = v18;
          if (!v18 || ([v18 lastSeen], v21 = v20, objc_msgSend(v16, "lastSeen"), v21 < v22))
          {
            [v10 setObject:v16 forKeyedSubscript:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v23 = [v10 allValues];
    [*(v24 + 32) setObject:v23 forKeyedSubscript:v5];

    v6 = v25;
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties(void *a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v7 = a2;
  v8 = a3;
  v26 = a4;
  v9 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v50 = v29;
    v51 = 2114;
    v52 = v7;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Loading content blocker statistics from %{public}@ to %{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = +[WBSContentBlockerStatisticsInMemoryStore allStores];
  v11 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke;
        v41[3] = &unk_1E7FB6B08;
        v42 = v10;
        [v15 blockedThirdPartiesAfter:v29 before:v7 onFirstParty:v8 completionHandler:v41];
      }

      v12 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v12);
  }

  v16 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = +[WBSContentBlockerStatisticsSQLiteStore allStores];
  v17 = [obja countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obja);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        v22 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v50 = v21;
          _os_log_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_INFO, "Loading content blocker statistics from %{public}@", buf, 0xCu);
        }

        dispatch_group_enter(v16);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke_5;
        v33[3] = &unk_1E7FC4938;
        v34 = v16;
        v35 = v10;
        v36 = v21;
        [v21 blockedThirdPartiesAfter:v29 before:v7 onFirstParty:v8 completionHandler:v33];
      }

      v18 = [obja countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v18);
  }

  v23 = fetchingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke_7;
  block[3] = &unk_1E7FB83F8;
  v31 = v10;
  v32 = v26;
  v24 = v10;
  v25 = v26;
  dispatch_group_notify(v16, v23, block);
}

void __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = fetchingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke_2;
  block[3] = &unk_1E7FB7258;
  v8 = *(a1 + 40);
  v9 = v3;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_group_async(v4, v5, block);

  dispatch_group_leave(*(a1 + 32));
}

id fetchingQueue()
{
  if (fetchingQueue_onceToken != -1)
  {
    fetchingQueue_cold_1();
  }

  v1 = fetchingQueue_fetchingQueue;

  return v1;
}

void __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WBSContentBlockerStatisticsStoreMergeStatistics(*(a1 + 32), *(a1 + 40));
  v2 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Finished loading content blocker statistics from %{public}@", &v4, 0xCu);
  }
}

uint64_t __WBSContentBlockerStatisticsStoreFetchAllBlockedThirdParties_block_invoke_7(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Finished loading content blocker statistics", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void WBSContentBlockerStatisticsStoreClearStoresForProfilesWithIdentifiers(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138543362;
    v15 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if ([WBSContentBlockerStatisticsSQLiteStore storeExistsForProfileWithIdentifier:v7, v15])
        {
          v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = v15;
            v26 = v7;
            _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Clearing store for profile %{public}@", buf, 0xCu);
          }

          v9 = [WBSContentBlockerStatisticsSQLiteStore storeForProfileWithIdentifier:v7];
          [v9 clearAllStatisticsWithCompletionHandler:0];
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = +[WBSContentBlockerStatisticsInMemoryStore allStores];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * j) clearAllStatisticsWithCompletionHandler:0];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

void __fetchingQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SafariShared.WBSContentBlockerStatisticsStore", v2);
  v1 = fetchingQueue_fetchingQueue;
  fetchingQueue_fetchingQueue = v0;
}

void sub_1BB745B34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BB747300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB747D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BB748728(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB7487D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t isNilOrKindOfClass(objc_object *a1, objc_class *a2)
{
  v2 = a1;
  if (v2)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t gregorianYearFromDate(NSDate *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DEE8]);
    v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v4 = [v3 components:4 fromDate:v1];
    v5 = [v4 year];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1BB749B40(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

Class ___ZL32getPKAutoFillCardCredentialClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibraryCore(a1);
  result = objc_getClass("PKAutoFillCardCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAutoFillCardCredentialClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PassKitCoreLibraryCore(char **a1)
{
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    PassKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }
}

{
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    PassKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }
}

uint64_t ___ZL22PassKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL28getPKFPANCardDescriptorClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibraryCore(a1);
  result = objc_getClass("PKFPANCardDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKFPANCardDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL21getPKVirtualCardClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibraryCore(a1);
  result = objc_getClass("PKVirtualCard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKVirtualCardClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BB74ABD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1BB74BCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB74C17C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB74C5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BB74C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 - 56));

  _Unwind_Resume(a1);
}

void sub_1BB74CE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1BB74D324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26)
{
  v30 = v29;

  _Unwind_Resume(a1);
}

void sub_1BB74D6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v15 - 40));

  _Unwind_Resume(a1);
}

void sub_1BB74DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  v26 = v25;

  _Unwind_Resume(a1);
}

void sub_1BB74E2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  v26 = v25;

  _Unwind_Resume(a1);
}

id artworkCacheKeyForCardNumberAndSize(NSString *a1, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v4 = a1;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu, %zu x %zu", -[NSString hash](v4, "hash"), width, height];

  return v5;
}

void sub_1BB7504B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1BB75062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

Class ___ZL29getPKAutoFillCardManagerClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibraryCore(a1);
  result = objc_getClass("PKAutoFillCardManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAutoFillCardManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL22PassKitCoreLibraryCorePPc_block_invoke_0()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL28getPKVirtualCardManagerClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibraryCore(a1);
  result = objc_getClass("PKVirtualCardManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKVirtualCardManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL39getPKSafariCardNotificationManagerClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibraryCore(a1);
  result = objc_getClass("PKSafariCardNotificationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKSafariCardNotificationManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_3_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1BB753F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BB75EC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BB75F04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getOSLogStoreClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!OSLogLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __OSLogLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7FC5300;
    v5 = 0;
    OSLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!OSLogLibraryCore_frameworkLibrary)
  {
    __getOSLogStoreClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OSLogStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOSLogStoreClass_block_invoke_cold_1();
  }

  getOSLogStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OSLogLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OSLogLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return [v0 nextBackoffTimeInterval];
}

id WBSLocalizedDeviceName()
{
  if (WBSLocalizedDeviceName_onceToken != -1)
  {
    WBSLocalizedDeviceName_cold_1();
  }

  v1 = WBSLocalizedDeviceName_localizedDeviceName;

  return v1;
}

void __WBSLocalizedDeviceName_block_invoke()
{
  v0 = MGGetStringAnswer();
  v1 = WBSLocalizedDeviceName_localizedDeviceName;
  WBSLocalizedDeviceName_localizedDeviceName = v0;
}

id WBSSystemSymbolNameForCurrentDevice()
{
  if (WBSSystemSymbolNameForCurrentDevice_onceToken != -1)
  {
    WBSSystemSymbolNameForCurrentDevice_cold_1();
  }

  v1 = WBSSystemSymbolNameForCurrentDevice_result;

  return v1;
}

void __WBSSystemSymbolNameForCurrentDevice_block_invoke()
{
  v0 = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
  v1 = [v0 identifier];

  v11 = 0;
  v2 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:v1 withResolutionStrategy:0 variantOptions:1 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __WBSSystemSymbolNameForCurrentDevice_block_invoke_cold_1(v1, v4, v3);
    }
  }

  v5 = [v2 name];
  v6 = [(__CFString *)v5 length];
  v7 = v5;
  if (!v6)
  {
    v8 = [MEMORY[0x1E69C8880] isInternalInstall];
    v7 = @"display";
    if (v8)
    {
      v7 = @"pc";
    }
  }

  v9 = v7;

  v10 = WBSSystemSymbolNameForCurrentDevice_result;
  WBSSystemSymbolNameForCurrentDevice_result = v9;
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<long long,long long>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        if (!a2)
        {
          goto LABEL_15;
        }

        v9 = a2[2];
        v8[2] = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_13:
  if (a2 != a3)
  {
    if (a2)
    {
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_multi<std::pair<long long const,long long> const&>();
    }

LABEL_15:
    __break(1u);
  }
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:sn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:sn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::pair<long long,long long>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1BB7657FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id convertSafariProfileIdentifierToScreenTimeProfileIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length] && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69C8B58]) & 1) == 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v2 = *(a1 + 80);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__12(uint64_t a1)
{
}

{
}

double SafariShared::ExtensionURLTranslator::ExtensionURLTranslator(SafariShared::ExtensionURLTranslator *this)
{
  *this = 850045863;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = 850045863;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

uint64_t SafariShared::ExtensionURLTranslator::shared(SafariShared::ExtensionURLTranslator *this)
{
  {
    operator new();
  }

  return SafariShared::ExtensionURLTranslator::shared(void)::shared;
}

void SafariShared::ExtensionURLTranslator::addExtension(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  std::mutex::lock(a1);
  if (!*(a1 + 64))
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = *(a1 + 64);
    *(a1 + 64) = v13;
  }

  v15 = [v9 host];
  v16 = [v9 safari_path];
  v24[0] = v16;
  v24[1] = v10;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [*(a1 + 64) setObject:v17 forKeyedSubscript:v15];

  if ([v11 length])
  {
    if (!*(a1 + 80))
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
      v19 = *(a1 + 80);
      *(a1 + 80) = v18;
    }

    v20 = [v11 copy];
    [*(a1 + 80) setObject:v20 forKeyedSubscript:v15];
  }

  if (v12)
  {
    v21 = *(a1 + 72);
    if (!v21)
    {
      v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v23 = *(a1 + 72);
      *(a1 + 72) = v22;

      v21 = *(a1 + 72);
    }

    [v21 setObject:v12 forKeyedSubscript:v15];
  }

  std::mutex::unlock(a1);
}

void sub_1BB7697E8(_Unwind_Exception *a1)
{
  std::mutex::unlock(v4);

  _Unwind_Resume(a1);
}

void SafariShared::ExtensionURLTranslator::removeExtension(SafariShared::ExtensionURLTranslator *this, NSURL *a2)
{
  v4 = a2;
  std::mutex::lock(this);
  v3 = [(NSURL *)v4 host];
  [*(this + 8) removeObjectForKey:v3];
  [*(this + 9) removeObjectForKey:v3];
  [*(this + 10) removeObjectForKey:v3];

  std::mutex::unlock(this);
}

void sub_1BB7698E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock(v10);

  _Unwind_Resume(a1);
}

id SafariShared::ExtensionURLTranslator::fileURLForExtensionURL(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 host];
  if (v6)
  {
    std::mutex::lock(a1);
    v7 = [*(a1 + 64) objectForKeyedSubscript:v6];
    std::mutex::unlock(a1);
    if (v7)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v24 = v8;
      v9 = [v7 objectAtIndexedSubscript:1];
      v10 = [v5 safari_path];
      if ([v10 hasPrefix:v8])
      {
        v11 = [v10 substringFromIndex:{objc_msgSend(v8, "length")}];

        v22 = v11;
        v23 = v9;
        v12 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v11 relativeToURL:v9];
        v21 = [v12 URLByStandardizingPath];
        v13 = [v21 safari_path];
        v14 = [v9 URLByStandardizingPath];
        v15 = [v14 safari_path];
        v16 = [v13 hasPrefix:v15];

        if (v16)
        {
          v9 = v23;
          if (a3)
          {
            std::mutex::lock(a1);
            v17 = [*(a1 + 72) objectForKeyedSubscript:v6];
            v18 = v17;
            if (v17)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = ___ZNK12SafariShared22ExtensionURLTranslator22fileURLForExtensionURLEP5NSURLNS0_23VerifyExtensionResourceE_block_invoke;
              block[3] = &unk_1E7FB7DD0;
              v26 = v17;
              v27 = v5;
              v28 = v12;
              dispatch_async(MEMORY[0x1E69E96A0], block);
            }

            std::mutex::unlock(a1);
          }

          v19 = 0;
        }

        else
        {
          v19 = v12;
          v12 = 0;
          v9 = v23;
        }

        v10 = v22;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1BB769BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  std::mutex::unlock(v17);

  _Unwind_Resume(a1);
}

id SafariShared::ExtensionURLTranslator::decodeAndResolveFileURL(SafariShared::ExtensionURLTranslator *this, NSURL *a2)
{
  v2 = [(NSURL *)a2 URLByStandardizingPath];

  return v2;
}

id SafariShared::ExtensionURLTranslator::displayNameForExtensionURL(SafariShared::ExtensionURLTranslator *this, NSURL *a2)
{
  v3 = [(NSURL *)a2 host];
  if (v3)
  {
    std::mutex::lock(this);
    v4 = [*(this + 10) objectForKeyedSubscript:v3];
    std::mutex::unlock(this);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BB769D2C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);

  _Unwind_Resume(a1);
}

void WBSFieldLabelPatternMatcherArrayFree(WTF **a1, void *a2)
{
  WTF::fastFree(a1[1], a2);
  WTF::fastFree(a1[2], v3);
  WTF::fastFree(a1[3], v4);

  JUMPOUT(0x1BFB13480);
}

uint64_t WBSFieldLabelPatternMatcherSearchReverse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SafariShared::FieldLabelPatternMatcher::FieldLabelPatternMatcher(v8, a1, a2, a3);
  v4 = SafariShared::FieldLabelPatternMatcher::searchReverse(v8);
  v5 = v9;
  if (&v11 != v9 && v9 != 0)
  {
    v9 = 0;
    v10 = 0;
    WTF::fastFree(v5, v3);
  }

  return v4;
}

uint64_t WBSFieldLabelPatternMatcherFindLongestMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SafariShared::FieldLabelPatternMatcher::FieldLabelPatternMatcher(v8, a1, a2, a3);
  v4 = SafariShared::FieldLabelPatternMatcher::longestMatch(v8);
  v5 = v9;
  if (&v11 != v9 && v9 != 0)
  {
    v9 = 0;
    v10 = 0;
    WTF::fastFree(v5, v3);
  }

  return v4;
}

void sub_1BB76A524(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF *a34, int a35, WTF *a36, int a37, WTF *a38, int a39)
{
  if (a34)
  {
    WTF::fastFree(a34, a2);
  }

  if (a36)
  {
    WTF::fastFree(a36, a2);
  }

  if (a38)
  {
    WTF::fastFree(a38, a2);
  }

  _Unwind_Resume(a1);
}

uint64_t addInitializersForTrie(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if ([v5 count])
  {
    v6 = *(a2 + 12);
    v36 = 0;
    v37 = 0;
    v7 = [v5 count];
    if (v7)
    {
      if (v7 >> 31)
      {
        __break(0xC471u);
        goto LABEL_35;
      }

      LODWORD(v37) = v7;
      v36 = WTF::fastMalloc((2 * v7));
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [v5 allKeys];
    v9 = [v8 sortedArrayUsingSelector:sel_compare_];

    v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v10)
    {
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v32 + 1) + 8 * i) unsignedShortValue];
          LOWORD(v31) = v13;
          v14 = HIDWORD(v37);
          if (HIDWORD(v37) == v37)
          {
            v15 = WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, HIDWORD(v37) + 1, &v31);
            v14 = HIDWORD(v37);
            *(v36 + HIDWORD(v37)) = *v15;
          }

          else
          {
            *(v36 + HIDWORD(v37)) = v13;
          }

          HIDWORD(v37) = v14 + 1;
        }

        v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v10);
    }

    v17 = *(a3 + 12);
    LOWORD(v31) = WORD2(v37);
    HIWORD(v31) = v17;
    v18 = *(a2 + 12);
    if (v18 == *(a2 + 8))
    {
      v19 = WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v18 + 1, &v31);
      v18 = *(a2 + 12);
      v20 = *a2;
      v21 = *v19;
    }

    else
    {
      v20 = *a2;
      v21 = v31;
    }

    *(v20 + 4 * v18) = v21;
    ++*(a2 + 12);
    v22 = v36;
    if (HIDWORD(v37))
    {
      v23 = *(a3 + 12);
      v24 = 2 * HIDWORD(v37);
      do
      {
        LOWORD(v30) = *v22;
        if (v23 == *(a3 + 8))
        {
          *(*a3 + 4 * *(a3 + 12)) = *WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v23 + 1, &v30);
        }

        else
        {
          *(*a3 + 4 * v23) = v30;
        }

        v23 = *(a3 + 12) + 1;
        *(a3 + 12) = v23;
        v22 = (v22 + 2);
        v24 -= 2;
      }

      while (v24);
      v22 = v36;
      if (HIDWORD(v37))
      {
        v25 = 2 * HIDWORD(v37);
        while (1)
        {
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*v22];
          v27 = [v5 objectForKey:v26];

          v28 = addInitializersForTrie(v27, a2, a3);
          if (*(a3 + 12) <= v17)
          {
            break;
          }

          *(*a3 + 4 * v17 + 2) = v28;

          LOWORD(v17) = v17 + 1;
          v22 = (v22 + 2);
          v25 -= 2;
          if (!v25)
          {
            v22 = v36;
            goto LABEL_30;
          }
        }

        __break(0xC471u);
LABEL_35:
        JUMPOUT(0x1BB76A8E0);
      }
    }

LABEL_30:
    if (v22)
    {
      v36 = 0;
      LODWORD(v37) = 0;
      WTF::fastFree(v22, v16);
    }
  }

  else
  {
    LOWORD(v6) = -1;
  }

  return v6;
}

void sub_1BB76A8EC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19, int a20)
{
  if (a19)
  {
    WTF::fastFree(a19, a2);
  }

  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 2 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 31))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((2 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 2 * v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 4 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 30))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((4 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 4 * v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    if (v4)
    {
      v8 = 40 * v4;
      v9 = v3;
      do
      {
        v10 = *v9;
        v11 = *(v9 + 1);
        *(v6 + 32) = *(v9 + 4);
        *v6 = v10;
        *(v6 + 16) = v11;
        v6 += 40;
        v9 = (v9 + 40);
        v8 -= 40;
      }

      while (v8);
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unsigned int *WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA::State,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v2 = result;
    if (result[3] > a2)
    {
      result[3] = a2;
    }

    result = *result;
    if (a2)
    {
      v2[2] = a2;
      result = WTF::fastRealloc(result, (4 * a2));
      *v2 = result;
    }

    else if (result)
    {
      *v2 = 0;
      v2[2] = 0;

      return WTF::fastFree(result, 0);
    }
  }

  return result;
}

uint64_t WTF::Vector<SafariShared::FieldLabelPatternMatcher::DFA,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v3) = a2;
    }

    v4 = *result;
    if (a2)
    {
      if (a2 >= 0x6666667)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 8) = v5 / 0x28;
      *v2 = result;
      if (result != v4 && v3)
      {
        v6 = 40 * v3;
        v7 = v4;
        do
        {
          v8 = *v7;
          v9 = *(v7 + 1);
          *(result + 32) = *(v7 + 4);
          *result = v8;
          *(result + 16) = v9;
          result += 40;
          v7 = (v7 + 40);
          v6 -= 40;
        }

        while (v6);
      }
    }

    if (v4)
    {
      if (*v2 == v4)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1BB76C550(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v6, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_1BB76CC5C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_1BB76D088(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_1BB76DD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_1BB76DE20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_1BB76EC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

void OUTLINED_FUNCTION_2_3(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

double formRect(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [a1 controls];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [v10 frame];
        if (!CGRectIsEmpty(v27))
        {
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          IsEmpty = CGRectIsEmpty(v28);
          [v10 frame];
          v16 = v12;
          v17 = v13;
          v18 = v14;
          v19 = v15;
          if (IsEmpty)
          {
            height = v15;
            width = v14;
            y = v13;
            x = v12;
          }

          else
          {
            v29.origin.x = x;
            v29.origin.y = y;
            v29.size.width = width;
            v29.size.height = height;
            v30 = CGRectUnion(v29, *&v16);
            x = v30.origin.x;
            y = v30.origin.y;
            width = v30.size.width;
            height = v30.size.height;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  return x;
}

id sanitizedMetadata(void *a1)
{
  v9 = MEMORY[0x1E695DFD8];
  v1 = a1;
  v2 = [v9 setWithObjects:{@"ControlUniqueID", @"ControlRectHeight", @"ControlRectLeft", @"ControlRectTop", @"ControlRectWidth", @"ContainsActiveElement", @"ControlIsActiveElement", @"ControlIsAutoFilledTextField", @"FormAction", @"ControlNextFieldUniqueID", @"ControlAutoFillButtonType", @"ControlLastAutoFillButtonType", @"ControlNodePath", 0}];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __sanitizedMetadata_block_invoke;
  v10[3] = &unk_1E7FC5B88;
  v11 = v2;
  v4 = v3;
  v12 = v4;
  v5 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = v12;
  v7 = v4;

  return v4;
}

void __sanitizedFormMetadata_block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  if (v7)
  {
    v8 = a1[5];
    v9 = a1[6];
    v10 = v6;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__12;
    v27 = __Block_byref_object_dispose__12;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __controlDescription_block_invoke;
    v15[3] = &unk_1E7FC5BB0;
    v11 = v10;
    v16 = v11;
    v17 = &v23;
    v18 = &v19;
    [v9 enumerateObjectsUsingBlock:v15];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v24[5] safari_stringForKey:@"ControlFieldName"];
    v14 = [v12 stringWithFormat:@"<ControlFieldName '%@', control index %lu>", v13, v20[3]];

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);

    [v8 setObject:v14 forKey:v7];
    [a1[5] removeObjectForKey:v5];
  }
}

void sub_1BB7701E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __sanitizedMetadata_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v9] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DFB0] null];

    if (v6 != v5)
    {
      if ([v9 isEqualToString:@"AutoFillFormType"])
      {
        [(__CFString *)v5 doubleValue];
        if (v7 >= 6)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Invalid WBSAutoFillFormType %d>", v7];
        }

        else
        {
          v8 = off_1E7FC5BD0[v7];
        }

        v5 = v8;
      }

      [*(a1 + 40) setObject:v5 forKey:v9];
    }
  }
}

void __controlDescription_block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 safari_stringForKey:@"ControlUniqueID"];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __setUpEncodingClasses_block_invoke()
{
  nsArrayClass = objc_opt_class();
  nsNumberClass = objc_opt_class();
  nsStringClass = objc_opt_class();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{nsStringClass, objc_opt_class(), 0}];
  v1 = nsStringClassSet;
  nsStringClassSet = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  v7 = stringDictionaryClasses;
  stringDictionaryClasses = v6;

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
  v13 = stringArrayClasses;
  stringArrayClasses = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  v21 = stringArrayDictionaryClasses;
  stringArrayDictionaryClasses = v20;

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
  v28 = selectElementInfoClasses;
  selectElementInfoClasses = v27;

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v29 setWithObjects:{v30, v31, v32, v33, objc_opt_class(), 0}];
  v35 = urlArrayDictionaryClasses;
  urlArrayDictionaryClasses = v34;

  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, nsArrayClass, nsStringClass, nsNumberClass, objc_opt_class(), 0}];
  v39 = nodePathClasses;
  nodePathClasses = v38;
}

void __getPropertyMap_block_invoke()
{
  nsArrayClass = objc_opt_class();
  nsDictionaryClass = objc_opt_class();
  nsNumberClass = objc_opt_class();
  nsStringClass = objc_opt_class();
  nsURLClass = objc_opt_class();
  v0 = objc_opt_class();
  v52 = [MEMORY[0x1E695DF90] dictionary];
  v1 = objc_alloc_init(WBSFormControlMetadataProperty);
  v1->type = 0;
  *&v1->flagMask.flags |= 1u;
  [v52 setObject:v1 forKeyedSubscript:@"DisallowsAutocomplete"];

  v2 = objc_alloc_init(WBSFormControlMetadataProperty);
  v2->type = 0;
  *&v2->flagMask.flags |= 2u;
  [v52 setObject:v2 forKeyedSubscript:@"ControlClaimsToBeCurrentPasswordViaAutocompleteAttribute"];

  v3 = objc_alloc_init(WBSFormControlMetadataProperty);
  v3->type = 0;
  *&v3->flagMask.flags |= 4u;
  [v52 setObject:v3 forKeyedSubscript:@"ControlClaimsToBeNewPasswordViaAutocompleteAttribute"];

  v4 = objc_alloc_init(WBSFormControlMetadataProperty);
  v4->type = 0;
  *&v4->flagMask.flags |= 8u;
  [v52 setObject:v4 forKeyedSubscript:@"ControlClaimsToBeUsernameViaAutocompleteAttribute"];

  v5 = objc_alloc_init(WBSFormControlMetadataProperty);
  v5->type = 0;
  *&v5->flagMask.flags |= 0x10u;
  [v52 setObject:v5 forKeyedSubscript:@"ControlLooksLikeOneTimeCodeField"];

  v6 = objc_alloc_init(WBSFormControlMetadataProperty);
  v6->type = 0;
  *&v6->flagMask.flags |= 0x20u;
  [v52 setObject:v6 forKeyedSubscript:@"OneTimeCodeIsEligibleForAutomaticLogin"];

  v7 = objc_alloc_init(WBSFormControlMetadataProperty);
  v7->type = 0;
  *&v7->flagMask.flags |= 0x40u;
  [v52 setObject:v7 forKeyedSubscript:@"IsVisible"];

  v8 = objc_alloc_init(WBSFormControlMetadataProperty);
  v8->type = 0;
  *&v8->flagMask.flags |= 0x80u;
  [v52 setObject:v8 forKeyedSubscript:@"ControlIsActiveElement"];

  v9 = objc_alloc_init(WBSFormControlMetadataProperty);
  v9->type = 0;
  *&v9->flagMask.flags |= 0x100u;
  [v52 setObject:v9 forKeyedSubscript:@"ControlIsDisabled"];

  v10 = objc_alloc_init(WBSFormControlMetadataProperty);
  v10->type = 0;
  *&v10->flagMask.flags |= 0x200u;
  [v52 setObject:v10 forKeyedSubscript:@"ControlIsReadOnly"];

  v11 = objc_alloc_init(WBSFormControlMetadataProperty);
  v11->type = 0;
  *&v11->flagMask.flags |= 0x400u;
  [v52 setObject:v11 forKeyedSubscript:@"ControlIsTextField"];

  v12 = objc_alloc_init(WBSFormControlMetadataProperty);
  v12->type = 0;
  *&v12->flagMask.flags |= 0x800u;
  [v52 setObject:v12 forKeyedSubscript:@"ControlIsSecureTextField"];

  v13 = objc_alloc_init(WBSFormControlMetadataProperty);
  v13->type = 0;
  *&v13->flagMask.flags |= 0x1000u;
  [v52 setObject:v13 forKeyedSubscript:@"ControlIsAutoFilledTextField"];

  v14 = objc_alloc_init(WBSFormControlMetadataProperty);
  v14->type = 0;
  *&v14->flagMask.flags |= 0x2000u;
  [v52 setObject:v14 forKeyedSubscript:@"ControlIsUserEditedTextField"];

  v15 = objc_alloc_init(WBSFormControlMetadataProperty);
  v15->type = 0;
  *&v15->flagMask.flags |= 0x4000u;
  [v52 setObject:v15 forKeyedSubscript:@"ControlIsLabeledUsernameField"];

  v16 = objc_alloc_init(WBSFormControlMetadataProperty);
  v16->type = 0;
  *&v16->flagMask.flags |= 0x8000u;
  [v52 setObject:v16 forKeyedSubscript:@"ControlIsVerticalWritingMode"];

  v17 = objc_alloc_init(WBSFormControlMetadataProperty);
  v17->type = 0;
  *&v17->flagMask.flags |= 0x10000u;
  [v52 setObject:v17 forKeyedSubscript:@"ControlLooksLikeCreditCardCardholderField"];

  v18 = objc_alloc_init(WBSFormControlMetadataProperty);
  v18->type = 0;
  *&v18->flagMask.flags |= 0x20000u;
  [v52 setObject:v18 forKeyedSubscript:@"ControlLooksLikeCreditCardCompositeExpirationDateField"];

  v19 = objc_alloc_init(WBSFormControlMetadataProperty);
  v19->type = 0;
  *&v19->flagMask.flags |= 0x40000u;
  [v52 setObject:v19 forKeyedSubscript:@"ControlLooksLikeCreditCardNumberField"];

  v20 = objc_alloc_init(WBSFormControlMetadataProperty);
  v20->type = 0;
  *&v20->flagMask.flags |= 0x80000u;
  [v52 setObject:v20 forKeyedSubscript:@"ControlLooksLikeCreditCardSecurityCodeField"];

  v21 = objc_alloc_init(WBSFormControlMetadataProperty);
  v21->type = 0;
  *&v21->flagMask.flags |= 0x100000u;
  [v52 setObject:v21 forKeyedSubscript:@"ControlLooksLikeCreditCardTypeField"];

  v22 = objc_alloc_init(WBSFormControlMetadataProperty);
  v22->type = 0;
  *&v22->flagMask.flags |= 0x200000u;
  [v52 setObject:v22 forKeyedSubscript:@"ControlLooksLikeEIDField"];

  v23 = objc_alloc_init(WBSFormControlMetadataProperty);
  v23->type = 0;
  *&v23->flagMask.flags |= 0x400000u;
  [v52 setObject:v23 forKeyedSubscript:@"ControlLooksLikeIMEIField"];

  v24 = objc_alloc_init(WBSFormControlMetadataProperty);
  v24->type = 0;
  *&v24->flagMask.flags |= 0x800000u;
  [v52 setObject:v24 forKeyedSubscript:@"ControlLooksLikeDayField"];

  v25 = objc_alloc_init(WBSFormControlMetadataProperty);
  v25->type = 0;
  *&v25->flagMask.flags |= 0x1000000u;
  [v52 setObject:v25 forKeyedSubscript:@"ControlLooksLikeMonthField"];

  v26 = objc_alloc_init(WBSFormControlMetadataProperty);
  v26->type = 0;
  *&v26->flagMask.flags |= 0x2000000u;
  [v52 setObject:v26 forKeyedSubscript:@"ControlLooksLikeYearField"];

  v27 = objc_alloc_init(WBSFormControlMetadataProperty);
  v27->type = 0;
  *&v27->flagMask.flags |= 0x4000000u;
  [v52 setObject:v27 forKeyedSubscript:@"ControlLooksLikeIgnoredDataTypeField"];

  v28 = objc_alloc_init(WBSFormControlMetadataProperty);
  v28->type = 0;
  *&v28->flagMask.flags |= 0x8000000u;
  [v52 setObject:v28 forKeyedSubscript:@"ControlLooksLikePasswordCredentialField"];

  v29 = objc_alloc_init(WBSFormControlMetadataProperty);
  v29->type = 1;
  v29->ivar = class_getInstanceVariable(v0, "_addressBookLabel");
  [v52 setObject:v29 forKeyedSubscript:@"AddressBookLabel"];

  v30 = objc_alloc_init(WBSFormControlMetadataProperty);
  v30->type = 1;
  v30->ivar = class_getInstanceVariable(v0, "_associatedUsername");
  [v52 setObject:v30 forKeyedSubscript:@"ControlAssociatedUsername"];

  v31 = objc_alloc_init(WBSFormControlMetadataProperty);
  v31->type = 1;
  v31->ivar = class_getInstanceVariable(v0, "_fieldClass");
  [v52 setObject:v31 forKeyedSubscript:@"ControlFieldClass"];

  v32 = objc_alloc_init(WBSFormControlMetadataProperty);
  v32->type = 1;
  v32->ivar = class_getInstanceVariable(v0, "_fieldID");
  [v52 setObject:v32 forKeyedSubscript:@"ControlFieldID"];

  v33 = objc_alloc_init(WBSFormControlMetadataProperty);
  v33->type = 1;
  v33->ivar = class_getInstanceVariable(v0, "_fieldName");
  [v52 setObject:v33 forKeyedSubscript:@"ControlFieldName"];

  v34 = objc_alloc_init(WBSFormControlMetadataProperty);
  v34->type = 1;
  v34->ivar = class_getInstanceVariable(v0, "_tagName");
  [v52 setObject:v34 forKeyedSubscript:@"ControlTagName"];

  v35 = objc_alloc_init(WBSFormControlMetadataProperty);
  v35->type = 1;
  v35->ivar = class_getInstanceVariable(v0, "_uniqueID");
  [v52 setObject:v35 forKeyedSubscript:@"ControlUniqueID"];

  v36 = objc_alloc_init(WBSFormControlMetadataProperty);
  v36->type = 1;
  v36->ivar = class_getInstanceVariable(v0, "_nextControlUniqueID");
  [v52 setObject:v36 forKeyedSubscript:@"ControlNextFieldUniqueID"];

  v37 = objc_alloc_init(WBSFormControlMetadataProperty);
  v37->type = 1;
  v37->ivar = class_getInstanceVariable(v0, "_placeholder");
  [v52 setObject:v37 forKeyedSubscript:@"ControlPlaceholder"];

  v38 = objc_alloc_init(WBSFormControlMetadataProperty);
  v38->type = 1;
  v38->ivar = class_getInstanceVariable(v0, "_value");
  [v52 setObject:v38 forKeyedSubscript:@"ControlValue"];

  v39 = objc_alloc_init(WBSFormControlMetadataProperty);
  v39->type = 1;
  v39->ivar = class_getInstanceVariable(v0, "_passwordRules");
  [v52 setObject:v39 forKeyedSubscript:@"ControlPasswordRules"];

  v40 = objc_alloc_init(WBSFormControlMetadataProperty);
  v40->type = 1;
  v40->ivar = class_getInstanceVariable(v0, "_requiredFormatForDateTimeInput");
  [v52 setObject:v40 forKeyedSubscript:@"ControlRequiredFormatForDateTimeInput"];

  v41 = objc_alloc_init(WBSFormControlMetadataProperty);
  v41->type = 1;
  v41->ivar = class_getInstanceVariable(v0, "_classification");
  [v52 setObject:v41 forKeyedSubscript:@"ControlClassification"];

  v42 = objc_alloc_init(WBSFormControlMetadataProperty);
  v42->type = 2;
  v42->ivar = class_getInstanceVariable(v0, "_annotations");
  v42->processObject = processAnnotations;
  [v52 setObject:v42 forKeyedSubscript:@"Annotations"];

  v43 = objc_alloc_init(WBSFormControlMetadataProperty);
  v43->type = 2;
  v43->ivar = class_getInstanceVariable(v0, "_autocompleteTokens");
  v43->processObject = processArrayOfStrings;
  [v52 setObject:v43 forKeyedSubscript:@"AutocompleteTokens"];

  v44 = objc_alloc_init(WBSFormControlMetadataProperty);
  v44->type = 2;
  v44->ivar = class_getInstanceVariable(v0, "_radioButtonInfo");
  v44->processObject = processRadioButtonInfo;
  [v52 setObject:v44 forKeyedSubscript:@"RadioButtonInfo"];

  v45 = objc_alloc_init(WBSFormControlMetadataProperty);
  v45->type = 2;
  v45->ivar = class_getInstanceVariable(v0, "_selectElementInfo");
  v45->processObject = processSelectElementInfo;
  [v52 setObject:v45 forKeyedSubscript:@"SelectElementInfo"];

  v46 = objc_alloc_init(WBSFormControlMetadataProperty);
  v46->type = 2;
  v46->ivar = class_getInstanceVariable(v0, "_ancestorFrameURLs");
  v46->processObject = processArrayOfURLs;
  [v52 setObject:v46 forKeyedSubscript:@"AncestorFrameURLs"];

  v47 = objc_alloc_init(WBSFormControlMetadataProperty);
  v47->type = 2;
  v47->ivar = class_getInstanceVariable(v0, "_orderedParts");
  v47->processObject = processArrayOfStrings;
  [v52 setObject:v47 forKeyedSubscript:@"ControlOrderedParts"];

  v48 = objc_alloc_init(WBSFormControlMetadataProperty);
  v48->type = 2;
  v48->ivar = class_getInstanceVariable(v0, "_classificationHints");
  v48->processObject = processArrayOfStrings;
  [v52 setObject:v48 forKeyedSubscript:@"ControlClassificationHints"];

  v49 = objc_alloc_init(WBSFormControlMetadataProperty);
  v49->type = 2;
  v49->ivar = class_getInstanceVariable(v0, "_nodePath");
  v49->processObject = processNodePath;
  [v52 setObject:v49 forKeyedSubscript:@"ControlNodePath"];

  v50 = [v52 copy];
  v51 = getPropertyMap_map;
  getPropertyMap_map = v50;
}

id processAnnotations(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_514];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id processArrayOfStrings(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_517];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id processRadioButtonInfo(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_519];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id processSelectElementInfo(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_521];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id processArrayOfURLs(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_523];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id processNodePath(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __processAnnotations_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __processRadioButtonInfo_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = processArrayOfStrings(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __processSelectElementInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 count] == 2)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      if (objc_opt_isKindOfClass())
      {
        v5 = 1;
        v6 = [v3 objectAtIndexedSubscript:1];
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v5 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void sub_1BB775874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = WBSFormDataController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t timestampForCompletionValues(NSArray *a1)
{
  v1 = [(NSArray *)a1 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 intValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t languageOfTextIsChinese(NSString *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 length])
  {
    v2 = [(__CFString *)v1 safari_bestLanguageTag];
    if (![v2 length])
    {
      v6.length = [(__CFString *)v1 length];
      v6.location = 0;
      v3 = CFStringTokenizerCopyBestStringLanguage(v1, v6);

      v2 = v3;
    }

    if ([v2 isEqualToString:@"zh-Hant"])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v2 isEqualToString:@"zh-Hans"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL identifyDateFields(void *a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v20 + 1) + 8 * v8);
      v10 = [v9 orderedParts];
      v11 = [v10 count] == 1;

      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = [v9 orderedParts];
      v13 = [v12 firstObject];

      if (WBSIsEqual())
      {
        break;
      }

      if (WBSIsEqual())
      {
        v14 = a3;
LABEL_14:
        if (*v14)
        {
LABEL_22:

          v16 = 0;
          goto LABEL_23;
        }

LABEL_15:
        v15 = v9;
        *v14 = v9;
        goto LABEL_16;
      }

      if (WBSIsEqual())
      {
        v14 = a4;
        goto LABEL_14;
      }

LABEL_16:

LABEL_17:
      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v14 = a2;
    if (*a2)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_19:

  v16 = *a2 || *a3 || *a4 != 0;
LABEL_23:

  return v16;
}

uint64_t stringContainsDateComponentValue(void *a1, int a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [v5 integerValue];
  if (v7 == dateComponentValue(a2, v6))
  {
    v8 = 1;
  }

  else
  {
    v9 = 0x1E695D000uLL;
    v10 = [MEMORY[0x1E695DF58] safari_localeIdentifiersForMostWidelyUsedLanguages];
    v11 = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [v11 localeIdentifier];
    v13 = [v10 setByAddingObject:v12];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v26 = *v32;
      do
      {
        v25 = v15;
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v14);
          }

          v17 = [*(v9 + 3928) localeWithLocaleIdentifier:{*(*(&v31 + 1) + 8 * i), v25}];
          v18 = dateComponentSynonyms(a2, v6);

          v19 = v9;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v21)
          {
            v22 = *v28;
            while (2)
            {
              v23 = 0;
              do
              {
                if (*v28 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                if (![*(*(&v27 + 1) + 8 * v23) caseInsensitiveCompare:v5])
                {

                  v8 = 1;
                  goto LABEL_21;
                }

                ++v23;
              }

              while (v21 != v23);
              v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v9 = v19;
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v8 = 0;
      }

      while (v15);
    }

    else
    {
      v8 = 0;
    }

LABEL_21:
  }

  return v8;
}

void sub_1BB779EF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB77B948(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id phoneNumberWithoutFormatting(NSString *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD48]);
  [v2 addCharactersInString:{@"-., () /"}];
  [v2 addCharactersInRange:{160, 1}];
  v3 = [(NSString *)v1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 componentsJoinedByString:&stru_1F3A5E418];

  return v4;
}

void sub_1BB77BA28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

NSString *unprefixedPhoneNumber(NSString *a1)
{
  v1 = a1;
  v2 = PNCreateFormattedStringWithCountry();
  if ([(NSString *)v2 length])
  {
    v3 = phoneNumberWithoutFormatting(v2);
  }

  else
  {
    if ([(NSString *)v1 hasPrefix:@"011"])
    {
      v4 = [(NSString *)v1 substringFromIndex:3];
      v5 = phoneNumberWithoutFormatting(v4);
    }

    else
    {
      if (![(NSString *)v1 hasPrefix:@"1"])
      {
        goto LABEL_9;
      }

      v4 = [(NSString *)v1 substringFromIndex:1];
      v5 = phoneNumberWithoutFormatting(v4);
    }

    v3 = v5;
  }

  v1 = v3;
LABEL_9:

  return v1;
}

BOOL fillSingleFieldValue(NSMutableDictionary *a1, NSString *a2, WBSFormControlMetadata *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(WBSFormControlMetadata *)v7 maxLength];
  v9 = [(NSString *)v6 length];
  if (v8 >= v9)
  {
    recordValueForTextField(v5, v6, v7);
  }

  return v8 >= v9;
}

uint64_t valueFitsInFields(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 length];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) maxLength];
        v10 = v4 > v9;
        v4 -= v9;
        if (!v10)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = 0;
LABEL_11:

  return v11;
}

void fillMultiFieldValue(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v7 = a2;
  v8 = a3;
  v20 = a4;
  v9 = [v7 length];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(WBSFormControlMetadata *)v13 uniqueID];
        if (v9)
        {
          v15 = [(WBSFormControlMetadata *)v13 maxLength];
          v16 = v15;
          if (v15 >= v9)
          {
            v17 = v9;
          }

          else
          {
            v17 = v15;
          }

          v18 = [v7 substringToIndex:v17];
          recordValueForTextField(v22, v18, v13);

          if (v9 <= v16)
          {
            v9 -= v17;
          }

          else
          {
            v19 = [v7 substringFromIndex:v17];

            v9 -= v17;
            v7 = v19;
          }
        }

        else
        {
          [v20 addControlUniqueIDIgnoredByFollowUpAutoFill:v14];
          v9 = 0;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

uint64_t fillDateUsingClassification(void *a1, void *a2, unint64_t a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v32 = allControlsContinuationStartingAtIndex(a2, a3);
  if (v8)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v32;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (!v10)
    {
      goto LABEL_26;
    }

    v12 = *v36;
    *&v11 = 138543618;
    v31 = v11;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = [(WBSFormControlMetadata *)v14 requiredFormatForDateTimeInput];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v18 = [(WBSFormControlMetadata *)v14 requiredFormatForDateTimeInput];
          [v17 setDateFormat:v18];

          v19 = [v17 stringFromDate:v8];
          recordValueForTextField(v7, v19, v14);

          goto LABEL_20;
        }

        v20 = [(WBSFormControlMetadata *)v14 orderedParts];
        v21 = [v20 count] == 1;

        if (v21)
        {
          v22 = [(WBSFormControlMetadata *)v14 orderedParts];
          v23 = [v22 firstObject];

          if (WBSIsEqual())
          {
            v24 = 1;
            goto LABEL_18;
          }

          if (WBSIsEqual())
          {
            v24 = 0;
            goto LABEL_18;
          }

          if (WBSIsEqual())
          {
            v24 = 2;
LABEL_18:
            recordValueForDateField(v7, v24, v8, v14);
          }

          else
          {
            v26 = WBS_LOG_CHANNEL_PREFIXAutoFill();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = [(WBSFormControlMetadata *)v14 classification];
              *buf = v31;
              v40 = v23;
              v41 = 2114;
              v42 = v27;
              _os_log_error_impl(&dword_1BB6F3000, v26, OS_LOG_TYPE_ERROR, "Unrecognized part %{public}@ for classification %{public}@", buf, 0x16u);
            }
          }

          goto LABEL_20;
        }

        v25 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          fillDateUsingClassification(&v33, v34, v25);
        }

LABEL_20:
        ++v13;
      }

      while (v10 != v13);
      v28 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
      v10 = v28;
      if (!v28)
      {
LABEL_26:

        break;
      }
    }
  }

  v29 = [v32 count];

  return v29;
}