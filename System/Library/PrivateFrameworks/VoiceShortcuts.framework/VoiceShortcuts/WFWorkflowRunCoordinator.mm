@interface WFWorkflowRunCoordinator
+ (id)errorWithActionCategory;
+ (int64_t)outOfProcessWorkflowControllerPresentationModeFromVCShortcutPresentationMode:(unint64_t)mode;
- (WFToastManager)toastManager;
- (WFWorkflowRunCoordinator)initWithUserNotificationManager:(id)manager databaseProvider:(id)provider;
- (id)unsupportedDialogResponseWithRequest:(id)request;
- (void)dismissToastedSessionKitSessionsWithReason:(id)reason completion:(id)completion;
- (void)handleRemovedIgnoredNotifications:(id)notifications;
- (void)postNotificationAboutFailure:(id)failure inWorkflow:(id)workflow dialogAttribution:(id)attribution runningContext:(id)context;
- (void)presentationManager:(id)manager updateSmartPromptStateData:(id)data actionUUID:(id)d context:(id)context reference:(id)reference;
- (void)showSingleStepCompletionWithWebClipMetadata:(id)metadata completion:(id)completion;
- (void)toastManager:(id)manager didDismissToastedSessionWithIdentifier:(id)identifier;
- (void)toastManager:(id)manager didFailToToastSessionWithIdentifier:(id)identifier error:(id)error;
- (void)toastManager:(id)manager didToastSessionWithIdentifier:(id)identifier duration:(double)duration;
- (void)toastSessionKitSessionWithIdentifier:(id)identifier forDuration:(id)duration completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WFWorkflowRunCoordinator

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  notification = [response notification];
  request = [notification request];
  content = [request content];

  errorWithActionCategory = [objc_opt_class() errorWithActionCategory];
  identifier = [errorWithActionCategory identifier];

  categoryIdentifier = [content categoryIdentifier];
  LOBYTE(request) = [categoryIdentifier isEqualToString:identifier];

  if (request)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v12 setScheme:@"shortcuts"];
    categoryIdentifier2 = [content categoryIdentifier];
    v14 = [categoryIdentifier2 isEqualToString:identifier];

    if (v14)
    {
      [v12 setHost:@"open-shortcut"];
      v15 = MEMORY[0x277CBEBC0];
      userInfo = [content userInfo];
      v17 = [v15 dc_queryItemsFromQueryDictionary:userInfo];
      [v12 setQueryItems:v17];
    }

    v18 = MEMORY[0x277D7C558];
    v19 = [v12 URL];
    v20 = [v18 requestWithURL:v19];

    mEMORY[0x277D7C548] = [MEMORY[0x277D7C548] sharedManager];
    [mEMORY[0x277D7C548] performRequest:v20];

    handlerCopy[2]();
  }

  else
  {
    handlerCopy[2]();
  }
}

- (void)postNotificationAboutFailure:(id)failure inWorkflow:(id)workflow dialogAttribution:(id)attribution runningContext:(id)context
{
  v94 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  workflowCopy = workflow;
  attributionCopy = attribution;
  contextCopy = context;
  v14 = workflowCopy;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
      v16 = v14;
      goto LABEL_19;
    }
  }

  runSource = [contextCopy runSource];
  IsSpotlight = WFRunSourceIsSpotlight();

  if (IsSpotlight)
  {
    goto LABEL_17;
  }

  runSource2 = [contextCopy runSource];
  v20 = *MEMORY[0x277D7A820];
  v21 = runSource2;
  v22 = v21;
  if (v21 != v20)
  {
    if (v21 && v20)
    {
      v23 = [v21 isEqualToString:v20];

      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    runSource3 = [contextCopy runSource];
    v25 = *MEMORY[0x277D7A860];
    v26 = runSource3;
    v22 = v26;
    if (v26 != v25)
    {
      if (!v26 || !v25)
      {

        v16 = 0;
        goto LABEL_60;
      }

      v27 = [v26 isEqualToString:v25];

      v16 = 0;
      if ((v27 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v16 = 0;
LABEL_18:
  v15 = 1;
LABEL_19:
  if (([v16 hiddenFromLibraryAndSync] & 1) == 0)
  {
    v28 = getWFDialogLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v89 = "[WFWorkflowRunCoordinator postNotificationAboutFailure:inWorkflow:dialogAttribution:runningContext:]";
      v90 = 2112;
      v91 = failureCopy;
      v92 = 2112;
      v93 = v16;
      _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_ERROR, "%s Posting notification for error (%@) when running workflow: %@", buf, 0x20u);
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v79 = contextCopy;
    v80 = attributionCopy;
    v78 = uUIDString;
    if (v15)
    {
      v31 = MEMORY[0x277CE1FB0];
      if (attributionCopy)
      {
        appBundleIdentifier = [attributionCopy appBundleIdentifier];
        v82 = [v31 iconForApplicationIdentifier:appBundleIdentifier];
      }

      else
      {
        v82 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:*MEMORY[0x277D7A338]];
      }

      name = WFLocalizedString(@"your shortcut");
    }

    else
    {
      v33 = [MEMORY[0x277CFC538] proposedTemporaryFileURLForFilename:uUIDString];
      currentDevice = [MEMORY[0x277D79F18] currentDevice];
      [currentDevice screenScale];
      v36 = [v16 attributionIconWithSize:0 scale:48.0 rounded:{48.0, v35}];

      pNGRepresentation = [v36 PNGRepresentation];
      [pNGRepresentation writeToURL:v33 atomically:0];

      v38 = MEMORY[0x277CE1FB0];
      path = [v33 path];
      v82 = [v38 iconAtPath:path];

      name = [v16 name];
    }

    v81 = name;
    domain = [failureCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D7A540]])
    {
      v42 = [failureCopy code] == 3 || objc_msgSend(failureCopy, "code") == 4;
    }

    else
    {
      v42 = 0;
    }

    userInfo = [failureCopy userInfo];
    v44 = [userInfo objectForKey:*MEMORY[0x277CCA450]];

    selfCopy = self;
    if (v42)
    {
      v84 = 0;
    }

    else
    {
      userInfo2 = [failureCopy userInfo];
      v84 = [userInfo2 objectForKey:*MEMORY[0x277CCA470]];
    }

    v46 = v15;
    v47 = MEMORY[0x277CCACA8];
    v48 = WFLocalizedString(@"An error occurred while running %@. (%@, %i)");
    domain2 = [failureCopy domain];
    v85 = [v47 stringWithFormat:v48, v81, domain2, objc_msgSend(failureCopy, "code")];

    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifier = [v16 identifier];

    if (identifier)
    {
      identifier2 = [v16 identifier];
      [v50 setObject:identifier2 forKey:*MEMORY[0x277D7CF48]];
    }

    userInfo3 = [failureCopy userInfo];
    v54 = [userInfo3 objectForKey:*MEMORY[0x277D7D098]];

    if (v54)
    {
      [v50 setObject:v54 forKey:*MEMORY[0x277D7CDC8]];
      localizedDescription = [failureCopy localizedDescription];
      [v50 setObject:localizedDescription forKey:*MEMORY[0x277D7CDC0]];
    }

    v56 = objc_alloc_init(MEMORY[0x277CE1F60]);
    attributionTitle = [v16 attributionTitle];
    if (attributionTitle)
    {
      [v56 setTitle:attributionTitle];
    }

    else
    {
      title = [v80 title];
      [v56 setTitle:title];
    }

    [v56 setIcon:v82];
    if ([v44 length])
    {
      v59 = v44;
    }

    else
    {
      v59 = v85;
    }

    [v56 setBody:v59];
    [v56 setShouldBackgroundDefaultAction:1];
    [v56 setShouldIgnoreDoNotDisturb:1];
    [v56 setUserInfo:v50];
    if (v46)
    {
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      [uUID2 UUIDString];
    }

    else
    {
      v61 = MEMORY[0x277CCACA8];
      uUID2 = [v16 identifier];
      [v61 stringWithFormat:@"workflow-error: %@", uUID2];
    }
    v62 = ;
    [v56 setThreadIdentifier:v62];

    if (![v44 length] || (v64 = objc_msgSend(v84, "length"), v63 = v44, v64))
    {
      if ([v44 length] || (v67 = objc_msgSend(v84, "length"), v63 = v84, !v67))
      {
        v65 = [v44 length];
        v63 = v85;
        if (v65)
        {
          v66 = [v84 length];
          v63 = v85;
          if (v66)
          {
            [v56 setSubtitle:v84];
            v63 = v44;
          }
        }
      }
    }

    [v56 setBody:v63];
    v68 = objc_opt_class();
    if (v46)
    {
      [v68 errorCategory];
    }

    else
    {
      [v68 errorWithActionCategory];
    }
    v69 = ;
    identifier3 = [v69 identifier];
    [v56 setCategoryIdentifier:identifier3];

    v71 = MEMORY[0x277CE1FC0];
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID3 UUIDString];
    v74 = [v71 requestWithIdentifier:uUIDString2 content:v56 trigger:0 destinations:7];

    userNotificationManager = [(WFWorkflowRunCoordinator *)selfCopy userNotificationManager];
    notificationCenter = [userNotificationManager notificationCenter];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __101__WFWorkflowRunCoordinator_postNotificationAboutFailure_inWorkflow_dialogAttribution_runningContext___block_invoke;
    v86[3] = &unk_2788FEEC0;
    v87 = failureCopy;
    [notificationCenter addNotificationRequest:v74 withCompletionHandler:v86];

    contextCopy = v79;
    attributionCopy = v80;
  }

LABEL_60:

  v77 = *MEMORY[0x277D85DE8];
}

void __101__WFWorkflowRunCoordinator_postNotificationAboutFailure_inWorkflow_dialogAttribution_runningContext___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFDialogLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[WFWorkflowRunCoordinator postNotificationAboutFailure:inWorkflow:dialogAttribution:runningContext:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Unable to post error (%@) as a notification: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)toastManager:(id)manager didFailToToastSessionWithIdentifier:(id)identifier error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315650;
    v11 = "[WFWorkflowRunCoordinator toastManager:didFailToToastSessionWithIdentifier:error:]";
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to toast session with identifier %{identifier}@: %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)toastManager:(id)manager didDismissToastedSessionWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFWorkflowRunCoordinator toastManager:didDismissToastedSessionWithIdentifier:]";
    v11 = 2114;
    v12 = identifierCopy;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Toasted session with identifier %{public}@ is dismissed, let's resume dialog presentation", &v9, 0x16u);
  }

  userInterfacePresenter = [(WFWorkflowRunCoordinator *)self userInterfacePresenter];
  [userInterfacePresenter resumeDialogPresentationWithCompletionHandler:&__block_literal_global_214];

  v8 = *MEMORY[0x277D85DE8];
}

void __80__WFWorkflowRunCoordinator_toastManager_didDismissToastedSessionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFWorkflowExecutionLogObject();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFWorkflowRunCoordinator toastManager:didDismissToastedSessionWithIdentifier:]_block_invoke";
      v12 = 2112;
      v13 = v2;
      v5 = "%s Failed to resume dialog presentation: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 22;
LABEL_6:
      _os_log_impl(&dword_23103C000, v6, v7, v5, &v10, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[WFWorkflowRunCoordinator toastManager:didDismissToastedSessionWithIdentifier:]_block_invoke";
    v5 = "%s Resumed dialog presentation";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 12;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)toastManager:(id)manager didToastSessionWithIdentifier:(id)identifier duration:(double)duration
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WFWorkflowRunCoordinator toastManager:didToastSessionWithIdentifier:duration:]";
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Toasted session with identifier %{public}@", buf, 0x16u);
  }

  userInterfacePresenter = [(WFWorkflowRunCoordinator *)self userInterfacePresenter];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__WFWorkflowRunCoordinator_toastManager_didToastSessionWithIdentifier_duration___block_invoke;
  v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  *&v12[4] = duration;
  [userInterfacePresenter pauseDialogPresentationForDuration:v10 withCompletionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __80__WFWorkflowRunCoordinator_toastManager_didToastSessionWithIdentifier_duration___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFWorkflowRunCoordinator toastManager:didToastSessionWithIdentifier:duration:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to pause dialog presentation: %@", &v8, 0x16u);
    }
  }

  v5 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
    v8 = 136315394;
    v9 = "[WFWorkflowRunCoordinator toastManager:didToastSessionWithIdentifier:duration:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Paused dialog presentation for %@ seconds", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)presentationManager:(id)manager updateSmartPromptStateData:(id)data actionUUID:(id)d context:(id)context reference:(id)reference
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  referenceCopy = reference;
  databaseProvider = [(WFWorkflowRunCoordinator *)self databaseProvider];
  v14 = [databaseProvider databaseWithError:0];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = dataCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v28;
    *&v17 = 136315394;
    v25 = v17;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v27 + 1) + 8 * v20);
        v26 = 0;
        [v14 saveSmartPromptStateData:v21 actionUUID:dCopy reference:referenceCopy error:{&v26, v25}];
        v22 = v26;
        if (v22)
        {
          v23 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v32 = "[WFWorkflowRunCoordinator presentationManager:updateSmartPromptStateData:actionUUID:context:reference:]";
            v33 = 2112;
            v34 = v22;
            _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_ERROR, "%s Failed to save smart prompt state data: %@", buf, 0x16u);
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)unsupportedDialogResponseWithRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [objc_alloc(MEMORY[0x277D7C8B8]) initWithUnsupported:1];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
  }

  return v5;
}

- (void)dismissToastedSessionKitSessionsWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunCoordinator.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  toastManager = [(WFWorkflowRunCoordinator *)self toastManager];
  [toastManager eatTheToastWithReason:reasonCopy];

  completionCopy[2](completionCopy);
}

- (void)toastSessionKitSessionWithIdentifier:(id)identifier forDuration:(id)duration completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  durationCopy = duration;
  completionCopy = completion;
  v11 = getWFSessionKitLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [durationCopy doubleValue];
    v17 = 136315650;
    v18 = "[WFWorkflowRunCoordinator toastSessionKitSessionWithIdentifier:forDuration:completion:]";
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s Toasting SessionKit session with identifier: %@ for duration: %f", &v17, 0x20u);
  }

  toastManager = [(WFWorkflowRunCoordinator *)self toastManager];
  if (durationCopy)
  {
    [durationCopy doubleValue];
  }

  else
  {
    v14 = -1.0;
  }

  v15 = [toastManager toastSessionWithIdentifier:identifierCopy forDuration:v14];

  completionCopy[2](completionCopy, v15);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)showSingleStepCompletionWithWebClipMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  queue = [(WFWorkflowRunCoordinator *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__WFWorkflowRunCoordinator_showSingleStepCompletionWithWebClipMetadata_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  block[4] = self;
  v12 = metadataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = metadataCopy;
  dispatch_async(queue, block);
}

void __83__WFWorkflowRunCoordinator_showSingleStepCompletionWithWebClipMetadata_completion___block_invoke(id *a1)
{
  v2 = [a1[4] databaseProvider];
  v3 = [v2 databaseWithError:0];

  v4 = objc_alloc(MEMORY[0x277D79EF0]);
  v5 = [a1[5] shortcutIdentifier];
  v6 = [v4 initWithIdentifier:v5 objectType:0];

  v7 = [v3 recordWithDescriptor:v6 error:0];
  v8 = objc_alloc(MEMORY[0x277D7C8D0]);
  v9 = [v7 name];
  v10 = [a1[5] applicationIdentifier];
  v11 = [v8 initWithShortcutName:v9 applicationBundleIdentifier:v10];

  v12 = objc_alloc(MEMORY[0x277D7A210]);
  v13 = [a1[5] shortcutIdentifier];
  v14 = [v12 initWithWorkflowIdentifier:v13];

  [v14 setRunKind:*MEMORY[0x277D7A810]];
  [v14 setAllowsDialogNotifications:0];
  v15 = [a1[4] userInterfacePresenter];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__WFWorkflowRunCoordinator_showSingleStepCompletionWithWebClipMetadata_completion___block_invoke_2;
  v16[3] = &unk_2788FEC00;
  v17 = a1[6];
  [v15 showDialogRequest:v11 runningContext:v14 completionHandler:v16];
}

- (WFToastManager)toastManager
{
  toastManager = self->_toastManager;
  if (!toastManager)
  {
    if (self->_hasInitializedToastManager)
    {
      toastManager = 0;
    }

    else
    {
      v4 = [[WFToastManager alloc] initWithDelegate:self];
      v5 = self->_toastManager;
      self->_toastManager = v4;

      self->_hasInitializedToastManager = 1;
      toastManager = self->_toastManager;
    }
  }

  return toastManager;
}

- (void)handleRemovedIgnoredNotifications:(id)notifications
{
  notificationsCopy = notifications;
  dialogPresentationManager = [(WFWorkflowRunCoordinator *)self dialogPresentationManager];
  [dialogPresentationManager handleRemovedIgnoredNotifications:notificationsCopy];
}

- (WFWorkflowRunCoordinator)initWithUserNotificationManager:(id)manager databaseProvider:(id)provider
{
  v34[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  providerCopy = provider;
  v33.receiver = self;
  v33.super_class = WFWorkflowRunCoordinator;
  v9 = [(WFWorkflowRunCoordinator *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseProvider, provider);
    objc_storeStrong(&v10->_userNotificationManager, manager);
    userNotificationManager = v10->_userNotificationManager;
    v12 = +[WFWorkflowRunCoordinator errorCategory];
    v34[0] = v12;
    v13 = +[WFWorkflowRunCoordinator errorWithActionCategory];
    v34[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    [(WFUserNotificationManager *)userNotificationManager registerCategoriesIfNecessary:v14];

    v15 = v10->_userNotificationManager;
    v16 = +[WFWorkflowRunCoordinator errorCategory];
    [(WFUserNotificationManager *)v15 addObserver:v10 forCategory:v16];

    v17 = v10->_userNotificationManager;
    v18 = +[WFWorkflowRunCoordinator errorWithActionCategory];
    [(WFUserNotificationManager *)v17 addObserver:v10 forCategory:v18];

    v19 = [[WFDialogNotificationManager alloc] initWithUserNotificationManager:v10->_userNotificationManager];
    dialogNotificationManager = v10->_dialogNotificationManager;
    v10->_dialogNotificationManager = v19;

    v21 = [[WFDialogPresentationManager alloc] initWithNotificationManager:v10->_dialogNotificationManager];
    dialogPresentationManager = v10->_dialogPresentationManager;
    v10->_dialogPresentationManager = v21;

    [(WFDialogPresentationManager *)v10->_dialogPresentationManager setDelegate:v10];
    v23 = objc_opt_new();
    if (objc_opt_respondsToSelector())
    {
      [v23 setInterruptionHandler:&__block_literal_global_191];
    }

    v24 = [objc_alloc(MEMORY[0x277D7C998]) initWithConnection:v23];
    userInterfacePresenter = v10->_userInterfacePresenter;
    v10->_userInterfacePresenter = v24;

    [(WFUIPresenter *)v10->_userInterfacePresenter setDelegate:v10];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_USER_INITIATED, 0);
    v28 = dispatch_queue_create("com.apple.shortcuts.WFWorkflowRunCoordinator", v27);
    queue = v10->_queue;
    v10->_queue = v28;

    v30 = v10;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

void __77__WFWorkflowRunCoordinator_initWithUserNotificationManager_databaseProvider___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFGeneralLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[WFWorkflowRunCoordinator initWithUserNotificationManager:databaseProvider:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_ERROR, "%s UI presenter connection went down with error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (int64_t)outOfProcessWorkflowControllerPresentationModeFromVCShortcutPresentationMode:(unint64_t)mode
{
  if (mode - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_231166938[mode - 1];
  }
}

+ (id)errorWithActionCategory
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"arrow.up.forward.app"];
  v3 = MEMORY[0x277CE1F80];
  v4 = WFLocalizedString(@"Show");
  v5 = [v3 actionWithIdentifier:@"WFShow" title:v4 options:0 icon:v2];

  v6 = MEMORY[0x277CE1F98];
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v6 categoryWithIdentifier:@"WFWorkflowRunCoordinatorErrorWithActionCategory" actions:v7 intentIdentifiers:MEMORY[0x277CBEBF8] options:0];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end