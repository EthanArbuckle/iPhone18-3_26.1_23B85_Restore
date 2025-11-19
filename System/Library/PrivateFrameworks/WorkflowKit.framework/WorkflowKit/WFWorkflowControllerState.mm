@interface WFWorkflowControllerState
+ (void)getStateFromURL:(id)a3 completionHandler:(id)a4;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (WFWorkflowControllerState)initWithCoder:(id)a3;
- (WFWorkflowControllerState)initWithWorkflow:(id)a3 variables:(id)a4 currentActionIndex:(unint64_t)a5 runningContext:(id)a6 currentInput:(id)a7 currentProcessedParameters:(id)a8 startDate:(id)a9 currentRunSource:(id)a10 numberOfDialogsPresented:(int64_t)a11 outputBehavior:(unint64_t)a12 contentAttributionTracker:(id)a13 contentItemCache:(id)a14 flowTracker:(id)a15 allowedOnceSmartPromptStates:(id)a16 extensionResourceClasses:(id)a17 shouldDisablePrivacyPrompts:(BOOL)a18;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowControllerState

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACC8];
  v7 = a3;
  v8 = [v6 wf_securelyArchivedDataWithRootObject:self deletionResponsibility:1];
  v12 = 0;
  v9 = [v8 writeToURL:v7 options:0 error:&v12];

  v10 = v12;
  if (a4 && (v9 & 1) == 0)
  {
    v10 = v10;
    *a4 = v10;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  v4 = [(WFWorkflowControllerState *)self workflow];
  [v22 encodeObject:v4 forKey:@"workflow"];

  v5 = [(WFWorkflowControllerState *)self variables];
  [v22 encodeObject:v5 forKey:@"variables"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWorkflowControllerState currentActionIndex](self, "currentActionIndex")}];
  [v22 encodeObject:v6 forKey:@"currentActionIndex"];

  v7 = [(WFWorkflowControllerState *)self runningContext];
  [v22 encodeObject:v7 forKey:@"runningContext"];

  v8 = [(WFWorkflowControllerState *)self currentInput];
  v9 = [v8 numberOfItems];

  if (v9)
  {
    v10 = [(WFWorkflowControllerState *)self currentInput];
    [v22 encodeObject:v10 forKey:@"currentInput"];
  }

  v11 = [(WFWorkflowControllerState *)self currentProcessedParameters];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(WFWorkflowControllerState *)self currentProcessedParameters];
    [v22 encodeObject:v13 forKey:@"currentProcessedParameters"];
  }

  v14 = [(WFWorkflowControllerState *)self startDate];
  [v22 encodeObject:v14 forKey:@"startDate"];

  v15 = [(WFWorkflowControllerState *)self currentRunSource];
  [v22 encodeObject:v15 forKey:@"currentRunSource"];

  [v22 encodeInteger:-[WFWorkflowControllerState numberOfDialogsPresented](self forKey:{"numberOfDialogsPresented"), @"numberOfDialogsPresented"}];
  v16 = [(WFWorkflowControllerState *)self currentActionContentAttributionTracker];
  [v22 encodeObject:v16 forKey:@"currentActionContentAttributionTracker"];

  v17 = [(WFWorkflowControllerState *)self contentItemCache];
  [v22 encodeObject:v17 forKey:@"contentItemCache"];

  v18 = [(WFWorkflowControllerState *)self flowTracker];
  [v22 encodeObject:v18 forKey:@"flowTracker"];

  v19 = [(WFWorkflowControllerState *)self allowedOnceSmartPromptStates];
  [v22 encodeObject:v19 forKey:@"allowedOnceSmartPromptStates"];

  v20 = [(WFWorkflowControllerState *)self extensionResourceClasses];
  [v22 encodeObject:v20 forKey:@"extensionResourceClasses"];

  [v22 encodeBool:-[WFWorkflowControllerState shouldDisablePrivacyPrompts](self forKey:{"shouldDisablePrivacyPrompts"), @"shouldDisablePrivacyPrompts"}];
  v21 = [(WFWorkflowControllerState *)self outputBehavior]== 1;
  [v22 encodeInteger:-[WFWorkflowControllerState outputBehavior](self forKey:{"outputBehavior"), @"outputBehavior"}];
  [v22 encodeBool:v21 forKey:@"ignoresOutput"];
}

- (WFWorkflowControllerState)initWithCoder:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = WFWorkflowControllerState;
  v5 = [(WFWorkflowControllerState *)&v47 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflow"];
    workflow = v5->_workflow;
    v5->_workflow = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"variables"];
    v13 = [v12 copy];
    variables = v5->_variables;
    v5->_variables = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentActionIndex"];
    v5->_currentActionIndex = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runningContext"];
    runningContext = v5->_runningContext;
    v5->_runningContext = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentInput"];
    currentInput = v5->_currentInput;
    v5->_currentInput = v18;

    v20 = +[WFParameterValueRegistry registeredValueClasses];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"currentProcessedParameters"];
    v22 = [v21 copy];
    currentProcessedParameters = v5->_currentProcessedParameters;
    v5->_currentProcessedParameters = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentRunSource"];
    currentRunSource = v5->_currentRunSource;
    v5->_currentRunSource = v26;

    v5->_numberOfDialogsPresented = [v4 decodeIntegerForKey:@"numberOfDialogsPresented"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentActionContentAttributionTracker"];
    currentActionContentAttributionTracker = v5->_currentActionContentAttributionTracker;
    v5->_currentActionContentAttributionTracker = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentItemCache"];
    contentItemCache = v5->_contentItemCache;
    v5->_contentItemCache = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowTracker"];
    flowTracker = v5->_flowTracker;
    v5->_flowTracker = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"allowedOnceSmartPromptStates"];
    allowedOnceSmartPromptStates = v5->_allowedOnceSmartPromptStates;
    v5->_allowedOnceSmartPromptStates = v37;

    v39 = MEMORY[0x1E695DFD8];
    v40 = objc_opt_class();
    v41 = [v39 setWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"extensionResourceClasses"];
    extensionResourceClasses = v5->_extensionResourceClasses;
    v5->_extensionResourceClasses = v42;

    v5->_shouldDisablePrivacyPrompts = [v4 decodeBoolForKey:@"shouldDisablePrivacyPrompts"];
    if ([v4 containsValueForKey:@"outputBehavior"])
    {
      v44 = [v4 decodeIntegerForKey:@"outputBehavior"];
    }

    else if ([v4 decodeBoolForKey:@"ignoresOutput"])
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    v5->_outputBehavior = v44;
    v45 = v5;
  }

  return v5;
}

- (WFWorkflowControllerState)initWithWorkflow:(id)a3 variables:(id)a4 currentActionIndex:(unint64_t)a5 runningContext:(id)a6 currentInput:(id)a7 currentProcessedParameters:(id)a8 startDate:(id)a9 currentRunSource:(id)a10 numberOfDialogsPresented:(int64_t)a11 outputBehavior:(unint64_t)a12 contentAttributionTracker:(id)a13 contentItemCache:(id)a14 flowTracker:(id)a15 allowedOnceSmartPromptStates:(id)a16 extensionResourceClasses:(id)a17 shouldDisablePrivacyPrompts:(BOOL)a18
{
  v46 = a3;
  v48 = a4;
  v45 = a6;
  v44 = a7;
  v47 = a8;
  v43 = a9;
  v42 = a10;
  v41 = a13;
  v22 = a14;
  v23 = a15;
  v24 = a16;
  v25 = a17;
  v49.receiver = self;
  v49.super_class = WFWorkflowControllerState;
  v26 = [(WFWorkflowControllerState *)&v49 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_workflow, a3);
    v28 = [v48 copy];
    variables = v27->_variables;
    v27->_variables = v28;

    v27->_currentActionIndex = a5;
    objc_storeStrong(&v27->_runningContext, a6);
    objc_storeStrong(&v27->_currentInput, a7);
    v30 = [v47 copy];
    currentProcessedParameters = v27->_currentProcessedParameters;
    v27->_currentProcessedParameters = v30;

    objc_storeStrong(&v27->_startDate, a9);
    objc_storeStrong(&v27->_currentRunSource, a10);
    v27->_numberOfDialogsPresented = a11;
    v27->_outputBehavior = a12;
    objc_storeStrong(&v27->_currentActionContentAttributionTracker, a13);
    objc_storeStrong(&v27->_contentItemCache, a14);
    objc_storeStrong(&v27->_flowTracker, a15);
    v32 = [v24 copy];
    allowedOnceSmartPromptStates = v27->_allowedOnceSmartPromptStates;
    v27->_allowedOnceSmartPromptStates = v32;

    v34 = [v25 copy];
    extensionResourceClasses = v27->_extensionResourceClasses;
    v27->_extensionResourceClasses = v34;

    v27->_shouldDisablePrivacyPrompts = a18;
    v36 = v27;
  }

  return v27;
}

+ (void)getStateFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DEF0];
  v7 = a3;
  v15 = 0;
  v8 = [[v6 alloc] initWithContentsOfURL:v7 options:0 error:&v15];

  v9 = v15;
  if (v8)
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__WFWorkflowControllerState_getStateFromURL_completionHandler___block_invoke;
    v13[3] = &unk_1E8377ED0;
    v14 = v5;
    v12 = [v10 wf_securelyUnarchiveObjectWithData:v8 allowedClasses:v11 completionHandler:v13];
  }

  else
  {
    (*(v5 + 2))(v5, 0, v9);
  }
}

@end