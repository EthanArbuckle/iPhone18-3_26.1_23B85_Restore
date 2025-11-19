@interface _SBUIPopoverExtensionContext
- (_SBUIPopoverExtensionHostInterface)hostService;
- (void)requestDismiss;
@end

@implementation _SBUIPopoverExtensionContext

- (void)requestDismiss
{
  v2 = [(_SBUIPopoverExtensionContext *)self hostService];
  [v2 _extensionRequestsDismiss];
}

- (_SBUIPopoverExtensionHostInterface)hostService
{
  WeakRetained = objc_loadWeakRetained(&self->_hostService);

  return WeakRetained;
}

@end