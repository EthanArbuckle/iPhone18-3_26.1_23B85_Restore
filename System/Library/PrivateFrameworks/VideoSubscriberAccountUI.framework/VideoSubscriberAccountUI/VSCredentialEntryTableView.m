@interface VSCredentialEntryTableView
- (VSCredentialEntryViewController_iOS)viewController;
- (void)layoutSubviews;
@end

@implementation VSCredentialEntryTableView

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = VSCredentialEntryTableView;
  [(VSCredentialEntryTableView *)&v2 layoutSubviews];
}

- (VSCredentialEntryViewController_iOS)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end