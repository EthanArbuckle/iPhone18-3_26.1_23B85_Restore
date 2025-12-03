@interface WFLinkShortcutsSetDataRoamingAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
@end

@implementation WFLinkShortcutsSetDataRoamingAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v5 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v7 = WFLocalizedString(@"Allow “%1$@” to toggle data roaming?");
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E6996D78];
  handlerCopy = handler;
  dataRoamingLocation = [v4 dataRoamingLocation];
  (*(handler + 2))(handlerCopy, dataRoamingLocation, 0);
}

@end