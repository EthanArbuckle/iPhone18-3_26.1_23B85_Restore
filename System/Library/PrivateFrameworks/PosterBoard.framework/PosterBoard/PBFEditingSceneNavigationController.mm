@interface PBFEditingSceneNavigationController
- (PBFEditingSceneNavigationControllerDelegate)dismissalDelegate;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PBFEditingSceneNavigationController

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PBFEditingSceneNavigationController;
  [(PBFEditingSceneNavigationController *)&v5 viewWillDisappear:a3];
  if ([(PBFEditingSceneNavigationController *)self isBeingDismissed])
  {
    v4 = [(PBFEditingSceneNavigationController *)self dismissalDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 editingSceneNavigationControllerWillDismiss:self];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PBFEditingSceneNavigationController;
  [(PBFEditingSceneNavigationController *)&v5 viewDidDisappear:a3];
  if ([(PBFEditingSceneNavigationController *)self isBeingDismissed])
  {
    v4 = [(PBFEditingSceneNavigationController *)self dismissalDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 editingSceneNavigationControllerDidDismiss:self];
    }
  }
}

- (PBFEditingSceneNavigationControllerDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

@end