@interface WFDialogNotificationManager
+ (id)categoryIdentifiers;
+ (id)dialogNotificationConfirmationCategory;
- (WFDialogNotificationManager)initWithUserNotificationManager:(id)manager;
- (void)handleRemovedIgnoredNotifications:(id)notifications;
- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WFDialogNotificationManager

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  (*(handler + 2))(handler);
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];

  userInfo = [content userInfo];
  v11 = [userInfo objectForKey:@"runningContext"];

  v21 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v21];
  v13 = v21;
  if (v12)
  {
    actionIdentifier = [responseCopy actionIdentifier];
    if (([actionIdentifier isEqualToString:*MEMORY[0x277CE20F0]]& 1) == 0)
    {
      userInfo2 = [content userInfo];
      v16 = [userInfo2 objectForKey:@"presentationMode"];

      integerValue = [v16 integerValue];
      v18 = [objc_alloc(MEMORY[0x277D7A200]) initWithInput:0 presentationMode:integerValue];
      v19 = [objc_alloc(MEMORY[0x277D7C4D8]) initWithRunningContext:v12 runRequest:v18];
      [v19 start];
    }
  }

  else
  {
    actionIdentifier = getWFDialogLogObject();
    if (os_log_type_enabled(actionIdentifier, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[WFDialogNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_23103C000, actionIdentifier, OS_LOG_TYPE_ERROR, "%s Unable to get context from notification userInfo: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)postNotificationWithRequest:(id)request presentationMode:(unint64_t)mode runningContext:(id)context
{
  v49[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  workflowIdentifier = [contextCopy workflowIdentifier];
  if (!workflowIdentifier)
  {
    goto LABEL_4;
  }

  v11 = workflowIdentifier;
  defaultDatabase = [MEMORY[0x277D7C2F0] defaultDatabase];
  workflowIdentifier2 = [contextCopy workflowIdentifier];
  v14 = [defaultDatabase referenceForWorkflowID:workflowIdentifier2];

  if (v14)
  {
    v15 = MEMORY[0x277CFC538];
    identifier = [contextCopy identifier];
    v17 = [v15 proposedTemporaryFileURLForFilename:identifier];

    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    [currentDevice screenScale];
    v20 = [v14 attributionIconWithSize:0 scale:20.0 rounded:{20.0, v19}];

    pNGRepresentation = [v20 PNGRepresentation];
    [pNGRepresentation writeToURL:v17 atomically:0];

    v22 = MEMORY[0x277CE1FB0];
    path = [v17 path];
    v24 = [v22 iconAtPath:path];
  }

  else
  {
LABEL_4:
    v24 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:*MEMORY[0x277D7A338]];
  }

  v25 = objc_alloc_init(MEMORY[0x277CE1F60]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message = [requestCopy message];
    [v25 setBody:message];

    [v25 setShouldSuppressDefaultAction:1];
    v27 = MEMORY[0x277D7A408];
  }

  else
  {
    v28 = WFLocalizedString(@"Tap to respond");
    [v25 setBody:v28];

    [v25 setShouldBackgroundDefaultAction:1];
    v27 = MEMORY[0x277D7A400];
  }

  [v25 setCategoryIdentifier:*v27];
  [v25 setInterruptionLevel:2];
  [v25 setShouldAuthenticateDefaultAction:1];
  [v25 setShouldIgnoreDoNotDisturb:1];
  attribution = [requestCopy attribution];
  title = [attribution title];
  [v25 setTitle:title];

  [v25 setIcon:v24];
  promptForDisplay = [requestCopy promptForDisplay];
  [v25 setSubtitle:promptForDisplay];

  v48[0] = @"runningContext";
  v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:0];
  v48[1] = @"presentationMode";
  v49[0] = v32;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  v49[1] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v25 setUserInfo:v34];

  workflowIdentifier3 = [contextCopy workflowIdentifier];

  if (workflowIdentifier3)
  {
    v36 = MEMORY[0x277CCACA8];
    workflowIdentifier4 = [contextCopy workflowIdentifier];
    v38 = [v36 stringWithFormat:@"workflow-identifier:%@", workflowIdentifier4];
    [v25 setThreadIdentifier:v38];
  }

  v39 = MEMORY[0x277CE1FC0];
  identifier2 = [contextCopy identifier];
  v41 = [v39 requestWithIdentifier:identifier2 content:v25 trigger:0 destinations:15];

  userNotificationManager = [(WFDialogNotificationManager *)self userNotificationManager];
  notificationCenter = [userNotificationManager notificationCenter];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __91__WFDialogNotificationManager_postNotificationWithRequest_presentationMode_runningContext___block_invoke;
  v46[3] = &unk_2788FEEC0;
  v47 = requestCopy;
  v44 = requestCopy;
  [notificationCenter addNotificationRequest:v41 withCompletionHandler:v46];

  v45 = *MEMORY[0x277D85DE8];
}

void __91__WFDialogNotificationManager_postNotificationWithRequest_presentationMode_runningContext___block_invoke(uint64_t a1, void *a2)
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
      v8 = "[WFDialogNotificationManager postNotificationWithRequest:presentationMode:runningContext:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Unable to post request (%@) as a notification: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedIgnoredNotifications:(id)notifications
{
  v48 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __65__WFDialogNotificationManager_handleRemovedIgnoredNotifications___block_invoke;
  v38[3] = &unk_2788FEE98;
  v7 = v6;
  v39 = v7;
  v8 = v5;
  v40 = v8;
  [notificationsCopy enumerateObjectsUsingBlock:v38];
  if ([v8 count])
  {
    userNotificationManager = [(WFDialogNotificationManager *)self userNotificationManager];
    [userNotificationManager removeNotificationsWithIdentifiers:v8];
  }

  wf_savedShortcutStatesURL = [MEMORY[0x277CBEBC0] wf_savedShortcutStatesURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!wf_savedShortcutStatesURL)
  {
    v14 = 0;
    v13 = 0;
    if (![0 count])
    {
      goto LABEL_25;
    }

LABEL_9:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v31 = defaultManager;
      v29 = v8;
      v30 = notificationsCopy;
      v18 = *v34;
      v19 = v15;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v19);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          if (([v7 containsObject:{v21, v29, v30}] & 1) == 0)
          {
            v22 = v19;
            v23 = wf_savedShortcutStatesURL;
            v24 = [wf_savedShortcutStatesURL URLByAppendingPathComponent:v21];
            v32 = v14;
            v25 = [v31 removeItemAtURL:v24 error:&v32];
            v26 = v32;

            if ((v25 & 1) == 0)
            {
              v27 = getWFDialogLogObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v42 = "[WFDialogNotificationManager handleRemovedIgnoredNotifications:]";
                v43 = 2112;
                v44 = v24;
                v45 = 2112;
                v46 = v26;
                _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Unable to delete state at path (%@), error: %@", buf, 0x20u);
              }
            }

            v14 = v26;
            wf_savedShortcutStatesURL = v23;
            v19 = v22;
          }
        }

        v17 = [v19 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v17);
      v13 = v19;
      v8 = v29;
      notificationsCopy = v30;
      v15 = v19;
      defaultManager = v31;
    }

    else
    {
      v13 = v15;
    }

    goto LABEL_24;
  }

  path = [wf_savedShortcutStatesURL path];
  v37 = 0;
  v13 = [defaultManager contentsOfDirectoryAtPath:path error:&v37];
  v14 = v37;

  if ([v13 count])
  {
    goto LABEL_9;
  }

  if (v14)
  {
    v15 = getWFDialogLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[WFDialogNotificationManager handleRemovedIgnoredNotifications:]";
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Unable to get contents of saved shortcut states: %@", buf, 0x16u);
    }

LABEL_24:
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

void __65__WFDialogNotificationManager_handleRemovedIgnoredNotifications___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKey:@"runningContext"];

  if (v7)
  {
    v19 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v19];
    v9 = v19;
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [v8 identifier];
      [v10 addObject:v11];
    }

    else
    {
      v15 = getWFDialogLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v21 = "[WFDialogNotificationManager handleRemovedIgnoredNotifications:]_block_invoke";
        v22 = 2114;
        v23 = v9;
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_FAULT, "%s Decoding running context failed while trying to keep a workflow controller state around: %{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 40);
      v11 = [v3 request];
      v17 = [v11 identifier];
      [v16 addObject:v17];
    }
  }

  else
  {
    v9 = getWFDialogLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 request];
      v13 = [v12 content];
      v14 = [v13 userInfo];
      *buf = 136315394;
      v21 = "[WFDialogNotificationManager handleRemovedIgnoredNotifications:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Notification user info (%@) was expected to contain a running context but did not", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (WFDialogNotificationManager)initWithUserNotificationManager:(id)manager
{
  v22[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDialogNotificationManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"userNotificationManager"}];
  }

  v21.receiver = self;
  v21.super_class = WFDialogNotificationManager;
  v7 = [(WFDialogNotificationManager *)&v21 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_userNotificationManager, manager);
    userNotificationManager = v8->_userNotificationManager;
    v10 = +[WFDialogNotificationManager dialogNotificationCategory];
    v22[0] = v10;
    v11 = +[WFDialogNotificationManager dialogNotificationConfirmationCategory];
    v22[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [(WFUserNotificationManager *)userNotificationManager registerCategoriesIfNecessary:v12];

    v13 = v8->_userNotificationManager;
    v14 = +[WFDialogNotificationManager dialogNotificationCategory];
    [(WFUserNotificationManager *)v13 addObserver:v8 forCategory:v14];

    v15 = v8->_userNotificationManager;
    v16 = +[WFDialogNotificationManager dialogNotificationConfirmationCategory];
    [(WFUserNotificationManager *)v15 addObserver:v8 forCategory:v16];

    v17 = v8;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)categoryIdentifiers
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D7A408];
  v6[0] = *MEMORY[0x277D7A400];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)dialogNotificationConfirmationCategory
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"play"];
  v3 = MEMORY[0x277CE1F80];
  v4 = WFLocalizedString(@"Continue");
  v5 = [v3 actionWithIdentifier:@"confirm" title:v4 options:1 icon:v2];

  v6 = MEMORY[0x277CE1F98];
  v7 = *MEMORY[0x277D7A408];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 categoryWithIdentifier:v7 actions:v8 intentIdentifiers:MEMORY[0x277CBEBF8] options:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end