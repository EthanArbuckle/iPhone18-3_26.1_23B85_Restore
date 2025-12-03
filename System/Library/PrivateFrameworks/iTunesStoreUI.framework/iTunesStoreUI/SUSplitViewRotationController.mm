@interface SUSplitViewRotationController
- (id)_firstRotationController;
- (id)_secondRotationController;
- (void)animateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)dealloc;
- (void)finishRotationFromInterfaceOrientation:(int64_t)orientation;
- (void)prepareToRotateToInterfaceOrientation:(int64_t)orientation;
@end

@implementation SUSplitViewRotationController

- (void)dealloc
{
  [(SURotationController *)self->_firstRotationController setViewController:0];
  v3 = self->_firstRotationController;
  self->_firstRotationController = 0;

  [(SURotationController *)self->_secondRotationController setViewController:0];
  v4 = self->_secondRotationController;
  self->_secondRotationController = 0;

  v5.receiver = self;
  v5.super_class = SUSplitViewRotationController;
  [(SURotationController *)&v5 dealloc];
}

- (void)animateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  [-[SUSplitViewRotationController _firstRotationController](self "_firstRotationController")];
  _secondRotationController = [(SUSplitViewRotationController *)self _secondRotationController];

  [_secondRotationController animateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)finishRotationFromInterfaceOrientation:(int64_t)orientation
{
  [-[SUSplitViewRotationController _firstRotationController](self "_firstRotationController")];
  [(SURotationController *)self->_firstRotationController setViewController:0];
  v5 = self->_firstRotationController;
  self->_firstRotationController = 0;
  [-[SUSplitViewRotationController _secondRotationController](self "_secondRotationController")];
  [(SURotationController *)self->_secondRotationController setViewController:0];
  v6 = self->_secondRotationController;
  self->_secondRotationController = 0;
  view = [(SUViewController *)self->super._viewController view];
  _splitView = [(SUViewController *)self->super._viewController _splitView];
  [_splitView setAutoresizingMask:18];
  [view bounds];
  [_splitView setFrame:?];
  [objc_msgSend(_splitView "layer")];

  [view addSubview:_splitView];
}

- (void)prepareToRotateToInterfaceOrientation:(int64_t)orientation
{
  [-[SUSplitViewRotationController _firstRotationController](self "_firstRotationController")];
  [-[SUSplitViewRotationController _secondRotationController](self "_secondRotationController")];
  _splitView = [(SUViewController *)self->super._viewController _splitView];
  [MEMORY[0x1E6979518] begin];
  [(SURotationController *)self viewFrameForInterfaceOrientation:orientation];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [_splitView setAutoresizingMask:0];
  [_splitView setFrame:{v7, v9, v11, v13}];
  [objc_msgSend(_splitView "layer")];
  v14 = MEMORY[0x1E6979518];

  [v14 commit];
}

- (id)_firstRotationController
{
  firstViewController = [(SUViewController *)self->super._viewController firstViewController];
  firstRotationController = self->_firstRotationController;
  if (firstRotationController)
  {
    if ([(SURotationController *)firstRotationController viewController]== firstViewController)
    {
      return self->_firstRotationController;
    }

    v5 = self->_firstRotationController;
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    self->_firstRotationController = [firstViewController newRotationController];
    v6 = firstViewController;
  }

  else
  {
    v6 = 0;
    self->_firstRotationController = 0;
  }

  self->_firstViewController = v6;
  return self->_firstRotationController;
}

- (id)_secondRotationController
{
  secondViewController = [(SUViewController *)self->super._viewController secondViewController];
  secondRotationController = self->_secondRotationController;
  if (secondRotationController)
  {
    if ([(SURotationController *)secondRotationController viewController]== secondViewController)
    {
      return self->_secondRotationController;
    }

    v5 = self->_secondRotationController;
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    self->_secondRotationController = [secondViewController newRotationController];
    v6 = secondViewController;
  }

  else
  {
    v6 = 0;
    self->_secondRotationController = 0;
  }

  self->_secondViewController = v6;
  return self->_secondRotationController;
}

@end