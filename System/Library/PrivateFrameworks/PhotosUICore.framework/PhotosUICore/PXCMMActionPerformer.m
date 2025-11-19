@interface PXCMMActionPerformer
- (id)performActionWithSession:(id)a3 completionHandler:(id)a4;
@end

@implementation PXCMMActionPerformer

- (id)performActionWithSession:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  session = self->_session;
  self->_session = v7;

  v10 = [(PXCMMActionPerformer *)self createActionProgress];
  [(PXCMMActionPerformer *)self setProgress:v10];

  [(PXActionPerformer *)self performActionWithCompletionHandler:v8];
  v11 = [(PXCMMActionPerformer *)self progress];

  return v11;
}

@end