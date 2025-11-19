@interface SUScriptDocumentInteractionControllerNativeObject
- (BOOL)_isAffectedByWindowNotification:(id)a3;
- (void)_windowDidRotateNotification:(id)a3;
- (void)_windowWillRotateNotification:(id)a3;
- (void)dealloc;
- (void)destroyNativeObject;
- (void)documentInteractionController:(id)a3 willBeginSendingToApplication:(id)a4;
- (void)documentInteractionControllerDidDismissOpenInMenu:(id)a3;
- (void)presentUsingBlock:(id)a3;
- (void)setupNativeObject;
@end

@implementation SUScriptDocumentInteractionControllerNativeObject

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptDocumentInteractionControllerNativeObject;
  [(SUScriptDocumentInteractionControllerNativeObject *)&v3 dealloc];
}

- (void)presentUsingBlock:(id)a3
{
  presentationBlock = self->_presentationBlock;
  if (presentationBlock != a3)
  {

    self->_presentationBlock = [a3 copy];
  }

  if (a3)
  {
    v6 = *(a3 + 2);

    v6(a3);
  }
}

- (void)destroyNativeObject
{
  v3 = [(SUScriptNativeObject *)self object];
  if ([v3 delegate] == self)
  {
    [v3 setDelegate:0];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE7D0] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE828] object:0];
  v5.receiver = self;
  v5.super_class = SUScriptDocumentInteractionControllerNativeObject;
  [(SUScriptNativeObject *)&v5 destroyNativeObject];
}

- (void)setupNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__windowDidRotateNotification_ name:*MEMORY[0x1E69DE7D0] object:0];
  [v3 addObserver:self selector:sel__windowWillRotateNotification_ name:*MEMORY[0x1E69DE828] object:0];
  v4.receiver = self;
  v4.super_class = SUScriptDocumentInteractionControllerNativeObject;
  [(SUScriptNativeObject *)&v4 setupNativeObject];
}

- (void)documentInteractionControllerDidDismissOpenInMenu:(id)a3
{
  if (!self->_didPickApplication)
  {
    [-[SUScriptObject _cancelFunction](-[SUScriptNativeObject scriptObject](self scriptObject];
  }

  self->_isVisible = 0;
}

- (void)documentInteractionController:(id)a3 willBeginSendingToApplication:(id)a4
{
  v6 = [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] _openWithFunction];
  [v6 callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", a4, 0)}];
  self->_didPickApplication = 1;
}

- (void)_windowDidRotateNotification:(id)a3
{
  if (self->_redisplayAfterRotation)
  {
    presentationBlock = self->_presentationBlock;
    if (presentationBlock)
    {
      presentationBlock[2](presentationBlock, a2, a3);
    }
  }

  self->_redisplayAfterRotation = 0;
}

- (void)_windowWillRotateNotification:(id)a3
{
  if ([(SUScriptDocumentInteractionControllerNativeObject *)self _isAffectedByWindowNotification:a3]&& self->_isVisible)
  {
    self->_redisplayAfterRotation = 1;
    v4 = [(SUScriptNativeObject *)self object];

    [v4 dismissMenuAnimated:0];
  }
}

- (BOOL)_isAffectedByWindowNotification:(id)a3
{
  [MEMORY[0x1E69DC938] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] != 1)
  {
    return 0;
  }

  v5 = [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] parentViewController];
  if (![v5 isViewLoaded])
  {
    return 0;
  }

  v6 = [v5 view];
  v7 = [a3 object];

  return [v6 isDescendantOfView:v7];
}

@end