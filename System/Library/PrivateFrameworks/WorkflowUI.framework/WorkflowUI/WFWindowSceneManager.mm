@interface WFWindowSceneManager
+ (id)existingSceneSessionForEditingWorkflowReference:(id)reference;
+ (id)mainScene;
+ (id)userActivityForEditingWorkflow:(id)workflow;
+ (id)workflowIdentifierFromUserActivity:(id)activity;
+ (void)activateSceneForWorkflowReference:(id)reference sender:(id)sender;
+ (void)setupSession:(id)session forEditingWorkflow:(id)workflow;
@end

@implementation WFWindowSceneManager

+ (id)mainScene
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(connectedScenes);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      if (v8)
      {
        objc_opt_class();
        v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      delegate = [v10 delegate];
      NSClassFromString(&cfstr_Wfmainscenedel.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  return v10;
}

+ (id)workflowIdentifierFromUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqualToString:@"is.workflow.my.app.viewworkflow"];

  if (v5)
  {
    userInfo = [activityCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"WorkflowID"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

+ (id)userActivityForEditingWorkflow:(id)workflow
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1EF0];
  workflowCopy = workflow;
  v5 = [[v3 alloc] initWithActivityType:@"is.workflow.my.app.viewworkflow"];
  [v5 setEligibleForHandoff:1];
  [v5 setEligibleForPrediction:1];
  v9 = @"WorkflowID";
  identifier = [workflowCopy identifier];

  v10[0] = identifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setUserInfo:v7];

  return v5;
}

+ (id)existingSceneSessionForEditingWorkflowReference:(id)reference
{
  v23 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  openSessions = [mEMORY[0x277D75128] openSessions];

  obj = openSessions;
  v6 = [openSessions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        userInfo = [v10 userInfo];
        v12 = [userInfo objectForKey:@"WorkflowID"];
        identifier = [referenceCopy identifier];
        v14 = [v12 isEqualToString:identifier];

        if (v14)
        {
          v15 = v10;
          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (void)setupSession:(id)session forEditingWorkflow:(id)workflow
{
  v11[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  workflowCopy = workflow;
  identifier = [workflowCopy identifier];

  if (identifier)
  {
    v10 = @"WorkflowID";
    identifier2 = [workflowCopy identifier];
    v11[0] = identifier2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [sessionCopy setUserInfo:v9];
  }
}

+ (void)activateSceneForWorkflowReference:(id)reference sender:(id)sender
{
  senderCopy = sender;
  referenceCopy = reference;
  v11 = [self userActivityForEditingWorkflow:referenceCopy];
  v8 = [self existingSceneSessionForEditingWorkflowReference:referenceCopy];

  v9 = objc_opt_new();
  [v9 setRequestingScene:senderCopy];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] requestSceneSessionActivation:v8 userActivity:v11 options:v9 errorHandler:0];
}

@end