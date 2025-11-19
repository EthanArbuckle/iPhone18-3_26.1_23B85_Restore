@interface NSUserActivity(WorkflowViewing)
- (id)wf_referenceInDatabase:()WorkflowViewing;
@end

@implementation NSUserActivity(WorkflowViewing)

- (id)wf_referenceInDatabase:()WorkflowViewing
{
  v4 = a3;
  v5 = [a1 activityType];
  v6 = [v5 isEqualToString:@"is.workflow.my.app.viewworkflow"];

  if (v6)
  {
    v7 = [a1 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"workflowID"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    v12 = [v7 objectForKeyedSubscript:@"workflowName"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (![v11 length] || (objc_msgSend(v4, "referenceForWorkflowID:", v11), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v14 length])
      {
        v10 = [v4 uniqueVisibleReferenceForWorkflowName:v14];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end