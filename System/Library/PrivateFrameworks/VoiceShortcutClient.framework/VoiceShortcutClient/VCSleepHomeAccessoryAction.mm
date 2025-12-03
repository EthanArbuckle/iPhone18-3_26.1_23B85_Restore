@interface VCSleepHomeAccessoryAction
- (VCSleepHomeAccessoryAction)initWithTriggerActionSetsBuilder:(id)builder;
@end

@implementation VCSleepHomeAccessoryAction

- (VCSleepHomeAccessoryAction)initWithTriggerActionSetsBuilder:(id)builder
{
  v30[2] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCSleepHomeAccessoryAction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"triggerActionSetsBuilder"}];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = WFLocalizedString(@"Set %@");
  actionSetsSummary = [builderCopy actionSetsSummary];
  summaryText = [actionSetsSummary summaryText];
  v25 = [v6 stringWithFormat:v7, summaryText];

  home = [builderCopy home];
  allActionSets = [builderCopy allActionSets];
  v12 = [allActionSets if_map:&__block_literal_global_10403];
  v29[0] = @"WFHFTriggerActionSetsBuilderParameterStateActionSets";
  v29[1] = @"WFHFTriggerActionSetsBuilderParameterStateHome";
  v30[0] = v12;
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v30[1] = uUIDString;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v27 = @"WFHomeTriggerActionSets";
  v28 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v17 = [VCSleepAction identifierForWorkflowActionIdentifier:@"is.workflow.actions.homeaccessory" serializedParameters:v16];
  name = [home name];
  v26.receiver = self;
  v26.super_class = VCSleepHomeAccessoryAction;
  v19 = [(VCSleepAction *)&v26 initWithIdentifier:v17 workflowActionIdentifier:@"is.workflow.actions.homeaccessory" sourceAppBundleIdentifier:@"com.apple.Home" bundleIdentifierForDisplay:@"com.apple.Home" title:v25 subtitle:name serializedParameters:v16 shortcutAvailability:0];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

@end