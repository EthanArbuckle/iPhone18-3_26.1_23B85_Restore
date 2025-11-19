@interface WFWorkflowRunRequest
- (WFWorkflowRunRequest)initWithCoder:(id)a3;
- (WFWorkflowRunRequest)initWithInput:(id)a3 presentationMode:(unint64_t)a4;
- (id)description;
- (id)unableToDecodeInputError;
- (void)encodeWithCoder:(id)a3;
- (void)getInputWithCompletionHandler:(id)a3;
@end

@implementation WFWorkflowRunRequest

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v4 = [(WFWorkflowRunRequest *)self runSource];
  v5 = [(WFWorkflowRunRequest *)self archivedInput];
  v6 = [(WFWorkflowRunRequest *)self presentationMode]- 1;
  if (v6 > 3)
  {
    v7 = @"Transient";
  }

  else
  {
    v7 = *(&off_1E7B01260 + v6);
  }

  v8 = [(WFWorkflowRunRequest *)self outputBehavior];
  if (v8 > 3)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E7B02640[v8];
  }

  if (v5)
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  v11 = v9;
  v12 = [(WFWorkflowRunRequest *)self automationType];
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

  v16 = [v18 stringWithFormat:@"<%@: %p, runSource: %@, input: %@, presentationMode: %@, output behavior: %@, automationType: %@, allowsHandoff: %@, allowsDialogNotifications: %@>", v19, self, v4, v10, v7, v11, v12, v14, v15];

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

- (void)getInputWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFWorkflowRunRequest *)self cachedInput];

  if (v5)
  {
    v6 = [(WFWorkflowRunRequest *)self cachedInput];
    v4[2](v4, v6, 0);
  }

  else
  {
    v8 = [(WFWorkflowRunRequest *)self archivedInput];

    if (v8)
    {
      v9 = NSClassFromString(@"WFContentCollection");
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0x1E696ACD0];
        v12 = [(WFWorkflowRunRequest *)self archivedInput];
        v13 = [MEMORY[0x1E695DFD8] setWithObject:v10];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __54__WFWorkflowRunRequest_getInputWithCompletionHandler___block_invoke;
        v17[3] = &unk_1E7B01240;
        v17[4] = self;
        v18 = v4;
        v14 = [v11 wf_securelyUnarchiveObjectWithData:v12 allowedClasses:v13 completionHandler:v17];
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

        v16 = [(WFWorkflowRunRequest *)self unableToDecodeInputError];
        (v4)[2](v4, 0, v16);
      }
    }

    else
    {
      v4[2](v4, 0, 0);
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

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeInteger:-[WFWorkflowRunRequest presentationMode](self forKey:{"presentationMode"), @"presentationMode"}];
  v4 = [(WFWorkflowRunRequest *)self runSource];
  [v13 encodeObject:v4 forKey:@"runSource"];

  v5 = [(WFWorkflowRunRequest *)self archivedInput];
  [v13 encodeObject:v5 forKey:@"archivedInput"];

  v6 = [(WFWorkflowRunRequest *)self listenerEndpoints];
  [v13 encodeObject:v6 forKey:@"listenerEndpoints"];

  v7 = [(WFWorkflowRunRequest *)self automationType];
  [v13 encodeObject:v7 forKey:@"automationType"];

  v8 = [(WFWorkflowRunRequest *)self firingTriggerID];
  [v13 encodeObject:v8 forKey:@"firingTriggerID"];

  [v13 encodeBool:-[WFWorkflowRunRequest isAutomationSuggestion](self forKey:{"isAutomationSuggestion"), @"isAutomationSuggestion"}];
  v9 = [(WFWorkflowRunRequest *)self trialID];
  [v13 encodeObject:v9 forKey:@"trialID"];

  [v13 encodeInteger:-[WFWorkflowRunRequest outputBehavior](self forKey:{"outputBehavior"), @"outputBehavior"}];
  [v13 encodeBool:-[WFWorkflowRunRequest allowsDialogNotifications](self forKey:{"allowsDialogNotifications"), @"allowsDialogNotifications"}];
  [v13 encodeBool:-[WFWorkflowRunRequest allowsHandoff](self forKey:{"allowsHandoff"), @"allowsHandoff"}];
  [v13 encodeBool:-[WFWorkflowRunRequest donateInteraction](self forKey:{"donateInteraction"), @"donateInteraction"}];
  [v13 encodeBool:-[WFWorkflowRunRequest logRunEvent](self forKey:{"logRunEvent"), @"logRunEvent"}];
  v10 = [(WFWorkflowRunRequest *)self parentRunningContextIdentifier];
  [v13 encodeObject:v10 forKey:@"parentRunningContextIdentifier"];

  v11 = [(WFWorkflowRunRequest *)self remoteDialogPresenterEndpoint];
  [v13 encodeObject:v11 forKey:@"remoteDialogPresenterEndpoint"];

  v12 = [(WFWorkflowRunRequest *)self extensionResourceClasses];
  [v13 encodeObject:v12 forKey:@"extensionResourceClasses"];

  [v13 encodeObject:self->_runViewSource forKey:@"runViewSource"];
  [v13 encodeObject:self->_urlNeedingAccess forKey:@"urlNeedingAccess"];
}

- (WFWorkflowRunRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = WFWorkflowRunRequest;
  v5 = [(WFWorkflowRunRequest *)&v37 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedInput"];
    archivedInput = v5->_archivedInput;
    v5->_archivedInput = v6;

    v5->_presentationMode = [v4 decodeIntegerForKey:@"presentationMode"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runSource"];
    runSource = v5->_runSource;
    v5->_runSource = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"listenerEndpoints"];
    listenerEndpoints = v5->_listenerEndpoints;
    v5->_listenerEndpoints = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automationType"];
    automationType = v5->_automationType;
    v5->_automationType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firingTriggerID"];
    firingTriggerID = v5->_firingTriggerID;
    v5->_firingTriggerID = v18;

    v5->_isAutomationSuggestion = [v4 decodeBoolForKey:@"isAutomationSuggestion"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialID"];
    trialID = v5->_trialID;
    v5->_trialID = v20;

    v5->_outputBehavior = [v4 decodeIntegerForKey:@"outputBehavior"];
    v5->_allowsDialogNotifications = [v4 decodeBoolForKey:@"allowsDialogNotifications"];
    v5->_allowsHandoff = [v4 decodeBoolForKey:@"allowsHandoff"];
    v5->_donateInteraction = [v4 decodeBoolForKey:@"donateInteraction"];
    v5->_logRunEvent = [v4 decodeBoolForKey:@"logRunEvent"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentRunningContextIdentifier"];
    parentRunningContextIdentifier = v5->_parentRunningContextIdentifier;
    v5->_parentRunningContextIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDialogPresenterEndpoint"];
    remoteDialogPresenterEndpoint = v5->_remoteDialogPresenterEndpoint;
    v5->_remoteDialogPresenterEndpoint = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"extensionResourceClasses"];
    extensionResourceClasses = v5->_extensionResourceClasses;
    v5->_extensionResourceClasses = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runViewSource"];
    runViewSource = v5->_runViewSource;
    v5->_runViewSource = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlNeedingAccess"];
    urlNeedingAccess = v5->_urlNeedingAccess;
    v5->_urlNeedingAccess = v33;

    v35 = v5;
  }

  return v5;
}

- (WFWorkflowRunRequest)initWithInput:(id)a3 presentationMode:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = WFWorkflowRunRequest;
  v8 = [(WFWorkflowRunRequest *)&v13 init];
  if (v8)
  {
    if (v7)
    {
      v9 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v7 deletionResponsibility:1];
    }

    else
    {
      v9 = 0;
    }

    archivedInput = v8->_archivedInput;
    v8->_archivedInput = v9;

    objc_storeStrong(&v8->_cachedInput, a3);
    v8->_presentationMode = a4;
    objc_storeStrong(&v8->_runSource, @"unknown");
    v8->_outputBehavior = 1;
    *&v8->_allowsDialogNotifications = 1;
    *&v8->_donateInteraction = 257;
    v11 = v8;
  }

  return v8;
}

@end