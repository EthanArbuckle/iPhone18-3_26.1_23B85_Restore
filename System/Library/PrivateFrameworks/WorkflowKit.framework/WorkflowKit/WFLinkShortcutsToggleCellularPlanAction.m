@interface WFLinkShortcutsToggleCellularPlanAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
@end

@implementation WFLinkShortcutsToggleCellularPlanAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a5;
  v7 = WFLocalizedString(@"Allow “%1$@” to toggle a cellular plan?");
  v8 = [v5 localizedStringWithFormat:v7, v6];

  return v8;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E6996D78];
  v5 = a3;
  v6 = [v4 toggleLineLocation];
  (*(a3 + 2))(v5, v6, 0);
}

@end