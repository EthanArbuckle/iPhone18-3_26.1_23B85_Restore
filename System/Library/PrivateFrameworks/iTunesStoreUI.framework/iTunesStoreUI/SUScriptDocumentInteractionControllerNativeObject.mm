@interface SUScriptDocumentInteractionControllerNativeObject
- (BOOL)_isAffectedByWindowNotification:(id)notification;
- (void)_windowDidRotateNotification:(id)notification;
- (void)_windowWillRotateNotification:(id)notification;
- (void)dealloc;
- (void)destroyNativeObject;
- (void)documentInteractionController:(id)controller willBeginSendingToApplication:(id)application;
- (void)documentInteractionControllerDidDismissOpenInMenu:(id)menu;
- (void)presentUsingBlock:(id)block;
- (void)setupNativeObject;
@end

@implementation SUScriptDocumentInteractionControllerNativeObject

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptDocumentInteractionControllerNativeObject;
  [(SUScriptDocumentInteractionControllerNativeObject *)&v3 dealloc];
}

- (void)presentUsingBlock:(id)block
{
  presentationBlock = self->_presentationBlock;
  if (presentationBlock != block)
  {

    self->_presentationBlock = [block copy];
  }

  if (block)
  {
    v6 = *(block + 2);

    v6(block);
  }
}

- (void)destroyNativeObject
{
  object = [(SUScriptNativeObject *)self object];
  if ([object delegate] == self)
  {
    [object setDelegate:0];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE7D0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE828] object:0];
  v5.receiver = self;
  v5.super_class = SUScriptDocumentInteractionControllerNativeObject;
  [(SUScriptNativeObject *)&v5 destroyNativeObject];
}

- (void)setupNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__windowDidRotateNotification_ name:*MEMORY[0x1E69DE7D0] object:0];
  [defaultCenter addObserver:self selector:sel__windowWillRotateNotification_ name:*MEMORY[0x1E69DE828] object:0];
  v4.receiver = self;
  v4.super_class = SUScriptDocumentInteractionControllerNativeObject;
  [(SUScriptNativeObject *)&v4 setupNativeObject];
}

- (void)documentInteractionControllerDidDismissOpenInMenu:(id)menu
{
  if (!self->_didPickApplication)
  {
    [-[SUScriptObject _cancelFunction](-[SUScriptNativeObject scriptObject](self scriptObject];
  }

  self->_isVisible = 0;
}

- (void)documentInteractionController:(id)controller willBeginSendingToApplication:(id)application
{
  _openWithFunction = [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] _openWithFunction];
  [_openWithFunction callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", application, 0)}];
  self->_didPickApplication = 1;
}

- (void)_windowDidRotateNotification:(id)notification
{
  if (self->_redisplayAfterRotation)
  {
    presentationBlock = self->_presentationBlock;
    if (presentationBlock)
    {
      presentationBlock[2](presentationBlock, a2, notification);
    }
  }

  self->_redisplayAfterRotation = 0;
}

- (void)_windowWillRotateNotification:(id)notification
{
  if ([(SUScriptDocumentInteractionControllerNativeObject *)self _isAffectedByWindowNotification:notification]&& self->_isVisible)
  {
    self->_redisplayAfterRotation = 1;
    object = [(SUScriptNativeObject *)self object];

    [object dismissMenuAnimated:0];
  }
}

- (BOOL)_isAffectedByWindowNotification:(id)notification
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

  parentViewController = [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] parentViewController];
  if (![parentViewController isViewLoaded])
  {
    return 0;
  }

  view = [parentViewController view];
  object = [notification object];

  return [view isDescendantOfView:object];
}

@end