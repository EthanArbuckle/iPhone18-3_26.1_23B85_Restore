@interface WFSystemActionRunnerClient
+ (id)defaultContextualActionContext;
- (WFSystemActionRunnerClient)initWithSystemAction:(id)a3;
- (WFSystemActionRunnerClient)initWithSystemContextualAction:(id)a3;
- (WFSystemActionRunnerClient)initWithSystemIntentAction:(id)a3;
- (WFSystemActionRunnerClient)initWithSystemWorkflowAction:(id)a3;
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

  v4 = [(WFSystemActionRunnerClient *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_19:
    v29 = [(WFWorkflowRunnerClient *)self runRequest];
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
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

    v31 = [v3 action];
    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
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

    v34 = [v3 actionContext];
    [v33 wf_launchAppIfNeededUsingSurface:{objc_msgSend(v34, "surface")}];

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
  v11 = [(WFSystemActionRunnerClient *)self action];
  v12 = [v11 associatedBundleIdentifier];
  v13 = [v10 initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];

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
  v16 = [v14 serviceWithDefaultShellEndpoint];
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
      v27 = [(WFSystemActionRunnerClient *)self action];
      v28 = [v27 associatedBundleIdentifier];
      [v16 openApplication:v28 withOptions:v26 completion:0];

LABEL_30:
      return;
    }

    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyLaunchOrigin(void)"];
    [v35 handleFailureInFunction:v36 file:@"WFSystemActionRunnerClient.m" lineNumber:29 description:{@"%s", dlerror()}];
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBSOpenApplicationLaunchOriginActionButton(void)"];
    [v35 handleFailureInFunction:v36 file:@"WFSystemActionRunnerClient.m" lineNumber:32 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

- (WFSystemActionRunnerClient)initWithSystemWorkflowAction:(id)a3
{
  v4 = a3;
  v5 = [WFWorkflowDatabaseRunDescriptor alloc];
  v6 = [v4 workflowIdentifier];

  v7 = [(WFWorkflowDatabaseRunDescriptor *)v5 initWithIdentifier:v6];
  v8 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  v9 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v7 runRequest:v8];

  return v9;
}

- (WFSystemActionRunnerClient)initWithSystemContextualAction:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultContextualActionContext];
  v6 = [WFContextualActionRunDescriptor alloc];
  v7 = [v4 contextualAction];
  v8 = [(WFContextualActionRunDescriptor *)v6 initWithAction:v7 context:v5];

  v9 = [WFContextualActionRunRequest alloc];
  v10 = [v4 contextualAction];

  v11 = [(WFContextualActionRunRequest *)v9 initWithAction:v10 actionContext:v5];
  [(WFWorkflowRunRequest *)v11 setPresentationMode:1];
  v12 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v8 runRequest:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionContext, v5);
    v14 = v13;
  }

  return v13;
}

- (WFSystemActionRunnerClient)initWithSystemIntentAction:(id)a3
{
  v4 = a3;
  v5 = [v4 intent];
  v6 = [v5 linkAction];

  v7 = [v4 previewIcon];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 symbolName];
      v9 = [WFContextualActionIcon iconWithSystemName:v8];
    }

    else
    {
      v9 = 0;
      v8 = v7;
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = [v4 intent];
  v11 = [v10 launchId];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v4 associatedBundleIdentifier];
  }

  v14 = v13;

  v15 = [WFLinkContextualAction alloc];
  v16 = [v4 contextualParameters];
  v17 = [(WFLinkContextualAction *)v15 initWithAction:v6 appBundleIdentifier:v14 extensionBundleIdentifier:0 contextualParameters:v16 authenticationPolicy:0 icon:v9];

  v18 = [objc_opt_class() defaultContextualActionContext];
  v19 = [[WFContextualActionRunDescriptor alloc] initWithAction:v17 context:v18];
  v20 = [[WFContextualActionRunRequest alloc] initWithAction:v17 actionContext:v18];
  [(WFWorkflowRunRequest *)v20 setPresentationMode:1];
  v21 = [(WFWorkflowRunnerClient *)self initWithDescriptor:v19 runRequest:v20];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_actionContext, v18);
    v23 = v22;
  }

  return v22;
}

- (WFSystemActionRunnerClient)initWithSystemAction:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFSystemActionRunnerClient.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if (v6)
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
    v10 = v6;
    if (v6)
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
    v13 = v6;
    if (v6)
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
    v16 = v6;
    if (v6)
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
    objc_storeStrong(&self->_action, a3);
    v19 = self;
  }

  return self;
}

+ (id)defaultContextualActionContext
{
  v2 = [[WFContextualActionContext alloc] initWithSurface:17];

  return v2;
}

@end