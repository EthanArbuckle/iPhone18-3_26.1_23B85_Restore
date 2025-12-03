@interface SBSApplicationMultiwindowService
- (void)requestShelfPresentationForSceneWithIdentifier:(id)identifier;
- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)identifier;
@end

@implementation SBSApplicationMultiwindowService

- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  client = [(SBSAbstractApplicationService *)self client];
  [client triggerShowAllWindowsForApplicationBundleIdentifier:identifierCopy];
}

- (void)requestShelfPresentationForSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  client = [(SBSAbstractApplicationService *)self client];
  [client requestShelfPresentationForSceneWithIdentifier:identifierCopy];
}

@end