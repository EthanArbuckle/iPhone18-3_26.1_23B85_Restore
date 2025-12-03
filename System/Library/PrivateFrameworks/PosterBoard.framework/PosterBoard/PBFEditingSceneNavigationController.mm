@interface PBFEditingSceneNavigationController
- (PBFEditingSceneNavigationControllerDelegate)dismissalDelegate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PBFEditingSceneNavigationController

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PBFEditingSceneNavigationController;
  [(PBFEditingSceneNavigationController *)&v5 viewWillDisappear:disappear];
  if ([(PBFEditingSceneNavigationController *)self isBeingDismissed])
  {
    dismissalDelegate = [(PBFEditingSceneNavigationController *)self dismissalDelegate];
    if (objc_opt_respondsToSelector())
    {
      [dismissalDelegate editingSceneNavigationControllerWillDismiss:self];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PBFEditingSceneNavigationController;
  [(PBFEditingSceneNavigationController *)&v5 viewDidDisappear:disappear];
  if ([(PBFEditingSceneNavigationController *)self isBeingDismissed])
  {
    dismissalDelegate = [(PBFEditingSceneNavigationController *)self dismissalDelegate];
    if (objc_opt_respondsToSelector())
    {
      [dismissalDelegate editingSceneNavigationControllerDidDismiss:self];
    }
  }
}

- (PBFEditingSceneNavigationControllerDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

@end