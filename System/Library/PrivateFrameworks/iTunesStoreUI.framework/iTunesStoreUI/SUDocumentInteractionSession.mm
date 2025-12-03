@interface SUDocumentInteractionSession
- (SUDocumentInteractionSession)initWithDocumentInteractionController:(id)controller;
- (void)cancel;
- (void)dealloc;
- (void)documentInteractionController:(id)controller willBeginSendingToApplication:(id)application;
- (void)documentInteractionControllerDidDismissOpenInMenu:(id)menu;
@end

@implementation SUDocumentInteractionSession

- (SUDocumentInteractionSession)initWithDocumentInteractionController:(id)controller
{
  v7.receiver = self;
  v7.super_class = SUDocumentInteractionSession;
  v4 = [(SUDocumentInteractionSession *)&v7 init];
  if (v4)
  {
    controllerCopy = controller;
    v4->_documentInteractionController = controllerCopy;
    [(UIDocumentInteractionController *)controllerCopy setDelegate:v4];
  }

  return v4;
}

- (void)dealloc
{
  [(UIDocumentInteractionController *)self->_documentInteractionController setDelegate:0];

  v3.receiver = self;
  v3.super_class = SUDocumentInteractionSession;
  [(SUDocumentInteractionSession *)&v3 dealloc];
}

- (void)cancel
{
  [(UIDocumentInteractionController *)self->_documentInteractionController setDelegate:0];
  [(UIDocumentInteractionController *)self->_documentInteractionController dismissMenuAnimated:1];
  if (self->_completionHandler)
  {
    selfCopy = self;
    v4 = *(self->_completionHandler + 2);

    v4();
  }
}

- (void)documentInteractionControllerDidDismissOpenInMenu:(id)menu
{
  if (self->_completionHandler)
  {
    selfCopy = self;
    v5 = *(self->_completionHandler + 2);

    v5();
  }
}

- (void)documentInteractionController:(id)controller willBeginSendingToApplication:(id)application
{
  [controller setDelegate:0];
  if (self->_completionHandler)
  {
    selfCopy = self;
    v6 = *(self->_completionHandler + 2);

    v6();
  }
}

@end