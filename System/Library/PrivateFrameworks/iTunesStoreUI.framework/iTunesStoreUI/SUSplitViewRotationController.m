@interface SUSplitViewRotationController
- (id)_firstRotationController;
- (id)_secondRotationController;
- (void)animateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)dealloc;
- (void)finishRotationFromInterfaceOrientation:(int64_t)a3;
- (void)prepareToRotateToInterfaceOrientation:(int64_t)a3;
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

- (void)animateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  [-[SUSplitViewRotationController _firstRotationController](self "_firstRotationController")];
  v7 = [(SUSplitViewRotationController *)self _secondRotationController];

  [v7 animateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)finishRotationFromInterfaceOrientation:(int64_t)a3
{
  [-[SUSplitViewRotationController _firstRotationController](self "_firstRotationController")];
  [(SURotationController *)self->_firstRotationController setViewController:0];
  v5 = self->_firstRotationController;
  self->_firstRotationController = 0;
  [-[SUSplitViewRotationController _secondRotationController](self "_secondRotationController")];
  [(SURotationController *)self->_secondRotationController setViewController:0];
  v6 = self->_secondRotationController;
  self->_secondRotationController = 0;
  v7 = [(SUViewController *)self->super._viewController view];
  v8 = [(SUViewController *)self->super._viewController _splitView];
  [v8 setAutoresizingMask:18];
  [v7 bounds];
  [v8 setFrame:?];
  [objc_msgSend(v8 "layer")];

  [v7 addSubview:v8];
}

- (void)prepareToRotateToInterfaceOrientation:(int64_t)a3
{
  [-[SUSplitViewRotationController _firstRotationController](self "_firstRotationController")];
  [-[SUSplitViewRotationController _secondRotationController](self "_secondRotationController")];
  v5 = [(SUViewController *)self->super._viewController _splitView];
  [MEMORY[0x1E6979518] begin];
  [(SURotationController *)self viewFrameForInterfaceOrientation:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 setAutoresizingMask:0];
  [v5 setFrame:{v7, v9, v11, v13}];
  [objc_msgSend(v5 "layer")];
  v14 = MEMORY[0x1E6979518];

  [v14 commit];
}

- (id)_firstRotationController
{
  v3 = [(SUViewController *)self->super._viewController firstViewController];
  firstRotationController = self->_firstRotationController;
  if (firstRotationController)
  {
    if ([(SURotationController *)firstRotationController viewController]== v3)
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
    self->_firstRotationController = [v3 newRotationController];
    v6 = v3;
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
  v3 = [(SUViewController *)self->super._viewController secondViewController];
  secondRotationController = self->_secondRotationController;
  if (secondRotationController)
  {
    if ([(SURotationController *)secondRotationController viewController]== v3)
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
    self->_secondRotationController = [v3 newRotationController];
    v6 = v3;
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