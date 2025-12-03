@interface _SBLegacyRemoteAlertContentHostViewController
- (id)delegate;
- (id)description;
- (void)_getPreferredContentSizeWithReplyBlock:(id)block;
@end

@implementation _SBLegacyRemoteAlertContentHostViewController

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serviceBundleIdentifier = [(_UIRemoteViewController *)self serviceBundleIdentifier];
  serviceClassName = [(_SBLegacyRemoteAlertContentHostViewController *)self serviceClassName];
  v7 = [v3 stringWithFormat:@"<%@:%p -> %@:%@>", v4, self, serviceBundleIdentifier, serviceClassName];

  return v7;
}

- (void)_getPreferredContentSizeWithReplyBlock:(id)block
{
  blockCopy = block;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88___SBLegacyRemoteAlertContentHostViewController__getPreferredContentSizeWithReplyBlock___block_invoke;
  v7[3] = &unk_2783ADA48;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [serviceViewControllerProxy getPreferredContentSizeWithReplyBlock:v7];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end