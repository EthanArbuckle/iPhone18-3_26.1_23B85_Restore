@interface NSUserActivity(WorkflowViewing)
- (id)wf_referenceInDatabase:()WorkflowViewing;
@end

@implementation NSUserActivity(WorkflowViewing)

- (id)wf_referenceInDatabase:()WorkflowViewing
{
  v4 = a3;
  activityType = [self activityType];
  v6 = [activityType isEqualToString:@"is.workflow.my.app.viewworkflow"];

  if (v6)
  {
    userInfo = [self userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"workflowID"];
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

    v12 = [userInfo objectForKeyedSubscript:@"workflowName"];
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