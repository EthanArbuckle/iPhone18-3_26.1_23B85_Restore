@interface WFTriggerEventRunner
- (BOOL)isRunningWorkflowWithIdentifier:(id)identifier;
- (BOOL)startRunningWorkflow:(id)workflow forTrigger:(id)trigger eventInfo:(id)info;
- (WFTriggerEventRunner)initWithDatabaseProvider:(id)provider delegate:(id)delegate;
- (void)logPowerLogEventForConfiguredTrigger:(id)trigger workflowReference:(id)reference;
@end

@implementation WFTriggerEventRunner

- (void)logPowerLogEventForConfiguredTrigger:(id)trigger workflowReference:(id)reference
{
  v50 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  referenceCopy = reference;
  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEventRunner.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  v7 = MEMORY[0x277CBEB98];
  v46[0] = @"name";
  v46[1] = @"actions";
  v46[2] = @"associatedAppBundleIdentifier";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v35 = [v7 setWithArray:v8];

  databaseProvider = [(WFTriggerEventRunner *)self databaseProvider];
  v39 = 0;
  v10 = [databaseProvider databaseWithError:&v39];
  v11 = v39;

  if (v10)
  {
    v38 = v11;
    v12 = [v10 recordWithDescriptor:referenceCopy properties:v35 error:&v38];
    v34 = v38;

    if (v12)
    {
      v44[0] = @"WFTriggerKind";
      v13 = MEMORY[0x277D7C970];
      trigger = [triggerCopy trigger];
      v32 = [v13 powerLogEventKindForTrigger:trigger];
      v45[0] = v32;
      v44[1] = @"WFActionCount";
      v14 = MEMORY[0x277CCABB0];
      actions = [v12 actions];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(actions, "count")}];
      v45[1] = v16;
      v44[2] = @"WFTriggerID";
      identifier = [triggerCopy identifier];
      v45[2] = identifier;
      v44[3] = @"WFWorkflowID";
      identifier2 = [referenceCopy identifier];
      v45[3] = identifier2;
      v44[4] = @"WFWorkflowName";
      name = [v12 name];
      v20 = name;
      if (name)
      {
        v21 = name;
      }

      else
      {
        v21 = &stru_2845DDD10;
      }

      v45[4] = v21;
      v44[5] = @"WFAssociatedAppIdentifier";
      associatedAppBundleIdentifier = [v12 associatedAppBundleIdentifier];
      v23 = associatedAppBundleIdentifier;
      if (associatedAppBundleIdentifier)
      {
        v24 = associatedAppBundleIdentifier;
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
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void softPLLogTimeSensitiveRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"}];
        [currentHandler2 handleFailureInFunction:v31 file:@"WFTriggerEventRunner.m" lineNumber:28 description:{@"%s", dlerror()}];

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
        *&buf[14] = referenceCopy;
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
      *&buf[14] = referenceCopy;
      *&buf[22] = 2114;
      v48 = v11;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get workflow record for reference (%@) because database could not be loaded: %{public}@", buf, 0x20u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRunningWorkflowWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  inProgressRunnerClient = [(WFTriggerEventRunner *)self inProgressRunnerClient];
  descriptor = [inProgressRunnerClient descriptor];

  if (descriptor && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [descriptor identifier];
    v8 = [identifier isEqualToString:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)startRunningWorkflow:(id)workflow forTrigger:(id)trigger eventInfo:(id)info
{
  v58 = *MEMORY[0x277D85DE8];
  workflowCopy = workflow;
  triggerCopy = trigger;
  infoCopy = info;
  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEventRunner.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  identifier = [workflowCopy identifier];
  LODWORD(v13) = [(WFTriggerEventRunner *)self isRunningWorkflowWithIdentifier:identifier];

  v14 = getWFTriggersLogObject();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      inProgressTrigger = [(WFTriggerEventRunner *)self inProgressTrigger];
      trigger = [inProgressTrigger trigger];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      trigger2 = [triggerCopy trigger];
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
      trigger3 = [triggerCopy trigger];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 136315650;
      v53 = "[WFTriggerEventRunner startRunningWorkflow:forTrigger:eventInfo:]";
      v54 = 2112;
      v55 = triggerCopy;
      v56 = 2114;
      v57 = v25;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s 🤖 Launching extension to run trigger: %@ of type: %{public}@", buf, 0x20u);
    }

    [(WFTriggerEventRunner *)self logPowerLogEventForConfiguredTrigger:triggerCopy workflowReference:workflowCopy];
    trigger4 = [triggerCopy trigger];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);

    trigger5 = [triggerCopy trigger];
    v30 = [trigger5 contentCollectionWithEventInfo:infoCopy];

    v51 = infoCopy;
    if ([triggerCopy shouldPrompt])
    {
      v31 = 0;
    }

    else
    {
      trigger6 = [triggerCopy trigger];
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
    identifier2 = [workflowCopy identifier];
    v49 = [v33 initWithIdentifier:identifier2];

    v13 = [objc_alloc(MEMORY[0x277D7A200]) initWithInput:v30 presentationMode:v31];
    [v13 setAutomationType:v28];
    identifier3 = [triggerCopy identifier];
    [v13 setFiringTriggerID:identifier3];

    v36 = *MEMORY[0x277D7A868];
    [v13 setRunSource:*MEMORY[0x277D7A868]];
    [v13 setLogRunEvent:0];
    [v13 setDonateInteraction:0];
    trigger7 = [triggerCopy trigger];
    [trigger7 urlNeedingAccessWithContentCollection:v30];
    v38 = v50 = v28;

    [v13 setUrlNeedingAccess:v38];
    v39 = [objc_alloc(MEMORY[0x277D7A208]) initWithDescriptor:v49 runRequest:v13];
    [v39 setDelegate:self];
    [v39 start];
    [(WFTriggerEventRunner *)self setInProgressRunnerClient:v39];
    databaseProvider = [(WFTriggerEventRunner *)self databaseProvider];
    [databaseProvider databaseWithError:0];
    v41 = v48 = v30;
    [triggerCopy identifier];
    v43 = v42 = workflowCopy;
    v44 = [v41 logRunOfWorkflow:v42 withSource:v36 triggerID:v43];
    [(WFTriggerEventRunner *)self setInProgressRunEvent:v44];

    workflowCopy = v42;
    [(WFTriggerEventRunner *)self setInProgressTrigger:triggerCopy];

    v15 = v50;
    infoCopy = v51;
    LOBYTE(v13) = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v13 ^ 1;
}

- (WFTriggerEventRunner)initWithDatabaseProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEventRunner.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v15.receiver = self;
  v15.super_class = WFTriggerEventRunner;
  v10 = [(WFTriggerEventRunner *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_databaseProvider, provider);
    objc_storeStrong(&v11->_delegate, delegate);
    v12 = v11;
  }

  return v11;
}

@end