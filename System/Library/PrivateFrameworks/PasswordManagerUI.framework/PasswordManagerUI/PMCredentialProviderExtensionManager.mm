@interface PMCredentialProviderExtensionManager
- (void)credentialProviderExtensionManagerExtensionListDidChange:(id)change;
@end

@implementation PMCredentialProviderExtensionManager

- (void)credentialProviderExtensionManagerExtensionListDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21C954AFC(changeCopy);
}

@end