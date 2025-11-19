@interface BRCTapToRadarManager
- (BRCTapToRadarManager)initWithNamedThrottleManager:(id)a3;
- (id)_ttrThrottlingRulesForIdentifier:(id)a3;
- (void)requestTapToRadarWithTitle:(id)a3 description:(id)a4 componentName:(id)a5 componentVersion:(id)a6 componentID:(int64_t)a7 keywords:(id)a8 attachments:(id)a9 sendFullLog:(BOOL)a10 displayReason:(id)a11 triggerRootCause:(id)a12 additionalDevices:(id)a13 completionHandler:(id)a14;
@end

@implementation BRCTapToRadarManager

- (BRCTapToRadarManager)initWithNamedThrottleManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = BRCTapToRadarManager;
  v6 = [(BRCTapToRadarManager *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.clouddocs.ttr-queue", v8);

    executionQueue = v6->_executionQueue;
    v6->_executionQueue = v9;

    objc_storeStrong(&v6->_namedThrottleManager, a3);
  }

  return v6;
}

- (id)_ttrThrottlingRulesForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 weeklyThrottledErrorsForTTR];
  v6 = [v5 containsObject:v3];

  if (v6)
  {
    [v4 tapToRadarWeeklyThrottleRules];
  }

  else
  {
    [v4 tapToRadarDailyThrottleRules];
  }
  v7 = ;

  return v7;
}

- (void)requestTapToRadarWithTitle:(id)a3 description:(id)a4 componentName:(id)a5 componentVersion:(id)a6 componentID:(int64_t)a7 keywords:(id)a8 attachments:(id)a9 sendFullLog:(BOOL)a10 displayReason:(id)a11 triggerRootCause:(id)a12 additionalDevices:(id)a13 completionHandler:(id)a14
{
  v40 = a3;
  v43 = a4;
  v41 = a5;
  v42 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  if (a14)
  {
    v24 = a14;
  }

  else
  {
    v24 = &__block_literal_global_31;
  }

  v25 = MEMORY[0x22AA4A310](v24);
  if ([MEMORY[0x277CFAEB0] isInternalBuild])
  {
    [BRCUserDefaults generateThrottleTTRIdentifiersForTriggerRootCause:v22];
    v27 = v26 = v22;
    namedThrottleManager = self->_namedThrottleManager;
    v28 = [objc_opt_class() description];
    v29 = [(BRCTapToRadarManager *)self _ttrThrottlingRulesForIdentifier:v27];
    executionQueue = self->_executionQueue;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_14;
    v44[3] = &unk_2785032A0;
    v54 = v25;
    v45 = v41;
    v46 = v27;
    v30 = v40;
    v47 = v40;
    v48 = v43;
    v49 = v42;
    v55 = a7;
    v56 = a10;
    v50 = v19;
    v51 = v20;
    v52 = v23;
    v53 = v21;
    v31 = v27;
    v22 = v26;
    v32 = v31;
    [(BRCNamedThrottleManager *)namedThrottleManager throttle:v28 subCategory:v31 withRules:v29 onQueue:executionQueue block:v44];
  }

  else
  {
    v39 = v23;
    v33 = v21;
    v30 = v40;
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [BRCTapToRadarManager requestTapToRadarWithTitle:description:componentName:componentVersion:componentID:keywords:attachments:sendFullLog:displayReason:triggerRootCause:additionalDevices:completionHandler:];
    }

    v32 = [MEMORY[0x277CCA9B8] brc_errorNotSupportedInCustomerBuild];
    (v25)[2](v25, v32);
    v21 = v33;
    v23 = v39;
  }
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_14_cold_1();
    }

    (*(*(a1 + 104) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_16;
    v11[3] = &unk_278503278;
    v20 = *(a1 + 104);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    v8 = *(a1 + 64);
    v9 = *(a1 + 112);
    v15 = v8;
    v21 = v9;
    v22 = *(a1 + 120);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = *(a1 + 96);
    v10 = [BRCloudTelemetryTTRDecisionRequest requestWithSenderID:v6 ruleID:v7 completionHandler:v11];
    [v10 resume];
  }
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_16(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    if (a2)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_16_cold_2();
      }

      if (getRadarDraftClass() && getRadarComponentClass() && getTapToRadarServiceClass())
      {
        getRadarDraftClass();
        v10 = objc_opt_new();
        [v10 setTitle:*(a1 + 32)];
        [v10 setProblemDescription:*(a1 + 40)];
        [v10 setClassification:2];
        [v10 setReproducibility:6];
        v11 = [objc_alloc(getRadarComponentClass()) initWithName:*(a1 + 48) version:*(a1 + 56) identifier:*(a1 + 104)];
        [v10 setComponent:v11];

        if (*(a1 + 112))
        {
          v12 = 6;
        }

        else
        {
          v12 = 0;
        }

        [v10 setAutoDiagnostics:v12];
        [v10 setIsUserInitiated:0];
        [v10 setKeywords:*(a1 + 64)];
        [v10 setAttachments:*(a1 + 72)];
        [v10 setDeleteOnAttach:1];
        if (*(a1 + 80))
        {
          [v10 setDeviceIDs:?];
        }

        v13 = [(objc_class *)getTapToRadarServiceClass() shared];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_26;
        v20[3] = &unk_278501F20;
        v14 = *(a1 + 88);
        v21 = *(a1 + 96);
        [v13 createDraft:v10 forProcessNamed:@"iCloud Drive" withDisplayReason:v14 completionHandler:v20];

        goto LABEL_22;
      }

      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed gathering TapToRadarKit%@", buf, 0xCu);
      }

      v15 = *(a1 + 96);
      v16 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Failed gathering TapToRadarKit"];
    }

    else
    {
      v15 = *(a1 + 96);
      v16 = [MEMORY[0x277CCA9B8] brc_errorThrottledWithDescription:@"Throttled by cloud telemetry"];
    }

    v10 = v16;
    (*(v15 + 16))(v15, v16);
LABEL_22:

    goto LABEL_23;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_16_cold_1();
  }

  (*(*(a1 + 96) + 16))();
LABEL_23:

  v19 = *MEMORY[0x277D85DE8];
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Tap to radar returned error: (%@)%@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_26_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestTapToRadarWithTitle:description:componentName:componentVersion:componentID:keywords:attachments:sendFullLog:displayReason:triggerRootCause:additionalDevices:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Not internal build, ignoring tap to radar request%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_14_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Tap To Radar was throttled%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_16_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] TTR Server Decision failed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_16_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Creating a radar draft request%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __206__BRCTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_sendFullLog_displayReason_triggerRootCause_additionalDevices_completionHandler___block_invoke_26_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Tap to radar returned successfuly%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end