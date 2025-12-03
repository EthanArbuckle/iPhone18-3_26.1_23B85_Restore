@interface SURotationController
- (BOOL)orientationAffectsViewFrame;
- (CGRect)viewFrameForInterfaceOrientation:(int64_t)orientation;
- (SURotationController)initWithViewController:(id)controller;
- (void)dealloc;
@end

@implementation SURotationController

- (SURotationController)initWithViewController:(id)controller
{
  if (!controller)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"viewController cannot be nil"];
  }

  v6.receiver = self;
  v6.super_class = SURotationController;
  result = [(SURotationController *)&v6 init];
  if (result)
  {
    result->_viewController = controller;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SURotationController;
  [(SURotationController *)&v2 dealloc];
}

- (BOOL)orientationAffectsViewFrame
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v4 = v3;
  v6 = v5;
  interfaceOrientation = [(SUViewController *)self->_viewController interfaceOrientation];
  if ([(UIViewController *)self->_viewController overlayViewController])
  {
    return 0;
  }

  if (v4 < v6 == (interfaceOrientation - 3) < 2)
  {
    v4 = v6;
  }

  [-[SUViewController view](self->_viewController "view")];
  if (vabdd_f64(v8, v4) > 0.00000011920929)
  {
    return 0;
  }

  presentingViewController = [(SUViewController *)self->_viewController presentingViewController];
  result = !presentingViewController || (v11 = presentingViewController, !-[UIViewController isDescendantOfViewController:](self->_viewController, "isDescendantOfViewController:", presentingViewController)) || [v11 modalPresentationStyle] != 2;
  return result;
}

- (CGRect)viewFrameForInterfaceOrientation:(int64_t)orientation
{
  [-[SUViewController view](self->_viewController "view")];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SURotationController *)self orientationAffectsViewFrame])
  {
    v13 = [(SUViewController *)self->_viewController interfaceOrientation]- 3;
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    if ((orientation - 3) > 1)
    {
      if (v13 <= 1)
      {
        v12 = v15 - (v14 - v12);
        v10 = v14 - (v15 - v10);
      }
    }

    else if (v13 >= 2)
    {
      v12 = v14 - (v15 - v12);
      v10 = v15 - (v14 - v10);
    }
  }

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end