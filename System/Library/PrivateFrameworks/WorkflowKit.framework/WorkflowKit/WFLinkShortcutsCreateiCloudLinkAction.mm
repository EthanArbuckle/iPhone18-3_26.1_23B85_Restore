@interface WFLinkShortcutsCreateiCloudLinkAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
@end

@implementation WFLinkShortcutsCreateiCloudLinkAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v5 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v7 = WFLocalizedString(@"Allow “%1$@” to create iCloud link?");
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E6996D78];
  handlerCopy = handler;
  publicICloud = [v4 publicICloud];
  (*(handler + 2))(handlerCopy, publicICloud, 0);
}

@end