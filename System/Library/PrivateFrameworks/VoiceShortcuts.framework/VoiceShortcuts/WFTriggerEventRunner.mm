@interface WFTriggerEventRunner
- (BOOL)isRunningWorkflowWithIdentifier:(id)a3;
- (BOOL)startRunningWorkflow:(id)a3 forTrigger:(id)a4 eventInfo:(id)a5;
- (WFTriggerEventRunner)initWithDatabaseProvider:(id)a3 delegate:(id)a4;
- (void)logPowerLogEventForConfiguredTrigger:(id)a3 workflowReference:(id)a4;
@end

@implementation WFTriggerEventRunner

- (void)logPowerLogEventForConfiguredTrigger:(id)a3 workflowReference:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v37 = a4;
  if (!v36)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFTriggerEventRunner.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  v7 = MEMORY[0x277CBEB98];
  v46[0] = @"name";
  v46[1] = @"actions";
  v46[2] = @"associatedAppBundleIdentifier";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v35 = [v7 setWithArray:v8];

  v9 = [(WFTriggerEventRunner *)self databaseProvider];
  v39 = 0;
  v10 = [v9 databaseWithError:&v39];
  v11 = v39;

  if (v10)
  {
    v38 = v11;
    v12 = [v10 recordWithDescriptor:v37 properties:v35 error:&v38];
    v34 = v38;

    if (v12)
    {
      v44[0] = @"WFTriggerKind";
      v13 = MEMORY[0x277D7C970];
      v33 = [v36 trigger];
      v32 = [v13 powerLogEventKindForTrigger:v33];
      v45[0] = v32;
      v44[1] = @"WFActionCount";
      v14 = MEMORY[0x277CCABB0];
      v15 = [v12 actions];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      v45[1] = v16;
      v44[2] = @"WFTriggerID";
      v17 = [v36 identifier];
      v45[2] = v17;
      v44[3] = @"WFWorkflowID";
      v18 = [v37 identifier];
      v45[3] = v18;
      v44[4] = @"WFWorkflowName";
      v19 = [v12 name];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_2845DDD10;
      }

      v45[4] = v21;
      v44[5] = @"WFAssociatedAppIdentifier";
      v22 = [v12 associatedAppBundleIdentifier];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = &stru_2845DDD10;
      }

      v45[5] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:6];

      v26 = getWFTriggersLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[WFTriggerEventRunner logPowerLogEventForConfiguredTrigger:workflowReference:]";
        *&buf[12] = 2114;
        *&buf[14] = @"ShortcutsTriggerFired";
        *&buf[22] = 2112;
        v48 = v25;
        _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_DEBUG, "%s Logging PowerLog event: %{public}@ (%@)", buf, 0x20u);
      }

      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v27 = getPLLogTimeSensitiveRegisteredEventSymbolLoc_ptr;
      v43 = getPLLogTimeSensitiveRegisteredEventSymbolLoc_ptr;
      if (!getPLLogTimeSensitiveRegisteredEventSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPLLogTimeSensitiveRegisteredEventSymbolLoc_block_invoke;
        v48 = &unk_2788FFE98;
        v49 = &v40;
        __getPLLogTimeSensitiveRegisteredEventSymbolLoc_block_invoke(buf);
        v27 = v41[3];
      }

      _Block_object_dispose(&v40, 8);
      if (!v27)
      {
        v30 = [MEMORY[0x277CCA890] currentHandler];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void softPLLogTimeSensitiveRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"}];
        [v30 handleFailureInFunction:v31 file:@"WFTriggerEventRunner.m" lineNumber:28 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v27(38, @"ShortcutsTriggerFired", v25, 0);
    }

    else
    {
      v25 = getWFTriggersLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[WFTriggerEventRunner logPowerLogEventForConfiguredTrigger:workflowReference:]";
        *&buf[12] = 2112;
        *&buf[14] = v37;
        *&buf[22] = 2114;
        v48 = v34;
        _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Failed to get workflow record for reference (%@): %{public}@", buf, 0x20u);
      }
    }

    v11 = v34;
  }

  else
  {
    v12 = getWFTriggersLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[WFTriggerEventRunner logPowerLogEventForConfiguredTrigger:workflowReference:]";
      *&buf[12] = 2112;
      *&buf[14] = v37;
      *&buf[22] = 2114;
      v48 = v11;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get workflow record for reference (%@) because database could not be loaded: %{public}@", buf, 0x20u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRunningWorkflowWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerEventRunner *)self inProgressRunnerClient];
  v6 = [v5 descriptor];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)startRunningWorkflow:(id)a3 forTrigger:(id)a4 eventInfo:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v47 = [MEMORY[0x277CCA890] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"WFTriggerEventRunner.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  v12 = [v9 identifier];
  LODWORD(v13) = [(WFTriggerEventRunner *)self isRunningWorkflowWithIdentifier:v12];

  v14 = getWFTriggersLogObject();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = [(WFTriggerEventRunner *)self inProgressTrigger];
      v17 = [v16 trigger];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v10 trigger];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 136315650;
      v53 = "[WFTriggerEventRunner startRunningWorkflow:forTrigger:eventInfo:]";
      v54 = 2112;
      v55 = v19;
      v56 = 2112;
      v57 = v22;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_FAULT, "%s An automation is already running (%@), so we can't run this newly-triggered one (%@).", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v10 trigger];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 136315650;
      v53 = "[WFTriggerEventRunner startRunningWorkflow:forTrigger:eventInfo:]";
      v54 = 2112;
      v55 = v10;
      v56 = 2114;
      v57 = v25;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s 🤖 Launching extension to run trigger: %@ of type: %{public}@", buf, 0x20u);
    }

    [(WFTriggerEventRunner *)self logPowerLogEventForConfiguredTrigger:v10 workflowReference:v9];
    v26 = [v10 trigger];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);

    v29 = [v10 trigger];
    v30 = [v29 contentCollectionWithEventInfo:v11];

    v51 = v11;
    if ([v10 shouldPrompt])
    {
      v31 = 0;
    }

    else
    {
      v32 = [v10 trigger];
      if ([objc_opt_class() isAllowedToRunAutomatically])
      {
        v31 = 2;
      }

      else
      {
        v31 = 0;
      }
    }

    v33 = objc_alloc(MEMORY[0x277D7A1C8]);
    v34 = [v9 identifier];
    v49 = [v33 initWithIdentifier:v34];

    v13 = [objc_alloc(MEMORY[0x277D7A200]) initWithInput:v30 presentationMode:v31];
    [v13 setAutomationType:v28];
    v35 = [v10 identifier];
    [v13 setFiringTriggerID:v35];

    v36 = *MEMORY[0x277D7A868];
    [v13 setRunSource:*MEMORY[0x277D7A868]];
    [v13 setLogRunEvent:0];
    [v13 setDonateInteraction:0];
    v37 = [v10 trigger];
    [v37 urlNeedingAccessWithContentCollection:v30];
    v38 = v50 = v28;

    [v13 setUrlNeedingAccess:v38];
    v39 = [objc_alloc(MEMORY[0x277D7A208]) initWithDescriptor:v49 runRequest:v13];
    [v39 setDelegate:self];
    [v39 start];
    [(WFTriggerEventRunner *)self setInProgressRunnerClient:v39];
    v40 = [(WFTriggerEventRunner *)self databaseProvider];
    [v40 databaseWithError:0];
    v41 = v48 = v30;
    [v10 identifier];
    v43 = v42 = v9;
    v44 = [v41 logRunOfWorkflow:v42 withSource:v36 triggerID:v43];
    [(WFTriggerEventRunner *)self setInProgressRunEvent:v44];

    v9 = v42;
    [(WFTriggerEventRunner *)self setInProgressTrigger:v10];

    v15 = v50;
    v11 = v51;
    LOBYTE(v13) = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v13 ^ 1;
}

- (WFTriggerEventRunner)initWithDatabaseProvider:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFTriggerEventRunner.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v15.receiver = self;
  v15.super_class = WFTriggerEventRunner;
  v10 = [(WFTriggerEventRunner *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_databaseProvider, a3);
    objc_storeStrong(&v11->_delegate, a4);
    v12 = v11;
  }

  return v11;
}

@end