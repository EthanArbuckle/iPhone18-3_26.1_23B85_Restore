@interface WFWorkflowControllerState
+ (void)getStateFromURL:(id)l completionHandler:(id)handler;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (WFWorkflowControllerState)initWithCoder:(id)coder;
- (WFWorkflowControllerState)initWithWorkflow:(id)workflow variables:(id)variables currentActionIndex:(unint64_t)index runningContext:(id)context currentInput:(id)input currentProcessedParameters:(id)parameters startDate:(id)date currentRunSource:(id)self0 numberOfDialogsPresented:(int64_t)self1 outputBehavior:(unint64_t)self2 contentAttributionTracker:(id)self3 contentItemCache:(id)self4 flowTracker:(id)self5 allowedOnceSmartPromptStates:(id)self6 extensionResourceClasses:(id)self7 shouldDisablePrivacyPrompts:(BOOL)self8;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowControllerState

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E696ACC8];
  lCopy = l;
  v8 = [v6 wf_securelyArchivedDataWithRootObject:self deletionResponsibility:1];
  v12 = 0;
  v9 = [v8 writeToURL:lCopy options:0 error:&v12];

  v10 = v12;
  if (error && (v9 & 1) == 0)
  {
    v10 = v10;
    *error = v10;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  workflow = [(WFWorkflowControllerState *)self workflow];
  [coderCopy encodeObject:workflow forKey:@"workflow"];

  variables = [(WFWorkflowControllerState *)self variables];
  [coderCopy encodeObject:variables forKey:@"variables"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWorkflowControllerState currentActionIndex](self, "currentActionIndex")}];
  [coderCopy encodeObject:v6 forKey:@"currentActionIndex"];

  runningContext = [(WFWorkflowControllerState *)self runningContext];
  [coderCopy encodeObject:runningContext forKey:@"runningContext"];

  currentInput = [(WFWorkflowControllerState *)self currentInput];
  numberOfItems = [currentInput numberOfItems];

  if (numberOfItems)
  {
    currentInput2 = [(WFWorkflowControllerState *)self currentInput];
    [coderCopy encodeObject:currentInput2 forKey:@"currentInput"];
  }

  currentProcessedParameters = [(WFWorkflowControllerState *)self currentProcessedParameters];
  v12 = [currentProcessedParameters count];

  if (v12)
  {
    currentProcessedParameters2 = [(WFWorkflowControllerState *)self currentProcessedParameters];
    [coderCopy encodeObject:currentProcessedParameters2 forKey:@"currentProcessedParameters"];
  }

  startDate = [(WFWorkflowControllerState *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  currentRunSource = [(WFWorkflowControllerState *)self currentRunSource];
  [coderCopy encodeObject:currentRunSource forKey:@"currentRunSource"];

  [coderCopy encodeInteger:-[WFWorkflowControllerState numberOfDialogsPresented](self forKey:{"numberOfDialogsPresented"), @"numberOfDialogsPresented"}];
  currentActionContentAttributionTracker = [(WFWorkflowControllerState *)self currentActionContentAttributionTracker];
  [coderCopy encodeObject:currentActionContentAttributionTracker forKey:@"currentActionContentAttributionTracker"];

  contentItemCache = [(WFWorkflowControllerState *)self contentItemCache];
  [coderCopy encodeObject:contentItemCache forKey:@"contentItemCache"];

  flowTracker = [(WFWorkflowControllerState *)self flowTracker];
  [coderCopy encodeObject:flowTracker forKey:@"flowTracker"];

  allowedOnceSmartPromptStates = [(WFWorkflowControllerState *)self allowedOnceSmartPromptStates];
  [coderCopy encodeObject:allowedOnceSmartPromptStates forKey:@"allowedOnceSmartPromptStates"];

  extensionResourceClasses = [(WFWorkflowControllerState *)self extensionResourceClasses];
  [coderCopy encodeObject:extensionResourceClasses forKey:@"extensionResourceClasses"];

  [coderCopy encodeBool:-[WFWorkflowControllerState shouldDisablePrivacyPrompts](self forKey:{"shouldDisablePrivacyPrompts"), @"shouldDisablePrivacyPrompts"}];
  v21 = [(WFWorkflowControllerState *)self outputBehavior]== 1;
  [coderCopy encodeInteger:-[WFWorkflowControllerState outputBehavior](self forKey:{"outputBehavior"), @"outputBehavior"}];
  [coderCopy encodeBool:v21 forKey:@"ignoresOutput"];
}

- (WFWorkflowControllerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = WFWorkflowControllerState;
  v5 = [(WFWorkflowControllerState *)&v47 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflow"];
    workflow = v5->_workflow;
    v5->_workflow = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"variables"];
    v13 = [v12 copy];
    variables = v5->_variables;
    v5->_variables = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentActionIndex"];
    v5->_currentActionIndex = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runningContext"];
    runningContext = v5->_runningContext;
    v5->_runningContext = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentInput"];
    currentInput = v5->_currentInput;
    v5->_currentInput = v18;

    v20 = +[WFParameterValueRegistry registeredValueClasses];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"currentProcessedParameters"];
    v22 = [v21 copy];
    currentProcessedParameters = v5->_currentProcessedParameters;
    v5->_currentProcessedParameters = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentRunSource"];
    currentRunSource = v5->_currentRunSource;
    v5->_currentRunSource = v26;

    v5->_numberOfDialogsPresented = [coderCopy decodeIntegerForKey:@"numberOfDialogsPresented"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentActionContentAttributionTracker"];
    currentActionContentAttributionTracker = v5->_currentActionContentAttributionTracker;
    v5->_currentActionContentAttributionTracker = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentItemCache"];
    contentItemCache = v5->_contentItemCache;
    v5->_contentItemCache = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowTracker"];
    flowTracker = v5->_flowTracker;
    v5->_flowTracker = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"allowedOnceSmartPromptStates"];
    allowedOnceSmartPromptStates = v5->_allowedOnceSmartPromptStates;
    v5->_allowedOnceSmartPromptStates = v37;

    v39 = MEMORY[0x1E695DFD8];
    v40 = objc_opt_class();
    v41 = [v39 setWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"extensionResourceClasses"];
    extensionResourceClasses = v5->_extensionResourceClasses;
    v5->_extensionResourceClasses = v42;

    v5->_shouldDisablePrivacyPrompts = [coderCopy decodeBoolForKey:@"shouldDisablePrivacyPrompts"];
    if ([coderCopy containsValueForKey:@"outputBehavior"])
    {
      v44 = [coderCopy decodeIntegerForKey:@"outputBehavior"];
    }

    else if ([coderCopy decodeBoolForKey:@"ignoresOutput"])
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

- (WFWorkflowControllerState)initWithWorkflow:(id)workflow variables:(id)variables currentActionIndex:(unint64_t)index runningContext:(id)context currentInput:(id)input currentProcessedParameters:(id)parameters startDate:(id)date currentRunSource:(id)self0 numberOfDialogsPresented:(int64_t)self1 outputBehavior:(unint64_t)self2 contentAttributionTracker:(id)self3 contentItemCache:(id)self4 flowTracker:(id)self5 allowedOnceSmartPromptStates:(id)self6 extensionResourceClasses:(id)self7 shouldDisablePrivacyPrompts:(BOOL)self8
{
  workflowCopy = workflow;
  variablesCopy = variables;
  contextCopy = context;
  inputCopy = input;
  parametersCopy = parameters;
  dateCopy = date;
  sourceCopy = source;
  trackerCopy = tracker;
  cacheCopy = cache;
  flowTrackerCopy = flowTracker;
  statesCopy = states;
  classesCopy = classes;
  v49.receiver = self;
  v49.super_class = WFWorkflowControllerState;
  v26 = [(WFWorkflowControllerState *)&v49 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_workflow, workflow);
    v28 = [variablesCopy copy];
    variables = v27->_variables;
    v27->_variables = v28;

    v27->_currentActionIndex = index;
    objc_storeStrong(&v27->_runningContext, context);
    objc_storeStrong(&v27->_currentInput, input);
    v30 = [parametersCopy copy];
    currentProcessedParameters = v27->_currentProcessedParameters;
    v27->_currentProcessedParameters = v30;

    objc_storeStrong(&v27->_startDate, date);
    objc_storeStrong(&v27->_currentRunSource, source);
    v27->_numberOfDialogsPresented = presented;
    v27->_outputBehavior = behavior;
    objc_storeStrong(&v27->_currentActionContentAttributionTracker, tracker);
    objc_storeStrong(&v27->_contentItemCache, cache);
    objc_storeStrong(&v27->_flowTracker, flowTracker);
    v32 = [statesCopy copy];
    allowedOnceSmartPromptStates = v27->_allowedOnceSmartPromptStates;
    v27->_allowedOnceSmartPromptStates = v32;

    v34 = [classesCopy copy];
    extensionResourceClasses = v27->_extensionResourceClasses;
    v27->_extensionResourceClasses = v34;

    v27->_shouldDisablePrivacyPrompts = prompts;
    v36 = v27;
  }

  return v27;
}

+ (void)getStateFromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v15 = 0;
  v8 = [[v6 alloc] initWithContentsOfURL:lCopy options:0 error:&v15];

  v9 = v15;
  if (v8)
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__WFWorkflowControllerState_getStateFromURL_completionHandler___block_invoke;
    v13[3] = &unk_1E8377ED0;
    v14 = handlerCopy;
    v12 = [v10 wf_securelyUnarchiveObjectWithData:v8 allowedClasses:v11 completionHandler:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

@end