@interface WFMDMVerifier
+ (id)contentAttributionsFromContentAttributionSets:(id)a3 withManagedLevel:(unint64_t)a4;
- (BOOL)canSendDataToContentDestination:(id)a3 error:(id *)a4;
- (WFMDMVerifier)initWithAction:(id)a3;
- (WFMDMVerifier)initWithContentAttributionSets:(id)a3 actionName:(id)a4;
- (id)errorFromFailedVerificationContentAttributionSets:(id)a3 contentDestination:(id)a4 destinationManagedLevel:(unint64_t)a5;
@end

@implementation WFMDMVerifier

- (id)errorFromFailedVerificationContentAttributionSets:(id)a3 contentDestination:(id)a4 destinationManagedLevel:(unint64_t)a5
{
  v36[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    if ([v8 managedLevel] == 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v34 = [WFMDMVerifier contentAttributionsFromContentAttributionSets:v7 withManagedLevel:v9];
    v10 = [v34 sortedArrayUsingComparator:&__block_literal_global_63628];
    v11 = objc_alloc(MEMORY[0x1E695DFB8]);
    v33 = v10;
    v12 = [v10 if_compactMap:&__block_literal_global_187];
    v13 = [v11 initWithArray:v12];

    v14 = [v8 localizedTitle];
    v15 = [v13 count];
    v16 = MEMORY[0x1E696AEC0];
    if (v15)
    {
      v17 = v14 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (v14)
      {
        v19 = WFLocalizedString(@"Your administrator doesn’t allow sending data to %@.");
        [v16 localizedStringWithFormat:v19, v14, 0];
      }

      else
      {
        v19 = WFLocalizedString(@"Your administrator doesn’t allow sending data to this action.");
        [v16 localizedStringWithFormat:v19, 0, 0];
      }
      v23 = ;
    }

    else
    {
      v19 = WFLocalizedString(@"Your administrator doesn’t allow sending data from %1$@ to %2$@.");
      v20 = MEMORY[0x1E696AD08];
      v21 = [v13 array];
      v22 = [v20 localizedStringByJoiningStrings:v21];
      v23 = [v16 localizedStringWithFormat:v19, v22, v14, 0];
    }

    v24 = [(WFMDMVerifier *)self actionName];
    if (v24)
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = WFLocalizedString(@"Couldn’t Run “%@”");
      v27 = [v25 localizedStringWithFormat:v26, v24, 0];
    }

    else
    {
      v27 = WFLocalizedString(@"Couldn’t Run Action");
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v35[0] = *MEMORY[0x1E696A588];
    v35[1] = v29;
    v36[0] = v27;
    v36[1] = v23;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v18 = [v28 errorWithDomain:@"WFActionErrorDomain" code:8 userInfo:v30];
  }

  else
  {
    v18 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

id __110__WFMDMVerifier_errorFromFailedVerificationContentAttributionSets_contentDestination_destinationManagedLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 origin];
  v3 = [v2 localizedMDMDescription];

  return v3;
}

uint64_t __110__WFMDMVerifier_errorFromFailedVerificationContentAttributionSets_contentDestination_destinationManagedLevel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 origin];
  if (objc_opt_class())
  {
    v7 = [v5 origin];
    v8 = objc_opt_class();

    if (v8)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = [v4 origin];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_8:

  return v9;
}

- (BOOL)canSendDataToContentDestination:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 managedLevel];
  if (v7)
  {
    v8 = v7;
    if (v7 == 3)
    {
      v9 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v17 = "[WFMDMVerifier canSendDataToContentDestination:error:]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s The content destination of an action should never be mixed", buf, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      v11 = [(WFMDMVerifier *)self contentAttributionSets];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__WFMDMVerifier_canSendDataToContentDestination_error___block_invoke;
      v15[3] = &__block_descriptor_40_e33_B16__0__WFContentAttributionSet_8l;
      v15[4] = v8;
      v9 = [v11 if_objectsPassingTest:v15];

      v12 = [v9 count];
      v10 = v12 == 0;
      if (a4 && v12)
      {
        *a4 = [(WFMDMVerifier *)self errorFromFailedVerificationContentAttributionSets:v9 contentDestination:v6 destinationManagedLevel:v8];
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WFMDMVerifier)initWithAction:(id)a3
{
  v4 = a3;
  v5 = [v4 parameters];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__WFMDMVerifier_initWithAction___block_invoke;
  v11[3] = &unk_1E837D8B0;
  v12 = v4;
  v6 = v4;
  v7 = [v5 if_flatMap:v11];

  v8 = [v6 localizedName];
  v9 = [(WFMDMVerifier *)self initWithContentAttributionSets:v7 actionName:v8];

  return v9;
}

void *__32__WFMDMVerifier_initWithAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 key];
  v5 = [*(a1 + 32) parameterStateForKey:v4 fallingBackToDefaultValue:0];
  v6 = [v5 containedVariables];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__WFMDMVerifier_initWithAction___block_invoke_2;
  v15[3] = &unk_1E837D888;
  v16 = *(a1 + 32);
  v7 = [v6 if_compactMap:v15];
  v8 = [*(a1 + 32) contentAttributionTracker];
  v9 = [v8 attributionSetForParameter:v3];

  v10 = [v7 arrayByAddingObject:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = v12;

  return v12;
}

id __32__WFMDMVerifier_initWithAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 variableSource];
  v5 = WFPreferredVariableNameForVariable(v3);

  v6 = [v4 contentForVariableWithName:v5];

  v7 = [v6 attributionSet];

  return v7;
}

- (WFMDMVerifier)initWithContentAttributionSets:(id)a3 actionName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFMDMVerifier.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"contentAttributionSets"}];
  }

  v17.receiver = self;
  v17.super_class = WFMDMVerifier;
  v9 = [(WFMDMVerifier *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    contentAttributionSets = v9->_contentAttributionSets;
    v9->_contentAttributionSets = v10;

    v12 = [v8 copy];
    actionName = v9->_actionName;
    v9->_actionName = v12;

    v14 = v9;
  }

  return v9;
}

+ (id)contentAttributionsFromContentAttributionSets:(id)a3 withManagedLevel:(unint64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__WFMDMVerifier_contentAttributionsFromContentAttributionSets_withManagedLevel___block_invoke;
  v6[3] = &__block_descriptor_40_e42___NSArray_16__0__WFContentAttributionSet_8l;
  v6[4] = a4;
  v4 = [a3 if_flatMap:v6];

  return v4;
}

id __80__WFMDMVerifier_contentAttributionsFromContentAttributionSets_withManagedLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributions];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__WFMDMVerifier_contentAttributionsFromContentAttributionSets_withManagedLevel___block_invoke_2;
  v6[3] = &__block_descriptor_40_e30_B16__0__WFContentAttribution_8l;
  v6[4] = *(a1 + 32);
  v4 = [v3 if_objectsPassingTest:v6];

  return v4;
}

BOOL __80__WFMDMVerifier_contentAttributionsFromContentAttributionSets_withManagedLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 origin];
  v4 = [v3 managedLevel] == *(a1 + 32);

  return v4;
}

@end