@interface WFWindowSceneManager
+ (id)existingSceneSessionForEditingWorkflowReference:(id)a3;
+ (id)mainScene;
+ (id)userActivityForEditingWorkflow:(id)a3;
+ (id)workflowIdentifierFromUserActivity:(id)a3;
+ (void)activateSceneForWorkflowReference:(id)a3 sender:(id)a4;
+ (void)setupSession:(id)a3 forEditingWorkflow:(id)a4;
@end

@implementation WFWindowSceneManager

+ (id)mainScene
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 connectedScenes];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v3);
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

      v11 = [v10 delegate];
      NSClassFromString(&cfstr_Wfmainscenedel.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)workflowIdentifierFromUserActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [v4 isEqualToString:@"is.workflow.my.app.viewworkflow"];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"WorkflowID"];

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

+ (id)userActivityForEditingWorkflow:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1EF0];
  v4 = a3;
  v5 = [[v3 alloc] initWithActivityType:@"is.workflow.my.app.viewworkflow"];
  [v5 setEligibleForHandoff:1];
  [v5 setEligibleForPrediction:1];
  v9 = @"WorkflowID";
  v6 = [v4 identifier];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setUserInfo:v7];

  return v5;
}

+ (id)existingSceneSessionForEditingWorkflowReference:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 openSessions];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        v11 = [v10 userInfo];
        v12 = [v11 objectForKey:@"WorkflowID"];
        v13 = [v3 identifier];
        v14 = [v12 isEqualToString:v13];

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

+ (void)setupSession:(id)a3 forEditingWorkflow:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 identifier];

  if (v7)
  {
    v10 = @"WorkflowID";
    v8 = [v6 identifier];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 setUserInfo:v9];
  }
}

+ (void)activateSceneForWorkflowReference:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [a1 userActivityForEditingWorkflow:v7];
  v8 = [a1 existingSceneSessionForEditingWorkflowReference:v7];

  v9 = objc_opt_new();
  [v9 setRequestingScene:v6];

  v10 = [MEMORY[0x277D75128] sharedApplication];
  [v10 requestSceneSessionActivation:v8 userActivity:v11 options:v9 errorHandler:0];
}

@end