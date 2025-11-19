@interface WFWorkflowImportQuestion
- (WFAction)action;
- (WFParameter)parameter;
- (WFWorkflowImportQuestion)initWithAction:(id)a3 parameter:(id)a4 question:(id)a5 defaultState:(id)a6;
- (WFWorkflowImportQuestion)initWithSerializedRepresentation:(id)a3 workflowActions:(id)a4;
- (id)serializedRepresentationWithWorkflowActions:(id)a3;
@end

@implementation WFWorkflowImportQuestion

- (WFParameter)parameter
{
  WeakRetained = objc_loadWeakRetained(&self->_parameter);

  return WeakRetained;
}

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (id)serializedRepresentationWithWorkflowActions:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowImportQuestion *)self action];
  v6 = [(WFWorkflowImportQuestion *)self parameter];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v4 indexOfObject:v5];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v10 = v9;
      v8 = objc_opt_new();
      [v8 setObject:@"Parameter" forKey:@"Category"];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      [v8 setObject:v11 forKey:@"ActionIndex"];

      v12 = [v7 key];
      [v8 setObject:v12 forKey:@"ParameterKey"];

      v13 = [(WFWorkflowImportQuestion *)self question];
      [v8 setValue:v13 forKey:@"Text"];

      v14 = [(WFWorkflowImportQuestion *)self defaultState];
      v15 = [v14 serializedRepresentation];
      [v8 setValue:v15 forKey:@"DefaultValue"];
    }
  }

  return v8;
}

- (WFWorkflowImportQuestion)initWithSerializedRepresentation:(id)a3 workflowActions:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKey:@"Category"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_74017(v8, v9);

  v11 = [v7 objectForKey:@"ActionIndex"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_74017(v11, v12);

  v14 = [v7 objectForKey:@"ParameterKey"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_74017(v14, v15);

  v17 = [v7 objectForKey:@"Text"];
  v18 = objc_opt_class();
  v19 = WFEnforceClass_74017(v17, v18);

  v20 = [v7 objectForKey:@"DefaultValue"];

  v21 = [v10 isEqualToString:@"Parameter"];
  v22 = 0;
  if (v16 && v13 && v21)
  {
    v23 = [v13 unsignedIntegerValue];
    if (v23 >= [v6 count])
    {
      v22 = 0;
    }

    else
    {
      v33 = self;
      v24 = [v6 objectAtIndex:{objc_msgSend(v13, "unsignedIntegerValue")}];
      v25 = [v24 parameterForKey:v16];
      if (v25)
      {
        v32 = v24;
        v34[0] = @"Hidden";
        v34[1] = @"NotSupported";
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
        v27 = [v25 importQuestionBehavior];
        v28 = [v26 containsObject:v27];

        if (v28)
        {
          v29 = 0;
          v24 = v32;
        }

        else
        {
          v24 = v32;
          v29 = [v32 createStateForParameter:v25 fromSerializedRepresentation:v20];
        }

        v22 = [[WFWorkflowImportQuestion alloc] initWithAction:v24 parameter:v25 question:v19 defaultState:v29];
      }

      else
      {
        v22 = 0;
      }

      self = v33;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

- (WFWorkflowImportQuestion)initWithAction:(id)a3 parameter:(id)a4 question:(id)a5 defaultState:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 parameters];
  if ([v14 containsObject:v11])
  {
    v15 = 0;
  }

  else
  {
    v16 = [v10 visibleParametersWithProcessing:0];
    v17 = [v16 containsObject:v11];

    v15 = v17 ^ 1;
  }

  if (!v10 || !v11 || v15)
  {
    v23 = getWFEditorLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "[WFWorkflowImportQuestion initWithAction:parameter:question:defaultState:]";
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v10;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Import Question unable to find parameter %{public}@ on action %{public}@", buf, 0x20u);
    }

    v19 = 0;
    goto LABEL_12;
  }

  v26.receiver = self;
  v26.super_class = WFWorkflowImportQuestion;
  v18 = [(WFWorkflowImportQuestion *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_action, v10);
    objc_storeWeak(&v19->_parameter, v11);
    v20 = [v12 copy];
    question = v19->_question;
    v19->_question = v20;

    v22 = v13;
    self = v19->_defaultState;
    v19->_defaultState = v22;
LABEL_12:
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

@end