@interface SUDocumentInteractionSession
- (SUDocumentInteractionSession)initWithDocumentInteractionController:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)documentInteractionController:(id)a3 willBeginSendingToApplication:(id)a4;
- (void)documentInteractionControllerDidDismissOpenInMenu:(id)a3;
@end

@implementation SUDocumentInteractionSession

- (SUDocumentInteractionSession)initWithDocumentInteractionController:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUDocumentInteractionSession;
  v4 = [(SUDocumentInteractionSession *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->_documentInteractionController = v5;
    [(UIDocumentInteractionController *)v5 setDelegate:v4];
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
    v3 = self;
    v4 = *(self->_completionHandler + 2);

    v4();
  }
}

- (void)documentInteractionControllerDidDismissOpenInMenu:(id)a3
{
  if (self->_completionHandler)
  {
    v4 = self;
    v5 = *(self->_completionHandler + 2);

    v5();
  }
}

- (void)documentInteractionController:(id)a3 willBeginSendingToApplication:(id)a4
{
  [a3 setDelegate:0];
  if (self->_completionHandler)
  {
    v5 = self;
    v6 = *(self->_completionHandler + 2);

    v6();
  }
}

@end