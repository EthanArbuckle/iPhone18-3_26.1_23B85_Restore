@interface WFTimeOffsetParameterMigration
- (void)migrateWorkflow;
@end

@implementation WFTimeOffsetParameterMigration

- (void)migrateWorkflow
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v32 = *v36;
    do
    {
      v6 = 0;
      v33 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKeyedSubscript:actionIdentifierKey];
        v10 = [v9 isEqualToString:@"is.workflow.actions.adjustdate"];

        if (v10)
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v7 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 objectForKeyedSubscript:@"WFAdjustOffsetPicker"];
          v14 = [v13 objectForKey:@"Value"];
          v15 = [v14 objectForKeyedSubscript:@"Operation"];
          v16 = [v14 objectForKeyedSubscript:@"Unit"];
          v17 = [v16 isEqualToString:@"Second"];
          v18 = WFDurationQuantityFieldUnitSeconds;
          if ((v17 & 1) == 0)
          {
            v19 = [v16 isEqualToString:@"Minute"];
            v18 = WFDurationQuantityFieldUnitMinutes;
            if ((v19 & 1) == 0)
            {
              v20 = [v16 isEqualToString:@"Hour"];
              v18 = WFDurationQuantityFieldUnitHours;
              if ((v20 & 1) == 0)
              {
                v21 = [v16 isEqualToString:@"Day"];
                v18 = &WFDurationQuantityFieldUnitDays;
                if ((v21 & 1) == 0)
                {
                  v22 = [v16 isEqualToString:@"Week"];
                  v18 = &WFDurationQuantityFieldUnitWeeks;
                  if ((v22 & 1) == 0)
                  {
                    v23 = [v16 isEqualToString:@"Month"];
                    v18 = &WFDurationQuantityFieldUnitMonths;
                    if ((v23 & 1) == 0)
                    {
                      v24 = [v16 isEqualToString:@"Year"];
                      v18 = &WFDurationQuantityFieldUnitDays;
                      if (v24)
                      {
                        v18 = &WFDurationQuantityFieldUnitYears;
                      }
                    }
                  }
                }
              }
            }
          }

          v25 = *v18;

          v26 = [v14 objectForKeyedSubscript:@"Value"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [[WFVariable alloc] initWithDictionary:v26 variableProvider:0];
            if (v27)
            {
              v28 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithVariable:v27];
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:v26 variableProvider:0 parameter:0];
          }

          v29 = [[WFQuantityParameterState alloc] initWithMagnitudeState:v28 unitString:v25];

          [v12 setObject:v15 forKeyedSubscript:@"WFAdjustOperation"];
          serializedRepresentation = [(WFQuantityParameterState *)v29 serializedRepresentation];
          [v12 setObject:serializedRepresentation forKeyedSubscript:@"WFDuration"];

          v5 = v32;
          v4 = v33;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v31 = *MEMORY[0x1E69E9840];
}

@end