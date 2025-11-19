@interface SBSUIRemoteAlertItemContentViewController
- (void)getPreferredContentSizeWithReplyBlock:(id)a3;
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
  v3 = [(SBSUIRemoteAlertItemContentViewController *)self _remoteViewControllerProxy];
  [(SBSUIRemoteAlertItemContentViewController *)self preferredContentSize];
  [v3 setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSUIRemoteAlertItemContentViewController;
  [(SBSUIRemoteAlertItemContentViewController *)&v3 viewDidLayoutSubviews];
  [(SBSUIRemoteAlertItemContentViewController *)self invalidatePreferredContentSize];
}

- (void)getPreferredContentSizeWithReplyBlock:(id)a3
{
  if (a3)
  {
    v5 = a3;
    [(SBSUIRemoteAlertItemContentViewController *)self preferredContentSize];
    (*(a3 + 2))(v5);
  }
}

@end