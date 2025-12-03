@interface SBSUIRemoteAlertItemContentViewController
- (void)getPreferredContentSizeWithReplyBlock:(id)block;
- (void)invalidatePreferredContentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBSUIRemoteAlertItemContentViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBSUIRemoteAlertItemContentViewController;
  [(SBSUIRemoteAlertItemContentViewController *)&v3 viewDidLoad];
  [(SBSUIRemoteAlertItemContentViewController *)self invalidatePreferredContentSize];
}

- (void)invalidatePreferredContentSize
{
  _remoteViewControllerProxy = [(SBSUIRemoteAlertItemContentViewController *)self _remoteViewControllerProxy];
  [(SBSUIRemoteAlertItemContentViewController *)self preferredContentSize];
  [_remoteViewControllerProxy setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSUIRemoteAlertItemContentViewController;
  [(SBSUIRemoteAlertItemContentViewController *)&v3 viewDidLayoutSubviews];
  [(SBSUIRemoteAlertItemContentViewController *)self invalidatePreferredContentSize];
}

- (void)getPreferredContentSizeWithReplyBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    [(SBSUIRemoteAlertItemContentViewController *)self preferredContentSize];
    (*(block + 2))(blockCopy);
  }
}

@end