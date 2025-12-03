@interface INRunWorkflowIntent(Workflow)
- (id)workflowForIntentInDatabase:()Workflow;
- (void)initWithWorkflowReference:()Workflow includeIcon:iconDrawerContext:;
- (void)setIconForAssociatedApplicationInWorkflow:()Workflow;
@end

@implementation INRunWorkflowIntent(Workflow)

- (void)setIconForAssociatedApplicationInWorkflow:()Workflow
{
  v4 = MEMORY[0x1E69E0B58];
  associatedAppBundleIdentifier = [a3 associatedAppBundleIdentifier];
  v9 = [v4 applicationIconImageForBundleIdentifier:associatedAppBundleIdentifier format:2];

  v6 = MEMORY[0x1E696E868];
  pNGRepresentation = [v9 PNGRepresentation];
  v8 = [v6 imageWithImageData:pNGRepresentation];

  [self setImage:v8 forParameterNamed:@"workflow"];
}

- (id)workflowForIntentInDatabase:()Workflow
{
  v4 = a3;
  workflow = [self workflow];
  spokenPhrase = [workflow spokenPhrase];

  workflow2 = [self workflow];
  vocabularyIdentifier = [workflow2 vocabularyIdentifier];

  if (![vocabularyIdentifier length] || (objc_msgSend(v4, "referenceForWorkflowID:", vocabularyIdentifier), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([spokenPhrase length])
    {
      v9 = [v4 uniqueVisibleReferenceForWorkflowName:spokenPhrase];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowReference+Intents.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  speakableString = [v9 speakableString];
  v12 = [self initWithWorkflow:speakableString];

  if (v12)
  {
    [v12 _setLaunchId:*MEMORY[0x1E69E0FB0]];
    name = [v9 name];
    [v12 setSuggestedInvocationPhrase:name];

    if (a4)
    {
      associatedAppBundleIdentifier = [v9 associatedAppBundleIdentifier];
      v15 = [associatedAppBundleIdentifier length];

      if (!v15)
      {
        goto LABEL_14;
      }

      associatedAppBundleIdentifier2 = [v9 associatedAppBundleIdentifier];
      v17 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:associatedAppBundleIdentifier2];
      if ([v17 isInstalled])
      {
        v18 = v17;
      }

      else
      {
        mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
        v18 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v17];

        if ([v18 isInstalled])
        {
          bundleIdentifier = [v18 bundleIdentifier];

          associatedAppBundleIdentifier2 = bundleIdentifier;
        }
      }

      v21 = [MEMORY[0x1E69E0B58] applicationIconImageForBundleIdentifier:associatedAppBundleIdentifier2 format:2];
      pNGRepresentation = [v21 PNGRepresentation];
      if (pNGRepresentation)
      {
        v23 = [MEMORY[0x1E696E868] imageWithImageData:pNGRepresentation];
      }

      else
      {
        v23 = 0;
      }

      if (!v23)
      {
LABEL_14:
        v24 = objc_alloc(MEMORY[0x1E69E0E08]);
        icon = [v9 icon];
        v26 = [v24 initWithIcon:icon drawerContext:v10];

        [v26 setCornerRadius:8.0];
        v27 = MEMORY[0x1E696E868];
        v28 = [v26 imageWithSize:{60.0, 60.0}];
        pNGRepresentation2 = [v28 PNGRepresentation];
        v23 = [v27 imageWithImageData:pNGRepresentation2];
      }

      [v12 setImage:v23 forParameterNamed:@"workflow"];
    }

    v30 = v12;
  }

  return v12;
}

@end