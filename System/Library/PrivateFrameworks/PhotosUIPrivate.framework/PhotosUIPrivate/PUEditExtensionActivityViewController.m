@interface PUEditExtensionActivityViewController
- (PUEditExtensionActivityViewControllerDelegate)editExtensionActivityViewControllerDelegate;
- (void)_performActivity:(id)a3;
@end

@implementation PUEditExtensionActivityViewController

- (PUEditExtensionActivityViewControllerDelegate)editExtensionActivityViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editExtensionActivityViewControllerDelegate);

  return WeakRetained;
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PUEditExtensionActivityViewController *)self editExtensionActivityViewControllerDelegate];
    [v5 editExtensionActivityViewController:self didSelectActivity:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUEditExtensionActivityViewController;
    [(PUEditExtensionActivityViewController *)&v6 _performActivity:v4];
  }
}

@end