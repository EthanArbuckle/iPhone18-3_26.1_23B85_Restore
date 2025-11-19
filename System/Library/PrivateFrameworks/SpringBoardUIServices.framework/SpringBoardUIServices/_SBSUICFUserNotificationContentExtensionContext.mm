@interface _SBSUICFUserNotificationContentExtensionContext
- (_SBSUICFUserNotificationContentExtensionHostInterface)hostService;
@end

@implementation _SBSUICFUserNotificationContentExtensionContext

- (_SBSUICFUserNotificationContentExtensionHostInterface)hostService
{
  WeakRetained = objc_loadWeakRetained(&self->_hostService);

  return WeakRetained;
}

@end