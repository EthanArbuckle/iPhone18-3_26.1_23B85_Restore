@interface WFSystemActionRunnerClient
+ (id)defaultContextualActionContext;
- (WFSystemActionRunnerClient)initWithSystemAction:(id)action;
- (WFSystemActionRunnerClient)initWithSystemContextualAction:(id)action;
- (WFSystemActionRunnerClient)initWithSystemIntentAction:(id)action;
- (WFSystemActionRunnerClient)initWithSystemWorkflowAction:(id)action;
- (void)start;
@end

@implementation WFSystemActionRunnerClient

- (void)start
{
  v3 = +[WFDevice currentDevice];
  if (([v3 isChineseRegionDevice] & 1) == 0)
  {
    goto LABEL_18;
  }

  action = [(WFSystemActionRunnerClient *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_19:
    runRequest = [(WFWorkflowRunnerClient *)self runRequest];
    if (runRequest)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = runRequest;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v3 = v30;

    action2 = [v3 action];
    if (action2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = action2;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    actionContext = [v3 actionContext];
    [v33 wf_launchAppIfNeededUsingSurface:{objc_msgSend(actionContext, "surface")}];

    v37.receiver = self;
    v37.super_class = WFSystemActionRunnerClient;
    [(WFWorkflowRunnerClient *)&v37 start];
    goto LABEL_30;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v6 = getPDCPreflightManagerClass_softClass;
  v46 = getPDCPreflightManagerClass_softClass;
  if (!getPDCPreflightManagerClass_softClass)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getPDCPreflightManagerClass_block_invoke;
    v41 = &unk_1E7B02C60;
    v42 = &v43;
    __getPDCPreflightManagerClass_block_invoke(&v38);
    v6 = v44[3];
  }

  v7 = v6;
  _Block_object_dispose(&v43, 8);
  v8 = [v6 alloc];
  v9 = dispatch_get_global_queue(0, 0);
  v3 = [v8 initWithTargetQueue:v9];

  v10 = objc_alloc(MEMORY[0x1E69635F8]);
  action3 = [(WFSystemActionRunnerClient *)self action];
  associatedBundleIdentifier = [action3 associatedBundleIdentifier];
  v13 = [v10 initWithBundleIdentifier:associatedBundleIdentifier allowPlaceholder:0 error:0];

  if (([v3 requiresPreflightForApplicationRecord:v13] & 1) == 0)
  {

LABEL_18:
    goto LABEL_19;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v14 = getFBSOpenApplicationServiceClass_softClass;
  v46 = getFBSOpenApplicationServiceClass_softClass;
  if (!getFBSOpenApplicationServiceClass_softClass)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getFBSOpenApplicationServiceClass_block_invoke;
    v41 = &unk_1E7B02C60;
    v42 = &v43;
    __getFBSOpenApplicationServiceClass_block_invoke(&v38);
    v14 = v44[3];
  }

  v15 = v14;
  _Block_object_dispose(&v43, 8);
  serviceWithDefaultShellEndpoint = [v14 serviceWithDefaultShellEndpoint];
  v17 = MEMORY[0x1E695DF20];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v18 = getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_ptr;
  v46 = getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_ptr;
  if (!getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_ptr)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_block_invoke;
    v41 = &unk_1E7B02C60;
    v42 = &v43;
    __getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_block_invoke(&v38);
    v18 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (v18)
  {
    v19 = *v18;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v20 = getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr;
    v46 = getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr;
    if (!getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr)
    {
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_block_invoke;
      v41 = &unk_1E7B02C60;
      v42 = &v43;
      v21 = FrontBoardServicesLibrary();
      v22 = dlsym(v21, "FBSOpenApplicationOptionKeyLaunchOrigin");
      *(v42[1] + 24) = v22;
      getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr = *(v42[1] + 24);
      v20 = v44[3];
    }

    _Block_object_dispose(&v43, 8);
    if (v20)
    {
      v23 = [v17 dictionaryWithObject:v19 forKey:*v20];

      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v24 = getFBSOpenApplicationOptionsClass_softClass;
      v46 = getFBSOpenApplicationOptionsClass_softClass;
      if (!getFBSOpenApplicationOptionsClass_softClass)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = __getFBSOpenApplicationOptionsClass_block_invoke;
        v41 = &unk_1E7B02C60;
        v42 = &v43;
        __getFBSOpenApplicationOptionsClass_block_invoke(&v38);
        v24 = v44[3];
      }

      v25 = v24;
      _Block_object_dispose(&v43, 8);
      v26 = [v24 optionsWithDictionary:v23];
      action4 = [(WFSystemActionRunnerClient *)self action];
      associatedBundleIdentifier2 = [action4 associatedBundleIdentifier];
      [serviceWithDefaultShellEndpoint openApplication:associatedBundleIdentifier2 withOptions:v26 completion:0];

LABEL_30:
      return;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyLaunchOrigin(void)"];
    [currentHandler handleFailureInFunction:v36 file:@"WFSystemActionRunnerClient.m" lineNumber:29 description:{@"%s", dlerror()}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBSOpenApplicationLaunchOriginActionButton(void)"];
    [currentHandler handleFailureInFunction:v36 file:@"WFSystemActionRunnerClient.m" lineNumber:32 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

- (WFSystemActionRunnerClient)initWithSystemWorkflowAction:(id)action
{
  actionCopy = action;
  v5 = [WFWorkflowDatabaseRunDescriptor alloc];
  workflowIdentifier = [actionCopy workflowIdentifier];

  v7 = [(WFWorkflowDatabaseRunDescriptor *)v5 initWithIdentifier:workflowIdentifier];
  v8 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  v9 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v7 runRequest:v8];

  return v9;
}

- (WFSystemActionRunnerClient)initWithSystemContextualAction:(id)action
{
  actionCopy = action;
  defaultContextualActionContext = [objc_opt_class() defaultContextualActionContext];
  v6 = [WFContextualActionRunDescriptor alloc];
  contextualAction = [actionCopy contextualAction];
  v8 = [(WFContextualActionRunDescriptor *)v6 initWithAction:contextualAction context:defaultContextualActionContext];

  v9 = [WFContextualActionRunRequest alloc];
  contextualAction2 = [actionCopy contextualAction];

  v11 = [(WFContextualActionRunRequest *)v9 initWithAction:contextualAction2 actionContext:defaultContextualActionContext];
  [(WFWorkflowRunRequest *)v11 setPresentationMode:1];
  v12 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v8 runRequest:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionContext, defaultContextualActionContext);
    v14 = v13;
  }

  return v13;
}

- (WFSystemActionRunnerClient)initWithSystemIntentAction:(id)action
{
  actionCopy = action;
  intent = [actionCopy intent];
  linkAction = [intent linkAction];

  previewIcon = [actionCopy previewIcon];
  if (previewIcon)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      symbolName = [previewIcon symbolName];
      v9 = [WFContextualActionIcon iconWithSystemName:symbolName];
    }

    else
    {
      v9 = 0;
      symbolName = previewIcon;
      previewIcon = 0;
    }
  }

  else
  {
    symbolName = 0;
    v9 = 0;
  }

  intent2 = [actionCopy intent];
  launchId = [intent2 launchId];
  v12 = launchId;
  if (launchId)
  {
    associatedBundleIdentifier = launchId;
  }

  else
  {
    associatedBundleIdentifier = [actionCopy associatedBundleIdentifier];
  }

  v14 = associatedBundleIdentifier;

  v15 = [WFLinkContextualAction alloc];
  contextualParameters = [actionCopy contextualParameters];
  v17 = [(WFLinkContextualAction *)v15 initWithAction:linkAction appBundleIdentifier:v14 extensionBundleIdentifier:0 contextualParameters:contextualParameters authenticationPolicy:0 icon:v9];

  defaultContextualActionContext = [objc_opt_class() defaultContextualActionContext];
  v19 = [[WFContextualActionRunDescriptor alloc] initWithAction:v17 context:defaultContextualActionContext];
  v20 = [[WFContextualActionRunRequest alloc] initWithAction:v17 actionContext:defaultContextualActionContext];
  [(WFWorkflowRunRequest *)v20 setPresentationMode:1];
  v21 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v19 runRequest:v20];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_actionContext, defaultContextualActionContext);
    v23 = v22;
  }

  return v22;
}

- (WFSystemActionRunnerClient)initWithSystemAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSystemActionRunnerClient.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = actionCopy;
    if (actionCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    self = [(WFSystemActionRunnerClient *)self initWithSystemIntentAction:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = actionCopy;
    if (actionCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    self = [(WFSystemActionRunnerClient *)self initWithSystemContextualAction:v12];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    if (actionCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    self = [(WFSystemActionRunnerClient *)self initWithSystemWorkflowAction:v15];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = actionCopy;
    if (actionCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    self = [(WFSystemActionRunnerClient *)self initWithSystemNothingAction:v18];
  }

  if (self)
  {
    objc_storeStrong(&self->_action, action);
    selfCopy = self;
  }

  return self;
}

+ (id)defaultContextualActionContext
{
  v2 = [[WFContextualActionContext alloc] initWithSurface:17];

  return v2;
}

@end