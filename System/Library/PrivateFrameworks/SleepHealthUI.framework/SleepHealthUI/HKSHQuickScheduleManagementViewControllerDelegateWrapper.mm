@interface HKSHQuickScheduleManagementViewControllerDelegateWrapper
- (HKSHQuickScheduleManagementViewController)viewController;
- (HKSHQuickScheduleManagementViewControllerDelegate)wrappedDelegate;
- (void)quickScheduleManagementViewController:(id)controller didSave:(id)save;
- (void)quickScheduleManagementViewController:(id)controller shouldPresent:(id)present;
- (void)quickScheduleManagementViewControllerDidCancel:(id)cancel;
- (void)quickScheduleManagementViewControllerWillSave:(id)save;
@end

@implementation HKSHQuickScheduleManagementViewControllerDelegateWrapper

- (void)quickScheduleManagementViewController:(id)controller didSave:(id)save
{
  saveCopy = save;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v6 = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained quickScheduleManagementViewController:v6 didSave:saveCopy];
}

- (void)quickScheduleManagementViewControllerDidCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v4 = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained quickScheduleManagementViewControllerDidCancel:v4];
}

- (void)quickScheduleManagementViewController:(id)controller shouldPresent:(id)present
{
  presentCopy = present;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_wrappedDelegate);
    v8 = objc_loadWeakRetained(&self->_viewController);
    [v7 quickScheduleManagementViewController:v8 shouldPresent:presentCopy];
  }
}

- (void)quickScheduleManagementViewControllerWillSave:(id)save
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