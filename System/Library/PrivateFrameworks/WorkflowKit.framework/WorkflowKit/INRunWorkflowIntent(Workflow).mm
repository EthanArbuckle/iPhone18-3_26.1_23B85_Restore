@interface INRunWorkflowIntent(Workflow)
- (id)workflowForIntentInDatabase:()Workflow;
- (void)initWithWorkflowReference:()Workflow includeIcon:iconDrawerContext:;
- (void)setIconForAssociatedApplicationInWorkflow:()Workflow;
@end

@implementation INRunWorkflowIntent(Workflow)

- (void)setIconForAssociatedApplicationInWorkflow:()Workflow
{
  v4 = MEMORY[0x1E69E0B58];
  v5 = [a3 associatedAppBundleIdentifier];
  v9 = [v4 applicationIconImageForBundleIdentifier:v5 format:2];

  v6 = MEMORY[0x1E696E868];
  v7 = [v9 PNGRepresentation];
  v8 = [v6 imageWithImageData:v7];

  [a1 setImage:v8 forParameterNamed:@"workflow"];
}

- (id)workflowForIntentInDatabase:()Workflow
{
  v4 = a3;
  v5 = [a1 workflow];
  v6 = [v5 spokenPhrase];

  v7 = [a1 workflow];
  v8 = [v7 vocabularyIdentifier];

  if (![v8 length] || (objc_msgSend(v4, "referenceForWorkflowID:", v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v6 length])
    {
      v9 = [v4 uniqueVisibleReferenceForWorkflowName:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)initWithWorkflowReference:()Workflow includeIcon:iconDrawerContext:
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"WFWorkflowReference+Intents.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v11 = [v9 speakableString];
  v12 = [a1 initWithWorkflow:v11];

  if (v12)
  {
    [v12 _setLaunchId:*MEMORY[0x1E69E0FB0]];
    v13 = [v9 name];
    [v12 setSuggestedInvocationPhrase:v13];

    if (a4)
    {
      v14 = [v9 associatedAppBundleIdentifier];
      v15 = [v14 length];

      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = [v9 associatedAppBundleIdentifier];
      v17 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v16];
      if ([v17 isInstalled])
      {
        v18 = v17;
      }

      else
      {
        v19 = [MEMORY[0x1E696E748] sharedResolver];
        v18 = [v19 resolvedAppMatchingDescriptor:v17];

        if ([v18 isInstalled])
        {
          v20 = [v18 bundleIdentifier];

          v16 = v20;
        }
      }

      v21 = [MEMORY[0x1E69E0B58] applicationIconImageForBundleIdentifier:v16 format:2];
      v22 = [v21 PNGRepresentation];
      if (v22)
      {
        v23 = [MEMORY[0x1E696E868] imageWithImageData:v22];
      }

      else
      {
        v23 = 0;
      }

      if (!v23)
      {
LABEL_14:
        v24 = objc_alloc(MEMORY[0x1E69E0E08]);
        v25 = [v9 icon];
        v26 = [v24 initWithIcon:v25 drawerContext:v10];

        [v26 setCornerRadius:8.0];
        v27 = MEMORY[0x1E696E868];
        v28 = [v26 imageWithSize:{60.0, 60.0}];
        v29 = [v28 PNGRepresentation];
        v23 = [v27 imageWithImageData:v29];
      }

      [v12 setImage:v23 forParameterNamed:@"workflow"];
    }

    v30 = v12;
  }

  return v12;
}

@end