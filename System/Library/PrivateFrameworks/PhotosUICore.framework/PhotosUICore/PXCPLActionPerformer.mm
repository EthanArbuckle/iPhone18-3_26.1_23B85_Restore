@interface PXCPLActionPerformer
- (void)performActionWithCPLUIStatus:(id)status completionHandler:(id)handler;
@end

@implementation PXCPLActionPerformer

- (void)performActionWithCPLUIStatus:(id)status completionHandler:(id)handler
{
  statusCopy = status;
  handlerCopy = handler;
  if (!statusCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLActionPerformer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"cplUIStatus"}];
  }

  cplUIStatus = self->_cplUIStatus;
  self->_cplUIStatus = statusCopy;

  [(PXActionPerformer *)self performActionWithCompletionHandler:handlerCopy];
}

@end