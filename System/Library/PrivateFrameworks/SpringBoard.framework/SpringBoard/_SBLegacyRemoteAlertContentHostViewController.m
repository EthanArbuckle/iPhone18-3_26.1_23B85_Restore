@interface _SBLegacyRemoteAlertContentHostViewController
- (id)delegate;
- (id)description;
- (void)_getPreferredContentSizeWithReplyBlock:(id)a3;
@end

@implementation _SBLegacyRemoteAlertContentHostViewController

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_UIRemoteViewController *)self serviceBundleIdentifier];
  v6 = [(_SBLegacyRemoteAlertContentHostViewController *)self serviceClassName];
  v7 = [v3 stringWithFormat:@"<%@:%p -> %@:%@>", v4, self, v5, v6];

  return v7;
}

- (void)_getPreferredContentSizeWithReplyBlock:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88___SBLegacyRemoteAlertContentHostViewController__getPreferredContentSizeWithReplyBlock___block_invoke;
  v7[3] = &unk_2783ADA48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getPreferredContentSizeWithReplyBlock:v7];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end