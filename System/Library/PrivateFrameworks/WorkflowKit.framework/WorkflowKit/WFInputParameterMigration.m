@interface WFInputParameterMigration
- (id)findActionProvidingInputToActionAtIndex:(unint64_t)a3 inWorkflow:(id)a4 reachedBeginning:(BOOL *)a5 inputActionIndex:(unint64_t *)a6;
- (id)findGetVariableActionProvidingInputToActionAtIndex:(int64_t)a3 inWorkflow:(id)a4;
- (id)inputSourceOfAction:(id)a3 inActions:(id)a4;
- (void)migrateLegacyInputVariablesInParameterDictionary:(id)a3 toVariable:(id)a4;
- (void)migrateWorkflow;
- (void)recursivelyFindDictionaryWithKey:(id)a3 inArray:(id)a4 then:(id)a5;
- (void)recursivelyFindDictionaryWithKey:(id)a3 inDictionary:(id)a4 then:(id)a5;
- (void)recursivelyFindDictionaryWithKey:(id)a3 inObject:(id)a4 then:(id)a5;
@end

@implementation WFInputParameterMigration

- (void)migrateLegacyInputVariablesInParameterDictionary:(id)a3 toVariable:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke;
  v8[3] = &unk_1E8378B98;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:@"WFSerializationType" inDictionary:a3 then:v8];
}

void __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke_2;
  v4[3] = &unk_1E8378B70;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 recursivelyFindDictionaryWithKey:@"Type" inDictionary:a2 then:v4];
}

void __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"Type"];
  v5 = [v4 isEqualToString:@"Input"];

  if (v5)
  {
    v6 = [*(a1 + 32) serializedRepresentation];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315906;
        v14 = "WFEnforceClass";
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = objc_opt_class();
        v19 = 2114;
        v20 = v7;
        v11 = v18;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s WFInputParameterMigration failed to open record with error: %{public}@", &v13, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    [v3 setDictionary:v9];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)recursivelyFindDictionaryWithKey:(id)a3 inArray:(id)a4 then:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:v8 inObject:*(*(&v16 + 1) + 8 * v14++) then:v10];
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)recursivelyFindDictionaryWithKey:(id)a3 inDictionary:(id)a4 then:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:v8];
  if (v11)
  {
    v10[2](v10, v9);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v12 objectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
          [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:v8 inObject:v17 then:v10];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)recursivelyFindDictionaryWithKey:(id)a3 inObject:(id)a4 then:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:v10 inDictionary:v8 then:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:v10 inArray:v8 then:v9];
    }
  }
}

- (id)findGetVariableActionProvidingInputToActionAtIndex:(int64_t)a3 inWorkflow:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = a3 - 1;
    v10 = [v6 actions];
    v11 = [v10 objectAtIndex:a3 - 1];

    v12 = [v11 identifier];
    v13 = [v12 isEqualToString:@"is.workflow.actions.getvariable"];

    if (v13)
    {
      v8 = v11;
    }

    else if ([v11 inputPassthrough])
    {
      v14 = [(WFInputParameterMigration *)self findActionProvidingInputToActionAtIndex:v9 inWorkflow:v7 reachedBeginning:0 inputActionIndex:0];
      v15 = [v14 identifier];
      v16 = [v15 isEqualToString:@"is.workflow.actions.getvariable"];

      v8 = 0;
      if (v16)
      {
        v8 = v14;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)findActionProvidingInputToActionAtIndex:(unint64_t)a3 inWorkflow:(id)a4 reachedBeginning:(BOOL *)a5 inputActionIndex:(unint64_t *)a6
{
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x1E695DFB8]);
  v10 = [v8 actions];
  v11 = [v9 initWithArray:v10];

  v12 = [v11 objectAtIndex:a3];
  v13 = objc_opt_new();
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [v11 indexOfObject:v12];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!v15)
    {
      if (a5)
      {
        v17 = 0;
        *a5 = 1;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ([v13 containsObject:v12])
    {
      goto LABEL_13;
    }

    [v13 addObject:v12];
    v17 = [(WFInputParameterMigration *)self inputSourceOfAction:v12 inActions:v11];
    if (!v17 || (v18 = [v11 indexOfObject:v17], v18 == v16 - 1) && (objc_msgSend(v12, "legacyBehaviorIgnoresOutputFromAction:inWorkflow:", v17, v8) & 1) != 0)
    {

LABEL_13:
      v17 = 0;
      goto LABEL_14;
    }

    v19 = [[WFInputMigrationUUIDProvider alloc] initWithAction:v17 atPosition:v18];
    v20 = [v17 outputVariableWithVariableProvider:v12 UUIDProvider:v19];

    if (v20)
    {
      break;
    }

    objc_autoreleasePoolPop(v14);
    v12 = v17;
  }

  if (a6)
  {
    *a6 = v18;
  }

LABEL_14:
  objc_autoreleasePoolPop(v14);

  return v17;
}

- (id)inputSourceOfAction:(id)a3 inActions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 indexOfObject:v5];
  v8 = 0;
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  v10 = v5;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = 0;
    goto LABEL_20;
  }

  if ([v10 mode] != 1)
  {
LABEL_20:
    v8 = [v6 objectAtIndex:v9 - 1];
    goto LABEL_21;
  }

  while (1)
  {
    v11 = [v6 objectAtIndex:v9];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v8 = v12;

    if ([v8 mode])
    {
      goto LABEL_18;
    }

    v13 = [v8 groupingIdentifier];
    v14 = [v10 groupingIdentifier];
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {
      break;
    }

    if (v15 && v16)
    {
      v18 = [v15 isEqualToString:v16];

      if (v18)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

LABEL_18:
    --v9;
  }

LABEL_21:
LABEL_22:

  return v8;
}

- (void)migrateWorkflow
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [WFWorkflowFile alloc];
  v4 = [(WFWorkflowMigration *)self workflow];
  v5 = [(WFWorkflowFile *)v3 initWithDictionary:v4 name:@"Migrating Workflow" performMigration:0];

  v41 = 0;
  v6 = [(WFWorkflowFile *)v5 recordRepresentationWithError:&v41];
  v7 = v41;
  if (v6)
  {
    v40 = v7;
    v8 = [[WFWorkflow alloc] initWithRecord:v6 reference:0 storageProvider:0 migrateIfNecessary:0 environment:0 error:&v40];
    v9 = v40;

    if (v8)
    {
      v31 = v9;
      v33 = v6;
      v34 = v5;
      v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v11 = [(WFWorkflow *)v8 actions];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __44__WFInputParameterMigration_migrateWorkflow__block_invoke;
      v35[3] = &unk_1E837F848;
      v12 = v11;
      v36 = v12;
      v37 = self;
      v32 = v8;
      v38 = v8;
      v30 = v10;
      v39 = v30;
      [(WFWorkflow *)v38 performBatchOperation:v35];
      v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
      if ([v12 count])
      {
        v14 = 0;
        do
        {
          v15 = [v12 objectAtIndex:v14];
          v16 = [(WFWorkflowMigration *)self actions];
          v17 = [v16 objectAtIndex:v14];

          v18 = [(WFWorkflowMigration *)self actionIdentifierKey];
          v19 = [v17 objectForKey:v18];

          v20 = [(WFWorkflowMigration *)self actionParametersKey];
          v21 = [v17 objectForKey:v20];

          v22 = [v15 UUID];

          if (v22)
          {
            v23 = [v15 UUID];
            [v21 setObject:v23 forKey:@"UUID"];
          }

          if ([v19 isEqualToString:@"is.workflow.actions.getvariable"])
          {
            [v13 addIndex:v14];
          }

          ++v14;
        }

        while (v14 < [v12 count]);
      }

      [v13 removeIndexes:v30];
      if ([v13 count])
      {
        v24 = [(WFWorkflowMigration *)self actions];
        [v24 removeObjectsAtIndexes:v13];
      }

      [(WFWorkflowMigration *)self finish];

      v6 = v33;
      v5 = v34;
      v9 = v31;
      v8 = v32;
    }

    else
    {
      v27 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v28 = [v9 localizedDescription];
        *buf = 136315394;
        v43 = "[WFInputParameterMigration migrateWorkflow]";
        v44 = 2114;
        v45 = v28;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s WFInputParameterMigration failed to open workflow with error: %{public}@", buf, 0x16u);
      }

      [(WFWorkflowMigration *)self finish];
    }

    v7 = v9;
  }

  else
  {
    v25 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v26 = [v7 localizedDescription];
      *buf = 136315394;
      v43 = "[WFInputParameterMigration migrateWorkflow]";
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s WFInputParameterMigration failed to open record with error: %{public}@", buf, 0x16u);
    }

    [(WFWorkflowMigration *)self finish];
  }

  v29 = *MEMORY[0x1E69E9840];
}

unint64_t __44__WFInputParameterMigration_migrateWorkflow__block_invoke(id *a1)
{
  v1 = a1;
  v61 = *MEMORY[0x1E69E9840];
  result = [a1[4] count];
  if (result)
  {
    v3 = 0;
    v45 = *MEMORY[0x1E69E1458];
    v42 = sel_initWithVariable_;
    v43 = v1;
    v4 = &off_1E836E000;
    v5 = &off_1E836E000;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v1[4] objectAtIndex:v3];
      v8 = [v7 identifier];
      v9 = [v8 isEqualToString:@"is.workflow.actions.conditional"];

      if (v9)
      {
        v51 = objc_opt_class();
        v10 = @"WFInput";
      }

      else
      {
        v11 = [v7 inputParameter];
        v10 = [v11 keyForSerialization];
        v51 = [v11 stateClass];
      }

      v12 = [v1[5] actions];
      v13 = [v12 objectAtIndex:v3];

      v14 = [v1[5] actionParametersKey];
      v52 = v13;
      v53 = [v13 objectForKey:v14];

      v15 = v4[22];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 inputPassthrough] && !v10)
      {
        v16 = [v1[5] findGetVariableActionProvidingInputToActionAtIndex:v3 inWorkflow:v1[6]];
        if (v16)
        {
          [v1[7] addIndex:{objc_msgSend(v1[4], "indexOfObject:", v16)}];
        }
      }

      v59 = 0;
      v58 = 0;
      v17 = [v1[5] findActionProvidingInputToActionAtIndex:v3 inWorkflow:v1[6] reachedBeginning:&v59 inputActionIndex:&v58];
      if (v17)
      {
        v18 = objc_alloc(v5[175]);
        v19 = [v18 initWithAction:v17 atPosition:v58];
        v20 = [v17 outputVariableWithVariableProvider:v7 UUIDProvider:v19];
      }

      else
      {
        v20 = 0;
      }

      if (v59 == 1)
      {
        break;
      }

LABEL_21:
      if (v20)
      {
        v50 = v6;
        if (v10 && v51)
        {
          v25 = [v53 objectForKeyedSubscript:v10];

          if ([v7 inputRequired])
          {
            if (!v25)
            {
              goto LABEL_40;
            }

LABEL_46:
            [v1[5] migrateLegacyInputVariablesInParameterDictionary:v53 toVariable:v20];
            v6 = v50;
            goto LABEL_47;
          }

          v44 = v25;
          v47 = v17;
          v49 = v10;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v31 = [v7 containedVariables];
          v32 = [v31 countByEnumeratingWithState:&v54 objects:v60 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v55;
            while (2)
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v55 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = [*(*(&v54 + 1) + 8 * i) UUID];
                v37 = [(WFVariable *)v20 UUID];
                v38 = [v36 isEqualToString:v37];

                if (v38)
                {

                  v1 = v43;
                  v4 = &off_1E836E000;
                  v5 = &off_1E836E000;
                  v17 = v47;
                  v10 = v49;
                  goto LABEL_46;
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v54 objects:v60 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          v1 = v43;
          v4 = &off_1E836E000;
          v5 = &off_1E836E000;
          v17 = v47;
          v10 = v49;
          if (v44)
          {
            goto LABEL_46;
          }

LABEL_40:
          if ([(objc_class *)v51 instancesRespondToSelector:v42])
          {
            v39 = v17;
            v40 = [[v51 alloc] initWithVariable:v20];
            v26 = [v40 serializedRepresentation];

            v17 = v39;
          }

          else
          {
            v26 = 0;
          }

          [v53 setObject:v26 forKeyedSubscript:v10];
        }

        else
        {
          v26 = [v17 identifier];
          if ([v26 isEqualToString:@"is.workflow.actions.getvariable"] && !objc_msgSend(v7, "inputPassthrough"))
          {
            [v7 inputTypes];
            v27 = v5;
            v29 = v28 = v17;
            v30 = [v29 count];

            v17 = v28;
            v5 = v27;
            v4 = &off_1E836E000;

            if (v30)
            {
              [v1[7] addIndex:{objc_msgSend(v1[4], "indexOfObject:", v17)}];
            }

            goto LABEL_46;
          }
        }

        goto LABEL_46;
      }

LABEL_47:

      objc_autoreleasePoolPop(v6);
      ++v3;
      result = [v1[4] count];
      if (v3 >= result)
      {
        goto LABEL_48;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v1[6] workflowTypes];
      if (![v21 containsObject:v45])
      {
LABEL_20:

        goto LABEL_21;
      }

      [v1[6] effectiveInputClasses];
      v48 = v10;
      v23 = v22 = v6;
      v24 = [v7 inputContentClasses];
      v46 = [v7 canHandleInputOfContentClasses:v23 withSupportedClasses:v24 includingCoercedTypes:1];

      v5 = &off_1E836E000;
      v4 = &off_1E836E000;

      v6 = v22;
      v10 = v48;

      if (!v46)
      {
        goto LABEL_21;
      }
    }

    v21 = v20;
    v20 = [[WFShortcutInputVariable alloc] initWithVariableProvider:v7 aggrandizements:0];
    goto LABEL_20;
  }

LABEL_48:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

@end