@interface PUEditExtensionActivityViewController
- (PUEditExtensionActivityViewControllerDelegate)editExtensionActivityViewControllerDelegate;
- (void)_performActivity:(id)activity;
@end

@implementation PUEditExtensionActivityViewController

- (PUEditExtensionActivityViewControllerDelegate)editExtensionActivityViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editExtensionActivityViewControllerDelegate);

  return WeakRetained;
}

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    editExtensionActivityViewControllerDelegate = [(PUEditExtensionActivityViewController *)self editExtensionActivityViewControllerDelegate];
    [editExtensionActivityViewControllerDelegate editExtensionActivityViewController:self didSelectActivity:activityCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUEditExtensionActivityViewController;
    [(PUEditExtensionActivityViewController *)&v6 _performActivity:activityCopy];
  }
}

@end