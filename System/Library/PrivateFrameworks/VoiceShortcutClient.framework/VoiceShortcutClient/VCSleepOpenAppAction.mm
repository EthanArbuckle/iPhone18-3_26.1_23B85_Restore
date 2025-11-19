@interface VCSleepOpenAppAction
- (VCSleepOpenAppAction)initWithBundleIdentifier:(id)a3;
@end

@implementation VCSleepOpenAppAction

- (VCSleepOpenAppAction)initWithBundleIdentifier:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"VCSleepOpenAppAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
  v7 = v6;
  if (v6 && ([v6 applicationState], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isInstalled"), v8, v9))
  {
    v10 = [v7 localizedName];
    v11 = MEMORY[0x1E696AEC0];
    v12 = WFLocalizedString(@"Open %@");
    v13 = [v11 stringWithFormat:v12, v10];

    v14 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v7];
    v25[0] = @"WFAppName";
    v25[1] = @"WFSelectedApp";
    v26[0] = v10;
    v15 = [v14 serializedRepresentation];
    v26[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    v17 = [VCSleepAction identifierForWorkflowActionIdentifier:@"is.workflow.actions.openapp" serializedParameters:v16];
    v24.receiver = self;
    v24.super_class = VCSleepOpenAppAction;
    v18 = [(VCSleepAction *)&v24 initWithIdentifier:v17 workflowActionIdentifier:@"is.workflow.actions.openapp" sourceAppBundleIdentifier:v5 bundleIdentifierForDisplay:v5 title:v13 subtitle:0 serializedParameters:v16 shortcutAvailability:0];
    self = v18;
    if (v18)
    {
      v19 = v18;
    }

    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end