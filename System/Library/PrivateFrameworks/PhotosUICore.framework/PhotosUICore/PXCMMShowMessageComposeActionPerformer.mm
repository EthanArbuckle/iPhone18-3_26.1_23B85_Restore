@interface PXCMMShowMessageComposeActionPerformer
- (id)performActionWithSession:(id)session completionHandler:(id)handler;
- (void)performMessageComposeActionWithSession:(id)session shareURL:(id)l completionHandler:(id)handler;
@end

@implementation PXCMMShowMessageComposeActionPerformer

- (id)performActionWithSession:(id)session completionHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:204 description:@"Message composition requires a share URL"];

  return 0;
}

- (void)performMessageComposeActionWithSession:(id)session shareURL:(id)l completionHandler:(id)handler
{
  sessionCopy = session;
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];
  }

  objc_storeStrong(&self->_shareURL, l);
  v14.receiver = self;
  v14.super_class = PXCMMShowMessageComposeActionPerformer;
  v12 = [(PXCMMActionPerformer *)&v14 performActionWithSession:sessionCopy completionHandler:handlerCopy];
}

@end