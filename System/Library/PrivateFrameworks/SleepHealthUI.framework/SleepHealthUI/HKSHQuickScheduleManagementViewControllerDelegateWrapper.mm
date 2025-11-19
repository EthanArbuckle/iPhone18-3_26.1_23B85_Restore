@interface HKSHQuickScheduleManagementViewControllerDelegateWrapper
- (HKSHQuickScheduleManagementViewController)viewController;
- (HKSHQuickScheduleManagementViewControllerDelegate)wrappedDelegate;
- (void)quickScheduleManagementViewController:(id)a3 didSave:(id)a4;
- (void)quickScheduleManagementViewController:(id)a3 shouldPresent:(id)a4;
- (void)quickScheduleManagementViewControllerDidCancel:(id)a3;
- (void)quickScheduleManagementViewControllerWillSave:(id)a3;
@end

@implementation HKSHQuickScheduleManagementViewControllerDelegateWrapper

- (void)quickScheduleManagementViewController:(id)a3 didSave:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v6 = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained quickScheduleManagementViewController:v6 didSave:v5];
}

- (void)quickScheduleManagementViewControllerDidCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v4 = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained quickScheduleManagementViewControllerDidCancel:v4];
}

- (void)quickScheduleManagementViewController:(id)a3 shouldPresent:(id)a4
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_wrappedDelegate);
    v8 = objc_loadWeakRetained(&self->_viewController);
    [v7 quickScheduleManagementViewController:v8 shouldPresent:v9];
  }
}

- (void)quickScheduleManagementViewControllerWillSave:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_wrappedDelegate);
    v6 = objc_loadWeakRetained(&self->_viewController);
    [v7 quickScheduleManagementViewControllerWillSave:v6];
  }
}

- (HKSHQuickScheduleManagementViewControllerDelegate)wrappedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);

  return WeakRetained;
}

- (HKSHQuickScheduleManagementViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end