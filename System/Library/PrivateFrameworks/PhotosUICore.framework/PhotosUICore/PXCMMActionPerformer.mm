@interface PXCMMActionPerformer
- (id)performActionWithSession:(id)session completionHandler:(id)handler;
@end

@implementation PXCMMActionPerformer

- (id)performActionWithSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  session = self->_session;
  self->_session = sessionCopy;

  createActionProgress = [(PXCMMActionPerformer *)self createActionProgress];
  [(PXCMMActionPerformer *)self setProgress:createActionProgress];

  [(PXActionPerformer *)self performActionWithCompletionHandler:handlerCopy];
  progress = [(PXCMMActionPerformer *)self progress];

  return progress;
}

@end