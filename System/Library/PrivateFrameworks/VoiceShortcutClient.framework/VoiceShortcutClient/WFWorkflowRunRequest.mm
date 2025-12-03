@interface WFWorkflowRunRequest
- (WFWorkflowRunRequest)initWithCoder:(id)coder;
- (WFWorkflowRunRequest)initWithInput:(id)input presentationMode:(unint64_t)mode;
- (id)description;
- (id)unableToDecodeInputError;
- (void)encodeWithCoder:(id)coder;
- (void)getInputWithCompletionHandler:(id)handler;
@end

@implementation WFWorkflowRunRequest

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  runSource = [(WFWorkflowRunRequest *)self runSource];
  archivedInput = [(WFWorkflowRunRequest *)self archivedInput];
  v6 = [(WFWorkflowRunRequest *)self presentationMode]- 1;
  if (v6 > 3)
  {
    v7 = @"Transient";
  }

  else
  {
    v7 = *(&off_1E7B01260 + v6);
  }

  outputBehavior = [(WFWorkflowRunRequest *)self outputBehavior];
  if (outputBehavior > 3)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E7B02640[outputBehavior];
  }

  if (archivedInput)
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  v11 = v9;
  automationType = [(WFWorkflowRunRequest *)self automationType];
  if ([(WFWorkflowRunRequest *)self allowsHandoff])
  {
    v13 = @"yes";
  }

  else
  {
    v13 = @"no";
  }

  v14 = v13;
  if ([(WFWorkflowRunRequest *)self allowsDialogNotifications])
  {
    v15 = @"yes";
  }

  else
  {
    v15 = @"no";
  }

  v16 = [v18 stringWithFormat:@"<%@: %p, runSource: %@, input: %@, presentationMode: %@, output behavior: %@, automationType: %@, allowsHandoff: %@, allowsDialogNotifications: %@>", v19, self, runSource, v10, v7, v11, automationType, v14, v15];

  return v16;
}

- (id)unableToDecodeInputError
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v10[0] = *MEMORY[0x1E696A588];
  v4 = WFLocalizedString(@"Unable to run");
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E696A578];
  v5 = WFLocalizedString(@"The input of the shortcut could not be processed.");
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v2 errorWithDomain:v3 code:0x7FFFFFFFFFFFFFFFLL userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)getInputWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  cachedInput = [(WFWorkflowRunRequest *)self cachedInput];

  if (cachedInput)
  {
    cachedInput2 = [(WFWorkflowRunRequest *)self cachedInput];
    handlerCopy[2](handlerCopy, cachedInput2, 0);
  }

  else
  {
    archivedInput = [(WFWorkflowRunRequest *)self archivedInput];

    if (archivedInput)
    {
      v9 = NSClassFromString(@"WFContentCollection");
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0x1E696ACD0];
        archivedInput2 = [(WFWorkflowRunRequest *)self archivedInput];
        v13 = [MEMORY[0x1E695DFD8] setWithObject:v10];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __54__WFWorkflowRunRequest_getInputWithCompletionHandler___block_invoke;
        v17[3] = &unk_1E7B01240;
        v17[4] = self;
        v18 = handlerCopy;
        v14 = [v11 wf_securelyUnarchiveObjectWithData:archivedInput2 allowedClasses:v13 completionHandler:v17];
      }

      else
      {
        v15 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v20 = "[WFWorkflowRunRequest getInputWithCompletionHandler:]";
          _os_log_impl(&dword_1B1DE3000, v15, OS_LOG_TYPE_FAULT, "%s Unable to get input from WFWorkflowRunRequest, since ContentKit isn't linked.", buf, 0xCu);
        }

        unableToDecodeInputError = [(WFWorkflowRunRequest *)self unableToDecodeInputError];
        (handlerCopy)[2](handlerCopy, 0, unableToDecodeInputError);
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __54__WFWorkflowRunRequest_getInputWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setCachedInput:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFWorkflowRunRequest presentationMode](self forKey:{"presentationMode"), @"presentationMode"}];
  runSource = [(WFWorkflowRunRequest *)self runSource];
  [coderCopy encodeObject:runSource forKey:@"runSource"];

  archivedInput = [(WFWorkflowRunRequest *)self archivedInput];
  [coderCopy encodeObject:archivedInput forKey:@"archivedInput"];

  listenerEndpoints = [(WFWorkflowRunRequest *)self listenerEndpoints];
  [coderCopy encodeObject:listenerEndpoints forKey:@"listenerEndpoints"];

  automationType = [(WFWorkflowRunRequest *)self automationType];
  [coderCopy encodeObject:automationType forKey:@"automationType"];

  firingTriggerID = [(WFWorkflowRunRequest *)self firingTriggerID];
  [coderCopy encodeObject:firingTriggerID forKey:@"firingTriggerID"];

  [coderCopy encodeBool:-[WFWorkflowRunRequest isAutomationSuggestion](self forKey:{"isAutomationSuggestion"), @"isAutomationSuggestion"}];
  trialID = [(WFWorkflowRunRequest *)self trialID];
  [coderCopy encodeObject:trialID forKey:@"trialID"];

  [coderCopy encodeInteger:-[WFWorkflowRunRequest outputBehavior](self forKey:{"outputBehavior"), @"outputBehavior"}];
  [coderCopy encodeBool:-[WFWorkflowRunRequest allowsDialogNotifications](self forKey:{"allowsDialogNotifications"), @"allowsDialogNotifications"}];
  [coderCopy encodeBool:-[WFWorkflowRunRequest allowsHandoff](self forKey:{"allowsHandoff"), @"allowsHandoff"}];
  [coderCopy encodeBool:-[WFWorkflowRunRequest donateInteraction](self forKey:{"donateInteraction"), @"donateInteraction"}];
  [coderCopy encodeBool:-[WFWorkflowRunRequest logRunEvent](self forKey:{"logRunEvent"), @"logRunEvent"}];
  parentRunningContextIdentifier = [(WFWorkflowRunRequest *)self parentRunningContextIdentifier];
  [coderCopy encodeObject:parentRunningContextIdentifier forKey:@"parentRunningContextIdentifier"];

  remoteDialogPresenterEndpoint = [(WFWorkflowRunRequest *)self remoteDialogPresenterEndpoint];
  [coderCopy encodeObject:remoteDialogPresenterEndpoint forKey:@"remoteDialogPresenterEndpoint"];

  extensionResourceClasses = [(WFWorkflowRunRequest *)self extensionResourceClasses];
  [coderCopy encodeObject:extensionResourceClasses forKey:@"extensionResourceClasses"];

  [coderCopy encodeObject:self->_runViewSource forKey:@"runViewSource"];
  [coderCopy encodeObject:self->_urlNeedingAccess forKey:@"urlNeedingAccess"];
}

- (WFWorkflowRunRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = WFWorkflowRunRequest;
  v5 = [(WFWorkflowRunRequest *)&v37 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedInput"];
    archivedInput = v5->_archivedInput;
    v5->_archivedInput = v6;

    v5->_presentationMode = [coderCopy decodeIntegerForKey:@"presentationMode"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runSource"];
    runSource = v5->_runSource;
    v5->_runSource = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"listenerEndpoints"];
    listenerEndpoints = v5->_listenerEndpoints;
    v5->_listenerEndpoints = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automationType"];
    automationType = v5->_automationType;
    v5->_automationType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firingTriggerID"];
    firingTriggerID = v5->_firingTriggerID;
    v5->_firingTriggerID = v18;

    v5->_isAutomationSuggestion = [coderCopy decodeBoolForKey:@"isAutomationSuggestion"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialID"];
    trialID = v5->_trialID;
    v5->_trialID = v20;

    v5->_outputBehavior = [coderCopy decodeIntegerForKey:@"outputBehavior"];
    v5->_allowsDialogNotifications = [coderCopy decodeBoolForKey:@"allowsDialogNotifications"];
    v5->_allowsHandoff = [coderCopy decodeBoolForKey:@"allowsHandoff"];
    v5->_donateInteraction = [coderCopy decodeBoolForKey:@"donateInteraction"];
    v5->_logRunEvent = [coderCopy decodeBoolForKey:@"logRunEvent"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentRunningContextIdentifier"];
    parentRunningContextIdentifier = v5->_parentRunningContextIdentifier;
    v5->_parentRunningContextIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDialogPresenterEndpoint"];
    remoteDialogPresenterEndpoint = v5->_remoteDialogPresenterEndpoint;
    v5->_remoteDialogPresenterEndpoint = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"extensionResourceClasses"];
    extensionResourceClasses = v5->_extensionResourceClasses;
    v5->_extensionResourceClasses = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runViewSource"];
    runViewSource = v5->_runViewSource;
    v5->_runViewSource = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlNeedingAccess"];
    urlNeedingAccess = v5->_urlNeedingAccess;
    v5->_urlNeedingAccess = v33;

    v35 = v5;
  }

  return v5;
}

- (WFWorkflowRunRequest)initWithInput:(id)input presentationMode:(unint64_t)mode
{
  inputCopy = input;
  v13.receiver = self;
  v13.super_class = WFWorkflowRunRequest;
  v8 = [(WFWorkflowRunRequest *)&v13 init];
  if (v8)
  {
    if (inputCopy)
    {
      v9 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:inputCopy deletionResponsibility:1];
    }

    else
    {
      v9 = 0;
    }

    archivedInput = v8->_archivedInput;
    v8->_archivedInput = v9;

    objc_storeStrong(&v8->_cachedInput, input);
    v8->_presentationMode = mode;
    objc_storeStrong(&v8->_runSource, @"unknown");
    v8->_outputBehavior = 1;
    *&v8->_allowsDialogNotifications = 1;
    *&v8->_donateInteraction = 257;
    v11 = v8;
  }

  return v8;
}

@end