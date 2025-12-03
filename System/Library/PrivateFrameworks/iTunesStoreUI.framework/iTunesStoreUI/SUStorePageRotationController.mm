@interface SUStorePageRotationController
- (id)_childRotationController;
- (void)animateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)dealloc;
- (void)finishRotationFromInterfaceOrientation:(int64_t)orientation;
- (void)prepareToRotateToInterfaceOrientation:(int64_t)orientation;
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

- (void)animateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  [(SUViewController *)self->super._viewController tabBarController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(-[SUViewController view](self->super._viewController "view")];
  }

  _childRotationController = [(SUStorePageRotationController *)self _childRotationController];

  [_childRotationController animateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)finishRotationFromInterfaceOrientation:(int64_t)orientation
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

- (void)prepareToRotateToInterfaceOrientation:(int64_t)orientation
{
  _childRotationController = [(SUStorePageRotationController *)self _childRotationController];

  [_childRotationController prepareToRotateToInterfaceOrientation:orientation];
}

- (id)_childRotationController
{
  _activeChildViewController = [(SUViewController *)self->super._viewController _activeChildViewController];
  childRotationController = self->_childRotationController;
  if (!childRotationController)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ([(SURotationController *)childRotationController viewController]!= _activeChildViewController)
  {
    v5 = self->_childRotationController;
LABEL_5:

    self->_childRotationController = [_activeChildViewController newRotationController];
    self->_childViewController = _activeChildViewController;
  }

  return self->_childRotationController;
}

@end