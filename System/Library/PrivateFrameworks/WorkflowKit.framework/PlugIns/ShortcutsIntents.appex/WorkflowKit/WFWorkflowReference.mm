@interface WFWorkflowReference
- (INShortcutOverview)shortcutOverview;
- (id)wf_intentsIconForApplicationBundleIdentifier;
- (id)wf_intentsIconForData:(id)data;
- (id)wf_intentsIconForWorkflow;
@end

@implementation WFWorkflowReference

- (id)wf_intentsIconForWorkflow
{
  v3 = [WFWorkflowIconDrawer alloc];
  icon = [(WFWorkflowReference *)self icon];
  v5 = [v3 initWithIcon:icon];

  [v5 setCornerRadius:8.0];
  v6 = [v5 imageWithSize:{60.0, 60.0}];
  pNGRepresentation = [v6 PNGRepresentation];
  v8 = [(WFWorkflowReference *)self wf_intentsIconForData:pNGRepresentation];

  return v8;
}

- (id)wf_intentsIconForApplicationBundleIdentifier
{
  associatedAppBundleIdentifier = [(WFWorkflowReference *)self associatedAppBundleIdentifier];
  v4 = [WFImage applicationIconImageForBundleIdentifier:associatedAppBundleIdentifier format:2];

  if (v4)
  {
    pNGRepresentation = [v4 PNGRepresentation];
    v6 = [(WFWorkflowReference *)self wf_intentsIconForData:pNGRepresentation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)wf_intentsIconForData:(id)data
{
  v3 = [INImage imageWithImageData:data];
  [v3 _setImageSize:{60.0, 60.0}];

  return v3;
}

- (INShortcutOverview)shortcutOverview
{
  v3 = [INSpeakableString alloc];
  identifier = [(WFWorkflowReference *)self identifier];
  name = [(WFWorkflowReference *)self name];
  v6 = [v3 initWithVocabularyIdentifier:identifier spokenPhrase:name pronunciationHint:0];

  v7 = [INSpeakableString alloc];
  name2 = [(WFWorkflowReference *)self name];
  v9 = [v7 initWithSpokenPhrase:name2];

  associatedAppBundleIdentifier = [(WFWorkflowReference *)self associatedAppBundleIdentifier];
  v11 = [associatedAppBundleIdentifier length];

  if (!v11 || ([(WFWorkflowReference *)self wf_intentsIconForApplicationBundleIdentifier], (wf_intentsIconForWorkflow = objc_claimAutoreleasedReturnValue()) == 0))
  {
    wf_intentsIconForWorkflow = [(WFWorkflowReference *)self wf_intentsIconForWorkflow];
  }

  v13 = [[INShortcutOverview alloc] initWithName:v6 voiceCommand:v9 icon:wf_intentsIconForWorkflow descriptiveText:0 steps:0];

  return v13;
}

@end