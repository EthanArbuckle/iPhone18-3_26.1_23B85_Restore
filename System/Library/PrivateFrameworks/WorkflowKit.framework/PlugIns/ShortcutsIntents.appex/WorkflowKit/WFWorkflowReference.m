@interface WFWorkflowReference
- (INShortcutOverview)shortcutOverview;
- (id)wf_intentsIconForApplicationBundleIdentifier;
- (id)wf_intentsIconForData:(id)a3;
- (id)wf_intentsIconForWorkflow;
@end

@implementation WFWorkflowReference

- (id)wf_intentsIconForWorkflow
{
  v3 = [WFWorkflowIconDrawer alloc];
  v4 = [(WFWorkflowReference *)self icon];
  v5 = [v3 initWithIcon:v4];

  [v5 setCornerRadius:8.0];
  v6 = [v5 imageWithSize:{60.0, 60.0}];
  v7 = [v6 PNGRepresentation];
  v8 = [(WFWorkflowReference *)self wf_intentsIconForData:v7];

  return v8;
}

- (id)wf_intentsIconForApplicationBundleIdentifier
{
  v3 = [(WFWorkflowReference *)self associatedAppBundleIdentifier];
  v4 = [WFImage applicationIconImageForBundleIdentifier:v3 format:2];

  if (v4)
  {
    v5 = [v4 PNGRepresentation];
    v6 = [(WFWorkflowReference *)self wf_intentsIconForData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)wf_intentsIconForData:(id)a3
{
  v3 = [INImage imageWithImageData:a3];
  [v3 _setImageSize:{60.0, 60.0}];

  return v3;
}

- (INShortcutOverview)shortcutOverview
{
  v3 = [INSpeakableString alloc];
  v4 = [(WFWorkflowReference *)self identifier];
  v5 = [(WFWorkflowReference *)self name];
  v6 = [v3 initWithVocabularyIdentifier:v4 spokenPhrase:v5 pronunciationHint:0];

  v7 = [INSpeakableString alloc];
  v8 = [(WFWorkflowReference *)self name];
  v9 = [v7 initWithSpokenPhrase:v8];

  v10 = [(WFWorkflowReference *)self associatedAppBundleIdentifier];
  v11 = [v10 length];

  if (!v11 || ([(WFWorkflowReference *)self wf_intentsIconForApplicationBundleIdentifier], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [(WFWorkflowReference *)self wf_intentsIconForWorkflow];
  }

  v13 = [[INShortcutOverview alloc] initWithName:v6 voiceCommand:v9 icon:v12 descriptiveText:0 steps:0];

  return v13;
}

@end