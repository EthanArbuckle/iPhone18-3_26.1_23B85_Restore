@interface PXCPLActionPerformer
- (void)performActionWithCPLUIStatus:(id)a3 completionHandler:(id)a4;
@end

@implementation PXCPLActionPerformer

- (void)performActionWithCPLUIStatus:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v10 = a4;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCPLActionPerformer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"cplUIStatus"}];
  }

  cplUIStatus = self->_cplUIStatus;
  self->_cplUIStatus = v7;

  [(PXActionPerformer *)self performActionWithCompletionHandler:v10];
}

@end