@interface WFAskForInputIntentMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFAskForInputIntentMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.ask", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.ask" usingBlock:&__block_literal_global_63706];

  [(WFWorkflowMigration *)self finish];
}

void __47__WFAskForInputIntentMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v3 = [v10 objectForKeyedSubscript:@"WFInputType"];
  if ([v3 isEqualToString:@"Date"])
  {
    v4 = [v10 objectForKeyedSubscript:@"WFAskActionDateGranularity"];
    v5 = @"Time";
    if (([v4 isEqualToString:@"Time"] & 1) != 0 || (v5 = @"Date and Time", objc_msgSend(v4, "isEqualToString:", @"Date and Time")))
    {
      [v10 setObject:v5 forKeyedSubscript:@"WFInputType"];
    }
  }

  [v10 removeObjectForKey:@"WFAskActionDateGranularity"];
  v6 = [v10 objectForKeyedSubscript:@"WFAskActionDefaultAnswer"];
  if (v6)
  {
    v7 = [v10 objectForKeyedSubscript:@"WFInputType"];
    if ([v7 isEqualToString:@"Number"])
    {
      v8 = @"WFAskActionDefaultAnswerNumber";
    }

    else if ([v7 isEqualToString:@"URL"])
    {
      v8 = @"WFAskActionDefaultAnswerURL";
    }

    else if (![v7 isEqualToString:@"Date"] || (v8 = @"WFAskActionDefaultAnswerDate", objc_msgSend(v10, "objectForKeyedSubscript:", @"WFAskActionDefaultAnswerDate"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      if ([v7 isEqualToString:@"Time"])
      {
        v8 = @"WFAskActionDefaultAnswerTime";
      }

      else
      {
        if (![v7 isEqualToString:@"Date and Time"])
        {
LABEL_18:

          goto LABEL_19;
        }

        v8 = @"WFAskActionDefaultAnswerDateAndTime";
      }
    }

    [v10 setObject:v6 forKeyedSubscript:v8];
    [v10 removeObjectForKey:@"WFAskActionDefaultAnswer"];
    goto LABEL_18;
  }

LABEL_19:
}

@end