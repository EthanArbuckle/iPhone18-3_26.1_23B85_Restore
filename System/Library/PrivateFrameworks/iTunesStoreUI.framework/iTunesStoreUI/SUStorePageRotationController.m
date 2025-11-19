@interface SUStorePageRotationController
- (id)_childRotationController;
- (void)animateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)dealloc;
- (void)finishRotationFromInterfaceOrientation:(int64_t)a3;
- (void)prepareToRotateToInterfaceOrientation:(int64_t)a3;
@end

@implementation SUStorePageRotationController

- (void)dealloc
{
  [(SURotationController *)self->_childRotationController setViewController:0];
  v3 = self->_childRotationController;
  self->_childRotationController = 0;

  v4.receiver = self;
  v4.super_class = SUStorePageRotationController;
  [(SURotationController *)&v4 dealloc];
}

- (void)animateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  [(SUViewController *)self->super._viewController tabBarController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(-[SUViewController view](self->super._viewController "view")];
  }

  v7 = [(SUStorePageRotationController *)self _childRotationController];

  [v7 animateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)finishRotationFromInterfaceOrientation:(int64_t)a3
{
  [(SUViewController *)self->super._viewController tabBarController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(-[SUViewController view](self->super._viewController "view")];
  }

  [-[SUStorePageRotationController _childRotationController](self "_childRotationController")];
  [(SURotationController *)self->_childRotationController setViewController:0];
  v5 = self->_childRotationController;
  self->_childRotationController = 0;
}

- (void)prepareToRotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [(SUStorePageRotationController *)self _childRotationController];

  [v4 prepareToRotateToInterfaceOrientation:a3];
}

- (id)_childRotationController
{
  v3 = [(SUViewController *)self->super._viewController _activeChildViewController];
  childRotationController = self->_childRotationController;
  if (!childRotationController)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ([(SURotationController *)childRotationController viewController]!= v3)
  {
    v5 = self->_childRotationController;
LABEL_5:

    self->_childRotationController = [v3 newRotationController];
    self->_childViewController = v3;
  }

  return self->_childRotationController;
}

@end