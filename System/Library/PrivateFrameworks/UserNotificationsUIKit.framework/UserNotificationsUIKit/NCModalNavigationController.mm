@interface NCModalNavigationController
- (NCModalNavigationControllerDelegate)presenterDelegate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation NCModalNavigationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NCModalNavigationController;
  [(NCModalNavigationController *)&v4 viewDidLoad];
  [(NCModalNavigationController *)self setModalPresentationStyle:2];
  sheetPresentationController = [(NCModalNavigationController *)self sheetPresentationController];
  [sheetPresentationController _setShouldDismissWhenTappedOutside:1];
  [sheetPresentationController setPrefersGrabberVisible:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(NCModalNavigationController *)self isBeingDismissed])
  {
    presenterDelegate = [(NCModalNavigationController *)self presenterDelegate];
    if (objc_opt_respondsToSelector())
    {
      [presenterDelegate modalNavigationControllerDidDismiss:self];
    }
  }

  v6.receiver = self;
  v6.super_class = NCModalNavigationController;
  [(NCModalNavigationController *)&v6 viewDidDisappear:disappearCopy];
}

- (NCModalNavigationControllerDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

@end