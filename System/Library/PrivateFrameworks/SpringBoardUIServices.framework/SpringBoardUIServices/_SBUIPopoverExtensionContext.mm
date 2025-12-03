@interface _SBUIPopoverExtensionContext
- (_SBUIPopoverExtensionHostInterface)hostService;
- (void)requestDismiss;
@end

@implementation _SBUIPopoverExtensionContext

- (void)requestDismiss
{
  hostService = [(_SBUIPopoverExtensionContext *)self hostService];
  [hostService _extensionRequestsDismiss];
}

- (_SBUIPopoverExtensionHostInterface)hostService
{
  WeakRetained = objc_loadWeakRetained(&self->_hostService);

  return WeakRetained;
}

@end