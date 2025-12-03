@interface SUWebViewRotationController
- (void)finishRotationFromInterfaceOrientation:(int64_t)orientation;
- (void)prepareToRotateToInterfaceOrientation:(int64_t)orientation;
@end

@implementation SUWebViewRotationController

- (void)finishRotationFromInterfaceOrientation:(int64_t)orientation
{
  if (![(SUViewController *)self->super._viewController _isEnteringForeground])
  {
    webView = [(SUViewController *)self->super._viewController webView];
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] || (objc_msgSend(webView, "frame"), !CGRectEqualToRect(v8, *MEMORY[0x1E695F058])))
    {
      [webView endSynchronousLayout];
    }

    if ([webView superview])
    {
      [objc_msgSend(webView "superview")];
      [webView setFrame:?];
    }

    viewController = self->super._viewController;
    interfaceOrientation = [(SUViewController *)viewController interfaceOrientation];

    [(SUViewController *)viewController _setLastKnownOrientation:interfaceOrientation];
  }
}

- (void)prepareToRotateToInterfaceOrientation:(int64_t)orientation
{
  _isEnteringForeground = [(SUViewController *)self->super._viewController _isEnteringForeground];
  viewController = self->super._viewController;
  webView = [(SUViewController *)viewController webView];
  v8 = webView;
  if (_isEnteringForeground)
  {
    [webView setHidden:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__SUWebViewRotationController_prepareToRotateToInterfaceOrientation___block_invoke;
    v10[3] = &unk_1E8164CB8;
    v10[4] = viewController;
    v10[5] = orientation;
    dispatch_after(0, MEMORY[0x1E69E96A0], v10);
  }

  else if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] || (objc_msgSend(v8, "frame"), !CGRectEqualToRect(v12, *MEMORY[0x1E695F058])))
  {
    [v8 beginSynchronousLayout];
    v9 = self->super._viewController;

    [(SUViewController *)v9 _sendOrientationWillChangeToInterfaceOrientation:orientation];
  }
}

uint64_t __69__SUWebViewRotationController_prepareToRotateToInterfaceOrientation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  [MEMORY[0x1E6979518] begin];
  [v2 beginSynchronousLayout];
  [*(a1 + 32) _sendOrientationWillChangeToInterfaceOrientation:*(a1 + 40)];
  [v2 endSynchronousLayout];
  [v2 setHidden:0];
  v3 = MEMORY[0x1E6979518];

  return [v3 commit];
}

@end